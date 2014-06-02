module Sorter

  def self.sort_array numbers
    #bubble sorting
    (numbers.length - 1).times do |iteration|
      (numbers.length - 1).times do |idx|
        swap_items_in_array(numbers, idx, idx + 1) if numbers[idx] > numbers[idx + 1]
      end
    end
    numbers
  end

  def self.swap_items_in_array items, indexA, indexB
    tempItem = items[indexA]
    items[indexA] = items[indexB]
    items[indexB] = tempItem
    items
  end

end