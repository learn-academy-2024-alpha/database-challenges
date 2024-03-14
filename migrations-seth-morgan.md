Challenge: Favorite Movies
As a developer, you are tasked with creating a new Rails application called favorite-movies to store data for your cohort. The application will start with just the structure of the database with a model called Movie. The Movie model will have an attribute for title that is a string.
## - rails g model Movie title:string
## - rails db:migrate

👩‍💻 Developer Tasks
As a developer, I can add a category to the Movie model called category that is a string.
## - rails g migration AddCategoryColumn
## - rails db:migrate

As a developer, I can add a category to the Movie model called rating that is a string.
## - rails g migration AddRating
## - add add_column :movies, :rating, :string to new category
## - rails db:migrate

As a developer, I can add a category to the Movie model called run_time that is a number.
## - rails g migration AddRunTimeColumn
## - add_column :movies, :run_time, :numeric
## - rails db:migrate

As a developer, I can add five entries to the database via the Rails console.
## - rails c
## - Movie.create(title: "Echoes of Tomorrow", category: "Si-Fi", rating: "PG-13", run_time: 2.15)
## -  Movie.create(title: "Shrek", category: "animation/comedy", rating: "PG", run_time: 1.30)
## - Movie.create(title: "Mysteries of the Deep", category: "documentary", rating: "PG", run_time: 1.30)
## - Movie.create(title: "The Heist of Centuries", category: "action", rating: "PG-13", run_time: 2.10)
## - Movie.create(title: "Land of the lost", category: "Si-Fi", rating: "PG-13", run_time: 1.42)

As a developer, I can update the run_time column to be a string.
## - rails g migration UpdateRunTimeToString
## - change_column :table_name, :column_name, :datatype
## - rails db:migrate

As a developer, I can update the values of the five existing database entries to include a unit of time on the run_time column. (Example: '165 minutes' or '1 hr, 45 minutes')
## - rails c
## - Movie.find(1).update(run_time:"2 hr 15 min")
## - Movie.find(2).update(run_time:"1 hr 30 min")
## - Movie.find(3).update(run_time:"1 hr 30 min")
## - Movie.find(4).update(run_time:"2 hr 10 min")
## - Movie.find(5).update(run_time:"1 hr 42 min")

As a developer, I can rename the column category to be named genre.
## - rails g migration RenameColunmCategoryToGenre
## - rename_column :movies, :category, :genre
