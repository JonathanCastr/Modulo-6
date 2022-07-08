a = "RRGGBBYYKK"
b = "=|/|/|=|/|"
c = "++*~~*++*"

for i in 1..20 do
    puts a +" "+b+" "+c
    a =a[1..9] + a[0..0]
    b =b[1..9] + b[0..0]
    c =c[1..9] + c[0..0]
end