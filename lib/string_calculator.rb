class StringCalculator
  
   def add(string_numbers="")
       neg_values = []
       alph_values = []
       @stringnumbers = string_numbers.split ","
       if !@stringnumbers.empty?
         @stringnumbers.each do |sn|
           alph_values << sn if sn.match?(/[A-Za-z]/)
           neg_values << sn.to_i if sn.to_i < 0
         end
        if alph_values.empty?  
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
        raise Exception.new "Alphabets not allowed " + alph_values.join(", ")
       end
      else
       return 0
      end  
   end

end
