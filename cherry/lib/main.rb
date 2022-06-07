# This one has two parts. Both are smells related to loops.

# Apply the "split loop" refactoring.

def total_and_smallest
  data = [23, 15, 8, 16, 4, 42]
  total = total(data)
  smallest = smallest(data)
  [total, smallest]
end

def total(data)
  total = 0
  data.each do |d|
    total += d
  end
  total
end

def smallest(data)
  smallest = data.first
  data.each do |d|
    if d < smallest
      smallest = d
    end
  end
  smallest
end

# Apply the "replace loop with pipeline" refactoring.

def repeat
  data = ["This", "is", "the", "data", "to", "use"]
  result = ""
  (0..5).each do |i|
    result += data[i]
  end
  result
end
