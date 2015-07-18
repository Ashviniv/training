retries = 0
begin
  puts"enter file path"
  input_path = gets.chomp
  retries += 1
  puts File.read(input_path)
rescue
 p "path doesnot exist"
 retry if retries < 3
end
