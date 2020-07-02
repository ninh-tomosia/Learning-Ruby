Báo cáo- ngày 5

    MVC: (Models Views Controllers) giúp code đơn giản, rõ ràng dễ quản lý hơn.
        Model:
            Model chứa dữ liệu của app.
            Model thể hiện dưới hình thức là một cơ sở dữ liệu.
            Model cho phép xem, xử lý và truy xuất cơ sở dữ liệu.
            Model là cầu nối giữa view và controller.
        View:
            Phần giao diện người dùng thấy và sử dụng được.
            Nơi có thể thấy thông tin, dữ liệu từ controller xử lý và gửi đến.
            Thông qua view người dùng có thể tạo các request để gửi đến routes.
            View không thể lấy dữ liệu từ controller và cũng không có mối quan hệ trực tiếp với controller mà chỉ gửi yêu cầu cho controller xử lý.
        Controller:
            Là bộ phận làm nhiệm vụ xử lý các request mà người dùng thông qua view gửi đến cho controller.
            Controller xử lý và gửi dữ liệu phù hợp cho người dùng thông qua view.
            Kết nối với model để xử lý dữ liệu.
        Ví dụ: View(hiển thị) --> Controller(lấy dữ liệu và xử lý) --> Model(nhận dữ liệu để lưu trữ vào DB)
        Ưu nhược điểm của MVC:
            Ưu điểm:
                Dễ kiểm tra, bảo trì.
                MVC giúp chúng ta có một bộ control tối ưu hơn.
                Khi có nhiều request thì website càng nặng. khi đó mvc sẽ giúp tiết kiệm băng thông và load nhanh hơn.
                Chức năng Soc (Separation of Concern): Phân tách rõ ràng giữa: model, data, view, controller.
                Tính năng kết hợp: cho phép bạn thoải mái viết code và server của bạn sẽ được giảm tải đi rất nhiều.
                Tính đơn giản: Dễ sử dụng, dễ hiểu.
            Nhược điểm:
                MVC thường áp dụng cho dự án lớn. Nên dự án nhỏ sẽ khá cồng kềnh trong việc luân chuyển dữ liệu.
                Tốn khá nhiều thời gian trong quá trình phát triển dự án(nhỏ).
    Vẽ MVC:
    người dùng(browser) —request–> routes --(tìm đường dẫn)–> controller(xử lý logic) --yêu cầu–> model(xử lý dữ liệu: lấy ra, lưu trữ, sửa đổi DB) --gửi kết quả–> controller --truyền dữ liệu–> view(nạp dữ liệu) --gửi lại–> controller(xử lý logic) – response --> view(browser)người dùng.

