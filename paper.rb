class Paper

  def initialize(paper)
    @paper = paper
  end

  def day2a
    totalPaper = []
    @paper.each do |p|
      dimensions = p.split('x')
      l = p.split('x')[0].to_i
      w = p.split('x')[1].to_i
      h = p.split('x')[2].to_i
      d = [l,w,h]
      paper = (2 * l.to_i * w.to_i)+(2 * w.to_i * h.to_i)+(2 * l.to_i * h.to_i)
      extraPaper = d.sort[0].to_i * d.sort[1].to_i
      total = paper + extraPaper
      totalPaper << total
    end
    return totalPaper.sum
  end

end

file = []
File.foreach("paper.txt") { |line| file << line }
paper1 = Paper.new(file)
puts paper1.day2a

