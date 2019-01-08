I am a subclass of ASActivity (an ActivityStream Activity type) representing intransitive actions. See https://www.w3.org/ns/activitystreams#IntransitiveActivity for more information.

Note that I inherit all ActivityStream properties of ASActivity, but that the object property is inappropriate and therefore set to always respond nil.