require "pg"

def db_connection
  begin
    connection = PG.connect(dbname: "music_brain")
    yield(connection)
  ensure
    connection.close
  end
end
