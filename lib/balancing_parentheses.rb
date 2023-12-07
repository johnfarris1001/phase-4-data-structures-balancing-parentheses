require_relative './stack'

# your code here

def balancing_parentheses(str)
    sta = Stack.new
    str.chars.each do |char|
        if sta.peek == '(' && char == ')'
            sta.pop
        else
            sta.push(char)
        end
    end
    sta.size
end