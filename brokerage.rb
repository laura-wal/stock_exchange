class Brokerage

  attr_accessor :name, :clients

  def initialize(options = {})
    @name = options[:name] || []
    @clients = options[:clients] || []
  end

  def display_clients
    # clients.keys.join(', ')
    self.clients.each do |client| 
      print client.name
    end
  end

  def get_client(client_name)
    clients.each do |client|
      if client.name == client_name
        @choosen_client = client
      end
    end
     return @choosen_client
  end

end