require "rational"

def simplify(num, den)
        gcd = num.gcd(den)
        # find vars
	new_den = den / gcd
	new_num = num / gcd
	[new_num, new_den]
end


def multiply(num, den, num2, den2)
	new_num = num * num2
	new_den = den * den2
	simplify(new_num, new_den)
end


def  add(num, den, num2, den2)
        new_den = den * den2
        num = num * den2
        num2 = num2 * den
        new_num = num + num2
        simplify(new_num, new_den)
end


def divide(num, den, num2, den2)
        new_num = num * den2
        new_den = den * num2
        simplify(new_num, new_den)
end


def subtract(num, den, num2, den2)
	new_den = den * den2
	num = num * den2
	num2 = num2 * den
	new_num = num - num2
	simplify(new_num, new_den)
end

