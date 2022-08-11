class Directions

  def initialize(steps, floor)
    @steps = steps
    @floor = floor
  end

  def day1a
    @steps.each do |s|
      s == '(' ? @floor += 1 : @floor -= 1
    end
    return @floor
  end

  def day1b
    position = []
    @steps.each_with_index do |s, idx|
      s == '(' ? @floor += 1 : @floor -= 1
      if @floor == -1
        position << idx + 1
      end
    end
    return position.first
  end

end

file = File.read("directions.txt").split('')
file.pop
direction = Directions.new(file, 0)
direction.day1a
direction.day1b
