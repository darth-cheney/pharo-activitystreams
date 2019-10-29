I represent distinct paginated subsets of OrderedCollection objects (from ActivityStreams OrderedCollection). See https://www.w3.org/ns/activitystreams#OrderedCollectionPage for more information.

Note that the specification says I inherit from both OrderedCollection and CollectionPage. Instead of using Traits for this (small case of) multiple inheritance, I have opted to rewrite certain methods and instance variables.
==========
 Notes:  
              Used to represent ordered subsets of items from an
              OrderedCollection. Refer to the
              Activity Streams 2.0 Core for a complete description of the
              OrderedCollectionPage object.
              
