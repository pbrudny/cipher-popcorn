require 'itunes'

class Itunes

  def initialize
    self.client = ITunes::Client.new
  end

  def movies(title)
    client.movie(title).results
  end

  private

  attr_accessor :client

end