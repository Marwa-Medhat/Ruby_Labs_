class ComplexNumber
    
    attr_reader :real, :imag
    @@count=0
    def initialize(real,imag)
        @real=0.0+real
        @imag=0.0+imag
      end
    
      def +(other)
        new_real = @real + other.real
        new_img = @imag + other.imag
    
        #ComplexNumber.new(@real + other.real,@imag + other.imag)
        puts "#{new_real} + #{new_img}i"
        @@count += 1
       add= ComplexNumber.new(new_real,new_img)
        puts "#{new_real} + #{new_img}i"
       return add
    
      end
    
      def *(other)
        @@count += 1
        new_real = real * other.real - imag * other.imag
        # puts "#{real} #{other.real} #{imag} #{other.imag}" 
        new_imaginary = imag * other.real + real * other.imag
        puts "the multiplication of complex #{new_real}+ i #{ new_imaginary}" 
        result = ComplexNumber.new(new_real, new_imaginary)
        return result
      end
    
      def bulk_add(args)
        @@count += 1
        new_real=0.0
        new_img=0.0
        puts args.inspect
        count = args.length
        result =  ComplexNumber.new(0, 0)      
        for cn in args 
            result = (result + cn)
        end
        return result
       end
    
    
       def bulk_multiply(args)
        @@count += 1
        new_real=1.0
        new_img=1.0
        puts args.inspect
        count = args.length
      
        result =  ComplexNumber.new(1.0, 0)      
        for cn in args 
            result = (result * (cn))
        end
        return result
       
       end
    
    
      def self.get_stats()
        puts "#{@@count}"
      end  
    
    end
    ##ADD Two Complex
    ComplexNumber.new(3,2) + ComplexNumber.new(1,7)
    ##Multiply Two Complex
    num1=ComplexNumber.new(3,2)
    num2=ComplexNumber.new(1,7)
    num1.*(num2)
    res= ComplexNumber.new(3,2).*(ComplexNumber.new(1,7))
    # puts "#{res}"
    ##ADD bulk of Complex
    b=[ComplexNumber.new(3,2),ComplexNumber.new(1,7)]
    sum=ComplexNumber.new(1,1).bulk_add(b)
    # puts "#{sum}"
    ##=Multiply bulk of Complex
    a =[ComplexNumber.new(3,2),ComplexNumber.new(1,7)]
    multipresult=ComplexNumber.new(1,1).bulk_multiply(a)
    puts "#{multipresult}"
    ComplexNumber.get_stats()



    
    