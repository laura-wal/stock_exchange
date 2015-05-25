class Client

  attr_accessor :name, :balance, :portfolios

  def initialize(options = {})
    @name = options[:name]
    @balance = options[:balance]
    @portfolios = options[:portfolios] || []
  end  


   def list_portfolio
  @portfolios.each { |portfolio| puts " Portfolios = #{portfolio.name}" }
  end 

# this didnt work....connect to portfolio_value def
  # def list_portfolio
  # @portfolios.each { |portfolio| puts " Portfolios = #{portfolio.name}, Value = #{total_value} " }
  # end 

# def display_
#     animals.keys.join(', ')
#   end

end  