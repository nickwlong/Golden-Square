require 'Time'

RSpec.describe TimeError do
    it "Checks for time difference between API called time and local time" do
        requester_dbl = double :requester
        expect(requester_dbl).to receive(:get)
            .with(URI("https://worldtimeapi.org/api/ip"))
            .and_return('{"abbreviation":"BST","client_ip":"146.199.67.5",
                "datetime":"2022-08-10T14:39:46.208023+01:00","day_of_week":3,
                "day_of_year":222,"dst":true,"dst_from":"2022-03-27T01:00:00+00:00",
                "dst_offset":3600,"dst_until":"2022-10-30T01:00:00+00:00",
                "raw_offset":0,"timezone":"Europe/London",
                "unixtime":1660138786,
                "utc_datetime":"2022-08-10T13:39:46.208023+00:00",
                "utc_offset":"+01:00","week_number":32}')
        time = Time.new(2022, 1, 1, 1, 1, 1)
        time_error = TimeError.new(requester_dbl)
        expect(time_error.error(time)).to eq 19139925.208023


        
    end
end