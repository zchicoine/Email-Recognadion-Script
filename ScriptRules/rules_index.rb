=begin
 Converting CSV file to Json
TODO this function should be done by Key Element Extraction (KEE) script
=end

#!/usr/local/bin/ruby
require 'rubygems'
require 'csv'
require 'json'

$jsonData = Hash.new
class RulesIndex


 def initialize()

 end

 def readFromFile(fileName)
   def is_int(str)
     # Check if a string should be an integer
     return !!(str =~ /^[-+]?[1-9]([0-9]*)?$/)
   end

   lines = CSV.open(fileName).readlines

   keys = lines.delete lines.first

   File.open('some.json', "w") do |f|
     data = lines.map do |values|
       is_int(values) ? values.to_i : values.to_s
       Hash[keys.zip(values)]

     end
     f.puts JSON.pretty_generate(data)
   end
 end



end