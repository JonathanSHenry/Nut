# allergyeet
software engineering group fall 2018

Proposal 
Nut: A website that finds allergy-friendly restaurants nearby
Jon, Stef, Lauren, Emily, Peter
CSI-210, 2018

Abstract  
	Nut is a website designed for individuals looking for restaurants that suit their allergy needs. It will allow users to create accounts, search nearby restaurants according to their specific allergen profile, and review the restaurant after they have eaten there. Restaurant owners will be able to enter information regarding their ingredients and cooking methods. The map API will allow users to navigate restaurants within their area, finding consistent and reliable results. 

Introduction 
	Individuals suffering from allergies are at a loss when it comes to finding reliable information on the ingredients that restaurants use in their meals and the methods they use to cook each menu item. An unreliable restaurant means that individuals with allergies aren’t able to trust that what they are eating is safe. This often leads to simply cooking at home for every single meal instead of going out and enjoying the benefits of social eating. A website that allows users to find restaurants based on their allergy needs would mean that individuals with allergies would be able to feel safe when eating out since the restaurant’s methods and ingredients would be verified by both the owner and other reviewers. Our team hopes to learn how to deploy a website from the ground up, implementing databases and APIs from various developers in order to deliver a positive user experience. We have found model websites such as Yelp and AllergyEats that are already doing well delivering a positive experience. 


Goals
Educational:
Learn how to develop and implement software, specifically learning all the stages involved including how to collaborate and creating proper documentation
Learn a new language either HTML or Ruby on Rails
Learn how to get a server up and running
Learn how to create a database
Learn how to implement a user login system where users can modify the database
Learn how to use and implement APIs including a map API

Functional:
Have a user login system that allows for three types of users: consumers, restaurants, and administrators or ‘super users’
Allow users to create a profile with their saved allergies
Have a map with searching parameters
Have a database of allergy friendly restaurants that users can modify
Have a restaurant rating system where users can rate a restaurant based on different criteria
Have a blacklist system where restaurants that are known to be allergy unfriendly are separated so users know not to go there
Keep user’s information secure
Our project will be successful if a user can create a profile that saves their allergy information on the first try. Upon future visits to the site, the user should be able to login to the website within ten seconds and input their zip code and get correct results within a specified mile radius and display at least 85% of allergy-friendly restaurants within that area. Users should be able to rate a restaurant they’ve already visited on several criteria and the website will average these ratings for a overall score. The project will also be a success if a restaurant owners can add information about their restaurant.

Predicted Requirements
	Requirements that will be necessary for the project include an API for mapping purposes (such as Google Maps API, OpenLayers, etc) as well as an API or database to find nearby restaurants (possibly using FourSquare, Yelp).  To run these APIs and develop the website on, we must learn a new language (such as Ruby On Rails or HTML). The website will require a server, for which Dr. Silveyra recommended Ubuntu. Because none of the group members are familiar with Ubuntu servers, Ubuntu tutorials are required as well. As discussed in class, if the server is provided to us, there shouldn’t be any project-related costs. In terms of hardware, all that’s required is a computer capable of programming and loading websites. If a corresponding app is created in the future, it will most likely require a phone to run on (either iPhone or Android, depending on how the app is developed). 
 
Predicted Challenges
 	Allergy eats has a handful of pitfalls that we are seeking to avoid.  We decided on using a website as the desired end-product due to an app existing within similar parameters to ours  (while they do not have a standalone site).  Some initial difficulties will lie in the creation and navigation of the restaurant and allergy database, Rating systems for users and restaurants (especially allowing Admins and ensuring that there aren’t gaps in security.).  We would also be (hopefully) making a mobile equivalent through which could be navigated on a mobile device, The creation of Super users and upkeep of both the server and the log in features (we have no prior experience here).  We are preparing ourselves for these challenges by looking at similar entities and seeing what is done correctly and within the realm of our skillset as well as language requirements.  There is a worry with the rating system and how its fixed to the database.  The biggest struggle we would currently be facing is the implementation of the database as well as the map API, we have little to no experience navigating these pitfalls, and hope to not struggle in the same ways that Apple Maps has in the past.

For prototypes we are hoping to start by creation of the server itself, then implementing login users (both Super, Client, and Owners respectively), Creating an authentication user profile that has the ability to save information, Then implementation of the database and allow search parameters, following that we would fill the database with restaurants to see if they can be accessed, Finally allow the users to access this information as well as rate and save profiles for restaurants and add comments,  (In addition adding the map API but we are unsure at what stage this should be added or approached and are waiting on feedback).


