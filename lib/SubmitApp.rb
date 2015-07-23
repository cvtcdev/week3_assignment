class SubmitApp
  def call(env)
    content = ""
    content << File.open("htm/header.html").read
    content << "Name: "

    request = Rack::Request.new(env)
    name = request.POST["name"]
    content << name
    content << "<br>Email: "
    email = request.POST["email"]
    content << email
    content << "<br>Message: <br>"
    message = request.POST["message"]
    content << message
    content << File.open("htm/footer.html").read

    [200, {"Content-type" => "text/html"}, [content]]
  end
end