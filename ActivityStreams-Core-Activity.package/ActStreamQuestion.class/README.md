I am an ActivityStream IntransitiveActivity object indicating a question being asked. I should not have an object variable set, since the question itself is usually in the name and I as an activity represent that question. I include additional instance variables for anyOf oneOf and closed which are designed to deal with possible answers to the question (optional) and indicating whether or not the question has been "closed" ie answered or ignored.

Note that I should not have both anyOf and oneOf set at the same time.

See https://www.w3.org/ns/activitystreams#Question for more information.
==========
 Notes:  
                Represents a question being asked. Question objects are an extension of IntransitiveActivity. That is, the Question object is an Activity, but the direct object is the question itself and therefore it would not contain an
                object property.
               
                Either of the anyOf and
                oneOf properties MAY be used to express possible answers, but a Question object MUST NOT have both properties.
                
