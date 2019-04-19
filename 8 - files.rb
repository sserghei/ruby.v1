Files

	File.new("testfile", "r")

	r - Read only. The file must exist.
	w - Create an empty file for writing.
	a - Append to a file.The file is created if it does not exist.
	r+ - Open a file for update both reading and writing. The file must exist.
	w+ - Create an empty file for both reading and writing.
	a+ - Open a file for reading and appending. The file is created if it does not exist

	file = File.open("temp.txt", "r")
	=> #<File:temp.txt>
	file.close
	=> nil

	File.open(yourfile, 'w') { |file| file.write("your text") }
	File.open(yourfile, 'w') do |f|
		f.each_line do |line|
		  puts line
		end
	end

	File.read(file_name)

	File.rename("tempfile.txt", "newfile.txt")
	File.delete("newfile.txt")
	File.exists?("temp.txt")