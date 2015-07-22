require 'rack'

class HomeApp
  def call(env)

    content = env.map {|key, value| "#{key} => #{value}"}.sort.join("\n")
    [200, {"Content-type" => "text/plain"}, [content]]
  end
end

class AboutApp
  def call(env)
    content = %Q{
      <!doctype html>
        <html lang="en-US">
        <head>
          <title>RACK BABY!</title>
        </head>
        <body>
          <h1>About Rack 'em up!</h1>
          <p>Edward Dumholt 2015</p>
        </body>
        </html>
    }
    [200, {"Content-type" => "text/html"}, [content]]
  end
end

class ResumeApp
  call(env)

  [200, {"Content-type" => "text/html"}, [content]]
end

class ContactApp
  call(env)

  [200, {"Content-type" => "text/html"}, [content]]
end

class SubmitApp
  call(env)

  [200, {"Content-type" => "text/html"}, [content]]
end

app = Rack::Builder.new do
  map "/" do
    run HomeApp.new
  end

  map "/about_me" do
    run AboutApp.new
  end

  map "/resume" do
    run ResumeApp.new
  end

  map "/contact" do
    run ContactApp.new
  end

  map "/submit_contact" do
    run SumbitApp.new
  end
end

server = Rack::Server.new :app => app, :server=> "webrick"
server.start
