def DashInsertII(num)
    num = num.to_s
    for i in 0..num.length-1
        if (num[i].to_i != 0 && num[i].to_i % 2 == 0 && num[i.next].to_i % 2 == 0)
            num.insert(i.next, '*')
        elsif (num[i].to_i != 0 && num[i].to_i % 2 == 1 && num[i.next].to_i % 2 == 1)
            num.insert(i.next, '-')
        end
    end
    return num
end

puts DashInsertII(24)
puts DashInsertII(13)
puts DashInsertII(99946)
puts DashInsertII(56647304)