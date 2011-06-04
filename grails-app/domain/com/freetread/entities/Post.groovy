package com.freetread.entities

class Post {
	Long previous
	String location
	Date date
	String subject
	Long post_id
	String type
	String description
	
    static constraints = {
		subject(nullable:true)
		location(nullable:true)
		description(nullable:true, maxSize:2048)
    }
}
