class ChuckJokes
  require "chuck_norris"

  def help
    puts "Enter 'ruby app.rb random' for a random joke"
    puts "Enter 'ruby app.rb {id}' for a joke ID"
    puts "Enter 'ruby app.rb {first_name} {last_name}' to change the name"
  end

  def get_joke_by_id(id)
    funny =  ChuckNorris::JokeFinder.find_joke(id)
    puts funny.joke

  end

  def replace_name(fname, lname)
    funny =  ChuckNorris::JokeFinder.replace_name(first_name: "#{lname}", last_name: "#{lname}")
    puts funny.joke
  end

  def random
    funny =  ChuckNorris::JokeFinder.get_joke
    puts funny.joke

  end
end
