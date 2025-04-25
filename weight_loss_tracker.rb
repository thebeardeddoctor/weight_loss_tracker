require 'active_support'
require 'active_support/core_ext'

now = Time.now

puts "what is your current weight?"
current_weight = gets.chomp.to_i

puts "what is your goal weight?"
goal_weight = gets.chomp.to_i


puts "how many pounds do you want to lost per week?"
rate_of_weight_loss = gets.chomp.to_i

total_weight_lost = current_weight - goal_weight 
time_needed = total_weight_lost/rate_of_weight_loss
goal_date =(now + time_needed.weeks)

print "Loading "
for i in 0..10
  i.times do print "#" end
  sleep(0.25)
end

puts "\n\n Your weight loss goal of #{total_weight_lost}lbs should be achieved by #{goal_date.strftime("%m/%d/%Y")}. 

Good luck!"

