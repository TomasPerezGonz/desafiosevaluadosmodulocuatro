def menu(n)
  n.times do |i|
    if i == 0
      puts "Menú de opciónes"
    elsif i < n - 1
      puts "#{i}) Opción #{i}"
    elsif i == n - 1
      puts "#{i}) Salir"
    end
  end
  puts "Selecciona tu opción: "
end

menu(5)

