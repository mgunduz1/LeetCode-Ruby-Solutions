# https://leetcode.com/problems/defanging-an-ip-address/


def defang_i_paddr(address)
    res = address.gsub(".", "[.]")
    res
end