#Ciclo While para mostrar numeros pares e impares

# Se define la variable i en 0 y se ingresa el mensaje inicial
i = 0
puts "Los numeros pares entre 0 y 20 son: "

# Se realiza el ciclo while condicionando con .even? si es par
while i <= 20
  print ("#{i}, ") if i.even?
  i += 1
  end

# Se define la variable i en 0 y se ingresa el mensaje inicial
# Se realiza el ciclo while condicionando con .odd? si es impar
n = 0
puts "\nLos numeros impares entre el 0 y el 20 son: "

while n <= 20
  print ("#{n}, ") if n.odd?
  n += 1
end