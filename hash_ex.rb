class HashExample
    #Ex1: convert from array to hash
    def convert_array_to_hash(array)
        hash = {}
        for i in 0..array.size
            if i % 2 == 0
                key = array[i].to_s
            else
                hash[key] = array[i]
            end
        end
        hash
    end

    #Ex2: counnt word in hash
    def count_word_in_string(string_text)
        hash = {}
        array_words = string_text.split(/\W+/)
        for word in array_words
            if hash.has_key?(word) == false
                hash[word] = 1
            else
                hash[word] += 1
            end
        end
        hash
    end

    #In hash
    def display_hash(hash)
        hash.each {|key, value| puts "#{key} is #{value} word" }
    end
    #Nhap chuoi
    def input
        yield
        input_value = gets.chomp
    end
    #Menu
    def menu_ex
        puts "-----Menu-----"
        puts "1. Example 1: input array and convert to hash"
        puts "2. Example 2: input string and count word in string"
        puts "3. Exit."
        loop do
            print "Please, input key: "
            key = gets.chomp.to_i
            case key
            when 1
                array = input{print "input array: "}
                array = array.split(/\W+/)
                puts convert_array_to_hash(array)
            when 2
                string = input{print "input string: "}
                hash = count_word_in_string(string)
                puts "---------------------"
                display_hash(hash)
            when 0
                break
            end
        end
    end
end
HashExample.new.menu_ex