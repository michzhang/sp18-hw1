class Foobar

  def self.baz(a)
    # Class method, not an instance method
    # Call with `Foobar.baz`
    # Q4 CODE HERE
    a.map!(&:to_i)
    a = a.map {|element| element + 2}
    a= a.select &:even?
    a=a.uniq
    a=a.select do |element|
    	element <=10
    end
    a.inject(0){|sum, x| sum+x}
  end
end
