def my_collect(array)
  newArray =[]
  i = 0
  while i < array.length
    yield (array[i])
    newArray << yield(array[i])
    i += 1
  end
    newArray
  end
   array = ["Tim Jones", "Tom Smith", "Jim Campagno"]
   my_collect(array) do |first_name|
    first_name.split(" ").first
end
   collection = ['ruby', 'javascript', 'python', 'objective-c']
  newCollection = []
  my_collect(collection) do |language|
  language.upcase
end
