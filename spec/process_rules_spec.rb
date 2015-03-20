require 'spec_helper'

RSpec.describe ProcessRules do

    before :each do
        @processRules = ProcessRules.new
    end

    describe 'When date fermat does not follow the normal sc ' do
        it 'should recognize 23-Feb date' do
            email_body = ['M/V' , '88Jan M/V', 'M/V Falcon Trader 23-Feb']
             expect(@processRules.validatePotentialShipEmail(email_body)).to eq  true
        end

    end
end