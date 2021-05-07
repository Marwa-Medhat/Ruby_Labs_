a = [1,2,3]
class Ilike
 def turtles(*args)
   puts args.inspect
   puts args.length
 end
end
Ilike.new.turtles(*a)