-- 用户表
CREATE TABLE IF NOT EXISTS YM_User
(
    UserID
    INT
    AUTO_INCREMENT
    PRIMARY
    KEY,
    Username
    VARCHAR
(
    255
) NOT NULL,
    Password VARCHAR
(
    255
) NOT NULL,
    Role ENUM
(
    'Admin',
    'Doctor',
    'User'
) NOT NULL,
    Name VARCHAR
(
    255
),
    ContactInfo VARCHAR
(
    255
),
    UNIQUE
(
    Username
)
    ) COMMENT='用户表，存储系统用户信息';

-- 疫苗表
CREATE TABLE IF NOT EXISTS YM_Vaccine
(
    VaccineID
    INT
    AUTO_INCREMENT
    PRIMARY
    KEY,
    Name
    VARCHAR
(
    255
) NOT NULL,
    TypeID INT NOT NULL,
    ManufacturerID INT NOT NULL,
    Description TEXT,
    FOREIGN KEY
(
    TypeID
) REFERENCES YM_VaccineType
(
    TypeID
),
    FOREIGN KEY
(
    ManufacturerID
) REFERENCES YM_Manufacturer
(
    ManufacturerID
)
    ) COMMENT='疫苗表，存储疫苗信息';

-- 疫苗类型表
CREATE TABLE IF NOT EXISTS YM_VaccineType
(
    TypeID
    INT
    AUTO_INCREMENT
    PRIMARY
    KEY,
    TypeName
    VARCHAR
(
    255
) NOT NULL
    ) COMMENT='疫苗类型表，存储疫苗的类型信息';

-- 疫苗厂家表
CREATE TABLE IF NOT EXISTS YM_Manufacturer
(
    ManufacturerID
    INT
    AUTO_INCREMENT
    PRIMARY
    KEY,
    Name
    VARCHAR
(
    255
) NOT NULL,
    Location VARCHAR
(
    255
)
    ) COMMENT='疫苗厂家表，存储疫苗厂家信息';

-- 医生表
CREATE TABLE IF NOT EXISTS YM_Doctor
(
    DoctorID
    INT
    AUTO_INCREMENT
    PRIMARY
    KEY,
    Name
    VARCHAR
(
    255
) NOT NULL,
    ContactInfo VARCHAR
(
    255
),
    UserID INT NOT NULL,
    FOREIGN KEY
(
    UserID
) REFERENCES YM_User
(
    UserID
)
    ) COMMENT='医生表，存储医生信息';

-- 预约表
CREATE TABLE IF NOT EXISTS YM_Appointment
(
    AppointmentID
    INT
    AUTO_INCREMENT
    PRIMARY
    KEY,
    UserID
    INT
    NOT
    NULL,
    VaccineID
    INT
    NOT
    NULL,
    Status
    ENUM
(
    'Booked',
    'Pending',
    'Completed'
) NOT NULL,
    Date DATE NOT NULL,
    FOREIGN KEY
(
    UserID
) REFERENCES YM_User
(
    UserID
),
    FOREIGN KEY
(
    VaccineID
) REFERENCES YM_Vaccine
(
    VaccineID
)
    ) COMMENT='预约表，存储用户预约信息';

-- 接种记录表
CREATE TABLE IF NOT EXISTS YM_VaccinationRecord
(
    RecordID
    INT
    AUTO_INCREMENT
    PRIMARY
    KEY,
    UserID
    INT
    NOT
    NULL,
    VaccineID
    INT
    NOT
    NULL,
    Date
    DATE
    NOT
    NULL,
    FOREIGN
    KEY
(
    UserID
) REFERENCES YM_User
(
    UserID
),
    FOREIGN KEY
(
    VaccineID
) REFERENCES YM_Vaccine
(
    VaccineID
)
    ) COMMENT='接种记录表，存储用户接种记录';

-- 公告表
CREATE TABLE IF NOT EXISTS YM_Announcement
(
    AnnouncementID
    INT
    AUTO_INCREMENT
    PRIMARY
    KEY,
    Title
    VARCHAR
(
    255
) NOT NULL,
    Content TEXT NOT NULL,
    Date DATE NOT NULL
    ) COMMENT='公告表，存储系统公告';

-- 资讯表
CREATE TABLE IF NOT EXISTS YM_Information
(
    InformationID
    INT
    AUTO_INCREMENT
    PRIMARY
    KEY,
    Title
    VARCHAR
(
    255
) NOT NULL,
    Content TEXT NOT NULL,
    TypeID INT NOT NULL,
    Date DATE NOT NULL,
    FOREIGN KEY
(
    TypeID
) REFERENCES YM_InformationType
(
    TypeID
)
    ) COMMENT='资讯表，存储系统资讯信息';

-- 资讯类型表
CREATE TABLE IF NOT EXISTS YM_InformationType
(
    TypeID
    INT
    AUTO_INCREMENT
    PRIMARY
    KEY,
    TypeName
    VARCHAR
(
    255
) NOT NULL
    ) COMMENT='资讯类型表，存储资讯的类型信息';


-- 插入用户数据
INSERT INTO YM_User (Username, Password, Role, Name, ContactInfo)
VALUES ('admin', 'admin123', 'Admin', 'Admin User', 'admin@example.com'),
       ('doctor1', 'doctor123', 'Doctor', 'Doctor One', 'doctor1@example.com'),
       ('user1', 'user123', 'User', 'User One', 'user1@example.com');

-- 插入疫苗类型数据
INSERT INTO YM_VaccineType (TypeName)
VALUES ('Type A'),
       ('Type B'),
       ('Type C');

-- 插入疫苗厂家数据
INSERT INTO YM_Manufacturer (Name, Location)
VALUES ('Manufacturer A', 'Location A'),
       ('Manufacturer B', 'Location B'),
       ('Manufacturer C', 'Location C');

-- 插入公告数据
INSERT INTO YM_Announcement (Title, Content, Date)
VALUES ('Announcement 1', 'This is announcement 1 content.', '2023-01-01'),
       ('Announcement 2', 'This is announcement 2 content.', '2023-02-01');

-- 插入资讯类型数据
INSERT INTO YM_InformationType (TypeName)
VALUES ('Info Type A'),
       ('Info Type B'),
       ('Info Type C');


