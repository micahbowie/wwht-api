# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user1 = User.create([{name: "Micah", email: "micah@email.com"}])
user2 = User.create([{name: "Callie", email: "callie@email.com"}])
term1 = Term.create([{name: "URL", why:"URL's are most commonly used to reference web pages (http), but are also used for file transfer (ftp), email (mailto), database access (JDBC), and many other applications.", what: "A URL stands for Uniform Resource Locator. It is a reference to a web resource that specifies its location on a computer network and a mechanism for retrieving it.", how:"URL = scheme:[//authority]path[?query][#fragment]
https://github.com/"}, {name: "API", why:"API's are built with the intentions to allow 3rd party developers to build interesting applications using company data. An example is how third party apps allow you to log in with your Gmail credentials.", what: "API stands for Application Programming Interface. Is a computing interface that defines interactions between multiple software intermediaries. It defines the kinds of calls or requests that can be made and how to make them.", how:"There should be detailed documentation on how to use the specific API you want. In general you will fetch information from the API and then do something with that API."}])
term1 = Term.create([{name: "Api", why:"test", what: "test what", how:"example"}])
micah_list = List.create([{name:"web dev terms", user_id: 1},])
micah_list = List.create([{name:"web dev callies",user_id: 2},])
micah_list_term = ListTerm.create([{list_id:1, term_id: 1}])
micah_list_term = ListTerm.create([{list_id:2, term_id: 1}])
