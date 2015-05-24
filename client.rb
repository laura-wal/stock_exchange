class Client

  attr_accessor :name, :balance, :portfolios

  def initialize(options = {})
    @name = options[:name]
    @balance = options[:balance]
    @portfolios = options[:portfolios] || []
  end  

def display_portfolios
    portfolios.keys.join(', ')
  end

end  