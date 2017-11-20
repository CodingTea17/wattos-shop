# Watto's Shop

#### A product listing site for ships/vehicles/Death Stars that Watto might sell. It comes complete with Darth Vader's personal opinion of his old Death Star.
By Dawson Mortenson , 11/17/2017

### Description
Watto was looking for a new site for his junk yard. He's got a little of everything and wants to show off his inventory online. He also thought it might be a good idea to let users who visit his site to leave a reviews of products to boost sales. Users are greeted with a landing page that has the 3 most recently added products and the one most reviewed product. From there the navbar offers a a link to the the product listing page where they can find products listed in pages of 10. They can filter the products by they planet of origin. After clicking on a product they can view some info about it, read reviews, and add a review of their own. Watto can add, edit, and delete products.

### Setup
1. Clone the project and `cd wattos-shop`
1. Execute `bundle`
1. Fire up a postgresql server and execute `rails db:setup` or `rails db:create db:migrate db:test:prepare db:seed`
1. Run `rails c` and visit localhost:3000 in your favorite browser to check it about
1. Specs can be ran by executing `rspec` inside of the project directory

### Technologies Used
* HTML
* SCSS
* Bootstrap
* Rails
* Postgresql
* :octocat:

### Known Bugs
* If you wish to re-seed the db you HAVE to run `rails db:reset`. This is due to the reviews being assigned to the products with ids 1-50.
* The error pages butcher the bootstrap form styling.

### License
*This website is licensed under the MIT License*

Copyright (c) 2017 **_Dawson Mortenson_**
