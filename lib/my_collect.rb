array = ["Tim Jones", "Tom Smith", "Jim Campagno"]
my_collect(array) do |name|
  name.split(" ").first
end

collection = ['ruby', 'javascript', 'python', 'objective-c']
my_collect(collection) do |lang|\
yield(collection[lang])
  lang.upcase
end

my_collect(['ruby', 'javascript', 'python', 'objective-c']) { |lang| "#{lang.upcase}" }