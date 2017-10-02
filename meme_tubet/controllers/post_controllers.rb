class PostController < Sinatra::Base

	configure :development do 
		register Sinatra::Reloader
	end

	set :root, File.join(File.dirname(__FILE__), "..")
	set :views, Proc.new {File.join(root, 'views')}


	# Index
	get '/posts' do
		@page_header = "All the posts"
		@posts = Post.all
		erb :"posts/index"

	end


	# New
  	get '/posts/new' do

  		erb :"posts/new"

  	end


  	# Create new to do list
	post "/posts" do

  		new_post = Post.new
  		new_post.title = params[:title]
  		new_post.url = params[:url]
  		new_post.description = params[:description]
  		new_post.genre = params[:genre]
  		new_post.save
  		redirect '/posts'
  	end

  	# show
  	get '/posts/:id' do
		@post = Post.find(params[:id])
		# @posts = $posts[id]
		erb :"posts/show"
	end

	
	# Edit
	get "/posts/:id/edit" do

		@post = Post.find(params[:id])
		erb :"posts/edit"
	end	


	# update
	put "/posts/:id" do
		post= Post.find(params[:id])
		new_post.title = params[:title]
  		new_post.url = params[:url]
  		new_post.description = params[:description]
  		new_post.genre = params[:genre]
		post.save

		redirect "/posts/#{post.id}"

	end

	# delete
	delete '/posts/:id' do
		
		Post.destroy(params[:id])
		redirect "/posts"

	end








end