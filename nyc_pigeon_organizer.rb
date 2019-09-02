def nyc_pigeon_organizer(data)
  hash = {}
  data.each do |color_gender_lives, values|
    values.each do |value, array|
      array.each do |name|
        if hash[name] = nil 
          hash[name] = {}
            hash[name][color_gender_lives] = []
          else 
end
