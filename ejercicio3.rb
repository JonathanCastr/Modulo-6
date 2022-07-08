def estatus_alumno(nombre,clave,puntos)
    nota=1+6*puntos/100
    if nota <5
        mensaje= "#{nombre} tu estatus es Reprobad@"
    else
        mensaje= "#{nombre} tu estatus es Aprobad@"
    end
return mensaje
end
puts estatus_alumno("Jonathan","TLX23",91)
puts estatus_alumno("Juanita","TLX24",70)
puts estatus_alumno("Pedro","TLX25",45)