class Application

    def call(env)
    resp = Rack::Response.new
        time = Time.new
    hr = time.hour
    min = time.min
    resp.write "#{hr}:#{min}\n"
    if hr < 12
        resp.write "Good Mourning!"
    elsif hr >= 12 
        resp.write "Good Afternoon!" 
    end   
        resp.finish
    end

end