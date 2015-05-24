class Stock

  attr_accessor :stock_name, :no_of_shares, :share_price

  def initialize(options = {})
    @stock_name = options[:stock_name]
    @no_of_shares = options[:no_of_shares]
    @share_price = options[:share_price]
  end

end  