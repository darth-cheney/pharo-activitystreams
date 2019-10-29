as yet unclassified
initCachedComments
	^ {	#Create -> 'I am an ActivityStream Activity object that indicates the actor has created the object. See https://www.w3.org/ns/activitystreams#Create for more information.'.
	#Remove -> 'I am an ActivityStream Activity object indicating that the actor is removing the object. If set, the origin indicates the context from which the object is being removed. See https://www.w3.org/ns/activitystreams#Remove for more information'.
	#Travel -> 'I am an ActivityStream IntransitiveActivity object indicating that the actor is traveling to the target from the origin. If target or origin are not set, either can be determined from the context. See https://www.w3.org/ns/activitystreams#Travel for more information.'.
	#View -> 'I am an ActivityStream Activity object indicating the actor has viewed the object. See https://www.w3.org/ns/activitystreams#View for more information'.
	#Application -> 'I am an ActivityStream Actor object that describes a software application.

See https://www.w3.org/ns/activitystreams#Application for more information.'.
	#Group -> 'I am an ActivityStream Actor object representing a formal or informal collective of Actors.

See https://www.w3.org/ns/activitystreams#Group for more information.'.
	#DefinitionParser -> 'I am a utility for parsing Object Type information from the W3C ActivityStreams Specification Web Page.

I use Soup to help me navigate the HTML structure of the specification.

My main responsibility is to parse ActivityStream Type definitions into Dictionaries. I can also create new Classes based upon those definitions.

The URL I use to access the W3C Spec page is defined in #specUrl.

You can parse all ActivityStream and Extension Types with the following:
	| parser |
	parser := DefinitionParser new.
	parser loadFromSpec.
	

Once loaded, you can also create Classes based on these objects. When doing this, we use the #createdClassPrefix to determine what the prefix will be. By default it is `ActStream`.
   | parser |
	parser := DefinitionParser new.
	parser
		loadFromSpec;
		createAllClasses.'.
	#IntransitiveActivity -> 'I am a subclass of Activity (an ActivityStream Activity type) representing intransitive actions. See https://www.w3.org/ns/activitystreams#IntransitiveActivity for more information.

Note that I inherit all ActivityStream properties of Activity, but that the object property is inappropriate and therefore set to always respond nil.'.
	#Profile -> 'I am an ActivityStreams Object representing a profile, which is a content object that describes another object, typically used to decribe different types of Actors (see Actor and subclasses).

The describes property is used to reference the object being described.

See https://www.w3.org/ns/activitystreams#Profile for more information.'.
	#Object -> 'I represent an ActivityStream Object of any kind, except for Link (Link). See https://www.w3.org/ns/activitystreams#Object for more information.

I serve as the base class for other types of objects defined by the ActivityStream Vocabulary (https://www.w3.org/TR/activitystreams-vocabulary). I know how to serialize / deserialize myself and basic ActivityStream objects to and from JSON, which is the primary function of ActivityStreams.

For the Collaborators Part: State my main collaborators and one line about how I interact with them. 

Public API and Key Messages

- message one   
- message two 
- (for bonus points) how to create instances.

   One simple example is simply gorgeous.
 
Internal Representation and Key Implementation Points.

    Instance Variables
	attachment:		<Object>
	attributedTo:		<Object>
	audience:		<Object>
	bcc:		<Object>
	bto:		<Object>
	cc:		<Object>
	content:		<Object>
	context:		<Object>
	duration:		<Object>
	endTime:		<Object>
	generator:		<Object>
	icon:		<Object>
	id:		<Object>
	image:		<Object>
	inReplyTo:		<Object>
	location:		<Object>
	mediaType:		<Object>
	name:		<Object>
	preview:		<Object>
	processingContext:		<Object>
	published:		<Object>
	replies:		<Object>
	startTime:		<Object>
	summary:		<Object>
	tag:		<Object>
	to:		<Object>
	updated:		<Object>
	url:		<Object>


    Implementation Points'.
	#Relationship -> 'I am an ActivityStream Object describing a relationship between two individuals.

The subject and object properties are used to identify the connected individuals.

See https://www.w3.org/ns/activitystreams#Relationship for more information.'.
	#Event -> 'I am an ActivityStreams Object representing any kind of Event.

See https://www.w3.org/ns/activitystreams#Event for more information.'.
	#Person -> 'I am an ActivityStream Actor object representing an individual person.

See https://www.w3.org/ns/activitystreams#Person for more information'.
	#Listen -> 'I am an ActivityStream Activity object indicating that the actor has listened to the object. See https://www.w3.org/ns/activitystreams#Listen for more information.'.
	#Reject -> 'I am an ActivityStream Activity object indicating that the actor is rejecting the object. The target and origin usually have no meaning for this activity. See https://www.w3.org/ns/activitystreams#Reject for more information.'.
	#Like -> 'I am an ActivityStream Activity object indicating that the actor likes, recommends, or endorses the object. The target and origin typically have no meaning for this activity. See https://www.w3.org/ns/activitystreams#Like for more information.'.
	#Mention -> 'I am an ActivityStreams Link that represents an at-mention (as used, for example, by social media platforms).

I am a subclass of Link and subtype of ActivityStreams Link.

See https://www.w3.org/ns/activitystreams#Mention for more information.'.
	#Follow -> 'I am an ActivityStream Activity object that indicates  the actor is "following" the object. Here following is defined in the sense typically used by social networking systems. The target and origin usually have no defined meaning. See https://www.w3.org/ns/activitystreams#Follow for more information.'.
	#Actor -> 'I am an abstract class representing ActivityStream Actor object types and subtypes/subclasses. 

Actors are ActivityStream objects that are capable of performing activities.

See https://www.w3.org/TR/activitystreams-vocabulary/#actor-types for more information.'.
	#Organization -> 'I am an ActivityStream Actor object that represents an organization.

See https://www.w3.org/ns/activitystreams#Organization for more information'.
	#Service -> 'I am an ActivityStream Actor object representing a service of any kind.

See https://www.w3.org/ns/activitystreams#Service for more information'.
	#Leave -> 'I am an ActivityStream Activity object indicating that the actor has left the object. The target and origin usually have no defined meaning in this activity. See https://www.w3.org/ns/activitystreams#Leave for more information.'.
	#CollectionPage -> 'I represent distinct paginated subsets of items in an Collection object (from ActivityStreams Collections). See https://www.w3.org/ns/activitystreams#CollectionPage for more information.'.
	#Announce -> 'I am an ActivityStream Activity object indicating that the actor is calling the target''s attention to the object. The origin usually has no defined meaning for this activity. See https://www.w3.org/ns/activitystreams#Announce for more information.'.
	#Offer -> 'I am an ActivityStream Activity object indicating that the actor is offering the object. If set, the target indicates the entity to which the object is being offered. See https://www.w3.org/ns/activitystreams#Offer for more information.'.
	#OrderedCollection -> 'I am a subtype of ActivityStreams Collection whose members are always assumed to be strictly ordered.'.
	#Block -> 'I am an ActivityStream Activity object indicating that the actor is blocking the object. Blocking is a stronger form of Ignore, and therefore I am a subclass of Ignore. The target and origin usually have no meanining for this activity. See https://www.w3.org/ns/activitystreams#Block for more information.'.
	#TentativeReject -> 'I am an ActivityStream Activity object indicating that the actor is tentatively rejecting the object. I am a subclass / specialization of Reject (Reject). The target and origin usually have no meaning for this activity. See https://www.w3.org/ns/activitystreams#TentativeReject for more information'.
	#Dislike -> 'I am an ActivityStream Activity object indicating that the actor dislikes the object. See https://www.w3.org/ns/activitystreams#Dislike for more information'.
	#Activity -> 'I am an ActivityStream Object that describes some form of action that may happen, is currently happening, or has already happened. I inherit all properties of the base Object. I am an abstract class for all types of activity, and as such do not carry any specific semantics about the kind of action being taken.

See https://www.w3.org/ns/activitystreams#Activity for more information.'.
	#Page -> 'I am an ActivityStreams Object representing a web page.

I am a subclass of Document and a subtype of ActivityStreams Document.

See https://www.w3.org/ns/activitystreams#Page for more information.'.
	#Add -> 'I am an ActivityStream Activity type that indicates the actor has added the object to the target. See https://www.w3.org/ns/activitystreams#Add for more information.

Note that if the target is not explicitly specified, it will need to be determined from the context, and the origin can be used to identify the context from which the object originated.'.
	#Audio -> 'I am an ActivityStream Object representing an audio document of any kind.

I am a subclass/subtype of Document and ActivityStream Document objects.

See https://www.w3.org/ns/activitystreams#Audio for more information'.
	#Invite -> 'I am an ActivityStream Activity object indicating that the actor is extending an invitation for the object to the target. I am a subtype / specialization of Offer (Offer). See https://www.w3.org/ns/activitystreams#Invite for more information.'.
	#Read -> 'I am an ActivityStream Activity object indicating that the actor has read the object. See https://www.w3.org/ns/activitystreams#Read for more information'.
	#Update -> 'I am an ActivityStream Activity object indicating that the actor has updated the object. Note that this doesn''t indicate anything about how the actor has modified or otherwise updated the object, just that it has happened. The target and origin typically have no meaning for this activity. See https://www.w3.org/ns/activitystreams#Update for more information.'.
	#Note -> 'I am an ActivityStreams Object representing a short written work, typically less than a paragraph in length.

See https://www.w3.org/ns/activitystreams#Note for more information'.
	#Accept -> 'I am an ActivityStream Activity that indicates that the actor "accepts" the object. The target property can be used in certain circumstances to indicate the context into which the object has been accepted.

See https://www.w3.org/ns/activitystreams#Accept for more information.

I am a subclass of Activity.'.
	#Video -> 'I am an ActivityStream Object representing a video document of any kind.

I an a subclass of Document and subtype of ActivityStreams Document.

See https://www.w3.org/ns/activitystreams#Video for more information.'.
	#Tombstone -> 'I am an ActivityStreams Object representing a content object that has been deleted.

I can be used in Collections (Collection etc) to identify that there used to be an objectin that position that has since been deleted.

See https://www.w3.org/ns/activitystreams#Tombstone for more information.'.
	#Question -> 'I am an ActivityStream IntransitiveActivity object indicating a question being asked. I should not have an object variable set, since the question itself is usually in the name and I as an activity represent that question. I include additional instance variables for anyOf oneOf and closed which are designed to deal with possible answers to the question (optional) and indicating whether or not the question has been "closed" ie answered or ignored.

Note that I should not have both anyOf and oneOf set at the same time.

See https://www.w3.org/ns/activitystreams#Question for more information.'.
	#Article -> 'I am an ActivityStream Object representing any kind of multi-paragraph written work.

See https://www.w3.org/ns/activitystreams#Article for more information'.
	#Join -> 'I am an ActivityStream Activity indicating that the actor has joined the object. The target and origin usually have no defined meaning. See https://www.w3.org/ns/activitystreams#Join for more information.'.
	#Link -> 'I am an indirect, qualified reference to a resource identified by a URL within the ActivityStream standard. See https://www.w3.org/ns/activitystreams#Link for more information.'.
	#Arrive -> 'I am an ActivityStream Activity object that indicates  the actor has arrived at the location. Where needed, the origin can be used to identify the context from which the actor originated. The target usually had no defined meaning.
 
See https://www.w3.org/ns/activitystreams#Arrive for more information'.
	#Flag -> 'I am an ActivityStream Activity object indicating that the actor is flagging the object. Most platforms use this for reporting content as inappropriate. See https://www.w3.org/ns/activitystreams#Flag for more information'.
	#Ignore -> 'I am an ActivityStream Activity object indicating that the actor is ignoring the object. The target and origin properties have no defined meaning in this activity. See https://www.w3.org/ns/activitystreams#Ignore for more information'.
	#Document -> 'I am an ActivityStream Object representing a document of any kind.

See https://www.w3.org/ns/activitystreams#Document for more information'.
	#Undo -> 'I am an ActivityStream Activity object indicating the actor is undoing the object. In most cases, the object will be some other Activity (Activity or subclass) describing some previously performed action. The target and origin typically have no meaning for this activity. See https://www.w3.org/ns/activitystreams#Undo for more information.'.
	#Move -> 'I am an ActivityStream Activity object indicating that the actor has moved the object from the origin to the target. If origin or target are not set, either can be determined by the context. See https://www.w3.org/ns/activitystreams#Move for more information.'.
	#TentativeAccept -> 'I am an ActivityStream TentativeAccept Activity which indicates that the given acceptance is only tentative. See Accept and https://www.w3.org/ns/activitystreams#TentativeAccept for more information.'.
	#Image -> 'I am an ActivityStream Object representing an image document of any kind. I am a subclass/subtype of Document and ActivityStream Document objects.

See https://www.w3.org/ns/activitystreams#Image for more information'.
	#Collection -> 'I am a subtype of an ActivityStream Object (Object) that represents unordered sets of Object or Link instances. See https://www.w3.org/ns/activitystreams#Collection for more information.'.
	#OrderedCollectionPage -> 'I represent distinct paginated subsets of OrderedCollection objects (from ActivityStreams OrderedCollection). See https://www.w3.org/ns/activitystreams#OrderedCollectionPage for more information.

Note that the specification says I inherit from both OrderedCollection and CollectionPage. Instead of using Traits for this (small case of) multiple inheritance, I have opted to rewrite certain methods and instance variables.'.
	#Place -> 'I am an ActivityStreams Object representing a logical or physical location.

I can contain a subset of geographical information, such as latitude, longitude, units, etc.

See https://www.w3.org/ns/activitystreams#Place for more information.'.
} asDictionary