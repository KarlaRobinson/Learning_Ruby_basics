class Computer
  attr_reader :processor

  def initialize(processor)
    @processor = processor
  end
end

mac = Computer.new("Intel")
#test
p mac.processor
#=>"Intel"
mac.processor = "AMD"
#=>...undefined method `processor='...