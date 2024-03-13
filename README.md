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


  Contact.create first_name: "Brenda", last_name: "Lee", phone_number: "5559876543"
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

###