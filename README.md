# Bài tập: Tạo bảng trong CSDL bằng câu lệnh SQL

## Mô tả
Cơ sở dữ liệu `QuanLyDiemThi` quản lý điểm thi của học sinh bao gồm 4 bảng:
- `HocSinh`: Lưu thông tin học sinh (`MaHS`, `TenHS`, `NgaySinh`, `Lop`, `GT`).
- `GiaoVien`: Lưu thông tin giáo viên (`MaGV`, `TenGV`, `SDT`).
- `MonHoc`: Lưu thông tin môn học (`MaMH`, `TenMH`, `MaGV` tham chiếu `GiaoVien(MaGV)`).
- `BangDiem`: Bảng trung gian quan hệ n-n (`MaHS`, `MaMH`, `DiemThi`, `NgayKT`).

## Mã nguồn SQL
Toàn bộ mã lệnh được lưu tại file [`QuanLyDiemThi.sql`](file:///C:/Users/loq/.gemini/antigravity-ide/scratch/QuanLyDiemThi/QuanLyDiemThi.sql).
