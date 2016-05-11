def power(base, exponent)
  answer = 1
  exponent.times do
    answer = answer * base
  end
  answer
end

def factorial(number)
  counter = 1
  product = 1
  while counter <= number
    product = product * counter
    counter += 1
  end
  product
end

def uniques(array)
  array.each do |element|
    counter = 0
    while counter < array.length
      if counter != array.index(element)
        if element == array[counter]
          array.delete_at(counter)
        end
      end
      counter += 1
    end
  end
  array
end

def combinations(array1, array2)
  combination_array = []
  array1.each do |element|
    counter = 0
    while counter < array2.length
      combination_array << "#{element}#{array2[counter]}"
      counter += 1
    end
  end
  combination_array
end

def is_prime?(number)
  factors = []
  counter = 1
  while counter <= number
    if number % counter == 0
      factors << counter
    end
    counter += 1
  end
  if factors == [1, number]
    true
  else
    false
  end
end

def inside?(rectangle, point)
  if point[0] > rectangle[0][0] && point[0] < rectangle[1][0] && point[1] > rectangle[0][1] && point[1] < rectangle[1][1]
    true
  else
    false
  end
end

def every_point(rectangle)
  every_point_array = []
  counter2 = rectangle[0][1]
  while counter2 <= rectangle[1][1]
    counter1 = rectangle[0][0]
    while counter1 <= rectangle[1][0]
      every_point_array << [counter1, counter2]
      counter1 += 1
    end
    counter2 += 1
  end
  every_point_array
end
 
def overlap(rectangle1, rectangle2)
  overlap_points = []
  every_point(rectangle2).each do |point|
    if inside?(rectangle1, point) == true
      overlap_points << point
    end
  end
  if overlap_points.length > 0
    true
  else
    false
  end
end