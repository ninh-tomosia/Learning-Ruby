Báo cáo - ngày 3

    Block:
        Block là một công cụ đặc biệt có thể dùng được điều khiển các scope trong ruby, giúp chúng ta có thể nhìn các biến và các phương thức trên các dòng code.
        Ví dụ:
        def a_method(a, b) a + yield(a, b) end
        puts a_method(1, 2) {|x, y| (x + y) * 3 }
        Kết quả: 10
        => Ta có method a_method(a, b) a + yield(a,b) end. Phương thức này có 2 tham số. Khi gọi phương thức và truyền một block {|x, y| (x + y) * 3 } thì method sẽ thực thi giá trị bên trong yield và trả về kết quả.
        Cách tạo một block: như tạo một hàm.
        yield: được dùng để truyền tham số
        có 2 cách viết:
            { code } dùng khi chỉ có 1 câu lệnh.
            do … end: dùng khi bên trong có nhiều câu lệnh.
        block_given? : kiểm tra xem có truyền block vào hay không
    Proc:
        Giống như block.
        Khi truyền nhiều block giống nhau, ta sử dụng proc để code ngắn gọn dễ sử dụng hơn.
        ví dụ:
        a = [1, 2, 3, 4]
        để các phần tử trong mảng x2 lên.
        ta tạo 1 hàm có tên là:
        def double_block(x)
        if block_given?
        yield x * 2
        end
        end
        gọi hàm block:
        puts a.map{ |arr| double_block(arr){|x| “#{x}”}}
        => Nếu có nhiều hàm cần gọi block như này. Ta có thể tạo ra một proc để dễ dùng hơn.
        Tạo proc:(lấy ví dụ ở trên)
        double_proc = Proc.new do |x| x * 2 end
        Gọi proc: puts a.map(&double_proc) => như thế này sẽ ngắn gọn hơn, dễ hiểu hơn.
    Lambda:
        Lambda là một function và không có tên cụ thể.
        Nó có thể được sử dụng để gán 1 đoạn code.
        Là 1 object
        Những gì lambda làm hoàn toàn độc lập với fucntion gọi nó.
        Lambda là 1 Proc object.
        Lambda thể hiện tính chất của một method.
        Ví dụ:
        result = lambda { |x| x + 1 }
        hoặc
        result = -> { |x| x + 1 }
        Dùng .call để gọi
        result.call(10)
    Array:
        Tạo array:
            arr = Array.new
            arr = []
        Thêm phần tử vào mảng:
            Array.push: thêm phần tử hoặc mảng vào mảng có sẵn
            Array + element: thêm phần tử hoặc mảng vào mảng có sẵn
            Array << element: thêm phân tử hoặc mảng vào mảng có sẵn
            Array.concat(array): thêm mảng vào mảng có sẵn
            array.insert(index, value,… ): thêm các phần tử vào vị trí đã chọn trong mảng.
        Xóa phần tử của mảng:
            array.clear: xóa tất cả phần tử trong mảng
            array.delete(value): xóa tất cả các phần tử có value == value truyền vào.
            array.delete_at(index): xóa element ở vị trí được chọn.
            array.delete_if: xóa các phần tử theo điều kiện.
            array.drop(n): xóa n phần tử bắt đầu từ phần tử đầu tiên.
            array.drop_while{|i| điều kiện}: xóa các phần tử theo điều kiện trong while.
            array.pop: xóa phần tử cuối cùng.
            array.pop(n): xóa n phần tử, tính từ phần tử cuối cùng.
            array.slice(index): xóa phần tử mảng ở vị trí index
        Đếm số phần tử trong mảng:
            array.count
            array.size
            array.length
        Vòng lặp trong array:
            array.each: lặp qua tất cả các phần tử và lấy ra giá trị phần tử đó
            array.each_index: lặp qua tất cả giá trị của phần tử và lấy ra vị trí của phần tử đó.
        Kiểm tra mảng:
            array.empty?: kiểm tra xem mảng có rỗng hay không.
            array.fetch(index): kiểm tra ở vị trí index mảng có giá trị bằng bao nhiêu.
            array.index(value): tìm vị trí theo giá trị truyền vào.
            array.first: lấy ra giá trị đầu tiên của mảng.
            array.first(n): lấy ra các giá trị từ vị trí đầu tiên đến vị trí thứ n.
            array.last: lấy ra giá trị cuối cùng của mảng.
            array.last(n): lấy ra các giá trị từ vị trí cuối cùng đến vị trí thứ n.
        Sắp xếp mảng:
            array.sort: sắp xếp mảng tăng dần
            array.sort {|a, b| b <=> a}: sắp xếp mảng giảm dần
            array.reverse: đảo mảng
        Tách các mảng con và gán vào mảng cha:
            array.flatten: tách các mảng con ra và gán vào mảng cha nhưng không thay đổi giá trị của mảng cha.
            array.flatten!: tách mảng và kết hợp gán lại mảng.
            array.flatten(n): tách bao nhiêu mảng con trong mảng cha
            array.flatten!(n): tách bao nhiêu mảng con trong mảng cha và gán lại cho mảng cha
        Thay đổi giá trị của mảng:
            array.replace(new_array): thay tất cả phần tử trong mảng cũ bằng mảng mới.
            array.join: chuyển mảng thành chuỗi
            array.join(“kí tự”): chuyển mảng thành chuỗi, và giữa các phần tử có kí tự truyền vào.
            array.take(n) lấy ra n phần tử, tính từ vị trí đầu tiên
            array.take_while {|i| i < n}lấy ra n phần tử, tính từ vị trí đầu tiên, theo điều kiện
        Tìm ra giá trị min, max trong mảng:
            array.min: lấy ra giá trị ở vị trí nhỏ nhất
            array.max: lấy ra giá trị ở vị trí lớn nhất.
            array.min{|a, b| a.length <=> b.length}: lấy ra giá trị có độ dài nhỏ nhất.
            array.max{|a, b| a.length <=> b.length}: lấy ra giá trị có độ dài lớn nhất.
        Tính toán với mảng:
            array.sum: tổng giá trị các phần tử có trong mảng.
    Hash: Gần giống như mảng
        Khác nhau giữa hash và array:
            hash lưu trữ dựa trên key(khóa)
            Để lấy được value thì cần phải biết key của value đó.
            array lưu trữ dựa vào index
            để lấy phần tử trong mảng thì cần biết index cảu value đó.
            hash lưu trữ một object
        Tạo hash:
            hash = Hash.new
            hash = {}
