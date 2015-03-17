require 'EmailRS/version'
require File.expand_path('../ScriptRules/rules_index')
require File.expand_path('../ScriptRules/process_rules')

module EmailRS

  rulesIndexObj = RulesIndex. new

  rulesIndexObj.readFromFile(File.expand_path('csvInput.csv'))

 # processRulesObj = ProcessRules. new
 # processRulesObj.readJsonFile()
end
