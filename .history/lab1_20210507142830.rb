puts "hello"

class ComplexOperation

    attr_reader :real, :imag

    def initialize(real,imag)
        @real=0.0+real
        @imag=0.0+imag
      end

    #   def add(real1,imag1,real2,imag2)
    #     real=real1+real2
    #     imag=imag1+imag2
    #     puts "the sum of complex #{real}+ i #{imag}" 
    #   end

    #   def multi(real1,imag1,real2,imag2)
    #     real=real1*real2
    #     imag=imag1*imag2
    #   end

   end


#    puts "Hello #{name}"
#    print "What is your name? "
#    name = gets
   
#    puts "Hello #{name}"

puts
num1=ComplexOperation.new("1","2")
# num2=ComplexOperation.new(3,4)
# num1.add(1,2,4,6)
