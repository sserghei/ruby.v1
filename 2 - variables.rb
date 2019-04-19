Variables/constans

general type - snake_case

example: my_name_is = 'Serghei'

a, b, c = 10, 20, 30

defined? variable

a = 2 #Local variable
@a = 2 #Instance instance
@@a = 2 #Class variable
$a = 2 #Global variable

Data Types
Numberic
	- integer
	- float

	ruby can not sum/devide/multiple float numbers
	14.2 * 3.0 => 42.599999999999994 

	(14.2.to_d * 3.0.to_d).to_f => 42.6 

Boolean
  true/false

Strings
	a = 'hello world'
	"hello world"
	interpolation

	"#{a} hello world"

	'hello' + ' ' + 'world'

	"hello world"[0..-5]

	sample methods:
		- length
			"hello world".length => 11
		- capitalize
			"hello world".capitalize => "Hello world"
		- capitalize!
			"hello world".capitalize! => "Hello world"
		- upcase
			"hello world".upcase => "HELLO WORLD"
		- each_char
			"hello world".each_char{|char| puts char} => print all chars by one
		- match
			"hello world".match(/o/) => #<MatchData "o">
		- gsub
			"hello world".gsub(/world/, 'jora') => "hello jora" 
		- split
			"hello world".split => ["hello", "world"] 

Symbols
	x = :sym

Hashes
	{ 1 => "eins", 2 => "zwei", 3 => "drei" }
	{ :one => "eins", :two => "zwei", :three => "drei" }
	{ "weights" => ["pound", "kilogram"], "lengths" => ["meter", "mile"] }


	old vs new hash style:
		{ "one" => "eins", :two => "zwei", :three => "drei" }

		{ one: "eins", two: "zwei", three: "drei" }
		{ "one": "eins", "two": "zwei", "three": "drei" }


	with_indifferent_access -> what is this?

	hash = { one: "eins", two: "zwei", three: "drei" }
		evaluate hash[:one] => "eins"
		evaluate hash['one'] => nil

	hash = hash.with_indifferent_access -> rails


	h = { "a" => 100, "b" => 200, "c" => 300, "d" => 400 }
	h.keys  => ["a", "b", "c", "d"]


	h1 = { "a" => 100, "b" => 200 }
	h2 = { "b" => 254, "c" => 300 }
	h1.merge(h2) => {"a"=>100, "b"=>254, "c"=>300}

	h = { "c" => 300, "a" => 100, "d" => 400, "c" => 300  }
	h.to_a => [["c", 300], ["a", 100], ["d", 400]]

Arrays
	new_array = [1, '2', :three, {one: '123'}]

	%w() array of strings
	%i() array of symbols
	%r() regular expressions

	arr = [1, 2, 3, 4]
	arr.drop(3) => [4]

	arr.push(5) => [1, 2, 3, 4, 5]
	arr << 6    => [1, 2, 3, 4, 5, 6]

	arr => [1, 2, 3, 4, 5, 6]

Ranges
	1..4

	(1..4).to_a => [1, 2, 3, 4]
	(1...4).to_a => [1, 2, 3]

	('a'...'v').to_a => ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u"] 


Time/Regexp
	Time.now

	/abc/ or Regexp.new('abc')

How to change data type
	to_s
	to_a
	to_i
	to_f
	to_i

	require 'bigdecimal'
	require 'bigdecimal/util'
	to_d

Constants

	CONSTANT = 123

	MyClass::CONSTANT

Operators
	+ - / * %(remaning value after devide) **

	== != 
	===(inclusion)
		(1...3) === 2
		/test/ === "this is a test"

	-= += /= *= **=

	|| or

	a = false || true  #=> true
	a  #=> true

	a = false or true  #=> true
	a  #=> false

	&& and

