# EmailRS

TODO: Write a gem description

## Installation

Add this line to your application's Gemfile:

    gem 'EmailRS'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install EmailRS

## Usage

    email_reg = EmailRS.new

        # :description run the email script onto the input emails to validate email as
        # a potential ship position
        # :param Expects the output of KEE gem. The array of emails as hash
        # :return {status:'fail',body:,subject:,from:,email_address, date:,etc}. OR
        # {email:{status:'succ',body:,subject:,from:,etc},
        #  ship_info:[{ship_name:,port_name:,open_date:},etc]}
        # The output to be passed onto the Data controller
        email_reg.start_script(param)

The Ship Network @2015
