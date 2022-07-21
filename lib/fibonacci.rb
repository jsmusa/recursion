def fibs(number)
  array = [0, 1]
  
  if number >= 2
    (number - 2).times do
      array.push(array[-1] + array[-2])
    end
  end

  array.take(number)
end

def fibs_rec(number)
  if number <= 2 then return [0, 1] end

  array = fibs_rec(number - 1)  
  array.push(array[-2] + array[-1])
end

print fibs(10), "\n"
print fibs_rec(10), "\n"

# fr 3 = fr 2 + fr 1
# fr 2 = fr 1 + fr 0
# fr 1 = 1
# fr 0 = 0