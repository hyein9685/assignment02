restaurants = {
    Hanampig: ["korea","Pork belly",4]
}
puts "What would you like to do?"
choice = gets.chomp
puts "-- Type 'add' to add a movie."
puts "-- Type 'update' to update a movie"
puts "-- Type 'display' to display all movies."
puts "-- Type 'delete' to delete a movie."

while choice!="exit"
    case choice
    
        when "add"
            puts "What is your restaurant name?"
            restaurant = gets.chomp
            
            if restaurants[restaurant.to_sym].nil?
                puts "You should write'category(korea/chinese/japanese/western.)'"
                category=gets.chomp
                
                if category == "korea" || "chinese" || "japanese" || "western"
                      puts "What is your favorite menu?"
                    menu = gets.chomp
                    
                else
                    puts "You should write about category again."
                    break
                
                end
                
                puts "-- What is your rating(0~5)?"
                rating = gets.chomp.to_i
                    
                if rating > 0 && rating < 6
                    rating.to_i
                        
                else
                    puts "You should write about rating again."
                    break
                    
                end
            kind = []
            kind = [category, menu, rating]
            restaurants[restaurant.to_sym] = kind
            
            puts "You can add"
                
            else
                puts "You should write about name again.The restaurants already exists."
                
                    
            end
            
            
        when "update"
            puts "What restaurant do you want to update?"
            restaurant= gets.chomp
            
            if restaurants[restaurant.to_sym].nil?
                puts "This is error. It doesn't exist"
                
            else
                puts "What's the new rating(0~5)?"
                rating = gets.chomp
                
                restaurants[restaurant.to_sym] = category,menu,rating.to_i
                puts "#{restaurant} can update."
            end
            
            
        when "display"
            puts restaurants
            
            arr=restaurants.sort_by{|key ,value| value[2]}.reverse
            
            arr.each do |key, value|
                puts "#{key}: #{value}"
            end

        when "delete"
            puts "What restaurant do you want to delete?"
            restaurant = gets.chomp
            
            if restaurants[restaurant.to_sym].nil?
                puts "This is error. It couldn't find!"
                
            else
                restaurants.delete(restaurant.to_sym)
                puts "You can delete"
                
            end
            
        when "exit"
            
        else
            puts "It's wrong."
    
    end
  
  
  
end
