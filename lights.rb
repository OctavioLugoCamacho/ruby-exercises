class Lights
  def initialize(s, lights)
    @s = s
    @lights = lights
  end

  def day6a
    @s.each do |s|
      command = commands(s)
      for x in command["x1"].to_i..command["x2"].to_i
        for y in command["y1"].to_i..command["y2"].to_i
          index = 1000 * x + y
          if command["move"] == "turn on"
            @lights[index] = 1
          elsif command["move"] == "turn off"
            @lights[index] = 0
          elsif command["move"] == "toggle"
            @lights[index] = @lights[index] === 0 ? 1 : 0
          end
        end
      end
    end
    return @lights.sum()
  end

  def commands(s)
    command = s.match(/(turn on|turn off|toggle) (\d+),(\d+) through (\d+),(\d+)/)
    step = {"move" => command[1], "x1" => command[2], "y1" => command[3], "x2" => command[4], "y2" => command[5]}
    return step
  end
end

if __FILE__ == $0
  file = []
  File.foreach("lights.txt") { |line| file << line }
  ary = Array.new(1000 * 1000, 0)
  lights = Lights.new(file, ary)
  puts lights.day6a
end

