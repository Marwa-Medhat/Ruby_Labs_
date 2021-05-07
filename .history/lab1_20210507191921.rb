# puts "hello"

# class ComplexNumber
    
#     attr_reader :real, :imag
#     @@count=0
#     def initialize(real,imag)
#         @real=0.0+real
#         @imag=0.0+imag
#       end

#       def +(other)
#         ComplexNumber.new(@real + other.real,@imag + other.imag)
#         puts "#{@real + other.real} #{@imag + other.imag}"
#         @@count += 1
#       end
    
#       def *(other)
#         @@count += 1
#         new_real = real * other.real - imag * other.imag
#         puts "#{real} #{other.real} #{imag} #{other.imag}" 
#         new_imaginary = imag * other.real + real * other.imag
#         puts "the multiplication of complex #{new_real}+ i #{ new_imaginary}" 
#         ComplexNumber.new(new_real, new_imaginary)
#       end

#       def self.get_stats()
#         puts "#{@@count}"
#       end  
#     #   def bulk_add():
#     #     # puts "enter number of complex number"
#     #     # numofcomplex = gets
#     #     i=0
#     #         while i <= 2 
#     #             puts "enter real"
#     #             re=gets
#     #             puts "enter complex"
#     #             im=gets
#     #             num[i]=ComplexNumber.new(re,im)
#     #             nums = Array.new(numofcomplex,num[i]) 
#     #             puts "#{nums}"
#     #             i++
#     #         end  
#     #   end
#    end

  

# sumreal 
# puts "enter real"
# re=gets
# puts "#{re}"
# puts "enter img"
# img=gets
# puts "#{img}"
# sumreal=sumreal+re
# sumimg=sumimg+img

# num1=ComplexNumber.new(3,2)
# num2=ComplexNumber.new(1,7)
# ComplexNumber.new(3,2) + ComplexNumber.new(1,7)
# num1.*(num2)
# ComplexNumber.get_stats() ##




#     # def turtles(*args)
#     #     # b=[]
#     #     sums = Array.new(ComplexNumber.new)
#     #     puts args.inspect
#     #     puts args.length

#     #     # args.each_index { |i| b[i] = args[i] + 1 } ##+1 5liha al array oc complex 
#     #     nums.each_index { |i| sums[i] = nums[i] + 1 }
#     #     puts sums.inspect
#     #   end
#     #   nums = Array.new(ComplexNumber.new(1,2),ComplexNumber.new(3,4))

#     # # a=[1,2,3] 
#     # ##array of complex
#     # turtles(*a)
# #    nums.each_index { |i| sum[i] = sum[i] + num[i] }

# # x=2
# #     while x >= 0
# #         puts x
# #         x = x - 1
# #       end



#!/usr/bin/ruby


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
        #puts "#{new_real} + #{new_img}i"
        @@count += 1
       add= ComplexNumber.new(new_real,new_img)
        puts "#{new_real} + #{new_img}i"
       return add
    
      end
    
      def *(other)
        @@count += 1
        new_real = real * other.real - imag * other.imag
        puts "#{real} #{other.real} #{imag} #{other.imag}" 
        new_imaginary = imag * other.real + real * other.imag
        puts "the multiplication of complex #{new_real}+ i #{ new_imaginary}" 
        result = ComplexNumber.new(new_real, new_imaginary)
        return result
      end
    
      def bulk_add(args)
        new_real=0.0
        new_img=0.0
        puts args.inspect
        count = args.length
      
        result =  ComplexNumber.new(0, 0)      
        for cn in args 
            result = (result + cn)
        end
        return result
       # for i in 0..2
        #  new_real  = args[i][0].real + new_real
        #end
    
       # args.each_index { |i| new_real = args[i][i].real + new_real }
        #puts "#{new_real}"
       end
    
    
       def bulk_multiply(args)
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
    
    #ComplexNumber.new(3,2) + ComplexNumber.new(1,7)
    
    a =[ComplexNumber.new(3,2),ComplexNumber.new(1,7)]
    sun=ComplexNumber.new(1,1).bulk_multiply(a)
    puts "#{sun}"
    
    #res= ComplexNumber.new(3,2).*(ComplexNumber.new(1,7))
    #puts "#{res}"
    
    