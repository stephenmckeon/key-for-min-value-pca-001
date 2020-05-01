# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value
require 'pry'


def key_for_min_value(name_hash)
  lowest_name = nil
  lowest_value = nil
  name_hash.each do |name, value|
    if lowest_value == nil
      lowest_value = value
      lowest_name = name
    else
      if lowest_value > value
        lowest_value = value
        lowest_name = name
      end
    end
  end
  lowest_name
end

hash = {:blake => 10, :ashley => 50, :adam => 17}
key_for_min_value(hash)