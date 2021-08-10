def nombrador arreglo_hash
    puts "Tienes #{arreglo_hash.size} nombres en el arreglo 'nombres'"
  
   arreglo_hash.each do |hash|
    puts "El nombre es '#{hash[:nombre]} #{hash[:apellido]}'"
    
   end
  end
  
  
  a = {nombre: "Michael", apellido: "Choi"}
  b = {nombre: "John", apellido: "Doe"}
  c = {nombre: "Jane", apellido: "Doe"}
  d = {nombre: "James", apellido: "Smith"}
  e = {nombre: "Jennifer", apellido: "Smith"}
  nombres = [a, b, c, d, e]
  
  nombrador nombres