GATE = /[A-Z]+/
ARGS =  /[a-z0-9]+/

class Gates
  def initialize(instruction)
    @instruction = instruction
    @wires = {}
  end

  def day7a
    @instruction.each do |i|
      step = steps(i)
      case step["gate"][0]
      when "AND"
        inputs = twoInputs(step)
        out = inputs[0].to_i & inputs[1].to_i
        @wires["#{step["destination"]}"] = out
      when "OR"
        inputs = twoInputs(step)
        out = inputs[0].to_i | inputs[1].to_i
        @wires["#{step["destination"]}"] = out
      when "LSHIFT"
        input = oneInput(step)
        out = input.to_i << step["args"][1].to_i
        @wires["#{step["destination"]}"] = out
      when "RSHIFT"
        input = oneInput(step)
        out = input.to_i >> step["args"][1].to_i
        @wires["#{step["destination"]}"] = out
      when "NOT"
        input = oneInput(step)
        out = ~input.to_i & 0xffff
        @wires["#{step["destination"]}"] = out
      else
        if @wires["#{step["args"][0]}"]
          i = @wires["#{step["args"][0]}"]
        else
          i = step["args"][0]
        end
        @wires["#{step["destination"]}"] = i
      end
    end
    @wires
  end

  def steps(i)
    command = i.scan(GATE)
    args = i.scan(ARGS)
    destination = args.pop()
    step = {"gate" => command, "args" => args, "destination" => destination}
  end

  def oneInput(step)
    if @wires["#{step["args"][0]}"]
      i1 = @wires["#{step["args"][0]}"]
    else
      @wires["#{step["args"][0]}"] = 0
      i1 = @wires["#{step["args"][0]}"]
    end
  end

  def twoInputs(step)
    inputs = []
    if @wires["#{step["args"][0]}"]
      i1 = @wires["#{step["args"][0]}"]
    else
      @wires["#{step["args"][0]}"] = 0
      i1 = @wires["#{step["args"][0]}"]
    end
    if @wires["#{step["args"][1]}"]
      i2 = @wires["#{step["args"][1]}"]
    else
      @wires["#{step["args"][1]}"] = 0
      i2 = @wires["#{step["args"][1]}"]
    end
    inputs << i1 << i2
  end
end

if __FILE__ == $0
  file = []
  File.foreach("gates.txt") { |line| file << line }
  gate = Gates.new(file)
  puts gate.day7a
end
