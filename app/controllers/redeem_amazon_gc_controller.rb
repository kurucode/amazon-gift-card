require "aws_agcod"
class RedeemAmazonGcController < ApplicationController
    def index
        AGCOD.configure do |config|
            config.access_key = "..."
            config.secret_key = "..."
            config.partner_id = "..."
        end
        request_id = "test"
        start_time = Time.now - 86400*3
        end_time = Time.now
        page = 1
        per_page = 100
        show_no_ops = true
        @request = AGCOD::GiftCardActivityList.new(request_id, start_time, end_time, page, per_page, show_no_ops)
    end
    def addAccount

        redirect_to root_path
    end
end
