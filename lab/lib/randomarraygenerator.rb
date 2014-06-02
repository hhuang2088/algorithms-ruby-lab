module RandomArrayGenerator
  def self.generate_random_array(size, min, max)
  	arr = []
  	if size < 0 || min > max
  		return nil 
  	else
    #TODO: Generate an array of (size) random integers (Between min and max inclusive)
    size.times do 
    	arr.push rand(max-min) + min
    	end
    end
    return arr
  end
end
