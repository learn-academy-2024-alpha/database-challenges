# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

###First create a database
$ rails generate model Contact first_name:string last_name:string  phone_number:string
### then migrate
$ rails db:migrate
### access the rails console
$ rails c 
### then create using Class.create
$ Contact.create(first_name: "Matt", last_name: "Barnabo", phone_number: "9524659143")
  TRANSACTION (0.1ms)  begin transaction
  Contact Create (0.7ms)  INSERT INTO "contacts" ("first_name", "last_name", "phone_number", "created_at", "updated_at") VALUES (?, ?, ?, ?, ?) RETURNING "id"  [["first_name", "Matt"], ["last_name", "Barnabo"], ["phone_number", "9524659143"], ["created_at", "2024-03-13 18:42:53.812340"], ["updated_at", "2024-03-13 18:42:53.812340"]]
  TRANSACTION (0.1ms)  commit transaction
 => 
  #<Contact:0x000000010511bce0
 id: 1,
 first_name: "Matt",
 last_name: "Barnabo",
 phone_number: "9524659143",
 created_at: Wed, 13 Mar 2024 18:42:53.812340000 UTC +00:00,
 updated_at: Wed, 13 Mar 2024 18:42:53.812340000 UTC +00:00> 



3.2.0 :004 > Contact.create(first_name: "Mark", last_name: "Smith", phone_number: "2109657966")
  TRANSACTION (0.2ms)  begin transaction
  Contact Create (2.0ms)  INSERT INTO "contacts" ("first_name", "last_name", "phone_number", "created_at", "updated_at") VALUES (?, ?, ?, ?, ?) RETURNING "id"  [["first_name", "Mark"], ["last_name", "Smith"], ["phone_number", "2109657966"], ["created_at", "2024-03-13 18:50:33.135163"], ["updated_at", "2024-03-13 18:50:33.135163"]]
  TRANSACTION (0.3ms)  commit transaction
  => 
  #<Contact:0x0000000105d3e9c8
  id: 2,
  first_name: "Mark",
  last_name: "Smith",
  phone_number: "2109657966",
  created_at: Wed, 13 Mar 2024 18:50:33.135163000 UTC +00:00,
  updated_at: Wed, 13 Mar 2024 18:50:33.135163000 UTC +00:00> 



   Contact.create(first_name: "Seth", last_name: "Crist", phone_number: "5555555555")
  TRANSACTION (0.1ms)  begin transaction
  Contact Create (1.5ms)  INSERT INTO "contacts" ("first_name", "last_name", "phone_number", "created_at", "updated_at") VALUES (?, ?, ?, ?, ?) RETURNING "id"  [["first_name", "Seth"], ["last_name", "Crist"], ["phone_number", "5555555555"], ["created_at", "2024-03-13 18:52:21.686919"], ["updated_at", "2024-03-13 18:52:21.686919"]]
  TRANSACTION (0.3ms)  commit transaction
  => 
  #<Contact:0x0000000106013220
  id: 3,
  first_name: "Seth",
  last_name: "Crist",
  phone_number: "5555555555",
  created_at: Wed, 13 Mar 2024 18:52:21.686919000 UTC +00:00,
  updated_at: Wed, 13 Mar 2024 18:52:21.686919000 UTC +00:00> 


   Contact.create first_name: "Alex", last_name: "Johnson", phone_number: "5551234576"
  TRANSACTION (0.2ms)  begin transaction
  Contact Create (2.1ms)  INSERT INTO "contacts" ("first_name", "last_name", "phone_number", "created_at", "updated_at") VALUES (?, ?, ?, ?, ?) RETURNING "id"  [["first_name", "Alex"], ["last_name", "Johnson"], ["phone_number", "5551234576"], ["created_at", "2024-03-13 18:55:28.123020"], ["updated_at", "2024-03-13 18:55:28.123020"]]
  TRANSACTION (0.5ms)  commit transaction
  => 
  #<Contact:0x0000000105d33e88
  id: 4,
  first_name: "Alex",
  last_name: "Johnson",
  phone_number: "5551234576",
  created_at: Wed, 13 Mar 2024 18:55:28.123020000 UTC +00:00,
  updated_at: Wed, 13 Mar 2024 18:55:28.123020000 UTC +00:00> 


  TRANSACTION (0.1ms)  begin transaction
  Contact Create (1.8ms)  INSERT INTO "contacts" ("first_name", "last_name", "phone_number", "created_at", "updated_at") VALUES (?, ?, ?, ?, ?) RETURNING "id"  [["first_name", "Brenda"], ["last_name", "Lee"], ["phone_number", "5559876543"], ["created_at", "2024-03-13 18:57:57.091656"], ["updated_at", "2024-03-13 18:57:57.091656"]]
  TRANSACTION (0.4ms)  commit transaction
  => 
  #<Contact:0x0000000106017be0
  id: 5,
  first_name: "Brenda",
  last_name: "Lee",
  phone_number: "5559876543",
  created_at: Wed, 13 Mar 2024 18:57:57.091656000 UTC +00:00,
  updated_at: Wed, 13 Mar 2024 18:57:57.091656000 UTC +00:00> 


 ### Access all contacts
 3.2.0 :010 > Contact.all
  Contact Load (0.2ms)  SELECT "contacts".* FROM "contacts" /* loading for pp */ LIMIT ?  [["LIMIT", 11]]
 => 
