import java.util.Date;

import com.freetread.entities.Post
import groovy.json.JsonSlurper

class BootStrap {

	
    def init = { servletContext ->
		

		def jsonPayload = new File("/Users/joel/Documents/code/cfo/data/data.json").text
		
		def slurper = new JsonSlurper()
		def posts = slurper.parseText(jsonPayload)
		
		Post.executeUpdate("delete Post p")
		
		posts.each {
		   new Post(previous: it.previous, location: it.location, date: it.date, subject: it.subject, post_id: it.post_id, type: it.type, description: it.description).save(failOnError: true)
		}
    }
    def destroy = {
    }
}
