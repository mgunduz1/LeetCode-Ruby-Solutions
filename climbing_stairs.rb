# https://leetcode.com/problems/climbing-stairs/


def climb_stairs(n)
    x = 1
    result = 0
    while x < (n.even? ? n / 2 : (n + 1) / 2) do
    r = n - x
    result += (1..r).inject(:*) / ((1..x).inject(:*) * (1..r-x).inject(:*))
    x += 1
    end
    n.even? ? result += 2 : result += 1
end