def display_marks_pos(english, hindi, maths)
  puts"English : #{english}, Hindi: #{hindi}, Maths : #{maths}"
  return "Total marks =  #{english + hindi + maths}"
end
def display_marks_splat(english,*other_subjects)
  puts"English : #{english}, other_subjects :#{other_subjects}"
  return "Total marks = #{english + other_subjects.reduce(:+)}"
end
def display_marks_default(english,hindi,maths = 100)
  puts"English : #{english}, Hindi: #{hindi}, Maths : #{maths}"
  return "Total marks =  #{english + hindi + maths}"
end

def display_marks_key(english:, hindi:, maths:)
  puts"English : #{english}, Hindi: #{hindi}, Maths : #{maths}"
  return "Total marks =  #{english + hindi + maths}"
end
 
def display_marks_keydef(english: , hindi: ,maths: 100)
  puts"English : #{english}, Hindi: #{hindi}, Maths : #{maths}"
  return "Total marks =  #{english + hindi + maths}"
end

def display_marks_keysplat(**subjects)
  puts"#{subjects.keys} : #{subjects.values}"
  return "Total marks = #{subjects.values.reduce(:+)}"
end
