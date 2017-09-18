# require_relative "text_analyzer.rb"
  include TextAnalyzer
class Article
#  include TextAnalyzer(@body)
  
  attr_accessor :body
  def initialize(body)
    @body = body
  end
end

class Comment
#  include TextAnalyzer(@body)
  
  attr_accessor :body
  def initialize(body)
    @body = body
  end
end

puts a1 = Article.new("Este es el cuerpo del artículo")
puts a1.body
puts a1.num_words #=> 6
puts a1.num_chars #=> 30
