Challenge: Banking Application
As a developer, I have been tasked with creating a database to store information for a bank that issues credit cards. The account owner must fill out a bank application that includes their name and address. Then account owners can be issued one or more credit cards. Credit cards must belong to an account owner.

✔️ Acceptance Criteria
The banking application data should be managed by a PostgreSQL database in a Rails application.
## - rails new associations -d postgresql -T
## - rails db:create

An account owner should have a name and an address.
## rails g model AccountOwner name:string address:string
## rails g model CreditCard number:integer exp_date:string acc_owner_id:integer
## rails db:migrate

There should be at least three owners in the database.
## - AccountOwner.create(name: "max", address: "123 oak st.")
## - AccountOwner.create(name: "mark", address: "345 happy st.")
## - AccountOwner.create(name: "mike", address: "789 fallout st.")


A credit card has a number and an expiration date.
## max = AccountOwner.first
##  - max.credit_cards
##      - max.credit_cards.create(number:123456789, experation_date:"01/12")
##  mark = AccountOwner.second
##  - mark.credit_cards
##      - mark.credit_cards.create(number:397602394670934, experation_date:"01/14")
## mike = AccountOwner.find(3)
## - mike.credit_cards
##      -  mike.credit_cards.create(number:12345698, experation_date:"12/22")



Remember! Credit cards CANNOT exist without an account owner.
Think about the purpose of each data type and what characters are necessary in each column. (Example: 02/2023 vs 02-02-2023)
Each account owner should have at least one credit card.
At least one account owner should have three credit cards.
## mike.credit_cards.create(number:987345698, experation_date:"03/32")
##  mike.credit_cards.create(number:12456698, experation_date:"12/12")

🏔 Stretch Goals
Add a credit limit to each card.
## after creating a new table, add_column :credit_cards, :credit_limit, :integer
## CreditCard.update_all(credit_limit:5000)

Find the total credit extended to an owner who has multiple credit cards.
## mike = AccountOwner.find(3)
## mike.credit_cards
## mike_cards = mike.credit_cards
## mike_cards.sum(:credit_limit)
## or
## mike = AccountOwner.find(3)
## mike.credit_cards.sum(:credit_limit) = 15000