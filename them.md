# admins

    INSERT INTO `admins` (`admin_id`, `username`, `email`, `password`, `name`, `permission`, `last_login`, `gender_id`, `avatar`, `birthday`) VALUES
    (1, 'admin', 'huykhangvo02092000@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'Võ Huy Khang', 1, '2021-10-04 21:23:56', 1, 'avatar-default.jpg', '1997-01-01'),
    (2, 'QuocMinh', '19008079@student.vlute.edu.vn', 'd41d8cd98f00b204e9800998ecf8427e', 'Đồng Quốc Minh', 1, '2021-10-04 10:10:34', 2, 'avatar-default.jpg', '1997-01-01');

# classes

    INSERT INTO `classes` (`class_id`, `grade_id`, `class_name`, `teacher_id`) VALUES
    (1, 1, '1CTT18A1', 1);

# grades

    INSERT INTO `grades` (`grade_id`, `detail`) VALUES
    (1, 'NGÀNH CÔNG NGHỆ THÔNG TIN'),
    (2, 'NGÀNH AN TOÀN THÔNG TIN'),
    (3, 'NGÀNH KỸ THUẬT HÓA HỌC'),
    (4, 'NGÀNH CÔNG NGHỆ KỸ THUẬT CƠ ĐIỆN TỬ'),
    (5, 'NGÀNH CÔNG NGHỆ KỸ THUẬT CƠ KHÍ'),
    (6, 'NGÀNH CÔNG TÁC XÃ HỘI'),
    (7, 'NGÀNH DU LỊCH'),
    (8, 'NGÀNH SƯ PHẠM KỸ THUẬT CÔNG NGHIỆP'),
    (9, 'NGÀNH SƯ PHẠM CÔNG NGHỆ'),
    (10, 'NGÀNH THÚ Y'),
    (11, 'NGÀNH CÔNG NGHỆ THỰC PHẨM'),
    (12, 'NGÀNH KỸ THUẬT ĐIỆN');

# permissions

    INSERT INTO `permissions` (`permission`, `permission_detail`) VALUES
    (1, 'Admin'),
    (2, 'Giáo Viên'),
    (3, 'Sinh Viên');

# students

    INSERT INTO `students` (`student_id`, `username`, `email`, `password`, `name`, `permission`, `class_id`, `last_login`, `gender_id`, `avatar`, `birthday`, `doing_exam`, `starting_time`, `time_remaining`) VALUES
    (1, '18004057', '18004057@student.vlute.edu.vn', 'e10adc3949ba59abbe56e057f20f883e', 'Võ Huy Khang', 3, 1, '2021-10-04 08:54:09', 2, 'avatar-default.jpg', '2000-09-02', NULL, NULL, '15:55'),
    (2, '19008079', '19008079@student.vlute.edu.vn', 'e10adc3949ba59abbe56e057f20f883e', 'Đồng Quốc Minh', 3, 1, '2021-10-04 07:48:09', 2, 'avatar-default.jpg', '2000-09-02', NULL, NULL, NULL);
    

# subjects

    INSERT INTO `subjects` (`subject_id`, `subject_detail`) VALUES
    (1, 'Lịch sử Đảng Cộng sản Việt Nam');

# teachers

    INSERT INTO `teachers` (`teacher_id`, `username`, `email`, `password`, `name`, `permission`, `last_login`, `gender_id`, `avatar`, `birthday`) VALUES
    (1, 'GVQL', 'binhht@vlute.edu.vn', 'c4ca4238a0b923820dcc509a6f75849b', 'Huỳnh Tấn Bình', 2, '2021-10-04 07:15:09', 2, 'avatar-default.jpg', '1979-09-02');
    

