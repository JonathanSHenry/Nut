module ApplicationHelper

    #Returns the full title on a per-page basis.
    def full_title(page_title = '')
        base_title = "Nut"
        if page_title.empty?
            base_title
        else
            page_title + " | " + base_title
        end
    end

    def known_allergies_helper(user)
        allergy_string = ""
        if (!user.peanut && !user.gluten && !user.dairy && !user.egg && !user.soy && !user.shellfish)
            allergy_string += "No Known Allergies"
        else
            if user.peanut
                allergy_string += "Peanuts, "
            else          
                allergy_string += ""
            end
            if user.gluten
                allergy_string += "Gluten, "
            else          
                allergy_string += ""
            end
            if user.dairy
                allergy_string += "Dairy, "
            else          
                allergy_string += ""
            end
            if user.egg
                allergy_string += "Eggs, "
            else          
                allergy_string += ""
            end             
            if user.soy
                allergy_string += "Soy, "
            else          
                allergy_string += ""
            end                        
            if user.shellfish
                allergy_string += "Shellfish "
            else          
                allergy_string += ""
            end
        end
    end
end