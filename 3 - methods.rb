METHODS

	def example
	end

	def example(a, b)
		return '123'
	end

	def example a, b
		'123'
	end

	def example(a=false, b='Green', &block)
		yield if block_given?
	end

	example(1,2){do something}


	def example(a, *arg)
	end

	a + b is equal to a.+(b)


	PRIVATE/PIBLIC