def nyc_pigeon_organizer(data)
  data.reduce=({}) do |memo, (attribute, data2)|
    data2.each do |value, names|
      names.each do |name|
        if !memo.keys.include?(name)
          memo[name] = {}
        end
        if !memo[name].keys.include?(attribute)
          memo[name][attribute] = []
        end
        memo[name][attribute] << value.t_s 
      end
    end
    memo
end