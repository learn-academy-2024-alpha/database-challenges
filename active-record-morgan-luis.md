The rolodex application data should be managed by a PostgreSQL database in a Rails application.✅
The model should be called Person with first*name, last_name, and phone attributes. All data types should be strings.✅
Add five friends and family members to the people table using the Rails console.✅
Person.create(first_name:"friend 5", last_name:"last
name 5", phone:"555-555-5555")
Retrieve all the people in the database.✅
Person.all
Retrieve the third person in the database.✅
third_person = Person.find(3)
Retrieve only the first name of the first person in the database.✅
first_person = Person.find 1
first_person.first_name
Remove the last person from the database.✅
fifth_person = Person.last
fifth_person.destroy
Add yourself to the people table.✅
Person.create(first_name:"Morgan", last_name:"Smith",
phone:"469-600-4233")
Retrieve all the people that have the same last name as you.✅
first_person.update(last_name:"Smith")
Person.where(last_name:"Smith")
Retrieve only the first person from the list of people that have the same last name as you.✅
smith_last_names = Person.where(last_name:"Smith")
smith_last_names.first
Update the phone number of the second person in the database.✅
second_person = Person.find(2)
second_person.update(phone:"*updated phone num\*")
Retrieve the last name of the third person in the database.✅
third_person.last_name

🏔 Stretch Goals
Update all the family members with the same last name as you to have the same phone number as you.✅
smith_last_names.update(phone:"469-600-4233")
Remove all family members that do not have your last name.✅
not_smith = Person.where.not(last_name:"Smith")
not_smith.destroy_all
