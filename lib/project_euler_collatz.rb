def even_next(n)
  n / 2
end

def odd_next(n)
  (3 * n) + 1
end

def next_value(n)
  if n % 2 == 0
    even_next(n)
  else
    odd_next(n)
  end
end

def collatz(n)
  coll = [n]
  last = n
  while last > 1
    last = next_value(last)
    coll << last
  end
  coll
end

def longest_collatz
  limit = 1000001
  longArray = []

  while limit > 2
    newArray = collatz(limit)
    if newArray.size > longArray.size
      longArray = newArray
    end
    limit = limit - 1
  end
  longArray[0]
end

