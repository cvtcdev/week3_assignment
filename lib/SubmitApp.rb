class SubmitApp
  def call(env)
    request = Rack::Request.new(env)
    email = request.POST["email"]
    message = request.POST["message"]
    name = request.POST["name"]

    content = render_page(email, message, name)

    [200, {"Content-type" => "text/html"}, [content]]
  end

  def render_page(email, message, name)
    content = ""
    content << File.open("htm/header.html").read
    content << "<h1>Summer of Ruby 2015</h1>"
    content << "<h2>Name: "
    content << name
    content << "<br>Email: "
    content << email
    content << "<br>Message: <br>"
    content << message + "</h2>"
    content << File.open("htm/footer.html").read
    content
  end
end