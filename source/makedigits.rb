require 'csv'
require 'yaml'

data = []

CSV.foreach('data/digits.csv', headers: true) do |row|
  puts row['pi_slice']
  data << row.to_h
end

File.open('app/data/digits.yml', 'w') { |file| file.write(data.to_yaml) }
