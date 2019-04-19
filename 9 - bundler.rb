Bundler
	pachage manager(depend on Gemfile)

	gem install bundler
	depend on Gemfile
	generate Gemfile.lock. with dependencies

Load files
	load 'filename.rb'
	require 'example' -> 'import'
	require_relative "data/customer_data_1" 

	`require` reads and parses files only once, when they were referenced for the first time.
	`load` reads and parses files every time you call `load`.

	example with irb
	- run irb
	- run require './example.rb'
	- run Example.new.say_hello('Serghei')

Rack example
	require "rack" #simple http api
	require "thin" #web server

	class HelloWorld
	  def call(env)
	    [ 200, { "Content-Type" => "text/plain" }, ["Hello World"] ]
	  end
	end

	Rack::Handler::Thin.run HelloWorld.new

Rack using lambda
	require "rack"
	require "thin"

	app = -> (env) do
	  [ 200, { "Content-Type" => "text/plain" }, env ]
	end

	Rack::Handler::Thin.run app

Architecture
	Sinatra application => RACK APP => weBrick server(thin)