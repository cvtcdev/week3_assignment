class ContactApp
  def call(env)
    header = File.open("htm/header.html").read
    footer = File.open("htm/footer.html").read
    body = %Q{
      <h1>Summer of Ruby 2015</h1>
      <h2>Assignment 3</h2>
      <h3>Contact</h3>
      <form method="POST" action="/submit_contact">
        <label for="name">Name: </label>
        <input id="name" type="text" name="name"><br><br>
        <label for="email">Email: </label>
        <input id="email" type="text" name="email"><br><br>
        <label for="message">Message: </label>
        <textarea id="name" name="name" rows="5" cols="25"></textarea><br><br>
        <input id="submit" type="submit" value="Submit">
      </form>
    }
    content = header + body + footer
    [200, {"Content-type" => "text/html"}, [content]]
  end
end