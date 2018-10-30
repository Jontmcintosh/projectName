# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


require 'net/http'
require 'json'
require 'pp'
 
url = 'https://dog.ceo/api/breeds/list/all'
uri = URI(url)
response = Net::HTTP.get(uri)

info =  JSON.parse(response)


info["message"].each do |breeds|

	 dogBreed = "#{breeds[0]}"
    dog_type = Dog.create(main_breed: dogBreed, sub_breed: nil)
    character_type = Character.create(hero: Faker::Overwatch.hero, 
    location: Faker::Overwatch.location, dog_id: dog_type)
     puts "Hero name : #{character_type.hero} and his dog's breed is #{dogBreed}."

    breeds[1].each do |subbreeds|
        sub_breed = subbreeds
        dog_type = Dog.create(main_breed: dogBreed, sub_breed: sub_breed)
		puts "This is a subbreed #{subbreeds}"
	end

    
        
    

end











