-- ========================================================
-- BÀI TẬP: TẠO BẢNG TRONG CƠ SỞ DỮ LIỆU BẰNG CÂU LỆNH SQL
-- Tên cơ sở dữ liệu: QuanLyDiemThi
-- ========================================================

-- Bước 1: Tạo cơ sở dữ liệu QuanLyDiemThi
DROP DATABASE IF EXISTS QuanLyDiemThi;
CREATE DATABASE QuanLyDiemThi;

-- Bước 2: Chọn Database QuanLyDiemThi để thao tác
USE QuanLyDiemThi;

-- Bước 3: Tạo bảng HocSinh
CREATE TABLE HocSinh (
    MaHS VARCHAR(20) PRIMARY KEY,
    TenHS VARCHAR(50),
    NgaySinh DATETIME,
    Lop VARCHAR(20),
    GT VARCHAR(20)
);

-- Bước 4: Tạo bảng GiaoVien (tạo trước để có thể liên kết khóa ngoại với MonHoc)
CREATE TABLE GiaoVien (
    MaGV VARCHAR(20) PRIMARY KEY,
    TenGV VARCHAR(50),
    SDT VARCHAR(10)
);

-- Bước 5: Tạo bảng MonHoc
-- Lưu ý: MaMH để VARCHAR(50) đồng bộ với bảng BangDiem
CREATE TABLE MonHoc (
    MaMH VARCHAR(50) PRIMARY KEY,
    TenMH VARCHAR(50),
    MaGV VARCHAR(20)
);

-- Bước 6: Tạo bảng BangDiem (bảng trung gian của quan hệ n-n giữa HocSinh và MonHoc)
CREATE TABLE BangDiem (
    MaHS VARCHAR(20),
    MaMH VARCHAR(50),
    DiemThi INT,
    NgayKT DATETIME,
    PRIMARY KEY (MaHS, MaMH),
    FOREIGN KEY (MaHS) REFERENCES HocSinh(MaHS),
    FOREIGN KEY (MaMH) REFERENCES MonHoc(MaMH)
);

-- Bước 7: Bổ sung khóa ngoại MaGV cho bảng MonHoc tham chiếu đến bảng GiaoVien
ALTER TABLE MonHoc 
ADD CONSTRAINT FK_MaGV FOREIGN KEY (MaGV) REFERENCES GiaoVien(MaGV);
