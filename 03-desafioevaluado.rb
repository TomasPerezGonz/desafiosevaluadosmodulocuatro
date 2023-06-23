#Ejercicio 1

#Se solicita ingresar mediante metodo puts el salario del trabajador
puts "Ejercicio 1\nIngrese el salario actual del trabajador: "
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

#Se llama a la biblioteca securerandom
require 'securerandom'

#Se solicita al usuario seleccionar un rango de juego
puts "Ejercicio 2\nSelecciona el numero máximo para jugar"
rango = gets.chomp.to_i

#A través del while se verifica que la opción sea valida
while rango.class != Integer
  puts "El valor seleccionado no es valido"
  rango = gets.chomp.to_i
end

#Se crea la variable computador que seleccionará con SecureRandom un numero entre 1 y el valor de la variable rango
computador = SecureRandom.rand(1..rango)

#Se define el metodo def nombrandolo juego que tomará el parametro rango
def juego(rango)
  #Se genera el punto de loop para volver a jugar
  loop do
    #Se solicita al usuario agregar un numero para adivinar cual fue seleccionado por el computador
  puts "Adivina el valor:"
  usuario = gets.chomp.to_i
    #Se utiliza until para que el usuario ingrese un valor entre 1 y el valor seleccionado en la variable rango recordandole la opción por medio de un puts dejandolo volver a ingresar un numero
     until usuario <= rango && usuario > 0
        puts "Ingresaste un numero incorrecto, recuerda que seleccionaste #{rango}, porfavor vuelve a seleccionar un numero:"
        usuario = gets.chomp.to_i
     end
    #Se utiliza if para comparar el numero arrojado por random y el elegido por el usuario y se consulta si quiere volver a jugar
  if rango != usuario
      puts "Te has equivocado. ¿Quieres volver a intentarlo? (s/n)"
      opcion = gets.chomp.downcase
    #Se utiliza until para que el usuario utilice las opciones s o n para seguir jugando o terminar el juego
    until opcion == "s" || opcion == "n"
      puts "Debes ingresar una opcion valida"
          opcion = gets.chomp.downcase
    end
    #Si el usuario ingresa s el programa lo deja ingresar un nuevo valor para continuar el juego
    #if opcion == "s"
     # puts "Ingresa un nuevo valor: "
    #  usuario = gets.chomp.to_i
    #end
    #return unless devolverá al inicio del metodo a menos que el usuario seleccione que no quiere seguir jugando
      return unless opcion == "s"
    else
      puts "¡Felicidades! Adivinaste el número."
      return
  end
  end
end
  

  
#Se llama la función utilizando el valor de la variable rango definida con SecureRandom como argumento
  juego(rango)

puts "Ejercicio 3"

#Se define el metodo imc con 2 parametros de peso y estatura
def imc (peso,estatura)
  #Se define la variable formula según calculo de imc
  formula = peso / estatura**2
  #Se definen condicionales según rangos
  if formula <= 18.5 
    puts "Estas bajo peso"
  elsif formula <= 24.9
    puts "Tu peso es normal"
  elsif formula <= 29.9
    puts "Tienes sobrepeso"
  else
    puts "Tienes obesidad"  
  end
end

#Se solicita al usuario ingresar su estatura y su peso
puts "Ingresa tu estatura representada en metros:"
estatura = gets.chomp.to_f
puts "Ingresa tu peso representado en kilos: "
peso = gets.chomp.to_f

#Se llama al metodo imc tomando como argumentos las variables de peso y estatura
imc(peso,estatura)