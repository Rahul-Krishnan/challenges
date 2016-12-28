# Use this file to import data from the CSV and populate your database

require "pg"
require "csv"

def db_connection
  begin
    connection = PG.connect(dbname: "building-database")
    yield(connection)
  ensure
    connection.close
  end
end

csv_records = CSV.readlines('data.csv', headers: true)

db_connection do |conn|
  # csv data iteration
  csv_records.each do |record|
    construction_type = record['construction_type']
    zoning_type = record['zoning_type']

    # check if construction type exists
    construction_type_results = conn.exec_params(
    'SELECT name FROM construction_types WHERE name=$1',
    [construction_type]
    )

    # if no results
    if construction_type_results.to_a == []
      conn.exec_params(
      'INSERT INTO zoning_types (name) VALUES ($1)',
      [zoning_type]
      )
    end

    # check if zoning type exists
    zoning_type_results = conn.exec_params(
    'SELECT name FROM zoning_types WHERE name=$1',
    [zoning_type]
    )

    # if no results
    if construction_type_results.to_a == []
      conn.exec_params(
      'INSERT INTO zoning_types (name) VALUES ($1)',
      [zoning_type]
      )
    end

    #take in the right foreign key
    zoning_type_id = conn.exec_params(
    'SELECT id FROM zoning_types WHERE name=$1',
    [zoning_type]
    )[0]['id']

    construction_type_id = conn.exec_params(
    'SELECT id FROM construction_types WHERE name=$1',
    [construction_type]
    )[0]['id']

    #insert new account record
    name = record('name')
    conn.exec_params(
      'INSERT INTO accounts (name, zoning_type_id, construction_type_id) VALUES ($1, $2, $3)',
      [name, zoning_type_id, construction_type_id]
    )
  end
end
