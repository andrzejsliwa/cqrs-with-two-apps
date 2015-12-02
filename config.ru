require 'rack-proxy'

class Glue < Rack::Proxy
  def rewrite_env(env)
    request = Rack::Request.new(env)
    env['HTTP_HOST'] = 
      request.get? ? 'localhost:4002' 
                   : 'localhost:4001'
    env
  end

  def rewrite_response(response_array)
    status, headers, body = response_array
    headers['Location'][0].gsub!(/:4001/, ':4000') if headers['Location']
    [status, headers, body]
  end
end

run Glue.new
