alumnos = {"nombre"=> "Klaus", "apellido"=> "Vennik", "edad"=> 20}

puts alumnos["apellido"]
#modificar elemento
alumnos["edad"] = 28
#agregar elementos
alumnos["fono"] ="12345678"
#eliminar elemento
alumnos.delete("edad")
puts alumnos.to_s

#recorrer hash
alumnos.each do |llave, valor|
    puts "#{llave} => #{valor}"
end

h = {:nombre => "Coding", :apellido => "Dojo"} 

puts h # => {:nombre => "Coding"}
h.delete(:apellido) 

puts h # => {:nombre => "Coding"}

puts h.empty?

puts h.has_key?(:nombre)    
puts h.has_value?("Coding")


def nuevo_usuario usuario = {nombre: "Nombre", apellido: "Apellido"}
    puts "Bienvenido a nuestro sitio, #{usuario[:nombre]} #{usuario[:apellido]}!"   
end
nuestro_usuario = {nombre: 'Oscar', apellido: "Vazquez"}
nuevo_usuario # => "Bienvenido a nuestro sitio, Nombre Apellido!"   
nuevo_usuario nuestro_usuario # => "Bienvenido a nuestro sitio, Oscar Vasquez!"                 


def nuevo_usuario nombre: "Nombre", apellido: "Apellido"
    puts "Bienvenido a nuestro sitio, #{nombre} #{apellido}!"
end
nuevo_usuario



#No funciona
def nuevo_usuario (saludo="Bienvenido", {nombre: "Nombre", apellido: "Apellido"})
    puts "#{saludo}, #{nombre} #{apellido}"    
end
usuario = {nombre:"Oscar",apellido:"Vazquez"}# => Bienvenido, Nombre Apellido
nuevo_usuario ("Hola", usuario) # => Hola, Oscar Vazquez