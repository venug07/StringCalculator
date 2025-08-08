class StringCalculator
  
   def add(string_numbers="")
         @stringnumbers = string_numbers.split ","
         if @stringnumbers.length > 1
          @stringnumbers = @stringnumbers.inject {|acu, v| acu.to_i + v.to_i }
         else
          @stringnumbers.first.to_i
         end
         return @stringnumbers
   end

end
