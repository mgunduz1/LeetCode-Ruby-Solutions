# https://leetcode.com/problems/valid-sudoku/

def is_valid_sudoku(board)
    board.each do |t|
        t.map! {|q| q.to_i }
    end
    result = true
    r = 0
    c = 0
    3.times do
        c = 0
        3.times do
    nums = [ board[r][c],
    board[r][c+1],
    board[r][c+2],
    board[r+1][c],
    board[r+1][c+1],
    board[r+1][c+2],
    board[r+2][c],
    board[r+2][c+1],
    board[r+2][c+2] ]
            if nums.any? {|num| num.between?(1,9) && nums.count(num) > 1 }
                result = false
            end
            c += 3
        end
        r += 3
    end
        board.each do |row|
        if row.any? {|num| num.between?(1,9) && row.count(num) > 1 }
            result = false
        end
    end
    inc = 0
    9.times do
        numbers = [ board[0][inc],
        board[1][inc],
        board[2][inc],
        board[3][inc],
        board[4][inc],
        board[5][inc],
        board[6][inc],
        board[7][inc],
        board[8][inc] ]
                if numbers.any? {|num| num.between?(1,9) && numbers.count(num) > 1 }
                    result = false
                end
                inc += 1
            end
    result
end