
LOGIN

	heroku login
	# heroku keys:add

SQLITE3 A POSTGRESS

	change Gemfile gem 'sqlite3' a gem 'pg'

	bundle 
	bundle install --without production (si es el caso)

	change database.yml to the file in this folder

	add version ex: ruby "2.3.3" at end of Gemfile

CREATE

	heroku create 
	# o 
	# heroku create MiAppsita

VERIFY

	# git config --list | grep heroku
	git remote -v

PUSH

	git push heroku master
	# git push heroku

MIGRATE

	heroku run rake db:migrate

CHECK DYNOS

	# Ensure we have one dyno running the web process type
	heroku ps:scale web=1
	# List the running dynos of your application
	heroku ps
	# We can now visit the app in our browser with
	heroku open

CORREGIR CAMBIOS Y EMPUJARLOS (realizar los cambios necesarios)

	git push heroku master
	# git push heroku

RENAME

	heroku rename blah-blah-blah
	nombres aleatorios seguros ('a'..'z').to_a.shuffle[0..7].join

HELP

	Run heroku help to see a list of Heroku commands.

VER LA APP
	# We can now visit the app in our browser with
	heroku open

LOG

heroku logs -t

MIGRATE

	heroku run rails db:migrate

REINICIAR
# Normal
	heroku restart
	
# Post-cambios en db
	$ rails test
	$ git push heroku
	$ heroku pg:reset DATABASE
	$ heroku run rails db:migrate
	$ heroku run rails db:seed
	$ heroku restart

DB DROP
	heroku pg:reset DATABASE
	luego heroku restart
	luego ahí si heroku run rails db:migrate
	
CONSOLE y sandbox
	heroku console
	heroku run rails console --sandbox

CASO SIGNIFICANT TRAFFIC

# Before deploying to Heroku, it’s worth noting that the application will 
# briefly be in an invalid state after pushing but before the migration
# is finished. On a production site with significant traffic, it’s a good
#  idea to turn maintenance mode on before making the changes:

$ heroku maintenance:on
$ git push heroku
$ heroku run rails db:migrate
$ heroku maintenance:off
	



	