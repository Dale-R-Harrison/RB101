
hsh = {
  'grape' => {type: 'fruit', colors: ['red', 'green'], size: 'small'},
  'carrot' => {type: 'vegetable', colors: ['orange'], size: 'medium'},
  'apple' => {type: 'fruit', colors: ['red', 'green'], size: 'medium'},
  'apricot' => {type: 'fruit', colors: ['orange'], size: 'medium'},
  'marrow' => {type: 'vegetable', colors: ['green'], size: 'large'},
}

fruits_veggies = []
hsh.each_value do |value |
  if value[:type] == 'fruit'
    fruits_veggies << value[:colors].map { |color| color.capitalize }
  elsif value[:type] == 'vegetable'
    fruits_veggies << value[:size].upcase
  end
end

p fruits_veggies
