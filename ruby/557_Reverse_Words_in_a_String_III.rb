# @param {String} s
# @return {String}
def reverse_words(s)
    ary = s.split(" ")
    result = ""
    for str in ary do
        result = result.concat(str.reverse().concat(" "))
    end
    return result.rstrip
end

p(reverse_words("Let's take LeetCode contest"))