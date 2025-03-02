def nyc_pigeon_organizer(data)
 data.reduce({}) do |memo, (attribute, data2)|
    data2.each do |val, names|
      names.each do |name|
        if !memo.keys.include?(name)
          memo[name] = {}
        end
        if !memo[name].keys.include?(attribute)
          memo[name][attribute] = []
        end
        memo[name][attribute] << val.to_s
      end
    end
    memo
  end
end