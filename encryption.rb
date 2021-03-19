# https://www.hackerrank.com/challenges/encryption

def encryption(s)
    res = String.new
    sq = Math.sqrt(s.length)
    sqn = Integer.sqrt(s.length)
    sqm = Math.sqrt(s.length).ceil
    if sq == sqn
        for x in 0...sqn
            arr = x.step((s.length - 1), sqn).to_a
            n = 0
            sqn.times do |n|
                res << s[arr[n]]
                n += 1
            end
        end
        z = sqn
        (sqn - 1).times do
             res.insert(z, ' ')
            z += (sqn + 1)
        end
        return res
    elsif sqn * sqm < s.length
        for x in 0...sqm
            arr = x.step((s.length - 1), sqm).to_a
            arr.each {|i| res << s[i]}
            res << " "
        end
        return res
    else
        for x in 0..sqn
            arr = x.step((s.length - 1), sqm).to_a
            arr.each {|i| res << s[i]}
            res << " "
        end
        return res              
    end

end