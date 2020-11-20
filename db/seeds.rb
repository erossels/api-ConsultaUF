# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'csv'
require 'time'
csv_text = File.readlines(Rails.root.join('db','UF2019.csv'))
for i in (1..csv_text.size-1)
    for j in (1..2)
       fecha_string = '2019' + '/' + j.to_s + '/' + i.to_s
       fecha = Time.parse(fecha_string)
       uf = csv_text[i].split(';')[j].to_f
       Uf.create(date_Uf: fecha, value_Uf: uf)
    end
end