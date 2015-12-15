require 'mechanize'
require 'nokogiri'
class RedeemGcCodeController < ApplicationController
    def index
        a = Mechanize.new 

        a.get('https://www.amazon.com/') do |init_page|
            puts "================"
            @search_result = init_page.search("#nav-flyout-anchor")
            puts @search_result
            puts "================"
        end
    end
    def redeemCode
    end
end
