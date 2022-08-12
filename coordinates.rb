class Coordinates

  def initialize(steps, position)
    @steps = steps
    @position = position
  end

  def day3a
    x = 0
    y = 0
    @steps.each do |s|
      if s == '<'
        x -= 1
      elsif s == '>'
        x += 1
      elsif s == '^'
        y += 1
      elsif s == 'v'
        y -= 1
      end
      @position << [x, y]
    end
    return @position.uniq.size
  end

end

file = File.read("coordinates.txt").split('')
file.pop
position = [[0,0]]
coordinates = Coordinates.new(file, position)
puts coordinates.day3a
