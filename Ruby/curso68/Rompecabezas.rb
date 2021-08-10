# Cree un arreglo con los siguientes valores 3,5,1,2,7,9,8,13,25,32. Muestre la suma de todos
# los números del arreglo. Haz que la función también devuelva un arreglo que incluya solo los
# números que sean mayores a 10 (ejemplo: cuando pasas el arreglo anterior, debe devolver un
# arreglo con los valores de 13, 25, 32 - Pista: utilice los métodos reject o find_all.

def gestion_arreglo(arreglo)
    puts "La suma total es: #{arreglo.sum}"
    puts (arreglo.reject { |numeros| numeros < 10 }).to_s
  end
  gestion_arreglo [3, 5, 1, 2, 7, 9, 8, 13, 25, 32]
  
  # Cree un arreglo con los siguientes valores: John, KB, Oliver, Cory, Matthew, Christopher. Mezcla
  # el arreglo y muestre el nombre de cada persona. Haz que el programa devuelva un arreglo con los
  # nombres que tengan una longitud mayor a 5 caracteres.
  
  def arreglo_de_nombres(arreglo)
    seleccion = []
    arreglo.shuffle!
    arreglo.each do |valor|
      puts valor.to_s.to_s
      seleccion.push(valor) if valor.length > 5
    end
    puts "Array con nombres con más de 5 caracteres son: #{seleccion}"
  end
  
  array = %w[John KB Oliver Cory Matthew Christopher]
  arreglo_de_nombres(array)
  
  # Cree un arreglo que contenga las 26 letras del alfabeto (este arreglo tiene que tener 26 valores).
  # Mézclalo y muestre la primera y la última letra del arreglo. Si la primera letra del arreglo es una
  # vocal, haz que muestre un mensaje.
  
  def mezcla_alfabeto(arreglo)
    puts arreglo.shuffle!
    puts arreglo.first
    puts arreglo.last
  end
  array = %w[a b c d e f g h i j k l m n ñ o p q r s t u v w x y z]
  mezcla_alfabeto(array)
  
  # Genere un arreglo con 10 números aleatorios entre 55 - 100 y haz que esté en orden (el número más
  # pequeño en la primera posición). Muestre todos los números del arreglo. Por último, muestre el
  # valor mínimo y el valor máximo del arreglo.
  
  def numeros_aleatorios()
    array=[]
    10.times do
      num = rand(55..100)
      array.push(num)
    end
    array.sort!
  
    puts "Array generado: #{array}"
    puts "Número mínimo: #{array.min}"
    puts "Número máximo: #{array.max}"
  end
  
  numeros_aleatorios
  
  # Genere una cadena aleatoria de 5 caracteres. (Pista (65+rand(26)).chr devuelve un caracter aleatorio).
  # Genere un arreglo con 10 cadenas aleatorias de 5 caracteres cada una.
  
  def cadena_aleatoria()
    cadena=""
    5.times do
      cadena += (65+rand(26)).chr
    end
  
    return cadena
  end
  
  def genera_array_cadena(num_cadenas)
    array=[]
    num_cadenas.times do
      array.push(cadena_aleatoria)
    end
    p "Cadena generada #{array}"
  end
  
  
  genera_array_cadena (1)
  genera_array_cadena (10)