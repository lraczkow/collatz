# determine number's Collatz sequence
def collatz(n)
  array = []
  until n == 1
    if n%2 != 0 
        n = 3*n + 1
        array.push(n)
      else
        n = n/2
        array.push(n)
    end
  end
  return array
end


def collatz_seq
  counter = 1
  longest = []
  until counter == 1000000
    main_col = collatz(counter)
    if main_col.length > longest.length
      longest = main_col
      counter+=1
    else
      counter+=1
    end
  end
  puts "Number is #{longest[0]}. Sequence length is #{longest.length}"
end

puts collatz(10)
puts collatz_seq