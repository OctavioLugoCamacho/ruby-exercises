class Directions

  def initialize(steps, floor)
    @steps = steps
    @floor = floor
  end

  def day1a
    @steps.split('').each { |s| s == '(' ? @floor += 1 : @floor -= 1 }
    return @floor
  end

  def day1b
    position = []
    @steps.split('').each_with_index do |s, idx|
      s == '(' ? @floor += 1 : @floor -= 1
      if @floor == -1
        position << idx + 1
      end
    end
    return position.first
  end

end
