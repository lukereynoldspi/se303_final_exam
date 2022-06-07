# These three functions suffer from the "Data Clump" smell.
# Cure the smell, and keep the test green and unchanged.
# Hint: Let the existing functions use the new code that you
#       write.

def word_count(beginning, middle, conclusion)
  size(split(beginning)) +
  size(split(middle)) +
  size(split(conclusion))
end

def letter_count(beginning, middle, conclusion)
  size(beginning) + size(middle) + size(conclusion)
end

def period_count(beginning, middle, conclusion)
  size(scan(beginning)) +
  size(scan(middle)) +
  size(scan(conclusion))
end

def size(word)
  word.size
end

def split(word)
  word.split
end

def scan(word)
  word.scan(/\./)
end


