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

  def day2b
    totalRibbon = []
    @paper.each do |p|
      dimensions = p.split('x')
      l = p.split('x')[0].to_i
      w = p.split('x')[1].to_i
      h = p.split('x')[2].to_i
      d = [l,w,h]
      ribbon = l * w * h
      extraRibbon = (2 * d.sort[0].to_i) + (2 * d.sort[1].to_i)
      total = ribbon + extraRibbon
      totalRibbon << total
    end
    return totalRibbon.sum
  end
end

if __FILE__ == $0
  file = []
  File.foreach("paper.txt") { |line| file << line }
  paper = Paper.new(file)
  puts paper.day2a
  puts paper.day2b
end
