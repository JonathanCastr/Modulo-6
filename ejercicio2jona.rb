texto =  ["R","R","G","G","B","B","Y","Y","K","K"]
for a in 0..19 do
    print *texto
    texto.rotate! 1
    puts
end
texto1 =  ["+","+","*","~","~","*","+","+","*"]
for a in 0..19 do
    print *texto1
    texto1.rotate! 1
    puts
end
texto2 =  ["=","|","/","|","/","|","=","|","/","|"]
for a in 0..19 do
    print *texto2
    texto2.rotate! 1
    puts
end