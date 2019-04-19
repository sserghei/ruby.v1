Blocks/iterators/loops
	if a > 1 #boolean or object
		# do 1,2,3
	elsif a > 2
		# do 1,2,3
	elsif b < 4
		# do 1,2,3
	else
		# do 1,2,3
	end
			
	unless -> not if

	while a > 1
	end

	until a > 1
	end

	a > 1 ? 'abc' : 'efg'

	case 79
	when 1..50   then   print "low"
	when 51..75  then   print "medium"
	when 76..100 then   print "high"
	else
		print "none"
	end


Loop
	i = 0
	loop do
	  i += 1
	  puts i
	  break   # this will cause execution to exit the loop
	end

	x = gets.chomp.to_i
	for i in 1..x do
	  puts i
	end

Blocks
	do
	end

	[1, 2, 3].each do |num|
		next
	  puts num
	end

	[1, 2, 3].each { |num| puts num }

	def print_once
	  yield
	end

	print_once { puts "Block is being run" }

	def one_two_three
	  yield 1
	  yield 2
	  yield 3
	end

	one_two_three { |number| puts number * 10 } => 10, 20, 30

	def explicit_block(&block)
	  block.call # same as yield
	end
	explicit_block { puts "Explicit block called" }

Block method shortcut
	[1, 2, 3].map(&:odd?) == [1, 2, 3].map{|el| el.odd? }

	[1, 2, 3, 4].select(&:even?) => [2, 4]

Lambda/Proc

	You can save this lambda into a variable for later use.

	lambda { puts "This is a lambda" }
	say_something = -> { puts "This is a lambda" }
	say_something.call => "This is a lambda"

	times_two = ->(x) { x * 2 }
	times_two.call(10)

	t = Proc.new { |x,y| puts "I don't care about arguments!" }
	t.call
	# "I don't care about arguments!"


