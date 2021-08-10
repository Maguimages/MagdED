class Mamifero
    attr_accessor :salud
  
    def initialize (salud=150)
       @salud = salud
    end
  
    def mostrar_salud
      puts @salud
    end
  end