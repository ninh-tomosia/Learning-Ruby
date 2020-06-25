Báo cáo - ngày 4

    Array:
        select: lấy ra dữ liệu của mảng theo điều kiện
            ví dụ: a = [18, 22, 33, 3, 5, 6]
            a.select {|num| num > 10 }: Lấy ra các phần tử trong mảng có gía trị lớn hơn 10
        map:
            array.map: lấy tất cả gái trị trong mảng
            array.map{điều kiện}: lấy ra giá trị mảng theo điều kiện
        each:
            array.each: thực thi mảng và trả về mảng ban đầu
            không trả về mảng kết quả.
        collect:
            array.collect: trả về giá trị của mảng
            array.collect{điều kiện}: trả về true or false theo điều kiện
        detect:
            array.detect: trả về phần tử đầu tiên của mảng.
            array.detect{điều kiện}: trả về phần tử đầu tiên của mảng thỏa điều kiện.
        Inject:
            cung cấp cho ta một biến số và cập nhật biến số ấy sau mỗi phần tử được duyệt qua.
            ví dụ: a = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
            a.inject{|sum, e| sum += e} ==> 55
    Xử lý ngoại lệ:
        cú pháp:
        begin
        // khối lệnh được thực thi
        rescue
        // xử lý ngoại lệ ở đây
        end
        Cách dùng:
            các khối lệnh sau begin được thực thi. nếu sảy ra lỗi thì sẽ ném lỗi sang rescue. Rescue sẽ xử lý các lỗi đó
        Mục đích:
            tránh việc chương trình bị dừng lại khi có lỗi.
            ẩn được các lỗi đối với người dùng.
            chương trình chạy theo mong muốn của mình.
    Ruby Exceptions:
        mặc định rescue bắt được các lỗi kế thừa StandardError và không bắt được các lỗi không kế thừa từ StandardError.
    Yield trong block:
        tạm dừng khối lệnh để thực thi các lệnh trong block.
        sau đó thực hiện tiếp các lệnh trong khối lệnh

