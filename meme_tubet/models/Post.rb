class Post

	attr_accessor :id, :title, :url, :description, :genre,
	def self.open_connection
		PGconn.connect(dbname: "sparta_blog" )
	end

	#  Index -  all of the record
	def self.all
		conn = self.open_connection
		sql = "SELECT * FROM post;"

		results = conn.exec(sql)

		post = results.map do |record|
			self.hydrate(record)
		end

		post
	end


	def self.hydrate post_data
		post = Post.new

		post.id = post_data['id']
		post.title = post_data['title']
		post.url= = post_data['url']
		post.description = post_data['description']
		post.genre = post_data['genre']

		post
	end

# Show
	def self.find id
		conn = self.open_connection
		sql = "SELECT * FROM post WHERE id = #{id}"
		posts = conn.exec(sql)


		post = self.hydrate posts[0]

		post

	end	

# Create / update 
	def save
		conn = Post.open_connection
		if (!self.id)
			sql = "INSERT INTO post (url, title, description, genre) VALUES ('#{self.url}', '#{self.title}', '#{self.description}', '#{self.genre}')"
		else
			sql = "UPDATE post SET title = '#{self.title}', url = '#{self.url}', description = '#{self.description}', genre = '#{self.genre}' WHERE id = #{self.id}" 


		end
		conn.exec(sql)

	end


# Delete

	def self.destroy id
		conn = self.open_connection
		sql = "DELETE FROM post WHERE id = #{id}"
		posts = conn.exec(sql)
	end



end