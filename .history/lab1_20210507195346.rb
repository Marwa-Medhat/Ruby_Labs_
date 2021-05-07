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
    @@count += 1
    add= ComplexNumber.new(new_real,new_img)
    # puts "the sum of two Complex is #{new_real} + #{new_img}i"
    return add
    end
    
    def *(other)
    @@count += 1
    new_real = real * other.real - imag * other.imag
    new_imaginary = imag * other.real + real * other.imag
    # puts "the multiplication of complex #{new_real}+ i #{ new_imaginary}" 
    result = ComplexNumber.new(new_real, new_imaginary)
    return result
    end
    
    def self.bulk_add(args)
    new_real=0.0
    new_img=0.0
    result =  ComplexNumber.new(0, 0)      
    for cn in args 
        result = (result + cn)
    end
    return result
    end

    def self.bulk_multiply(args)
    new_real=1.0
    new_img=1.0  
    result =  ComplexNumber.new(1.0, 0)      
    for cn in args 
        result = (result * (cn))
    end
    return result
    end

    def self.get_stats()
    puts "Number of Operations is #{@@count}"
    end  
end
    ###################################Main######################################
    ##ADD Two Complex
    sumresult=ComplexNumber.new(3,2) + ComplexNumber.new(1,7)
    puts "the sum of two Complex is #{sumresult.real} + #{sumresult.imag} i"
    ###################################
    ##Multiply Two Complex
    multipltresult= ComplexNumber.new(3,2).*(ComplexNumber.new(1,7))
    puts "the multiplication of Two complex #{multipltresult.real}+ i #{ multipltresult.imag}" 
    #####################################
    ##ADD bulk of Complex
    b=[ComplexNumber.new(3,2),ComplexNumber.new(1,7),ComplexNumber.new(1,1)]
    sumresult=ComplexNumber.bulk_add(b)
    puts "the sum of bulk of Complex is #{sumresult.real} + #{sumresult.imag} i"
    #################################
    ##=Multiply bulk of Complex
    a =[ComplexNumber.new(3,2),ComplexNumber.new(1,7),ComplexNumber.new(1,1)]
    multipresult=ComplexNumber.bulk_multiply(a)
    puts "the multiplication of bulk of complex #{multipresult.real}+ i #{ multipresult.imag}" 
    ###############################
    ##Number of operation made
    ComplexNumber.get_stats()



    
    