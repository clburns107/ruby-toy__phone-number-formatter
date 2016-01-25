# This method takes a string like `"4122226644"` and
# returns a properly formatted phone number.

def format_phone_number(phone_number_str)
  arr=phone_number_str.gsub(/[(). -]/, "").split('')
  arr.insert(0,"(")
  arr.insert(4,")")
  arr.insert(5," ")
  arr.insert(9,"-")
  puts arr.join
end
