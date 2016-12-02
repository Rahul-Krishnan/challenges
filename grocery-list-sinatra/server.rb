require 'sinatra'
require 'pry'
require 'csv'

set :bind, '0.0.0.0'

get "/" do
  redirect "/grocery-list"
end

get "/grocery-list" do
  @grocery_hash = {}
  CSV.parse(File.readlines('grocery_list.csv').drop(1).join) do |csv_object|
    dummy_array = []
    csv_object.each do |grocery_data|
      dummy_array << grocery_data
      @grocery_hash[dummy_array[0]] = dummy_array[1]
    end
  end
  @grocery_hash

  erb :index
end

post "/grocery-list" do
  @new_item = params['Name']
  @new_quantity = params['quantity']

  if @new_quantity == ""
    @new_quantity = 1
  else
  end

  if @new_item == ""
  else
    CSV.open('grocery_list.csv', 'a') do |csv_object|
      csv_object << [@new_item, @new_quantity]
    end
  end

  redirect "/grocery-list"
end

get "/grocery-list/:Name" do
  @item_name = params[:Name]
  @grocery_hash = {}
  CSV.parse(File.readlines('grocery_list.csv').drop(1).join) do |csv_object|
    dummy_array = []
    csv_object.each do |grocery_data|
      dummy_array << grocery_data
      @grocery_hash[dummy_array[0]] = dummy_array[1]
    end
  end
  @grocery_hash

  erb :individual
end
