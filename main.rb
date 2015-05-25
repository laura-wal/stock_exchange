require 'pry'

require_relative 'brokerage'
require_relative 'portfolio'
require_relative 'client'
require_relative 'stock'

brokerage_one = Brokerage.new name: 'The City Slicker'

c1 = Client.new name:'Bob', balance:750000
c2 = Client.new name:'Sue', balance:950000

p1 = Portfolio.new name: 'Tech Portfolio'
p2 = Portfolio.new name: 'Bank Portfolio'
p3 = Portfolio.new name: 'Energy Portfolio'

s1 = Stock.new name: 'AAPL', no_of_shares: 30, share_price: 45
s2 = Stock.new name: 'GOOG', no_of_shares: 10, share_price: 32
s3 = Stock.new name: 'AMZN', no_of_shares: 12, share_price: 56

s4 = Stock.new name: 'US Bank', no_of_shares: 13, share_price: 55
s5 = Stock.new name: 'TD Bank', no_of_shares: 12, share_price: 15
s6 = Stock.new name: 'BofA', no_of_shares: 67, share_price: 48

s7 = Stock.new name: 'GE', no_of_shares: 60, share_price: 45
s8 = Stock.new name: 'SolarWinds', no_of_shares: 4, share_price: 36
s9 = Stock.new name: 'GreenEnergie', no_of_shares: 70, share_price: 39


brokerage_one.clients << c1 << c2

[p1, p2, p3].each {|portfolio| c1.portfolios << portfolio}
[s1, s2, s3].each {|stock| p1.stocks << stock}
[s4, s5, s6].each {|stock| p2.stocks << stock}
[s7, s8, s9].each {|stock| p3.stocks << stock}


def menu
  puts `clear`
  puts '*** GASE ***'
  puts '1 - Create a client'
  puts '2 - Create a portfolio'
  puts '3 - Purchase Stocks'
  puts '4 - Sell Stocks'
  puts '5 - List all clients and their balances'
  puts "6 - List a client's portfolios and associated values"
  puts "7 - List all stocks in a portfolio and associated values"
  puts 'q - Quit program'
  print "--> "
  gets.chomp.downcase
end

response = menu

while response != 'q'
  case response
    when '1'
      print "Name: "
      name = gets.chomp
      print "Balance "
      balance = gets.chomp.to_i

      client = Client.new({
        name: name,
        balance: balance
        })

      brokerage_one.clients << client  

      # brokerage_one.clients[client.name] = client
      # brokerage_one.clients[client.name].portfolios = portfolios

    when '2'

      print "Portfolio Name: "
      name = gets.chomp
      print "Stocks "
      stocks = gets.chomp
      
      portfolio = Portfolio.new({
        name: name,
        stocks: stocks
        })

      puts "Choose a client to make a new portfolio for: "
      
      brokerage_one.display_clients
      client_name = gets.chomp

      choosen_client = brokerage_one.get_client(client_name)

     choosen_client.portfolios << portfolio


     #  print (
     #  brokerage_one.clients.each do |clients|
     #    puts "which client would you like to add it to?#{clients.name}"
     #  end)
     #  getclient = gets.chomp

     # getclient  << portfolio


    when '3'
    when '4'
    when '5'
       brokerage_one.list_clients
    when '6'
    puts "Choose a clients portfolio to look at: "
      
      brokerage_one.display_clients
      client_name = gets.chomp

      choosen_client = brokerage_one.get_client(client_name)


      choosen_client.list_portfolio 

    # puts client.display_portfolios
    # puts "Enter any key to continue"
    # gets
    when '7'

      brokerage_one.client.portfolio.list_stocks

      # puts "Choose a portfolio to look at: "
      
      # brokerage_one.display_clients
      # client_name = gets.chomp

      # choosen_client = brokerage_one.get_client(client_name)


      # choosen_client.list_portfolio 

  end





  puts '-' * 30
  puts 'press enter to continue'
  gets
  response = menu
end

binding.pry
nil