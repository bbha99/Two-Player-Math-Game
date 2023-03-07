require "byebug"
class Question

  def initialize(num_1, num_2)
    @num_1 = num_1
    @num_2 = num_2
  end

  def generate_question
    "what does #{@num_1} plus #{@num_2} equal?"
  end

  def generate_answer
    @num_1 + @num_2
  end
end