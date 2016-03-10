class FileRelated
  def initialize (error_message = 'Arguments were not provided for FileRElated',file_to_open='no value')
    @error_message = error_message
    @file_to_open = file_to_open
  end
  def open_file
    if File.exist?@file_to_open
    else
      p "File #{@file_to_open} do not exist"
    end
  end
  def read_file
    char_count_hash = Hash.new(0)
   File.open(@file_to_open) do
     |fp|
     p "file opened"

     fp.each_char do |c|
       if c.between?('A','z')
         print c
         char_count_hash[c]+=1
       elsif c.between?('0','9')
         print c
         char_count_hash[c]+=1
      end
     end
   end
    p char_count_hash

  end
end

fr =  FileRelated.new('no value', 'C:\Users\manoj\fullstack-course1-module2\Lecture09-Hashes\hashes.rb')
fr.open_file
fr.read_file