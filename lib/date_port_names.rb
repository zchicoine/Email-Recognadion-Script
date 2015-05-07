# right now of no use but need the code for reference

module DatePortNames

    # @param [String]
    # @return [Hash]
    # This module will return the hash of found port names and open dates
    def receive_date_port_msg(line)
        result_hash = {}
        port_res    = extract_port_names(line)
        date_res    = extract_dates(line)
        return generate_result(result_hash, port_res, date_res)
    end

    # @param [String]
    # @return true
    # Input should be every email line which will check for port names and return the
    # found port names.
    # Ideally the number of port names and dates found should be equal.
    def extract_port_names(email_line)
        port_names = []
        return port_names
    end

    # @param [Hash,Array,Array]
    # @return [Hash]
    # This method is responsible for generating the output hash structure of the port names and dates
    # and passing the result back to this module
    def generate_result(result_hash, port_res, date_res)

        return result_hash
    end

    # @param [String]
    # @return [Array]
    # An array of all valid dates in line should be returned.
    # Ideally the number of port names and dates found should be equal
    def extract_dates(line)
        open_dates = []
        return open_dates
    end

end