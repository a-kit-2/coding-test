require 'json'
require 'uri'
require 'net/http'

uri = URI.parse('https://static.cookpad.com/hr/screen/categories.json')
json = Net::HTTP.get(uri)
datas = JSON.parse(json)

category = ARGV[0]

def get_recipes(datas, category, flag)
  recipes = 0
  if datas["name"] == category || flag
    if datas.has_key?("recipes") && 
      recipes += datas["recipes"] 
    end
    flag = true
  end
  if datas.has_key?("subcategories")
    datas["subcategories"].each do |data|
      recipes += get_recipes(data, category, flag)
    end
  end
  return recipes
end

puts get_recipes(datas, category, false)