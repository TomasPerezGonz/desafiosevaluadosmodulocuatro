#Se importa la librería Random
require 'securerandom'

#Se inicializa el conteo de puntos
puntosUsuario = 0
puntosMaquina = 0

#Se genera punto de loop en caso de querer volver a jugar
loop do

#Se solicita al usuario ingresar piedra, papel o tijera
puts "Ingresa piedra, papel o tijera: "
seleccionUsuario = gets.chomp.downcase

#Se revisa la selección del usuario.
if seleccionUsuario == "piedra"
  usuario = 00

  elsif seleccionUsuario == "papel"
  usuario = 01

  elsif seleccionUsuario == "tijera"
  usuario = 02

else seleccionUsuario != "piedra" || seleccionUsuario != "papel" || seleccionUsuario != "tijera"
  usuario = 03
  puts "Has ingresado un dato invalido como los <br> en tu codigo HTML, por lo que Piero te quita un punto."
 
end

#Se genera la instancia para que Random seleccione un numero y se asigna la opción

maquina = rand(2)

if maquina == 00
  seleccionMaquina = "piedra"

  elsif maquina == 01
    seleccionMaquina = "papel"

  else
    seleccionMaquina = "tijera"

end

#Se da el resultado del juego  

if maquina == 00 && usuario == 02 || maquina == 01 && usuario == 00 || maquina == 02 && usuario == 01
    puts "Haz perdido, el computador ha seleccionado #{seleccionMaquina} y tu #{seleccionUsuario}."
    puntosMaquina += 1
  
  elsif maquina == 02 && usuario == 00 || maquina == 00 && usuario == 01 || maquina == 01 && usuario == 02
    puts "Haz ganado, el computador ha seleccionado #{seleccionMaquina} y tu #{seleccionUsuario}."
    puntosUsuario += 1
  
  elsif usuario == 03
    puntosMaquina += 1
  
else
  puts "Han empatado, el computador ha seleccionado #{seleccionMaquina} y tu #{seleccionUsuario} por lo que esta ronda no sumará puntos."

end

#Se muestra el marcador
  if puntosUsuario > puntosMaquina
    puts "¡Vas ganando!, el marcador es #{puntosUsuario} a #{puntosMaquina}."

  elsif puntosMaquina > puntosUsuario
    puts "¡Vas perdiendo!, el marcador es #{puntosMaquina} a #{puntosUsuario}."

  else
    puts "¡Van empatados iguales a #{puntosMaquina}!"

  end

#Preguntar al usuario si quiere jugar nuevamente, en caso contraro terminar el programa
  puts "¿Quieres jugar nuevamente? (s/n)."
  respuesta = gets.chomp.downcase

#Si el usuario no ingresa la respuesta correcta se pregunta otra vez.

  until respuesta == "s" || respuesta == "n"
    puts "Debes seleccionar una alternativa correcta, intentalo nuevamente."
    puts "¿Quieres jugar nuevamente? (s/n)"
    respuesta = gets.chomp.downcase

  end   

  #Se cumple condición para ejecutar break unless
  
  if respuesta =="s"
    puts "¡Juguemos nuevamente!"

  # Se cierra el programa
  else
    puts "¡Hasta la próxima!"

  end

# Se genera la condición de detener el juego si la respuesta no es "s"
  
  break unless respuesta == "s"

end
