require 'rack'
require_relative("HomeApp")
require_relative("ResumeApp")
require_relative("AboutApp")
require_relative("ContactApp")
require_relative("SubmitApp")

class MySite
  def self.run
    Rack::Builder.new do

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
        run SubmitApp.new
      end
    end
  end
end
