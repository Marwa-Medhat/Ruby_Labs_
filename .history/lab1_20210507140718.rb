# proc=proc.new{}
# proc.call


puts "hello"



class complex

    def initialize(real,imag)
        @real= real
        @imag=imag
      end

      def add(real1,imag1,real2,imag2)
        real=real1+real2
        imag=imag1+imag2
        print("the sum of complex" +real + "i"+imag)
      end

      def multi(real1,imag1,real2,imag2)
        real=real1*real2
        imag=imag1*imag2
      end

   end

num1=complex.new(0,0)
num1.add(1,2,4,6)
num2=complex.new 