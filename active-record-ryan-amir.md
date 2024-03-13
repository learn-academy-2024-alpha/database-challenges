📇 Challenge: Rolodex
Note: A rolodex is a collection of paper cards that contain people's names and contact information. They were a common household and office item in the pre-digital age.

As a developer, I have been tasked with creating a database model to store friends and family contact information. I want to ensure the database behaves as expected and the necessary information can be retrieved, added, updated, and deleted.

All tasks should be performed in order as listed below.

✔️ Acceptance Criteria

The rolodex application data should be managed by a PostgreSQL database in a Rails application.

The model should be called Person with first_name, last_name, and phone attributes. All data types should be strings.

rails generate model Person first_name:string last_name:string phone:string


Add five friends and family members to the people table using the Rails console.

Person.create(first_name:"Amir", last_name:"Jackson", phone:"858-111-2345")
Person.create(first_name:"Moriah", last_name:"Lemus", phone:"760-814-9999")
Person.create(first_name:"Sofia", last_name:"Lemus", phone:"951-313-4460")
Person.create(first_name:"Mason", last_name:"Shifflet", phone:"951-212-4455")
Person.create(first_name:"Matt", last_name:"Napoli", phone:"760-812-4325")

Retrieve all the people in the database.
Person.all

Retrieve the third person in the database.
Person.find(3)

Retrieve only the first name of the first person in the database.
Person.first.first_name

Remove the last person from the database.
fifth = Person.fifth
fifth.destroy

Add yourself to the people table.
Person.create(first_name:"Ryan", last_name:"Lemus", phone:"951-313-4444")

Retrieve all the people that have the same last name as you.
Person.where(last_name:"Lemus")

Retrieve only the first person from the list of people that have the same last name as you.
Person.where(last_name:"Lemus").first

Update the phone number of the second person in the database.
Person.second.update(phone:"951-435-9876")

Retrieve the last name of the third person in the database.
Person.third.last_name

🏔 Stretch Goals
Update all the family members with the same last name as you to have the same phone number as you.
last_name_lemus = Person.where(last_name:"Lemus")
last_name_lemus.update(phone:"909-989-0987")

Remove all family members that do not have your last name.
not_lemus = Person.where.not(last_name:"Lemus")
not_lemus.destroy_all
