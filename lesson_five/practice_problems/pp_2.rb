
# input: array of hashes of book info, including author, title, and pulishing year. 
# output: hash sorted by publishing date

# algorithm:
# use sort by to sort 

books = [
  {title: 'One Hundred Years of Solitude', author: 'Gabriel Garcia Marquez', published: '1967'},
  {title: 'The Great Gatsby', author: 'F. Scott Fitzgerald', published: '1925'},
  {title: 'War and Peace', author: 'Leo Tolstoy', published: '1869'},
  {title: 'Ulysses', author: 'James Joyce', published: '1922'}
]

p books.sort_by { |hash| hash[:published].to_i }