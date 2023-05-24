require 'pry'

class String

  attr_accessor(:name)

  def initialize(name)
    @@name = name
  end


  def sentence?
      # QUESTION - Mbona self.sentence haileti true nikipass @@name
      # ANSWER - As we know self in refer to the the instance on which it was called on. Apa instance ni s1 - na s1 is not the same as @@name enye tumepitisha i.e s1 infact is a Ruby object with Object_ID
      # So to overcome io, lazima tu assign s1 a value as in the calls uko chini
    # @@name.end_with?(".") - ii niki uncomment, itareturn true na iishie apo iache next line of code enye natest
    self.end_with?(".")
  end

  def question?
    @@name
    self.end_with?("?")
  end

  def exclamation?  
    self.end_with?("!")
  end

  def count_sentences
    # non-regular expression solution:
    # sentences = 0
    # # what punctuation we're checking for
    # punctuation = [".", "?", "!"]
    # # iterate over every character in the string
    # self.chars.each.with_index do |char, index|
    #   # check if the character is a punctuation, and if the _next_ character is _not_ a punctuation
    #   if punctuation.include?(char) && !punctuation.include?(self[index + 1])
    #     sentences += 1
    #   end
    # end
    # sentences

    # regular expression solution
    # /\.|\?|!/ is a regular expression that searches for periods, question marks and exclamations in a string
    self.split(/\.|\?|!/).filter { |sentence| !sentence.empty? }.size
  end

end

s1 = String.new("ii ni value tunapitisha tu.")
s1 = "This is awesome."
puts s1.sentence?

s2 = String.new("But the fire is so delightful?")
puts s2.question?

# {Nataka io variable icha-njiwe ikiwa stored uko juu -- name
# {So, ii haiwezekani kwa sababu -- self inarefer to the object/instance on which it was called i.e The class from which it was generated.}
# Well I was wrong in the above 2 lines - Naweza tumia initialize na attr_accessor sp that statement inakuwa passed during instance definition.