face = Dir['data/*.txt'].map { |filename| File.readlines(filename) }
foreheads = face[0].sample
eyes = face[1].sample
noses = face[2].sample
mouths = face[3].sample

current_path = File.dirname(__FILE__)

time = Time.now

file_name = time.strftime('face, %Y-%m-%d')

separator = '----------------------------------------'

file = File.new(current_path + '/' + file_name + '.txt', 'a')

file.puts(foreheads)
file.puts(eyes)
file.puts(noses)
file.puts(mouths)
file.puts(separator)

file.close

puts "Ваша запись сохранена в файл #{file_name}.txt"
