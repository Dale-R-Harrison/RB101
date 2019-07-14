
# input: nothing
# output: a 32 digit hexadecimal number represented as a string, broken up 

DIGITS = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f']
BLANK_UUID = [[0, 0, 0, 0, 0, 0, 0, 0], [0, 0, 0, 0], [0, 0, 0, 0], 
              [0, 0, 0, 0], [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]]

def fetch_uuid
  uuid_array = BLANK_UUID.map do |arr| 
    arr.map { |_| DIGITS.sample }.flatten.join
  end

  uuid_array.join("-")
end

p fetch_uuid