[#<Contact:0x000000010609a518
  id: 1,
  first_name: "Matt",
  last_name: "Barnabo",
  phone_number: "9524659143",
  created_at: Wed, 13 Mar 2024 18:42:53.812340000 UTC +00:00,
  updated_at: Wed, 13 Mar 2024 18:42:53.812340000 UTC +00:00>,
 #<Contact:0x000000010609a3d8
  id: 2,
  first_name: "Mark",
  last_name: "Smith",
  phone_number: "2109657966",
  created_at: Wed, 13 Mar 2024 18:50:33.135163000 UTC +00:00,
  updated_at: Wed, 13 Mar 2024 18:50:33.135163000 UTC +00:00>,
 #<Contact:0x000000010609a298
  id: 3,
  first_name: "Seth",
  last_name: "Crist",
  phone_number: "5555555555",
  created_at: Wed, 13 Mar 2024 18:52:21.686919000 UTC +00:00,
  updated_at: Wed, 13 Mar 2024 18:52:21.686919000 UTC +00:00>,
 #<Contact:0x000000010609a158
  id: 4,
  first_name: "Alex",
  last_name: "Johnson",
  phone_number: "5551234576",
  created_at: Wed, 13 Mar 2024 18:55:28.123020000 UTC +00:00,
  updated_at: Wed, 13 Mar 2024 18:55:28.123020000 UTC +00:00>,
 #<Contact:0x000000010609a018
  id: 5,
  first_name: "Brenda",
  last_name: "Lee",
  phone_number: "5559876543",
  created_at: Wed, 13 Mar 2024 18:57:57.091656000 UTC +00:00,
  updated_at: Wed, 13 Mar 2024 18:57:57.091656000 UTC +00:00>] 
(END)

### Access the third contact 
Contact.find(3)
  Contact Load (0.2ms)  SELECT "contacts".* FROM "contacts" WHERE "contacts"."id" = ? LIMIT ?  [["id", 3], ["LIMIT", 1]]
 => 
#<Contact:0x0000000105fd8710
 id: 3,
 first_name: "Seth",
 last_name: "Crist",
 phone_number: "5555555555",
 created_at: Wed, 13 Mar 2024 18:52:21.686919000 UTC +00:00,
 updated_at: Wed, 13 Mar 2024 18:52:21.686919000 UTC +00:00> 

### Grab the first person and only thier first name
Contact.first.first_name
  Contact Load (0.3ms)  SELECT "contacts".* FROM "contacts" ORDER BY "contacts"."id" ASC LIMIT $1  [["LIMIT", 1]]
 => "Matt" 

 ### Removes the last person from the data base
set to variable first: brenda = Contact.last
brenda.destroy
TRANSACTION (0.2ms)  BEGIN
  Contact Destroy (1.3ms)  DELETE FROM "contacts" WHERE "contacts"."id" = $1  [["id", 5]]
  TRANSACTION (0.6ms)  COMMIT
 => #<Contact:0x00000001060e5798 id: 5, first_name: "Brenda", last_name: "Lee", phone_number: "5559876543", created_at: Wed, 13 Mar 2024 20:35:17.263871000 UTC +00:00, updated_at: Wed, 13 Mar 2024 20:35:17.263871000 UTC +00:00> 

 ### Add yourself/ Someone to the data base
Contact.create(first_name: "Morgan", last_name: "Crist", phone_number: "NA")
  TRANSACTION (0.2ms)  BEGIN
  Contact Create (1.9ms)  INSERT INTO "contacts" ("first_name", "last_name", "phone_number", "created_at", "updated_at") VALUES ($1, $2, $3, $4, $5) RETURNING "id"  [["first_name", "Morgan"], ["last_name", "Crist"], ["phone_number", "NA"], ["created_at", "2024-03-13 21:10:17.491052"], ["updated_at", "2024-03-13 21:10:17.491052"]]
  TRANSACTION (0.5ms)  COMMIT

  ### Find the person with the same last name
  Contact.where(last_name: "Crist")
  Contact Load (0.4ms)  SELECT "contacts".* FROM "contacts" WHERE "contacts"."last_name" = $1 /* loading for pp */ LIMIT $2  [["last_name", "Crist"], ["LIMIT", 11]]
 => 
