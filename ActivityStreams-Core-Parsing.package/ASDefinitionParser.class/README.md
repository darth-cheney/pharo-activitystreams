I am a utility for parsing Object Type information from the W3C ActivityStreams Specification Web Page.

I use Soup to help me navigate the HTML structure of the specification.

My main responsibility is to parse ActivityStream Type definitions into Dictionaries. I can also create new Classes based upon those definitions.

The URL I use to access the W3C Spec page is defined in #specUrl.

You can parse all ActivityStream and Extension Types with the following:
	| parser |
	parser := ASDefinitionParser new.
	parser loadFromSpec.
	

Once loaded, you can also create Classes based on these objects. When doing this, we use the #createdClassPrefix to determine what the prefix will be. By default it is `ActStream`.
   | parser |
	parser := ASDefinitionParser new.
	parser
		loadFromSpec;
		createAllClasses.