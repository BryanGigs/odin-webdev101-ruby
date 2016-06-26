def add (first_number, second_number)
    sum_of_first_and_second_nums = first_number + second_number
end


def subtract (first_number, second_number)
    difference_of_first_and_second_nums = first_number - second_number
end

def sum(array_of_nums)
    sum = 0
    if array_of_nums == []
        sum = 0
    elsif 
        array_of_nums.each do |number_from_array|
            sum += number_from_array
        end
    end
    return sum
end

def multiply(array_of_nums)
    if array_of_nums == []
        product = 0
    elsif 
        product = 1
        array_of_nums.each do |number_from_array|
            product = product * number_from_array
        end
    end
    return product    
end

def power(number,power)
    num_to_power = 1
    power.times do
        num_to_power = num_to_power * number
    end
    return num_to_power
end

def factorial(number)
    if number == 0
        factorial_of_number = 1
    else
        count = 1
        factorial_of_number = 1
        number.times do 
            factorial_of_number = factorial_of_number * count
            count += 1
        end
    end
    return factorial_of_number
end
            
            