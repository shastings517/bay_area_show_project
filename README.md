Bay Area Event RoR Project

The primary purpose of this application is to search for events in the Bay Area and check out our friends who are attending

Enter application:
1. User Login Screen - login.html.erb
	
	Create User model: name, email, age, password, password_digest, 

	zip_code, image, genre[array](Limit 3)

		Relationship: User has many events

			Create a UsersController: index, new, create, show, edit,

			update, destroy

			Create a SessionsController: new, attempt_login, destroy

	Create Event model: date, title,location,genre, 

	priceprice:integer, attending:boolean(set default false)

		Relationship: Relationship: Event has many users

	Create UserEvents model: id, user_id, event_id

Main screen - events/index.html.erb

UI Elements

Menu: Home, (Events page), About, Login, Logout

Map Section: Google Map with custom logo marker

Search input field: date, location, title, genre[array](Limit 3),

price, attending

Events Section: use partial- events/show.html.erb

Create a loop <% events.each do |e| %><%=e.date%><%=e.location%><%=e.
title%>
<%=e.genre%><%=e.price%><%=e.attending%>
<%end%>
User Visits Menu and clicks on “Profile” - Users/ index.html.erb

UI Elements

User profile image

Button- User can add new event from profile page- Create a form to

 add new events: events/_form.html.erb

Select Buttons: Friends(List), Account (Information),Event(History)

Create a partial for “Friends” which loops through friends. If friend

 is selected it will render events history page for that user

Create a partial form for “Account" to show/edit/update account

 information

Create a page for “Events” which will be added to the user history.

 This happens when the user selects attending on the on the index 

 page of all event

SPA- User profile and events index will meet criteria

Create a static “About" page, create a static “contact" with Mailer 

API’s- Facebook Authentication, Google Maps, BandsIntown

Addition gems:
 
 https://github.com/thoughtbot/paperclip for image upload

https://github.com/mislav/will_paginate/wiki for pagination

https://github.com/tobi/delayed_job for backgrounds jobs -app will 

continue functioning while sending email

Framework- We can go with Bootstrap but Jquery Mobile has a gem 

which will allow us to build a mobile application with what we know 

https://github.com/dmarkow/jquery-mobile-rails

Task


Monday by 6pm - have written and passed all test - Everyone write 

test

Complete by Tuesday at 6PM

Google Maps Integration -Sam

Oauth Integration - Donte

BandsInTown API Integration - Mark

Wednesday we begin structuring application. We will create a list of 

views and simple run down the lists.

App complete by 8PM on Wednesday

Thursday, Review, Enhance, Deploy to Heroku and Create Simple 

Presentation

If we come up with a clever name we can go to pop.com get a free

domain and i can whip up a quick logo and icon as well.

Update this readme by 10AM! Thanks

Parts to Test

Models
     User: has many events, has_secure password
          username
          password
          password_digest
          image
          age
          zip_code
          genre[array]
     Event: has many users
          date
          title
          geolocation
          genre[array]
          price : integer
          attending: boolean, default:false
     User_Event
Controllers
     UsersController
          index
          new
          create
           update
          show
          edit
          destroy
     Sessions Controller
          new
          attempt_login
          logout
     EventsController
          index
          new
          create
          update
          show
          edit
          destroy
Views
     navbar - _navbar.html.erb
      login page - login.html.erb
      signup page - signup.html.erb
     events index page - events/index.html.erb
     user profile page - show.html.erb
          User profile page will render partials
               account information - account.html.erb
               friends list- friends.html.erb
               Current plus history of attended events- events.html.erb
Routes
     root 'sessions#login'
    get '/login', to: "sessions#login", as: 'login'
     post '/login', to: "sessions#attempt_login"
    get '/signup', to: “users#signup", as: 'signup
     post '/signup', to: “users#create"
    get ‘/events', to: “events#index", as: 'home'
     get ‘/profile’, to: “users#show"
     get ‘/friends’, to: "users#friends"
     get 'event/new’ to: “events#new"
     get event/edit to event#edit
     post ‘event/update’, to: event#update
     get ‘event/show’, to: ‘event#show'
     get ‘user/:id, to : ‘ users#show"
     get ‘user/edit, to: ‘users# edit"
     put “user/update, to: ‘user#update
    delete '/logout', to: "sessions#logout", as: "logout"


