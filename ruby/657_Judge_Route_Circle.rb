# @param {String} moves
# @return {Boolean}
def judge_circle(moves)
    if moves.length % 2 != 0 then
        return false
    end
    result1 = 0
    result2 = 0
    moves.each_byte {|c|
        if c == 82 then
            result1 = result1 + 1
        end
        if c == 76 then
            result1 = result1 - 1
        end
        if c == 85 then
            result2 = result2 + 1 
        end
        if c == 68 then
            result2 = result2 - 1
        end
    }
    if result1 == 0 && result2 == 0 then
        return true
    else
        return false
    end
end