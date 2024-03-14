💳 Challenge: Banking Application
As a developer, I have been tasked with creating a database to store information for a bank that issues credit cards. The account owner must fill out a bank application that includes their name and address. Then account owners can be issued one or more credit cards. Credit cards must belong to an account owner.

## belongs_to - account owner :name, :address

## has_many - credit cards :number, :experation_date, acc_owner_id

✔️ Acceptance Criteria
The banking application data should be managed by a PostgreSQL database in a Rails application.🪪
An account owner should have a name and an address.🪪

## rails g model AccountOwner name:string address:string

## rails g model CreditCard number:integer exp_date:string account_owner_id:integer

## rails db:migrate

There should be at least three owners in the database.🪪

## AccountOwner.create(name:"Morgan", address:"2745 Westpointe Dr")

## AccountOwner.create(name:"Cari", address:"Kyle, Tx")

## AccountOwner.create(name:"Robert", address:"Carrollton, Texas")

A credit card has a number and an expiration date.🪪

## morgan = AccountOwner.first

## morgan.credit_cards.create(number:123456789, exp_date:"03/24")

Remember! Credit cards CANNOT exist without an account owner.🪪
Think about the purpose of each data type and what characters are necessary in each column. (Example: 02/2023 vs 02-02-2023)
Each account owner should have at least one credit card.🪪

## cari = AccountOwner.second

## cari.credit_cards.create(number:987654321, exp_date:"12/30")

## robert = AccountOwner.find(3)

## robert.credit_cards.create(number:469469469, exp_date:"05/26")

## robert.credit_cards.create(number:214214214, exp_date:"09/25")

At least one account owner should have three credit cards.🪪

## cari.credit_cards.create(number:909090909, exp_date:"01/25" )

## cari.credit_cards.create(number:303030303, exp_date:"08/27")

🏔 Stretch Goals
Add a credit limit to each card.🪪

## rails g migration AddCreditLimitColumn

## add_column :credit_cards, :credit_limit, :integer

## rails db:migrate

## CreditCard.update_all(credit_limit:2000)

Find the total credit extended to an owner who has multiple credit cards.🪪

## cari = AccountOwner.second

## cari_cards = cari.credit_cards

## cari_cards.sum(:credit_limit)
