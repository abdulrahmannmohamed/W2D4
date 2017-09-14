def sluggish(arr)
  i1 = 0
  while i1 < arr.length
    max_length = true
    i2 = 0
    while i2 < arr.length
      max_length = false if arr[i2].length > arr[i1].length
      i2 += 1
    end
    return arr[i1] if max_length
    i1 += 1
  end
end

def dominant(arr)
return arr if arr.length == 1
mid = arr.length / 2
left = dominant(arr.take(mid))
right = dominant(arr.drop(mid))
merge(left, right)
end
def merge(left, right)
  merged = []
  until left.empty? || right.empty?
    case left.first.length <=> right.first.length
    when -1
      merged << left.shift
    when 0
      merged << left.shift
    when 1
      merged << right.shift
    end
  end
  merged.concat(left)
  merged.concat(right)
  # merged.last
end

def clever(arr)
  max = arr[0]
  arr.each {|el| max = el if el.length > max.length}
  max
end
