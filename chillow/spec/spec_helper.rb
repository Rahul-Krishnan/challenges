require 'pry'
require 'rspec'
require 'date'

require_relative '../lib/apartment.rb'
require_relative '../lib/dwelling.rb'
require_relative '../lib/house.rb'
require_relative '../lib/occupant.rb'

Dir[File.dirname(__FILE__) + '/../lib/*.rb'].each do |file|
  require File.basename(file, File.extname(file))
end
