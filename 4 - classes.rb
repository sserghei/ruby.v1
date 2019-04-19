Classes
	# Sample class
	class Box
		def green?
			true
		end
	end

	Box.new.green? => true


	# Sample class with initializer
	class Bin
		def initialize(x,y,z)
			@x,@y,@z = x,y,z
		end

		def volume
			calculated_volume = @x * @y * @z
			puts "Bin volume is #{calculated_volume} m3"
		end
	end

	bin = Bin.new(1,2,3)
	bin.volume  => Bin volume is 6 m3


Setters/Getters

	class Car
		attr_reader :name

		def initialize(name)
			@name = name
		end
	end

	new_car = Car.new('Volvo')
	new_car.name => 'Volvo'


	# attr_reader :name
	def name
		@name
	end

	# attr_writer :name

	def name=
		@name
	end

	attr_writer
	attr_accessor

Class methods

	class Car
		def self.fast?
			'Sure'
		end
	end


Inheritance

  class Three
 	  def young
 	  	true
 	  end
  end

  class Forest < Three
	end

	Forest.ancestors => [Forest, Three, Object, Kernel, BasicObject] 

Rewrite methods(monkey patch)

	class Car
		def engine
			'V8'
		end
	end

	Car.new.engine => 'V8'

	class Car
		def cabriolet?(value=true)
			value
		end
	end

	Car.new.cabriolet?(false) => false

	class Car
		def engine
			puts 'Old value V8'
			'V6'
		end
	end

	Car.new.engine => 'Old value V8' ; 'V6'

	class Audi < Car
		def engine
			'v12'
			super
		end

		def cabriolet?
			super('sure, stupid question')
		end
	end

	Audi.new.engine => 'Old value V8' ; 'V6'
	Audi.new.cabriolet? => "sure, stupid question" 
