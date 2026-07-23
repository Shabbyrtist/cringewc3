Misc= {}

function Misc.isPrime(n)
    -- Numbers less than or equal to 1 are not prime
    if n <= 1 then return false end
    -- 2 and 3 are prime numbers
    if n <= 3 then return true end
    -- Eliminate multiples of 2 and 3 quickly
    if n % 2 == 0 or n % 3 == 0 then return false end
    
    -- Check divisors up to the square root of n, skipping even steps
    local i = 5
    while i * i <= n do
        if n % i == 0 or n % (i + 2) == 0 then
            return false
        end
        i = i + 6
    end
    
    return true
end

return Misc