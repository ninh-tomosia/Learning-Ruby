class ArrayExample
    
    #Ex1: kiem tra tinh ton tai trong array
    # xu ly mang
    def check_item(arr, item)
        rs = false
        (0..arr.size-1).each do |i| 
            if (arr[i].to_s).strip == item
                rs = true
                break
            end
        end
        puts "#{rs}"
    end
    # kiem tra mang
    def check_item_array()
        print "Input list items: "
        arr = gets.chomp
        print "Check item: "
        item = gets.chomp
        arr = arr.split(",");
        # xu ly mang
        check_item(arr, item)
    end

    #Ex2: Dao nguoc mang
    #in mang
    def in_mang(arr)
        for i in 0..arr.size - 1
            print "#{(arr[i].to_s).strip} "
        end
        puts
    end

    # Dao mang
    def dao_mang(arr)
        for i in 0..(arr.size - 1)
            for j in 0..(i - 1)
                # if arr[i] < arr[j] if dung de sap xep (dau < sap xep tang dan, dau > sap xep giam dan)
                    tg = arr[i]
                    arr[i] = arr[j]
                    arr[j] = tg
                # end
            end
        end
    end

    # def xu ly
    def reserve_array(arr)
        # in mang ban dau
        print "mang ban dau: "
        in_mang(arr)
        # dao nguoc mang
        dao_mang(arr)
        # in mang sau khi da dao
        print "mang sau khi dao nguoc: "
        in_mang(arr)
    end

    #Ex3: Tim gia tri lon nhat
    # def tim so lon nhat trong mang
    def max_array(arr)
        max = ((arr[0].to_s).strip).to_i
        for i in 0..(arr.size - 1)
            if max < ((arr[i].to_s).strip).to_i
                max = ((arr[i].to_s).strip).to_i
            end
        end 
        puts "so lon nhat trong mang la: #{max}"
    end
    # def tim so nho nhat trong mang
    def min_array(arr)
        min = ((arr[0].to_s).strip).to_i
        for i in 0..(arr.size - 1)
            if min > ((arr[i].to_s).strip).to_i
                min = ((arr[i].to_s).strip).to_i
            end
        end 
        puts "so nho nhat trong mang la: #{min}"
    end

    # def xu ly
    def check_min_max_item_array(arr)
        # number min array
        min_array(arr)
        # number max array
        max_array(arr)
    end

    # flatten array
    def single_flatten(array)
        results = []
        array.each do |element|
          if element.class == Array
            element.each {|value| results << value}
          else
            results << element
          end
        end
        results
    end

    # flaten array theo de quy
    def recursive_flatten(array, results = [])
        array.each do |element|
          if element.class == Array
            recursive_flatten(element, results)
          else
            results << element
          end
        end
        results
    end

    # def xu ly
    def flatten_array(array)
        # mang ban dau
        print "mang ban dau: "
        in_mang(array)
        # single flatten
        # arr = single_flatten(array)
        # print "mang sau khi first flatten: "
        # in_mang(arr)
        # recursive flatten
        arr = recursive_flatten(array)
        # mang sau khi da flatten
        print "mang sau khi da flatten all: "
        in_mang(arr)
    end

    # nhap mang
    def input_array()
        print "nhap so phan tu cho mang: "
        pt = gets.chomp.to_i
        arr = []
        for i in 0..pt
            print "nhap phan tu thu #{i}: "
            arr[i] = gets.chomp
        end
        arr
    end

    # menu
    def menu_ex()
        puts "----Menu----"
        puts "1. Example 1: Check item array."
        puts "2. Example 2: Reserve array."
        puts "3. Example 3: Check max value array."
        puts "4. example 4: Flatten array."
        puts "0. Exit."
        loop do
            print "Please, input key: "
            key = (gets.chomp).to_i
            case key
            when 1
                check_item_array()
            when 2
                print "Nhap mang: "
                arr = gets.chomp
                arr = arr.split(",")
                reserve_array(arr)
            when 3
                print "Nhap mang: "
                arr = gets.chomp
                arr = arr.split(",")
                check_min_max_item_array(arr)
            when 4
                arr = [1, 2, 3, ["a", "b", "c", ["x", "y", "z", ["ab", "ac"], "u"], 1], "a"]
                flatten_array(arr)
            when 0
                break
            end
        end
    end

end
arr = ArrayExample.new
# arr.check_item_array()
arr.menu_ex()
# print "nhap mang: "
# a = gets.chomp
# a = a.split(",")
# arr.in_mang(a)
# arr.check_min_max_item_array(a)