# => write practise class
# => count the number of words in line 
class PractiseLines
  def initialize( line ="hello")
  @line = line
end
def countWords
  for i in  0 ..@line.length
  p i
  end
end
end

  pl = PractiseLines.new("hello world")
print pl.countWords