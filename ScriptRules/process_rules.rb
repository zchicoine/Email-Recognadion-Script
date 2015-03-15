require 'json'

class ProcessRules


def readJsonFile()
  file = File.read('some.json')
  data_Hash = JSON.parse(file)
  puts data_Hash.keys
end




end

processRulesObj = ProcessRules. new
processRulesObj.readJsonFile()