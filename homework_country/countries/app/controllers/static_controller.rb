class StaticController < ApplicationController


	def home
		render plain: "welcome to my site"
	end

end