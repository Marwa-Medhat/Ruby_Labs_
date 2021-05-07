puts "hello"

class ComplexNumber
    
    attr_reader :real, :imag
    @@count=0
    def initialize(real,imag)
        @real=0.0+real
        @imag=0.0+imag
      end

      def +(other)
        ComplexNumber.new(@real + other.real,@imag + other.imag)
        puts "#{@real + other.real} #{@imag + other.imag}"
        @@count += 1
      end
    
      def *(other)
        @@count += 1
        new_real = real * other.real - imag * other.imag
        puts "#{real} #{other.real} #{imag} #{other.imag}" 
        new_imaginary = imag * other.real + real * other.imag
        puts "the multiplication of complex #{new_real}+ i #{ new_imaginary}" 
        ComplexNumber.new(new_real, new_imaginary)
      end

      def self.get_stats()
        puts "#{@@count}"
      end  

   end

  

  
#    nums.each_index { |i| sum[i] = sum[i] + num[i] }
num1=ComplexNumber.new(3,2)
num2=ComplexNumber.new(1,7)
ComplexNumber.new(3,2) + ComplexNumber.new(1,7)
num1.*(num2)
ComplexNumber.get_stats() ##

# puts "enter number of complex number"
# numofcomplex = gets
# i=0
    # while i <= 2 
    #     # puts "enter real"
    #     # re=gets
    #     # puts "enter complex"
    #     # im=gets
    #     # num[i]=ComplexNumber.new(re,im)
    #     # nums = Array.new(numofcomplex,num[i]) 
    #     # puts "#{nums}"
    #     i++
    # end  


x=2
    while x >= 0
        puts x
        x = x - 1
      end