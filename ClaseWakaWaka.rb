
string1 = "< > ! * ' ' #"
string2 = " ^ \" ` $ $ -"
string3 = "! * = @ $ _"
string4 = "% * < > ~ # 4"


# def translate(code)
#   decoded = []
#     code.split().each do |char|
#       case char
#         when "<" then decoded << "Waka"
#         when ">" then decoded << "waka"
#         when "!" then decoded << "bang"
#         when "*" then decoded << "splat"
#         when "'" then decoded << "tick"
#         when "#" then decoded << "hash"
#         when "^" then decoded << "Caret"
#         when "\"" then decoded << "quote"
#         when "`" then decoded << "back-tick"
#         when "$" then decoded << "dollar"
#         when "-" then decoded << "dash"
#         when "=" then decoded << "equal"
#         when "@" then decoded << "at"
#         when "_" then decoded << "underscore"
#         when "%" then decoded << "Percent"
#         when "~" then decoded << "tilde"
#         when "4" then decoded << "four"
#       end
#     end
#       puts code.split.map {|elem| elem.ljust(10)}.join()
#       puts decoded.map {|elem| elem.ljust(10)}.join()
#  end

translate(string1)
translate(string2)
translate(string3)
translate(string4)



class WakaWaka
  def initialize(code)
    @code = code
  end  

  def translate
    
  decoded = []
    code.split().each do |char|
      case char
        when "<" then decoded << "Waka"
        when ">" then decoded << "waka"
        when "!" then decoded << "bang"
        when "*" then decoded << "splat"
        when "'" then decoded << "tick"
        when "#" then decoded << "hash"
        when "^" then decoded << "Caret"
        when "\"" then decoded << "quote"
        when "`" then decoded << "back-tick"
        when "$" then decoded << "dollar"
        when "-" then decoded << "dash"
        when "=" then decoded << "equal"
        when "@" then decoded << "at"
        when "_" then decoded << "underscore"
        when "%" then decoded << "Percent"
        when "~" then decoded << "tilde"
        when "4" then decoded << "four"
      end
    end
      puts code.split.map {|elem| elem.ljust(10)}.join
      puts decoded.map {|elem| elem.ljust(10)}.join
  end
end

p waka_code = WakaWaka.new([string1, string2, string3, string4])

