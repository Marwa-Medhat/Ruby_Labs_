puts "hello"

class ComplexOperation

    def initialize()
      end

      def add(real1,imag1,real2,imag2)
        real=real1+real2
        imag=imag1+imag2
        puts "the sum of complex" + real + "i"+ imag 
      end

      def multi(real1,imag1,real2,imag2)
        real=real1*real2
        imag=imag1*imag2
      end

   end

num1=ComplexOperation.new
num1.add(1,2,4,6)
num2=ComplexOperation.new 