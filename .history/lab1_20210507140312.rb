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
      end

      def multi(real1,imag1,real2,imag2)
        real=real1*real2
        imag=imag1*imag2
      end

   end