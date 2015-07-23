class AboutApp
  def call(env)
    header = File.open("htm/header.html").read
    footer = File.open("htm/footer.html").read
    body = %Q{
      <h1>Summer of Ruby 2015</h1>
      <h2>Assignment 3</h2>
      <h3>About</h3>
    }
    content = header + body + footer
    [200, {"Content-type" => "text/html"}, [content]]
  end
end
