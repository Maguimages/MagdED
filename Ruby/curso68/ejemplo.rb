puts "hola clase"
age = 22
if age >= 21
  puts "Bienvenido a la fiesta."
else
  puts "Todavía no."

end

number = 15
if number % 3 == 0 && number % 5 == 0
  puts "FizzBuzz"
elsif number % 3 == 0
  puts "Fizz"

elsif number % 5 == 0
  puts "Buzz"
end
def saludar nombre1, nombre2
    if nombre1.empty? or nombre2.empty?
      return "¿Quién eres?"
    end
    # No ejecuta esta línea porque utilizamos return anteriormente
    "Hola, #{nombre1} y #{nombre2}"
  end

  puts saludar "", ""
  
#El usuario envía el valor correcto, devuelve "¡Lo conseguiste!".
#El usuario envía un número más alto, devuelve "¡La suposición fue demasiado alta!".
#El usuario envía un número más bajo, devuelve "¡La suposición fue demasiado baja!".

def adivina_numero valor
    number = 25
    # tu código aquí
    if valor == number
        puts "¡Lo conseguiste!"
    elsif valor > number
        puts "¡La suposición fue demasiado alta!"
    elsif valor < number
        puts "¡La suposición fue demasiado baja!"
    end 
end 

adivina_numero(26)


