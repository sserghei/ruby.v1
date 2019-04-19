1) Ruby Core 
	1.1 Introduction
		- ruby version
		- general information about ruby
		- install ruby
		- rvm
		- generate and execute ruby file
____________________________________________________________________________________________

- Ruby Version
	Last stable ruby version 2.6.2

- General Information
	ruby is interpreted language(default interpreter YARV)
	all in ruby is objects
	ruby doesn't has multi inheritanse
	ruby doesn't has multi threading(threads and concurrency) GIL()

	Ruby versions:
		CRUBY - MRI(Matz ruby interpreter, till 1.9 version)
		MRUBY is the lightweight implementation of the Ruby language 
		JRUBY - interpreter written in java
		GOBY - interpreter written in GO
		RubyMotion - pack to develop ios
		ruboto - pack to develop android

- RVM/Install Ruby
	mac
		https://rvm.io/
		https://rvm.io/rvm/install
	windows
		https://rubyinstaller.org/
		https://habr.com/ru/sandbox/43523/

	RVM COMMANDS:
		rvm install <version> 
		rvm list - list all ruby versions
		rvm use <version> 
		rvm use default
		rvm current
		rvm remove <version>

		rvm gemset list

	default install rubygems

- Rubygems
	https://rubygems.org/

	The gem command allows you to interact with RubyGems.

	gem --version
	gem search ^rails
	gem install pg
	gem list(local gems)
	gem uninstall drip

- irb(interactive ruby)

Execute ruby file
	- crate 'myapp.rb'
	- ruby myapp.rb






