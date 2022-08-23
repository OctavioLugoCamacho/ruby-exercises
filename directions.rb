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

if __FILE__ == $0
  file = File.read("directions.txt").split('')
  file.pop
  direction1 = Directions.new(file, 0)
  direction2 = Directions.new(file, 0)
  puts direction1.day1a
  puts direction2.day1b
end
