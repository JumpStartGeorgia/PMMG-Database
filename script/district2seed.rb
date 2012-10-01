#!/usr/bin/env ruby
# encoding: utf-8

require 'csv'

csv_text = File.read('pmmg_districts.csv')
csv = CSV.parse(csv_text, :headers => true)

File.open('pmmg_districts_seed.csv', 'w') do |f|

  csv.each do |row|
    f << "{ id: \"#{row[0]}\", dname: \"#{row[1]}\" },\n"
  end

end
