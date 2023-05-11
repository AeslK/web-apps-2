class BitcoinsController < ApplicationController

  def index
    bitcoin = params["amount"] # user-generated data

    # connect to the Coindesk API
    # DON'T CHANGE THIS CODE
    # ----------------------
    require "net/http"
    require "json"
    url = "https://api.coindesk.com/v1/bpi/currentprice.json"
    uri = URI(url)
    response = Net::HTTP.get(uri)
    bitcoin_data = JSON.parse(response)
    # ----------------------
    @usd_rate = bitcoin_data["bpi"]["USD"]["rate_float"]
    @usd_value = @usd_rate * bitcoin.to_f

    # add backend code
    # render bitcoins/index view
  end
  
end