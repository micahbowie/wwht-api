
terms = Term.create([{name: "URL"}, {name: "API"}, {name: "DOM"}, {name: "OOP"}])
definitions = Definition.create([{
 why:"URL's are most commonly used to reference web pages (http), but are also used for file transfer (ftp), email (mailto), database access (JDBC), and many other applications.", what: "A URL stands for Uniform Resource Locator. It is a reference to a web resource that specifies its location on a computer network and a mechanism for retrieving it.", how:"URL = scheme:[//authority]path[?query][#fragment]https://github.com/", term_id:1, up_vote: 0},
{why:"API's are built with the intentions to allow 3rd party developers to build interesting applications using company data. An example is how third party apps allow you to log in with your Gmail credentials.", what: "API stands for Application Programming Interface. Is a computing interface that defines interactions between multiple software intermediaries. It defines the kinds of calls or requests that can be made and how to make them.", how:"There should be detailed documentation on how to use the specific API you want. In general you will fetch information from the API and then do something with that API." , term_id:2, up_vote: 0},
{why: "DOM is used to display an HTML file. The DOM is an object oriented representation of an HTML document that acts as an interface between JavaScript and the document itself. This allows the creation of dynamic web pages", what: "DOM stands for Document Object Model. The DOM represents a document with a logical tree. When a web page is loaded, the browser creates a Document Object Model of the page.", how:"The DOM is created and viewed every time a webpage is created. There are a lot of possibilities to interact with the DOM but, it can only be manipulated using JavaScript.", term_id:3, up_vote: 0},
{why:"OOP is a popular paradigm to use with many benefits. Two popular reasons are its similarities to real life objects and structures which makes it easy to understand. It also allows you to break down your software into bite-sized problems that you then can solve — one object at a time.", what:"OOP stands for Object-oriented programming. It is a programming paradigm based on the concept of 'objects', which can contain data (often known as attributes or properties) and behavior(often known as methods).", how: "The paradigm is used in many languages such as (ava, JavaScript, Ruby, TypeScript, Swift, and more.", term_id:4, up_vote: 0}])
