Modules

	module Foo
		def abc
			'abc'
		end
	end

	class Bar
		include Foo
	end

	Bar.new.abc => 'abc'
	Bar.abc => #undefined method `abc' for Bar:Class

	module Ger
		def xyz
			'self xyz'
		end
	end

	class Baz
		extend Ger
	end

	Baz.new.xyz => #undefined method `xyz' for #<Baz:
	Baz.xyz => 'self xyz'