require 'sinatra'
require 'sinatra/reloader' if development?
require "pg"
require_relative "./controllers/post_controllers.rb"
require "./models/Post.rb"


use Rack::MethodOverride



run PostController