### 💳 Challenge: Banking Application
As a developer, I have been tasked with creating a database to store information for a bank that issues credit cards. The account owner must fill out a bank application that includes their name and address. Then account owners can be issued one or more credit cards. Credit cards must belong to an account owner.

✔️ Acceptance Criteria
The banking application data should be managed by a PostgreSQL database in a Rails application.✅
An account owner should have a name and an address.
There should be at least three owners in the database.
A credit card has a number and an expiration date.
Remember! Credit cards CANNOT exist without an account owner.
Think about the purpose of each data type and what characters are necessary in each column. (Example: 02/2023 vs 02-02-2023)
Each account owner should have at least one credit card.
At least one account owner should have three credit cards.
🏔 Stretch Goals
Add a credit limit to each card.
Find the total credit extended to an owner who has multiple credit cards.


### Create a model and table for account owner

  $ rails g model Owner name:"string" address:"string"
    $ rails db:migrate


### Create a model and table for credit cards

  $ rails g model Card number:"string" date:"string"
    $ rails db:migrate

### Add has_many and belongs_to, to owner and card model

  $ has_many :cards
    $ belongs_to :owner

### Add Foreign key column to cards
  $ rails g migration adds (I messed up and added a space between adds and foreign_key)
    $ add_column :cards, :owner_id, :integer


### Create 3 account owners
  $ rails c

  $ Owner.create(name: "Goober Johnson", address: "123 main street, best town, USA, 12345")

  $ Owner.create(name: "Freddy Krueger", address:"32 elm street, creepy town, USA, 32323")

  $ Owner.create(name: "chucky", address: "123 doll house way, creepsville, USA, 16661")

### Create credit cards
  $ goober = Owner.first
    $ goober.cards.create(number: "1234-5678-9789-1234", date: "02/28")
    $ goober.cards.create(number: "1234-1234-1234-1234", date: "04/25")

  $ nightmare = Owner.second
    $ nightmare.cards.create(number: "3232-3232-3232-3232", date: "10/31")
    $nightmare.cards.create(number: "1111-1111-1111-1111", date: "10/31")

  $ evil_doll = Owner.third
    $ evil_doll.cards.create(number: "6666-6666-6666-6666", date: "04/04")
    $ evil_doll.cards.create(number: "6766-6346-4476-56866", date: "02/35")
    $ evil_doll.cards.create(number: "6767-6236-5376-6346", date: "12/25")

### Add Credit Limit to each card

  $ rails g migration adds_limit
    $ add_column :cards, :credit_limit, :integer
      $ rails db:migrate

    $Card.first.update(credit_limit: 1200)

    $ Card.second.update(credit_limit: 1600)

    $ Card.third.update(credit_limit: 2000)

    $ Card.fourth.update(credit_limit: 5000)

    $ Card.fifth.update(credit_limit: 500)

    $ Card.find(6).update(credit_limit: 200000)

    $ Card.find(7).update(credit_limit: 10000)

### Create a total credit extended column

  $ rails g migration add_total_credit
    $ add_column :cards, :total_credit, :integer
      $ rails db:migrate 

  $ goober = owner.first
    $ goober_credit_limits = goober.cards.sum(:credit_limit)
      $ goober.update(total_credit: goober_credit_limits)

  $ nightmare = Owner.second
    $ nightmare_credit_limits = nightmare.cards.sum(:credit_limit)
    $ nightmare.update(total_credit: nightmare_credit_limits)

  $ evil_doll = Owner.third
    $ evil_doll_credit_limits = evil_doll.cards.sum(:credit_limit)
      $ vil_doll.update(total_credit: evil_doll_credit_limits)