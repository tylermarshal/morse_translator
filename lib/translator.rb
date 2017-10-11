class Translate

   def eng_to_morse(input)
     split_input = input.downcase.split('')
     split_input.map! do |character|
       dictionary[character]
     end
     split_input.join('')
   end

   def morse_to_eng(input)
     split_input = input.downcase.split('/')
     split_input.map! do |character|
       dictionary.invert[character]
     end
     split_input.join('')
   end

   def from_file(file_name)
     eng_to_morse(File.read(file_name))
   end

   def dictionary
     {
    	"a" => ".-",
    	"b" => "-...",
    	"c" => "-.-.",
    	"d" => "-..",
    	"e" => ".",
    	"f" => "..-.",
    	"g" => "--.",
    	"h" => "....",
    	"i" => "..",
    	"j" => ".---",
    	"k" => "-.-",
    	"l" => ".-..",
    	"m" => "--",
    	"n" => "-.",
    	"o" => "---",
    	"p" => ".--.",
    	"q" => "--.-",
    	"r" => ".-.",
    	"s" => "...",
    	"t" => "-",
    	"u" => "..-",
    	"v" => "...-",
    	"w" => ".--",
    	"x" => "-..-",
    	"y" => "-.--",
    	"z" => "--..",
    	" " => " ",
      "1" => ".----",
    	"2" => "..---",
    	"3" => "...--",
    	"4" => "....-",
    	"5" => ".....",
    	"6" => "-....",
    	"7" => "--...",
    	"8" => "---..",
    	"9" => "----.",
    	"0" => "-----"
      }
    end

end
