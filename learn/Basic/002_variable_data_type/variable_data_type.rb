=begin 
  Variabel adalah tempat untuk menyimpan sebuah nilai.
  Tipe data adalah nilai yang disimpan di dalam variabel.
=end

# Tipe data string
teks = 'Aku ini string'

# Tipe data numerik (float & integer)
number1 = 1 # integer
number2 = 4.5 # float

=begin 
  Jenis jenis variabel pada Ruby:
  1. Variabel global
  2. Variabel lokal
=end

=begin 
  1. Variabel global
  Variabel global adalah variabel yang bisa diakses dimanapun didalam program dan bisa diakses di dalam fungsi / method maupun class. Variabel global diawali dengan tanda dollar ($)
  Contoh: 
  $nama_variabel = nilai_variabel
=end

$variabel_global = 'Aku adalah variabel global'
puts "Variabel global di dalam program: #{$variabel_global}"

# Mencetak variabel global di dalam fungsi / method
def cetakVariabelGlobal()
  puts "Mencetak variabel global di dalam method: #{$variabel_global}"
end

cetakVariabelGlobal()

# Mencetak variabel global di dalam class
class CetakVariabel
  def cetakVariabelGlobal()
    puts "Mencetak variabel global di dalam class: #{$variabel_global}"
  end
end

cetak_variabel = CetakVariabel.new()
cetak_variabel.cetakVariabelGlobal()

=begin 
  2. Variabel lokal
  Variabel lokal adalah variabel yang didefinisikan didalam suatu function / method. Variabel lokal tidak bisa diakses diluar function / method, maupun didalam function / method lainnya.
=end

def method_1()
  variabel = 'Aku adalah variabel lokal'
  puts variabel
end

def method_2()
  # puts variabel # ceritanya mau cetak variabel yang ada di method_1, tapi error
end

if $0 == __FILE__
  method_1()
  method_2()
end

=begin 
  Namun variabel yang didefinisikan di dalam blok tertentu misalnya percabangan atau perulangan, variabel tersebut tidak akan menjadi variabel lokal dan tetap bisa diakses diluar blok percabangan maupun perulangan.
=end

for i in 1..5
  var_i = i * 2
  puts "#{i} * 2 = #{var_i}"
end

puts "Mencetak var_i diluar perulangan: #{var_i}"

print "Masukkan angka: "
angka = gets().chomp().to_i()

if angka < 0
  angkaMutlak = -angka.abs()
else
  angkaMutlak = angka
end

puts angkaMutlak

=begin 
  Instance Variable / Variabel milik objek
  
  Instace variable merupakan atribut yang didefinisikan di dalam class yang nantinya jika class yang bersangkutan diinstansiasi, maka instance variable tersebut akan menjadi milik object yang menginstansiasi class tersebut.

  Instance variable didefinisikan dengan menggunakan tanda @ lalu nama atribut nya. Seperti contoh @nama_atribut = nilai. Instance variable ini bersifat private dan tidak bisa diakses diluar class.
=end

class Segitiga 
  def initialize(alas = 0, tinggi = 0)
    # Mendefinisikan atribut alas
    @alas = alas

    # Mendefinisikan atribut tinggi
    @tinggi = tinggi
  end

  def cetakInstanceVariable()
    puts "Instance variable / atribut dari object segitiga: "
    puts "Alas: #{@alas}"
    puts "Tinggi: #{@tinggi}"
  end

  private
    def luas()
      return @alas * @tinggi / 2
    end

  public
    def cetakLuas()
      puts "Total luas: #{luas()}"
    end
end

segitiga1 = Segitiga.new(2, 4)
segitiga1.cetakInstanceVariable()
segitiga1.cetakLuas()