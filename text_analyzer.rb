module TextAnalyzer
  def num_words
    @body ? @body.split.size : 0
  end
  
  def num_chars
    @body ? @body.chars.size : 0
  end
end