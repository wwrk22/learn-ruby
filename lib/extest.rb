# while 1
#   print "Enter a number: "
  
#   begin
#     num = gets().match(/\d+/)[0]
#   rescue
#     puts "Erroneous input! Try again..."
#   else
#     puts "#{num} + 1 is: #{num.to_i + 1}"
#   end
# end

retries = 2
while retries > 0
  begin
    print "Enter a number: "
    num = gets().match(/\d+/)[0]
  rescue
    if retries > 0
      puts "#{retries} retries left"
      retries -= 1
      sleep 1
      retry
    end
  else
    puts "#{num} + 1 = #{num.to_i + 1}"
  end
end
