#Ejercicio 1

#Se solicita ingresar mediante metodo puts el salario del trabajador
puts "Ingrese el salario actual del trabajador: "
#Se crea variable sal que pide al usuario el salario actual y lo transforma en integer
sal = gets.chomp.to_i
#Se solicita ingresar mediante metodo puts el porcentaje de aumento del trabajador
puts "Ingrese el porcentaje de aumento: "
#Se crea variable aum que pide al usuario el porcentaje de aumento y lo transforma en float
aum = gets.chomp.to_f

#Se utiliza while para fijar el minimo de aumento en un 5%, si no se cumple esta condición se solicita volver a ingresar el valor
while aum < 5.0
  puts "El porcentaje minimo de aumento es de 5%, porfavor ingresa un porcentaje valido:"
  aum = gets.chomp.to_f
end

#Se crea metodo para realizar el calculo de nuevo salario con 2 variables

def nuevoSalario(x, y)
  #Se crea la variable aumento que calcula el monto a aumentar
  aumento = (x * (y/100))
  #Se crea la variable salarioFinal que suma el salario actual con la variable aumento
  salarioFinal = x + aumento
  #Se genera un putso que dice de cuanto es el aumento y de cuanto es el salario final, como está pensado en pesos chilenos se redondean los decimales a 0 
  puts " El aumento es de $#{aumento.round(0)}.\n El nuevo salario asciende a $#{salarioFinal.round(0)}"
end

#Se llama al metodo nuevoSalario con las 2 variables solicitadas por consola.
nuevoSalario(sal, aum)

#Ejercicio 2