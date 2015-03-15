#!/usr/local/bin/ruby
require 'rubygems'
require 'csv'
require 'json'

class RulesIndex


 def initialize()

 end

  def readFromFile(fileName)
    jsonFile = File.open('some.json','w');
    jsonData = {}

    CSV.foreach(fileName,:headers => true, :header_converters => :symbol) do |row|

      jsonData['Emails'] = {
          :subject => row[0],
          :body => row[1],
          :fromName => row[2],
          :fromEmail => row[3],
          :toName => row[5],
          :toEmail => row[6]

      };
      # puts "data is #{jsonData[jsonData.length-1]}"

      jsonFile.write(JSON.pretty_generate(jsonData));

     # CSV.parse(row).to_json
     # @jsonFile.write(JSON.pretty_generate(@jsonData));
   #   csv = CSV.new(fileName, :headers => true, :header_converters => :symbol, :converters => :all)
    #  csv.to_a.map {|row| row.to_hash }
    end


    #{data = File.open(fileName,"r")
    #until data.eof
    #  line = data.readline()
    #  print line
    #end}"
  end



end

rulesIndexObj = RulesIndex. new
rulesIndexObj.readFromFile("C://Users//Pratik Bidkar//RubymineProjects//Email-Recognadion-Script//csvInput.csv")