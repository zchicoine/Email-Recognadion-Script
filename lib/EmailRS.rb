#require 'EmailRS/version'
#require File.expand_path('../ScriptRules/rules_index')
#require File.expand_path('../ScriptRules/process_rules')
require_relative 'EmailRS/ship_names'
require_relative 'ScriptRules/process_rules'
require_relative 'ScriptRules/rules_index'


module EmailRS


  class << self


    def new

      Class.new do
        include Singleton
        include EmailRS::EmailRScript
        include ProcessRules

      end.instance

    end



  end


  #rulesIndexObj = RulesIndex. new

    #rulesIndexObj.readFromFile(File.expand_path('csvInput.csv'))

    # processRulesObj = ProcessRules. new
    # processRulesObj.readJsonFile()

end

EmailRS.new.start_script