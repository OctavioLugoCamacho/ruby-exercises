class Coordinates

  def initialize(steps, position)
    @steps = steps
    @position = position
    @x = 0
    @y = 0
  end

  def condition(s)
    if s == '<'
      @x -= 1
    elsif s == '>'
      @x += 1
    elsif s == '^'
      @y += 1
    elsif s == 'v'
      @y -= 1
    end
    return [@x, @y]
  end

  def day3a
    @steps.each do |s|
      @position << condition(s)
    end
    return @position.uniq.size
  end

  def day3b
    @position = [[0,0]]
    santa = []
    robot = []
    @steps.each_with_index do |s, idx|
      if idx % 2 == 0
        santa << s
      else
        robot << s
      end
    end
    santa.each do |s|
      @position << condition(s)
    end
    @x = 0
    @y = 0
    robot.each do |r|
      @position << condition(r)
    end
    return @position.uniq.size
  end

end

file = File.read("coordinates.txt").split('')
file.pop
position = [[0,0]]
coordinates = Coordinates.new(file, position)
puts coordinates.day3a

coordinates1 = Coordinates.new(file, position)
puts coordinates1.day3b