[#<Contact:0x0000000106923ae0 id: 3, first_name: "Seth", last_name: "Crist", phone_number: "5555555555", created_at: Wed, 13 Mar 2024 20:34:17.221954000 UTC +00:00, updated_at: Wed, 13 Mar 2024 20:34:17.221954000 UTC +00:00>,
 #<Contact:0x00000001069239a0 id: 6, first_name: "Morgan", last_name: "Crist", phone_number: "NA", created_at: Wed, 13 Mar 2024 21:10:17.491052000 UTC +00:00, updated_at: Wed, 13 Mar 2024 21:10:17.491052000 UTC +00:00>]

 ### Retrieve only the first person from the list of people that have the same last name as you.
Contact.where(last_name: "Crist").first
  Contact Load (0.4ms)  SELECT "contacts".* FROM "contacts" WHERE "contacts"."last_name" = $1 ORDER BY "contacts"."id" ASC LIMIT $2  [["last_name", "Crist"], ["LIMIT", 1]]
 => #<Contact:0x0000000106908c18 id: 3, first_name: "Seth", last_name: "Crist", phone_number: "5555555555", created_at: Wed, 13 Mar 2024 20:34:17.221954000 UTC +00:00, updated_at: Wed, 13 Mar 2024 20:34:17.221954000 UTC +00:00>

 ### Update the phone number of the second person in the database.
Contact.second.update(phone_number: "5555555555")
  Contact Load (0.2ms)  SELECT "contacts".* FROM "contacts" ORDER BY "contacts"."id" ASC LIMIT $1 OFFSET $2  [["LIMIT", 1], ["OFFSET", 1]]
  TRANSACTION (0.2ms)  BEGIN
  Contact Update (0.7ms)  UPDATE "contacts" SET "phone_number" = $1, "updated_at" = $2 WHERE "contacts"."id" = $3  [["phone_number", "5555555555"], ["updated_at", "2024-03-13 21:25:43.251420"], ["id", 2]]
  TRANSACTION (0.6ms)  COMMIT

### Retrieve the last name of the third person in the database.
Contact.find(3).last_name
  Contact Load (0.5ms)  SELECT "contacts".* FROM "contacts" WHERE "contacts"."id" = $1 LIMIT $2  [["id", 3], ["LIMIT", 1]]
 => "Crist" 

 ### Update all the family members with the same last name as you to have the same phone number as you.
  same_lastname.update(phone_number: mark.phone_number) 
  Contact Load (12.0ms)  SELECT "contacts".* FROM "contacts" WHERE "contacts"."last_name" = $1  [["last_name", "Smith"]]
 => 
[#<Contact:0x0000000105be0dd8
  id: 6,
  first_name: "John",
  last_name: "Smith",
  phone_number: "281-330-8004",
  created_at: Wed, 13 Mar 2024 21:10:47.260225000 UTC +00:00,
  updated_at: Wed, 13 Mar 2024 21:10:47.260225000 UTC +00:00>,
 #<Contact:0x0000000105be0c98
  id: 2,
  first_name: "Mark",
  last_name: "Smith",
  phone_number: "281-330-8004",
  created_at: Wed, 13 Mar 2024 20:36:45.239777000 UTC +00:00,
  updated_at: Wed, 13 Mar 2024 21:30:12.999968000 UTC +00:00>] 

  #Remove all family members that do not have your last name.
  not_lastname = Contact.where.not(last_name: "Smith")
  Contact Load (0.3ms)  SELECT "contacts".* FROM "contacts" WHERE "contacts"."last_name" != $1 /* loading for pp */ LIMIT $2  [["last_name", "Smith"], ["LIMIT", 11]]
 => 
[#<Contact:0x0000000105ccbcc0
... 
3.2.0 :036 > not_lastname.destroy_all
  Contact Load (0.4ms)  SELECT "contacts".* FROM "contacts" WHERE "contacts"."last_name" != $1  [["last_name", "Smith"]]
  TRANSACTION (0.2ms)  BEGIN
  Contact Destroy (1.0ms)  DELETE FROM "contacts" WHERE "contacts"."id" = $1  [["id", 1]]
  TRANSACTION (1.6ms)  COMMIT
  TRANSACTION (0.2ms)  BEGIN
  Contact Destroy (2.8ms)  DELETE FROM "contacts" WHERE "contacts"."id" = $1  [["id", 3]]
  TRANSACTION (1.0ms)  COMMIT
  TRANSACTION (32.4ms)  BEGIN
  Contact Destroy (34.4ms)  DELETE FROM "contacts" WHERE "contacts"."id" = $1  [["id", 4]]
  TRANSACTION (0.6ms)  COMMIT
 => 
[#<Contact:0x0000000105be08d8
  id: 1,
  first_name: "Matt",
  last_name: "Barnabo",
  phone_number: "9524659143",
  created_at: Wed, 13 Mar 2024 20:34:37.838768000 UTC +00:00,
  updated_at: Wed, 13 Mar 2024 20:34:37.838768000 UTC +00:00>,
 #<Contact:0x0000000105be0798
  id: 3,
  first_name: "Seth",
  last_name: "Crist",
  phone_number: "555-555-5555\n",
  created_at: Wed, 13 Mar 2024 20:39:27.238447000 UTC +00:00,
  updated_at: Wed, 13 Mar 2024 20:39:27.238447000 UTC +00:00>,
 #<Contact:0x0000000105be0658
  id: 4,
  first_name: "Patrick",
  last_name: "Mahomes",
  phone_number: "111-111-1111",
  created_at: Wed, 13 Mar 2024 20:43:03.489580000 UTC +00:00,
  updated_at: Wed, 13 Mar 2024 20:43:03.489580000 UTC +00:00>] 