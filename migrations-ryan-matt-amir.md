🍿 Challenge: Favorite Movies
As a developer, you are tasked with creating a new Rails application called favorite-movies to store data for your cohort. The application will start with just the structure of the database with a model called Movie. The Movie model will have an attribute for title that is a string.

👩‍💻 Developer Tasks

As a developer, I can add a category to the Movie model called category that is a string.
rails generate migration add_category
inside of db migrate folder : add_column :movies, :category, :string
rails db:migrate

As a developer, I can add a category to the Movie model called rating that is a string.
rails generate migration add_rating
inside of db migrate folder : add_column :movies, :rating, :string
rails db:migrate

As a developer, I can add a category to the Movie model called run_time that is a number.
rails generate migration add_run_time
inside of db migrate folder : add_column :movies, :run_time, :integer
rails db:migrate

As a developer, I can add five entries to the database via the Rails console.
Movies.create(title:"Semi-Pro", category:"comedy", rating:"5 stars", run_time:92)
Movie.create(title:"Forrest Gump", category:"comedy-drama", rating:"4 stars", run_time:142)
Movie.create(title:"Jack and Jill", category:"comedy", rating:"0 stars", run_time:108)
Movie.create(title:"Inception", category:"thriller", rating:"4 stars", run_time:145)
Movie.create(title:"John Wick", category:"action", rating:"3 stars", run_time:125)

this creates the below 

  Movie.all 
  Movie Load (0.3ms)  SELECT "movies".* FROM "movies" /* loading for pp */ LIMIT $1  [["LIMIT", 11]]
 => 
[#<Movie:0x0000000105c3cd18
  id: 1,
  title: "Semi-Pro",
  created_at: Thu, 14 Mar 2024 18:22:04.279173000 UTC +00:00,
  updated_at: Thu, 14 Mar 2024 18:22:04.279173000 UTC +00:00,
  category: "comedy",
  rating: "5 stars",
  run_time: 92>,
 #<Movie:0x0000000105c3cbd8
  id: 2,
  title: "Forrest Gump",
  created_at: Thu, 14 Mar 2024 18:24:03.006836000 UTC +00:00,
  updated_at: Thu, 14 Mar 2024 18:24:03.006836000 UTC +00:00,
  category: "comedy-drama",
  rating: "4 stars",
  run_time: 142>,
 #<Movie:0x0000000105c3ca98
  id: 3,
  title: "Jack and Jill",
  created_at: Thu, 14 Mar 2024 18:25:21.732943000 UTC +00:00,
  updated_at: Thu, 14 Mar 2024 18:25:21.732943000 UTC +00:00,
  category: "comedy",
  rating: "0 stars",
  run_time: 108>,
 #<Movie:0x0000000105c3c958
  id: 4,
  title: "Inception",
  created_at: Thu, 14 Mar 2024 18:26:55.391501000 UTC +00:00,
  updated_at: Thu, 14 Mar 2024 18:26:55.391501000 UTC +00:00,
  category: "thriller",
  rating: "4 stars",
  run_time: 145>,
 #<Movie:0x0000000105c3c818
  id: 5,
  title: "John Wick",
  created_at: Thu, 14 Mar 2024 18:27:57.302851000 UTC +00:00,
  updated_at: Thu, 14 Mar 2024 18:27:57.302851000 UTC +00:00,
  category: "action",
  rating: "3 stars",
  run_time: 125>] 
(END)


As a developer, I can update the run_time column to be a string.
rails g migration change_run_time_data_type
rails db:migrate

As a developer, I can update the values of the five existing database entries to include a unit of time on the run_time column. (Example: '165 minutes' or '1 hr, 45 minutes')

semi_pro = Movie.where(title:"Semi-Pro")
semi_pro.update(run_time:"92 minutes")

forrest_gump = Movie.where(title:"Forrest Gump")
forrest_gump.update(run_time:"142 minutes")

jack_and_jill = Movie.where(title:"Jack and Jill")
jack_and_jill.update(run_time:"108 minutes")

inception = Movie.where(title:"Inception")
inception.update(run_time:"2 hours and 28 minutes")

john_wick = Movie.where(title:"John Wick")
john_wick.update(run_time:"1 hours and 43 minutes")

run >> Movie.all
[#<Movie:0x0000000106648208
  id: 1,
  title: "Semi-Pro",
  created_at: Thu, 14 Mar 2024 18:22:04.279173000 UTC +00:00,
  updated_at: Thu, 14 Mar 2024 18:47:20.909042000 UTC +00:00,
  category: "comedy",
  rating: "5 stars",
  run_time: "92 minutes">,
 #<Movie:0x00000001066480c8
  id: 2,
  title: "Forrest Gump",
  created_at: Thu, 14 Mar 2024 18:24:03.006836000 UTC +00:00,
  updated_at: Thu, 14 Mar 2024 18:53:15.448924000 UTC +00:00,
  category: "comedy-drama",
  rating: "4 stars",
  run_time: "142 minutes">,
 #<Movie:0x0000000106647f88
  id: 3,
  title: "Jack and Jill",
  created_at: Thu, 14 Mar 2024 18:25:21.732943000 UTC +00:00,
  updated_at: Thu, 14 Mar 2024 18:54:34.556527000 UTC +00:00,
  category: "comedy",
  rating: "0 stars",
  run_time: "108 minutes">,
 #<Movie:0x0000000106647e48
  id: 4,
  title: "Inception",
  created_at: Thu, 14 Mar 2024 18:26:55.391501000 UTC +00:00,
  updated_at: Thu, 14 Mar 2024 18:56:16.446705000 UTC +00:00,
  category: "thriller",
  rating: "4 stars",
  run_time: "2 hours and 28 minutes">,
 #<Movie:0x0000000106647d08
  id: 5,
  title: "John Wick",
  created_at: Thu, 14 Mar 2024 18:27:57.302851000 UTC +00:00,
  updated_at: Thu, 14 Mar 2024 18:57:24.654876000 UTC +00:00,
  category: "action",
  rating: "3 stars",
  run_time: "1 hours and 43 minutes">] 
(END)


As a developer, I can rename the column category to be named genre.

rails g migration change_category_to_genre 
rename_column :movies, :category, :genre
rails db:migrate