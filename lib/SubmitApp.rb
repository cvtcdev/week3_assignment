class SubmitApp
  def call(env)
    request = Rack::Request.new(env)
    name = request.POST["name"]
    email = request.POST["email"]
    message = request.POST["message"]

    content = render_page(email, message, name)

    [200, {"Content-type" => "text/html"}, [content]]
  end

  def render_page(email, message, name)
    content = ""
    content << File.open("htm/header.html").read
    content << "Name: "
    content << name
    content << "<br>Email: "
    content << email
    content << "<br>Message: <br>"
    content << message
    content << File.open("htm/footer.html").read
    content
  end
end