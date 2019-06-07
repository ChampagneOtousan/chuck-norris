require "./chuck"
laugh = ChuckJokes.new

if ARGV.empty?
  laugh.help
else
  if ARGV.length == 2
    laugh.replace_name(ARGV[0], ARGV[1])
  elsif ARGV[0] == "random"
    laugh.random
  else
    laugh.get_joke_by_id(ARGV[0])
end
end
