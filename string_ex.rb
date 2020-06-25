class StringExample

    #Ex1: multiple_string
    def multiple_string(str, row)
        i = 0
        while i <= row do
            puts str * i
            i+= 1
        end
    end

    #Ex2: start_if
    def start_if(str)
        if str[0..1] == "if"
            puts true
        else
            puts false
        end
    end

    #Ex3: script
    def script_infor()      
        print "Input first name: "
        fn = gets.chomp
        print "Input last name: "
        ln = gets.chomp
        print "Input gender: "
        gd = gets.chomp
        if gd == "male" || gd == "Male"
            gd = "Mr"
        elsif gd == "female" || gd = "Female"
            gd = "Ms"
        end
        puts "Hello #{gd} #{fn}, #{ln}"
    end

    #Ex4: file_infor
    def file_infor(path)
        file_name = File.basename(path)
        puts "File name: #{file_name}" 
        base_name = File.basename(path, ".*")
        puts "Base name: #{base_name}"
        ext_name = File.extname(path)
        puts "Extention: #{ext_name}"
        url = File.dirname(path)
        puts "Path name: #{url}"
    end

    #Ex5: Viet function truyen vao 1 so, in ra tu 1 den n khong su dung vong lap
    def in_value(number, i = 1)
        if i <= number
            print "#{i} "
            i += 1
            in_value(number, i)
        end
    end

    def menu_ex

        puts "----Menu----"
        puts "1. Example 1."
        puts "2. Example 2."
        puts "3. Example 3."
        puts "4. example 4."
        puts "5. Example 5."
        puts "0. Exit."
        loop do
            print "Please, input key: "
            key = (gets.chomp).to_i
            case key
            when 1
                print "Nhap chuoi: "
                st = gets.chomp
                print "Nhap so hang: "
                row = (gets.chomp).to_i
                multiple_string(st, row)
            when 2
                print "Nhap chuoi: "
                st = gets.chomp
                start_if(st)
            when 3
                str.script_infor()
            when 4
                print "Nhap path: "
                path = gets.chomp
                file_infor(path)
            when 5
                print "Nhap so: "
                num = (gets.chomp).to_i
                in_value(num)
                puts
            when 0
                break
            end
        end
    end

end

str = StringExample.new
str.menu_ex()
