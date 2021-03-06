# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require "open-uri"
require "json"

url = "https://data.gov.au/data/api/3/action/datastore_search?resource_id=34076296-6692-4e30-b627-67b7c4eb1027&q=cockatoo&limit=50"

buffer = URI.open(url).read
data = JSON.parse(buffer)["result"]["records"]

data.each do |loo|
  Loo.create(
    name: loo["Name"],
    facility_type: loo["FacilityType"],
    address: loo["Address1"],
    town: loo["Town"],
    state: loo["State"],
    rating: 5
  )
end
