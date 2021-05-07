puts "hello"

class ComplexNumber

    attr_reader :real, :imag

    def initialize(real,imag)
        @real=0.0+real
        @imag=0.0+imag
      end

      def +(other)
        @realsum = @real+ other.real
        @imagsum = @imag +other.imag
        self
        puts "the sum of complex #{realsum}+ i #{imagsum}" 
      end
    
      def *(other)
       
        new_real = real * other.real - imag * other.imag
        puts "#{real} #{other.real} #{imag} #{other.imag}" 
        new_imaginary = imag * other.real + real * other.imag
        puts "the multiplication of complex #{new_real}+ i #{ new_imaginary}" 
        ComplexNumber.new(new_real, new_imaginary)
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
num1=ComplexNumber.new(3,2)
num2=ComplexNumber.new(1,7)
num1.+(num2)
num1.*(num2)
# num1.add(1,2,4,6)
