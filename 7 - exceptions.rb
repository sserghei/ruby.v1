Exceptions
	class MyError < StandardError
		def initialize(msg="My default message")
	    super
	  end
	end

	class NewClass
		def example
			puts 'start'

			raise MyError

			puts 'end'
		rescue MyError => e
			puts 'Rescue code'
			e.message 
			e.backtrace 
		ensure
			puts 'Ensure code'
		end
	end

	NewClass.new.example => start ; Rescue code ; Ensure code


Block rescue

	value = do
		# execute some code
	rescue => MyError
		# return some response
	end


Rescue inline

	def run(distance)
		distance.length rescue 0
	end


Method missing

	class Lawyer
	  def method_missing(method, *args)
	    puts "You called: #{method}(#{args.join(', ')})"
	    puts "(You also passed it a block)" if block_given?
	  end
	end

	bob = Lawyer.new
	bob.talk_simple('a', 'b') do
		'do in block'
	end

	=> You called: talk_simple(a, b)
	=> (You also passed it a block)