# save restaurants database settings in global var
DB_RESTAURANTS = YAML::load(ERB.new(File.read(Rails.root.join("config","database_restaurants.yml"))).result)[Rails.env]

