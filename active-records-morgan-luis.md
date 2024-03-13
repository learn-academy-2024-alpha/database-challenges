<!-- Challenge: Rolodex
Note: A rolodex is a collection of paper cards that contain people's names and contact information. They were a common household and office item in the pre-digital age.

As a developer, I have been tasked with creating a database model to store friends and family contact information. I want to ensure the database behaves as expected and the necessary information can be retrieved, added, updated, and deleted.

All tasks should be performed in order as listed below.

✔️ Acceptance Criteria
The rolodex application data should be managed by a PostgreSQL database in a Rails application.

The model should be called Person with first_name, last_name, and phone attributes. All data types should be strings.✅
rails generate model Person first_name:string last_name:string phone:string


Add five friends and family members to the people table using the Rails console.
 Person.create(first_name:"friend1", last_name:"lastname1", phone:"0
1")

Retrieve all the people in the database.✅
Person.all
Retrieve the third person in the database.✅
third_person = Person.find(3)

Retrieve only the first name of the first person in the database.✅
first_person = Person.find(1)
first_person.first_name

Remove the last person from the database.✅
 fifth_person = Person.last
 fifth_person
 fifth_person.destroy
Add yourself to the people table.✅
 Person.create(first_name:"Luis", last_name:"Moreno", phone:"0000000
01")

Retrieve all the people that have the same last name as you.✅
first_person.update(last_name:"Moreno")
 Person.where(last_name:"Moreno")

Retrieve only the first person from the list of people that have the same last name as you.✅
Moreno_last_name = Person.where(last_name:"Moreno")
Moreno_last_name.first

Update the phone number of the second person in the database.✅
second_person.update(Phone:"updated number")
second_person.update(phone:"updated number")

Retrieve the last name of the third person in the database.✅
third_person.last_name

🏔 Stretch Goals
Update all the family members with the same last name as you to have the same phone number as you.✅
 Moreno_last_name.update(phone:"updated number")

Remove all family members that do not have your last name. -->✅
<!-- not_moreno = Person.where.not(last_name:"Moreno")
 not_moreno
 not_moreno.destroy_all
 Person.all -->