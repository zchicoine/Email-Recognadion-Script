=begin
 TODO please write a description here
=end
require 'json'


module ProcessRules

    emailMsgArray, msgArray = [], []
    # global valid date formats .. any new date formats can be added into this
    $validDtFormats         = ['%d/%m/%Y', '%m/%d/%Y', '%Y/%m/%d', '%d-%m-%Y', '%m-%d-%Y', '%Y-%m-%d', #basic date formats
                               '%b-%d-%y', '%d-%b-%y', '%b/%d/%y', '%d/%b', # Jan-12,12-Jan,Jan/12,12/Jan
                               '%^b-%d-%y', '%d-%^b-%y', '%^b/%d/%y', '%d/%^b', # JAN-12,12-JAN,JAN/12,12/JAN
                               '%d %b', '%d %^b'] # 28 Jan,28 JAN


    def readJsonFile

        data_Hash = JSON.parse(File.read('some.json'))
        data_Hash.each { |emailObj|

            checkForValidEmailBasedOnAddress(emailObj['From: (Address)']) ? sortEmailsForProcessing(emailObj) : data_Hash.shift

        }
        #puts data_Hash[0]['Body']
    end

    #this method will accept a hash and return true if Email key has a valid value. Valid value of this key element will be
    # tested based on the emails of the customers. this emails in the database will be registered users and thus only registered users will
    # have the facility to actually be able to see their data populated on the website
    def checkForValidEmailBasedOnAddress(data)

        #puts data

        return true
    end

    #this method should eliminate unwanted emails
    def sortEmailsForProcessing(emailObj)
        #puts '*************'
        # separating every line of email in an array.. thus this array will contain every line of the email body
        # modifying teh array in place to remove blank places and nil values if any
        emailMsgArray = emailObj['Body'].split(/[\r\n]+/).delete_if { |line| line == " " || line == "" }

        #puts emailMsgArray.inspect
        #puts emailObj['Body'].split(/[\r\n]+/).inspect

        # everytime this array should be validate dto see if the email could be a potential ship position email
        #puts '*************'
        validatePotentialShipEmail(emailMsgArray)
    end

    # this method should validate an email of being a potential ship position email
    def validatePotentialShipEmail(msgArray)
        #puts DateTime.parse('3rd Feb').to_s
        # currently checking only if the message has 'M/V' and only then matching dates in that message body
        msgArray.each do |line|
            unless /M\/V/.match(line).nil?
                result = validateDate('28 Jan')
                puts result
            end
        end

    end

    # :param Expects the output of KEE gem. The array of emails as hash
    # :return {status:'fail',body:,subject:,from:,email_address, date:,etc}. OR
    # {email:{status:'succ',body:,subject:,from:,etc},
    #  ship_info:[{ship_name:,port_name:,open_date:},etc]}
    # The output to be passed onto the Data controller
    def start_script(kee_array)

      # {status:'fail',body:,subject:,from:,email_address, date:,etc}

      return {}

    end

    private
    #this method validates every string to qualify as a valid date format based on the
    #date formats in the global date format array
    def validateDate(str)
        #unless /\d{1,2}-\d{1,2}\s\w{3}/.match(str).nil?
        $validDtFormats.each do |format|

            return Date.strptime(str, format)
        end
    end


end
