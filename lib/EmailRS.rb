#require 'EmailRS/version'
#require File.expand_path('../ScriptRules/rules_index')
#require File.expand_path('../ScriptRules/process_rules')
require 'EmailRS/ship_names'
require 'EmailRS/get_email_array'


module EmailRS
  extend Shipnames
  extend GetEmailArray
  class << self

    # :description create objects ctor
    def new

    end

    # :return The hash format to be sent to the data controller module. The has format should contain the email,
    # the valid parsed data and any other relevant information expected_hash
    def start_script

      input_emails = GetEmailArray.getKEEArray
      #   data_ctrl_input = {}


      #  return data_ctrl_input
    end


  end


  #rulesIndexObj = RulesIndex. new

    #rulesIndexObj.readFromFile(File.expand_path('csvInput.csv'))

    # processRulesObj = ProcessRules. new
    # processRulesObj.readJsonFile()

end

EmailRS.new.greet