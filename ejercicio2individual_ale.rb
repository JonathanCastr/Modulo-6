a = "=|/|/|=|/|"
b = "RRGGBBYYKK"
c = "++*~~*++*"
2.times do
    for i in 0..9 do
        print a[i..9]
        if i != 0
            print a[0..i-1]
        end
        print " "
        print b[i..9]
        if i != 0
            print b[0..i-1]
        end
        print " "
        print c[i..9]
        if i != 0
            print c[0..i-1]
        end
        print "\n"
    end
end