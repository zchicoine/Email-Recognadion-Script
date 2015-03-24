require 'spec_helper'

RSpec.describe DatePortNames do

    before :each do
         @datePortNames = Class.new do
             include DatePortNames
         end.new
    end

    describe 'When date fermat does not follow the normal stander format ' do
        it 'should recognize 23-Feb date' do
            date_day = 23
            email_line = "M/V Falcon Trader #{date_day}-Feb"
            expected_years = if (2 <= Date.today.month and date_day < Date.today.day) then Date.today.year else  Date.today.year + 1 end
            expect(@datePortNames.extract_dates(email_line)).to eq  [Date.new(expected_years,2,date_day)]
        end

        it 'should recognize the following format 17-23-May of date' do
            expected_day = 17
            expected_month = 1
            expected_years= []
            dates = []
            (1..10).each do |i|
                dates[i] = "#{expected_day }-#{ (expected_day + i ) }-#{Date.new(0,expected_month).strftime('%b')} "
                expected_years[i] = if (expected_month <= Date.today.month and expected_day < Date.today.day) then Date.today.year else  Date.today.year + 1 end
            end
            (1..10).each do |i|
                expect(@datePortNames.extract_dates(dates[i])).to eq [Date.new(expected_years[i],expected_month, expected_day + i)]
            end
        end
    end
end