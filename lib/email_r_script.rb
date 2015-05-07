require '../lib/ship_names'
require '../lib/date_port_names'

# right now of no use but need the code for reference

module EmailRS
  module EmailRScript
    include Shipnames
    include DatePortNames

    # @param [Hash]
    # @return [Hash]
    # The expected hash input should contain the email in hash format. The message body of the email should be in lowercase.
    # The output hash format is to be sent to the data controller module. The has format should contain the email,
    # the valid parsed data and any other relevant information
    def receive_email(expected_hash)
        obj             = EmailRScript.new
        data_ctrl_input = {}
        # For every email :
        # 1. the body should be processed Other subsystems should be called for each line of this email
        # add other comments(Moe)
        #expected_hash.each do |line|
        #    obj.receive_ship_name_msg(line)
        #    obj.receive_date_port_msg(line)
        #end
        return data_ctrl_input
    end

  end
end

