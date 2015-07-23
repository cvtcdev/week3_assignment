require 'rack'
require_relative("lib/HomeApp")
require_relative("lib/ResumeApp")
require_relative("lib/AboutApp")
require_relative("lib/ContactApp")
require_relative("lib/SubmitApp")

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
