class Restaurant < ApplicationRecord
    def self.search(search)  
        #change to match restaurants and users database (or whatever we want to search)
        where("lower(users.name) LIKE :search OR lower(restaurants.name) LIKE :search", search: "%#{search.downcase}%").uniq 
    end
end
