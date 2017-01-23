# Breakable Toy Ideas

CartSpot/FoodTrucker: Food Truck Tracker
========================================
The City of Boston has an easily accessible simple food truck schedule. I would like to integrate this with Google Maps so you can search for nearby food trucks at any time of day. The first step will be to pull the data and display a text list of all currently open food trucks (with addresses). Once that works, I can start using the Google Maps API for more interesting features. You should be able to search for food trucks based on your current location or any arbitrary location. Once I have that, I would like to add search functionality for any arbitrary time of day. I believe the Google Maps API will also allow users to look up directions to the carts using various means of transport. Eventually, there should be user reviews and a searchable map a la Yelp.

#Good
- I would use this

#questions/Concerns
- Not sure about the Google Maps API, tends to not play well with others
- Where's the CRUD?

#CRUD
- Account
- Favorite trucks
- Favorite area
- Alerts
 - Email
 - Integrate Twitter
   - Alerts if different from location

#Must-haves
- User Accounts w/CRUD
- Locations- Add/remove favorites
- Trucks- Add/remove favorites
- Alerts when Schedule coincides with user location

#Hopeful features
- Google Maps interface with pins for trucks
- Use Twitter to read inputs for live locations and override schedule
- Post updates on a Twitter account (@trucktracker)

#Longer-term additions
- Favorites alerts sent to user twitter/email
- Yelp API integration to show rating
- User reviews and ratings of trucks
