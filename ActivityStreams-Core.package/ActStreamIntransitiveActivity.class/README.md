I am a subclass of Activity (an ActivityStream Activity type) representing intransitive actions. See https://www.w3.org/ns/activitystreams#IntransitiveActivity for more information.

Note that I inherit all ActivityStream properties of Activity, but that the object property is inappropriate and therefore set to always respond nil.
==========
 Notes: 
            Instances of IntransitiveActivity are a subtype of
            Activity representing intransitive actions. The
            object property is therefore inappropriate for these activities.
           
