class ReceiveController < ApplicationController
  require 'net/http'

  def index
    render
  end

  def status
  end

  def login
  end

  def transfer
    sourceCurrency = params[:sourceCurrencyId]
    sourceValue   = params[:sourceValue]
    userName      = params[:userName]

    json ="{ \"sender\": { \"name\": \"Paul\", \"account\": \"ABC123456789\" },
             \"receiver\": { \"name\": \""  + userName + "\", \"account\": \"MADREMIA123\"},
             \"amount\": 120.7,
             \"currency\": \"EUR\"}"
    #ActiveSupport::JSON.encode({ team: 'rails', players: '36' })

    jsonEsc = CGI::escape(json)
    testHost = 'localhost:3000/mineperseurl/'
    realHost = 'http://challenge.transferwise.com/'
    fullUrl = realHost + "?teamname=bootstrap&data=" + jsonEsc
    #fullUrl = Rack::Utils.escape(fullUrl)


    result = Net::HTTP.get(URI.parse(fullUrl))

    #my_connection = Net::HTTP.new('localhost\mineperseurl', 3000)
    #reponse = my_connection.get("teamname=bootstrap&data=" + json)
    render "public/sender2.html"
  end

  def transferUnknownUser
    json ="{ \"sender\": { \"name\": \"Paul\", \"account\": \"ABC123456789\" },
             \"receiver\": { \"name\": \"Monica\", \"account\": \"MADREMIA123\"},
             \"amount\": 120.7,
             \"currency\": \"EUR\"}"

    jsonEsc = CGI::escape(json)
    realHost = 'http://challenge.transferwise.com/'
    fullUrl = realHost + "?teamname=bootstrap&data=" + jsonEsc

    puts "kala"
    puts "kala"
    puts "kala"
    #result = Net::HTTP.get(URI.parse(fullUrl))
    render "public/recieverStatus.html"
  end

end
