class SuperSay
  def say(text)
    prepare_text(text)
  end

  def prepare_text(text)
    "<p>" + text
  end
end

class HtmlSay < SuperSay

  def prepare_text(text)
    super + "</p>"
  end
end

class CssSay
  def say(text)
    prepare_text(text)
  end

  def prepare_text(text)
    text
  end
end

doc = HtmlSay.new
style = CssSay.new


#test
p doc.say("You've refactored") == "<p>You've refactored</p>"
p style.say("I like to code") == "I like to code"