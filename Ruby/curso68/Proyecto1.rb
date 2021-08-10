class Proyecto
    attr_accessor :nombre, :descripcion

    def initialize(p_nombre, p_descripcion)
        @nombre = p_nombre
        @descripcion = p_descripcion
    end

    def presentacion
        
        puts "#{nombre}, #{descripcion}"
    
    end


end


proyecto1 = Proyecto.new("Proyecto 1", "Descripcion 1")

puts proyecto1.nombre

proyecto1.presentacion