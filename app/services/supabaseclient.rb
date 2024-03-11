require 'httparty'

class SupabaseClient
  include HTTParty
  base_uri ENV['SUPABASE_URL']

  def initialize(service, params = {})
    @options = { query: params }
  end

  def get
    self.class.get("/#{@service}", @options)
  end

  def post
    self.class.post("/#{@service}", @options)
  end

  def put
    self.class.put("/#{@service}", @options)
  end

  def delete
    self.class.delete("/#{@service}", @options)
  end
end
