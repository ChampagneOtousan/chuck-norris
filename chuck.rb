class ChuckJokes
  require "chuck_norris"

  def help
  end

  def get_joke_by_id(id)
    return ChuckNorris::JokeFinder.find_joke(id)

  end

  def replace_name(name)

  end

  def random
    return ChuckNorris::JokeFinder.get_joke

  end
end
