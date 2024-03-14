🍿 Challenge: Favorite Movies
As a developer, you are tasked with creating a new Rails application called favorite-movies to store data for your cohort. The application will start with just the structure of the database with a model called Movie. The Movie model will have an attribute for title that is a string.🍿

## rails g model Movie title:string

## rails db:migrate

👩‍💻 Developer Tasks
As a developer, I can add a category to the Movie model called category that is a string.🍿

## rails g migration AddCategoryColumn

## add_column :movies, :category, :string

## rails db:migrate

As a developer, I can add a category to the Movie model called rating that is a string.🍿

## rails g migration AddRatingColumn

## add_column :movies, :rating, :string

## rails db:migrate

As a developer, I can add a category to the Movie model called run_time that is a number.🍿

## rails g migration AddRunTimeColumn

## add_column :movies, :run_time, :numeric

## rails db:migrate

As a developer, I can add five entries to the database via the Rails console.🍿

## Movie.create(title:"Inception", category:"Science Fiction, Action", rating:"8.8", run_time:2.5)

## Movie.create(title:"The Shawshank Redemption", category:"Drama, Crime", rating:"9.3", run_time:2.5)

## Movie.create(title:"The Godfather", category:"Drama, Crime", rating:"9.2", run_time:2.75)

## Movie.create(title:"The Dark Knight", category:"Action, Crime", rating:"9.0", run_time:2.5)

## Movie.create(title:"Pulp Fiction", category:"Drama, Crime", rating:"8.9", run_time:2.25)

As a developer, I can update the run_time column to be a string.🍿

## rails g migration ChangeRunTimeDataTypeToString

## change_column :movies, :run_time, :string

## rails db:migrate

As a developer, I can update the values of the five existing database entries to include a unit of time on the run_time column.🍿(Example: '165 minutes' or '1 hr, 45 minutes')

## Movie.find(1).update(run_time:"2 hours 28 minutes")

## Movie.find(2).update(run_time:"2 hours 22 minutes")

## Movie.find(3).update(run_time:"2 hours 58 minutes")

## Movie.find(4).update(run_time:"2 hours 32 minutes")

## Movie.find(5).update(run_time:"2 hours 34 minutes")

As a developer, I can rename the column category to be named genre.🍿

## rails g migration RenameCategoryToGenre

## rename_column :movies, :category, :genre

## rails db:migrate
