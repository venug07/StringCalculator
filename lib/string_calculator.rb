class StringCalculator
  
   def add(string_numbers="")
       neg_values = []
       @stringnumbers = string_numbers.split ","
       if !@stringnumbers.empty?
         @stringnumbers.each do |sn|
           neg_values << sn.to_i if sn.to_i < 0
         end
        if neg_values.empty?
          if @stringnumbers.length > 1
           @stringnumbers = @stringnumbers.inject {|acu, v| acu.to_i + v.to_i }
          else
           @stringnumbers.first.to_i
          end
         return @stringnumbers
        else
         raise Exception.new "Negative numbers not allowed " + neg_values.join(", ")
        end
      else
       return 0
      end  
   end

end
