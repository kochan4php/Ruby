# Method / Function
=begin
  * Method atau Function adalah suatu blok program yang akan selalu dijalankan ketika dipanggil 
  * contoh :
  def namaMethod(parameter)
    # blok program
    return nilai # => optional
  end

  namaMethod(argumen) # memanggil method 1 kali
  namaMethod(argumen) # memanggil method 2 kali
  namaMethod(argumen) # memanggil method 3 kali

  # Jadi method tersebut akan dijalankan sebanyak 3 kali
=end

# Method / Function dengan return nilai
def penjumlahan(num1, num2)
  return num1 + num2
end

def pengurangan(num1, num2)
  return num1 - num2
end

def perkalian(num1, num2)
  return num1 * num2
end

def pembagian(num1, num2) 
  return num1.to_f() / num2.to_f()
end

num1 = 10
num2 = 12

hasilJumlah = penjumlahan(num1, num2)
hasilKurang = pengurangan(num1, num2)
hasilKali = perkalian(num1, num2)
hasilBagi = pembagian(num1, num2)

puts "#{num1} + #{num2} = #{hasilJumlah}"
puts "#{num1} - #{num2} = #{hasilKurang}"
puts "#{num1} x #{num2} = #{hasilKali}"
puts "#{num1} / #{num2} = #{hasilBagi}"

puts "\n"

# Method / Function tanpa return nilai
def clearTerminalScreen()
  system("CLS")
end

# clearTerminalScreen()

# Variable local dan global
=begin
  * variable local adalah variable yang didefinisikan didalam method / function sehingga hanya akan dikenal di dalam lingkup method / function itu saja
  * variable global adalah variabel yang dapat dikenali oleh seluruh bagian program. variable global harus diawali dengan tanda dollar($). contoh: $variableGlobal = value
=end

# variable global
$variableGlobal = "Mamah aku global"

def method_1()
  a = 5 # variable local untuk method_1()
  puts "Di dalam method method_1(): "
  puts "Variable local: #{a}" 
  puts "Variable global: #{$variableGlobal}"
end

def method_2()
  a = 15 # variable local untuk method_1()
  puts "Di dalam method method_1(): "
  puts "Variable local: #{a}" 
  puts "Variable global: #{$variableGlobal}"
end

if $0 == __FILE__
  method_1()
  puts "\n"
  method_2()
end

# Optional Parameter
=begin
  * Optional parameter / parameter default adalah parameter yang nilai awalnya sudah ditentukan pada saat pendefinisian method
=end

def cetakKeLayar(value, newLine = false)
  if (!newLine)
    print value
  else
    puts value
  end
end

cetakKeLayar("Belajar Ruby")
cetakKeLayar("Belajar Javascript", true)
cetakKeLayar("Belajar Algoritma dan data struktur")

# Memanggil method dengan urutan argumen yang berbeda
=begin
  * secara default, argumen yang diisikan ke dalam parameter itu harus sesuai dengan urutan parameternya
  ** contoh :
    def method(param1, param2)
      # code
    end
    
    method(argumenForParam1, argumenForParam2)

  * untuk memanggil method dengan urutan parameter yang berbeda, maka kita perlu menambahkan tanda titik dua (:) di belakang nama parameter pada saat mendefinisikan sebuah method
  ** contoh :
    def method(param1:, param2:)
      # code
    end
    
    method(param2: argumenForParam2, param1: argumenForParam1)
=end

def echo(a:, b:, c:) 
  puts "Param a = #{a}"
  puts "Param b = #{b}"
  puts "Param c = #{c}"
end

echo(c: 300, a: 100, b: 200)

# Memanggil method dengan jumlah argumen berbeda
=begin
  * untuk membuat method dengan jumlah argumen yang berbeda dan tanpa menyebutkan parameternya, kita perlu menggunakan tanda asterik di depan nama parameter pada saat method tersebut didefinisikan.
  * daftar nilai yang digunakan pada saat pemanggilan method akan disimpan dalam bentuk Array
=end

def exampleMethod(*args) 
  puts "Tipe: #{args.class()}"
  puts "Nilai: #{args}"
  puts "\n"
end

exampleMethod(100)
exampleMethod(100, 200)
exampleMethod(100, 200, 300)
exampleMethod(100, 200, 300, 400)
exampleMethod(100, 200, 300, 400, 500)

=begin
  * method yang mendefinisikan parameter *args masih dapat memiliki parameter normal
  ** example: 
=end

def exampleMethod1(a, *args)
  puts "Parameter normal: #{a}"
  puts "Parameter *args: #{args}"
end

exampleMethod1("Test", 100, 200, 300, 400, 500)

# lambda
=begin
  * method dengan return nilai yang melakukan operasi sederhana, dapat dibuat menggunakan lambda
  lambda = { |arg1, arg2, ..., argN| aksi }
=end

maksimum = lambda {|a, b| a > b ? a : b}
puts maksimum.call(100, 30)

# Mendefinisikan method didalam method
def luasLingkaran2(r)
  def kuadrat(x)
    return x * x
  end

  return Math::PI * kuadrat(r)
end

puts luasLingkaran2(10)
puts luasLingkaran2(20)

=begin
  * pada bahasa pemrograman lain, umumnya method kuadrat() hanya dapat dipanggil didalam lingkup method luasLingkaran2(). namun pada Ruby, kita tetap dapat memanggil method kuadrat() walaupun diluar method luasLingkaran2().
=end

puts kuadrat(10)
puts kuadrat(20)

# Membuat alias untuk method
=begin
  * suatu method yang sudah didefinisikan dengan nama tertentu dapat didefinisikan ulang menggunakan nama baru yang lebih sederhana.
  * bentuk penggunaan : alias namaAlias namaMethod
=end

alias echo puts

echo "Belajar Ruby Method menggunakan alias"

# menghapus method
=begin
  * suatu method yang sudah didefinisikan dapat dihapus kembali menggunakan perintah undef
  * bentuk penggunaan : undef namaMethod
=end

def sayHello()
  puts "Hello"
end

sayHello() # Memanggil method sayHello()

undef sayHello # Menghapus method sayHello()

# sayHello() # Method sayHello() tidak dapat dipanggil lagi

# method eval()
=begin
  * method eval() digunakan untuk menjalankan kode aritmatika yang didefinisikan dalam bentuk string
  * method eval() ini banyak dimanfaatkan untuk pembuatan program yang melibatkan perhitungan dengan sumber data berupa string, misalnya kalkulator.
=end

ekspresiAritmatika = "2 + 2"

hasil = eval(ekspresiAritmatika)

puts "Hasil eval(ekspresiAritmatika) = #{hasil}"

# method exec()
=begin
  * method exec() digunakan untuk mengeksekusi program ekternal dari dalam kode Ruby.
=end
  
# Sebagai contoh, untuk menjalankan program kalkulator yang ada di sistem operasi kita, kita dapat menggunakan method exec() dengan menuliskan sebagai berikut :

exec("calc.exe") # Menjalankan program kalkulator di windows

# untuk menjalankan program REPL node.js jika suda terinstall di sistem kita, kita dapat menggunakan method exec() dengan menuliskan sebagai berikut :
exec("node.exe") # Menjalankan REPL node.js di windows jika sudah terinstall