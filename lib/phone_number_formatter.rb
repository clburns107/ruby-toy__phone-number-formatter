# This method takes a string like `"4122226644"` and
# returns a properly formatted phone number.

def format_phone_number(phone_number_str)
  #for all elements loop check to see if element is a number
  #if it is a number starting from the left character push into an empty array
  #if its not a number move on to the next character
  #insert "(,), ,-" at appropriate indexes
  #join the new array back to a string
  # arr=phone_number_str.split('')
  # new=[]
  #   arr.each do |element|
  #   if (element.class) == Fixnum
  #     new << (element)
  #   end
  arr=phone_number_str.gsub(/[(). -]/, "").split('')
  arr.insert(0,"(")
  arr.insert(4,")")
  arr.insert(5," ")
  arr.insert(9,"-")
  return arr.join
end