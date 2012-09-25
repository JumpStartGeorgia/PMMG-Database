#!/usr/bin/env ruby
# encoding: utf-8

require 'csv'

csv_text = File.read('/home/eric/Desktop/pmmg_precincts.csv')
csv = CSV.parse(csv_text, :headers => true)

File.open('/home/eric/Desktop/pmmg_precincts_seed.csv', 'w') do |f|

  csv.each do |row|
    f << "{ district_id: \"#{row[0]}\", pname: \"#{row[1]}\" },\n"
  end

end
