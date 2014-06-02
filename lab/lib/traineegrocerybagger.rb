require 'pry'

module TraineeGroceryBagger

  MAX_BAG_WEIGHT = 10

  def self.pack items
    bags = nil
      unless items.nil? || items.empty?
         bags = []
         current_bag = []
         current_weight = 0
         bags << current_bag
         items.each do |item|
            if (current_weight + item[:weight]) > MAX_BAG_WEIGHT
               current_bag = []
               bags << current_bag 
               current_weight = 0
               current_weight += item[:weight]
         end
         current_bag << item
         current_weight += item[:weight]
      end
      bags
   end
   end
end

    #TODO: Put all the items in bags with no bag weighing more than MAX_BAG_WEIGHT
    #Return the Bags in an array
    #Return each bag as an array of items
    #Note: there's no need to balance or optimize the bagging

# basicitems = [
#           {item: 'mangoes', weight: 2},
#           {item: 'nectarines', weight: 1},
#           {item: 'peaches', weight: 3},
#           {item: 'avocado', weight: 4},
#       ]
# module TraineeGroceryBagger

#   MAX_BAG_WEIGHT = 10

#   # __Very__ simple Bagging Algorithm
#   # What are some ways it could be improved?
#   # How could we use less bags?

#   def self.pack items
#     bags = nil

#     unless items.nil? || items.empty?

#       # Set up empty bag list
#       bags = []

#       # Open the first bag
#       currentBag = []
#       bags << currentBag

#       items.each do |item|

#         #Check the weight of the current bag
#         currentWeight = bag_weight currentBag

#         if (currentWeight + item[:weight]) > MAX_BAG_WEIGHT

#           # Open the new bag
#           currentBag = []
#           bags << currentBag
#         end

#         # Put Item in Bag
#         currentBag << item
#       end
#     end
#     bags
    
#   end


#   def self.bag_weight bag
#     bag.inject(0) { |memo, item| memo + item[:weight] }
#   end

# end




# module TraineeGroceryBagger

#  MAX_BAG_WEIGHT = 10

#  def self.pack items
#    bags = nil
#    current_weight = 0

#    if items.nil? || items.empty?
#    return nil 
# else 
# current_bag = []
# bags = []
# items.each do |element|
# #puts "bag #{bags} element #{element}"
# if (current_weight + element[:weight]) > MAX_BAG_WEIGHT
# #puts "current_bag #{current_bag}" 
# #puts "bag #{bags}"
# #puts "elements1 #{element}"
# bags << current_bag
# current_bag = []
# current_bag << element
# current_weight = 0 
# #puts "current weight: #{current_weight}"

# elsif (element[:weight]) == 10
# #puts "elements2 #{element}"
# if current_bag != []
# bags << current_bag
# current_bag = []
# end
# current_bag << element
# bags << current_bag
# current_bag = []
# current_weight = 0

# #puts "current weight: #{current_weight}"
# else
# #puts "elements3 #{element}"
# current_bag << element
# current_weight += element[:weight]
# #puts "current weight: #{current_weight}"
# #puts "current_bag #{current_bag}" 
# #puts "bag #{bags}" 
# end
# end

# if current_bag != []
# bags << current_bag
# current_weight = 0
# current_bag = []
# end
# puts "bags #{bags}"
#    end

#    #TODO: Put all the items in bags with no bag weighing more than MAX_BAG_WEIGHT
#    #Return the Bags in an array
#    #Return each bag as an array of items
#    #Note: there's no need to balance or optimize the baggin
#    #puts bags
# return bags
# end

# end

# # newTrainee = self.TraineeGroceryBagger.new
# # newTrainee.pack ([
# #          {item: 'broccoli', weight: 10},
# #          {item: 'mangoes', weight: 2},
# #          {item: 'nectarines', weight: 1},
# #          {item: 'peaches', weight: 3},
# #          {item: 'avocado', weight: 4},
# #      ])