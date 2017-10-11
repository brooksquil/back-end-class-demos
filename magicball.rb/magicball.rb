class Magicball
  # constant ANSWERS
  ANSWERS = ["Outcome does not look likely", "Not now", "Better luck next time"]

  def ask(question)
    raise "Question has invalid format." unless
    is_question_valid?(question)

    # ANSWERS.sample
  end

  private

  def is_question_valid?(question)
    (question.is_a?String) && question[-1] == "?"
  end
end

# and has lower precendence than &&
# order of precendence () knows its a function
