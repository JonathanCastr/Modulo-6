texto =  ["R","R","G","G","B","B","Y","Y","K","K"]
for a in 0..19 do
    print *texto
    texto.rotate! 1
    puts
end