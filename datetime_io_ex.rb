class DateTimeIOExample
    # imclude thu vien date vao
    require 'date'

    # file xu ly
    def run_file()
        filename = get_date_time().to_s
        values = input_values()
        create_file(filename, values)
        puts "Read file"
        read_file(filename)
    end

    # lay ngay gio hien tai
    def get_date_time()
        date_time = DateTime.now
    end

    # tao file co ten va gia tri duoc truyen vao
    def create_file(filename, values)
        File.write filename, values
    end
    
    # doc file
    def read_file(filename)
        puts File.read filename
    end

    # nhap noi dung cho file
    def input_values()
        puts "Nhap noi dung:"
        puts "---------------------------------------"
        values = gets.chomp
    end
end
DateTimeIOExample.new.run_file()