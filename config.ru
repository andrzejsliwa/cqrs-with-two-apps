require 'rack-proxy'

class Glue < Rack::Proxy
  def rewrite_env(env)
    request = Rack::Request.new(env)
    env['HTTP_HOST'] = 
      request.get? ? 'localhost:4002' 
                   : 'localhost:4001'
    env
  end
end

run Glue.new
