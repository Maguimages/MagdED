require './Mamifero.rb'


class Perro < Mamifero
  def initialize
    super
  end

  def acariciar
    self.salud+=5
  end

  def caminar
    self.salud-=1
  end

  def correr
    self.salud-=10
  end

  def mostrar_salud
    puts self.salud
  end

end