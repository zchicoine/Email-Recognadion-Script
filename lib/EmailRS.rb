require 'EmailRS/version'
require File.expand_path('../ScriptRules/rules_index')
module EmailRS

  rulesIndexObj = RulesIndex. new

  rulesIndexObj.readFromFile(File.expand_path('csvInput.csv'))
end
