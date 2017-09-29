class PostController < Sinatra::Base

	configure :development do 
		register Sinatra::Reloader
	end

	set :root, File.join(File.dirname(__FILE__), "..")
	set :views, Proc.new {File.join(root, 'views')}

	$shopping_item = [{
      title: "Item 1",
      body: "Tin of sweetcorn"
  	},
 	{
      title: "Item 2",
      body: "Bannana's"
  	},
  	{
      title: "Item 3",
      body: "Carrots"
  	}]


  	# INDEX
  	get '/shopping_item' do
		@page_header = "All the lists"
		@shopping_item = $shopping_item
		erb :"shopping_item/index"

	end

  	# NEW
  	get '/shopping_item/new' do

  		erb :"shopping_item/new"
  	end


  	# show
  	get '/shopping_item/:id' do
		id = params[:id].to_i
		@shopping_item = $shopping_item[id]
		erb :"shopping_item/show"
	end

	# Create
	post "/shopping_item" do

  		new_item = {
  			title:params[:title],
  			body:params[:body]
  		}

  		$shopping_item << new_item
  		redirect '/shopping_item'
  	end

  	# Edit
	get "/shopping_item/:id/edit" do

		@id = params[:id].to_i
		@post = $shopping_item[@id]


		erb :"shopping_item/edit"
	end	


	# update
	put "/shopping_item/:id" do
		id = params[:id].to_i
		$shopping_item[id][:title] = params[:title]
		$shopping_item[id][:body] = params[:body]

		redirect "/shopping_item/#{id}"

	end

	# Delete
	delete '/shopping_item/:id' do
		id = params[:id].to_i
		$shopping_item.delete_at(id)
		redirect "/shopping_item"

	end








end