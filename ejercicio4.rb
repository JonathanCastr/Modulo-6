X = [1,3,5,7,9,13]

def recorre_arreglo (valor)
    for lala in valor do
        puts lala
    end
end

recorre_arreglo(X)
puts
def num_impares 
    i=1
    y=[]
    while i<=255 do
        y.push(i)
        i+=2
    end
    return y
end
puts num_impares 

x = [1,5,10,7,-2]

def cambia_arreglo (val)
    val.rotate! 1
    print val
end
puts 
cambia_arreglo(x)

