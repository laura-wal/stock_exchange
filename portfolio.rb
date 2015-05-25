class Portfolio

  attr_accessor :name, :stocks

  def initialize(options = {})
    @name = options[:name] || []
    @stocks = options[:stocks] || []
  end

# didnt work :( option 6
  # def portfolio_value
  #    @stocks.each do |stock| 
  #    @total_value = @no_of_shares * @share_price
  #     end
  #     return @total_value
  # end
 

 # option 7
def list_stocks
  @stocks.each { |stock| puts " stocks = #{stocks.stock_name}" }
  end 


end  