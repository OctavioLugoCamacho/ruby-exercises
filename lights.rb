class Lights
  def initialize(s, lights)
    @s = s
    @lights = lights
  end

  def command
    command = @s.match(/(turn on|turn off|toggle) (\d+),(\d+) through (\d+),(\d+)/)
    step = {"move" => command[1], "x1" => command[2], "y1" => command[3], "x2" => command[4], "y2" => command[5]}
    puts step
  end
end

ary = Array.new(1000 * 1000, 0)
lights = Lights.new("turn on 226,196 through 599,390", ary)
lights.command


