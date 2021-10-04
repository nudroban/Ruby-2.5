require 'faker'

def person
  person = Hash.new
  person[:first_name] = Faker::Name.first_name
  person[:last_name] = Faker::Name.last_name
  person[:city] = Faker::Address.city
  person[:email] = Faker::Internet.email
  person
end

peoples = []
 
for x in 1..100 do 
  peoples.append(person) 
end
puts peoples
