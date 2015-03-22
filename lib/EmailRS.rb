#require 'EmailRS/version'
#require File.expand_path('../ScriptRules/rules_index')
#require File.expand_path('../ScriptRules/process_rules')
require '../lib/ship_names'

# THIS MODULE SHOULD BE REMOVED SINCE A MODULE CANNOT CALL EMTHODS FROM OTHER MODULES.
# WE NEED A CLASS SO THAT WE CAN CALL METHODS FROM OTHER MODULES THAT WE HAVE CREATED
module EmailRS
    include Shipnames

    # @param [hash] The expected hash input should contain the email's message body in hash format
    # @return The hash format to be sent to the data controller module. The has format should contain the email,
    # the valid parsed data and any other relevant informationexpected_hash
    #def receive_email()


    #   data_ctrl_input = {}


    #  return data_ctrl_input
    #end
    #rulesIndexObj = RulesIndex. new

    #rulesIndexObj.readFromFile(File.expand_path('csvInput.csv'))

    # processRulesObj = ProcessRules. new
    # processRulesObj.readJsonFile()
end

EmailRS.new.greet