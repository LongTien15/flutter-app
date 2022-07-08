#Flutter Application Code Base

## Cấu trúc thư mục
## assets
+ images: Thêm ảnh( background, logo,...)
+ icons: Thêm các icon từ ngoài(file dạng png)
## lib: Đặt các file code trong đây
### constants: Folder này chứa các file khai báo hằng số
+ urls.dart: khai báo các url của api trong đay( dưới dạng String)
+ app_constants.dart: khai báo các hằng số liên quan đến màu sắc, font chữ,..( dùng nhiều)
### data: 
+ models: khai báo các class đại diện cho object trong app( vd: user)
+ repository: viết các hàm tương tác với api, lấy về raw data
+ services: convert raw data từ repo thành các models
### providers: tạo, điều khiển các state trong app
### presentaion: UI viết vào đây
+ screens: Chứa các file màn hình của app
+ widgets: Chứa các widgets dùng nhiều, dùng chung giữa các màn hình
+ animations: Chứa các widget animations( hoạt ảnh) ( nếu có) của app
## pubspec.yaml: chứa các khai báo về dependencies + phiên bản, thêm đường dẫn assets, font chữ