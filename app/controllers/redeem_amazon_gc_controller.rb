require "nokogiri"
class RedeemAmazonGcController < ApplicationController
    def index
        @acct = Account.first
    end
    def addAccount
        acct = Account.new(post_params)
        acct.save
        redirect_to root_path
    end
    def deleteAccount
        acct = Account.find(params[:id])
        acct.destroy
        redirect_to root_path
    end
    def updateAccount
        acct = Account.find(params[:id])
        acct.update(post_params)
        redirect_to root_path
    end

    private

    def post_params
      params.require(:mem).permit(:retailer, :email, :password, :zip, :phone)
    end
end
