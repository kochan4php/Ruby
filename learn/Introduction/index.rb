# Elemen-elemen dasar di dalam Ruby

# Awal perintah program

# Dalam Ruby, pada umumnya perintah program ditulis dalam satu baris dan tidak perlu diakhiri dengan tanda titik koma (;). Sebagai contoh seperti berikut:
a = 1
b = 2
c = 3

# Pada kode di atas kita menulis tiga perintah tanpa tanda titik koma. Tanda titik koma diperlukan ketika ketiga perintah tersebut ingin ditulis dalam satu baris seperti berikut
a = 2; b = 4; c = 6

# Akhir perintah program

# Awal komentar

# Contoh komentar satu baris
=begin 
  contoh komentar
  yang memiliki
  lebih dari satu baris
=end

# Akhir komentar

# Awal blok

# Blok banyak digunakan pada saat kita memanggil iterator. Iterator dalam Ruby merupakan metode khusus yang berguna untuk menelusuri elemen-elemen dalam koleksi tertentu. Cara kerja iterator hampir sama dengan proses pengulangan.

# cara menulis blok di dalam Ruby
=begin 
  1. Menggunakan kurung kurawal {}
  nama_blok { |index|
    perintah_1
    perintah_2
  }

  2. Menggunakan kata kunci do dan end
  nama_block do |index|
    perintah_1
    perintah_2
  end
=end

# contoh
3.times { |index| 
  puts "Hello #{index}"
}

total = 0
1.upto(10) { |index|
  print("#{index} ")
  total += index
}
puts "\n#{total}"

5.times do |index|
  puts "Hello #{index}"
end

total2 = 0
5.upto(10) do |index|
  print("#{index} ")
  total2 += index
end
puts "\n#{total2}"

# Akhir blok

# Awal blok inisialisasi dan finalisasi

# Blok inisialisasi adalah kode program yang akan dijalankan pertama kali ketika program ruby di jalankan.
BEGIN {
  puts "Aku dijalankan paling pertama\n"
}

# Blok finalisasi adalah kode program yang akan dijalankan terakhir ketika program ruby di jalankan.
END {
  puts "\nAku dijalankan paling akhir"
}

# Akhir blok inisialisasi dan finalisasi

# Awal menampilkan output ke layar

# Untuk menampilkan data ke layar kita bisa menggunakan method dibawah ini
=begin 
  1. puts
  2. print()
  3. printf()
=end

a = "Hai"
puts a
print(a)
printf(a)
puts "\n"

# Akhir menampilkan output ke layar

# Awal membaca data dari input terminal
=begin 
  1. Untuk membaca data yang di inputkan dari keyboard bisa menggunakan method gets(), dan otomatis method ini menambahkan baris baru
  2. Untuk menghilangkan baris baru, method gets() harus disambung dengan method chomp() atau chop()
=end

print "Masukkan nama: "
nama = gets().chomp()

print "Masukkan umur: "
umur = gets().to_i()

puts "Hai nama saya #{nama}, saya berumur #{umur} tahun."

print "Masukkan jumlah pengulangan: "
number = gets().to_i()
number.times do |index|
  coma = ", "
  if number == (index + 1)
    coma = " "
  end

  print "#{index}#{coma}"
end

puts "\n"

def perkalian(a, b)
  return a * b
end

print "Masukkan bilangan pertama: "
a = gets().to_i()
print "Masukkan bilangan kedua: "
b = gets().to_i()
print "Pilih operasi matematika (x, /, +, -)"
operasi = gets().chomp()

if operasi == "x"
  puts perkalian(a, b)
end

# Akhir membaca data dari input terminal