-- Categories tablosu
CREATE TABLE Categories (
    category_id SERIAL PRIMARY KEY,
    category_name VARCHAR(100) UNIQUE NOT NULL
);

-- Members tablosu
CREATE TABLE Members (
    member_id SERIAL PRIMARY KEY,
    username VARCHAR(50) UNIQUE NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    registration_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    level SMALLINT DEFAULT 1,
    bio TEXT
);

-- Courses tablosu
CREATE TABLE Courses (
    course_id SERIAL PRIMARY KEY,
    course_name VARCHAR(200) NOT NULL,
    description TEXT,
    start_date DATE,
    end_date DATE,
    instructor_name VARCHAR(100),
    category_id INTEGER REFERENCES Categories(category_id)
);

-- Enrollments tablosu
CREATE TABLE Enrollments (
    enrollment_id SERIAL PRIMARY KEY,
    member_id INTEGER NOT NULL REFERENCES Members(member_id) ON DELETE CASCADE,
    course_id INTEGER NOT NULL REFERENCES Courses(course_id) ON DELETE CASCADE,
    enrollment_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    UNIQUE(member_id, course_id)
);

-- Certificates tablosu
CREATE TABLE Certificates (
    certificate_id SERIAL PRIMARY KEY,
    certificate_code VARCHAR(100) UNIQUE NOT NULL,
    issue_date DATE NOT NULL,
    course_id INTEGER REFERENCES Courses(course_id) ON DELETE SET NULL
);

-- CertificateAssignments tablosu
CREATE TABLE CertificateAssignments (
    assignment_id SERIAL PRIMARY KEY,
    member_id INTEGER NOT NULL REFERENCES Members(member_id) ON DELETE CASCADE,
    certificate_id INTEGER NOT NULL REFERENCES Certificates(certificate_id) ON DELETE CASCADE,
    received_date DATE DEFAULT CURRENT_DATE,
    UNIQUE(member_id, certificate_id)
);

-- BlogPosts tablosu
CREATE TABLE BlogPosts (
    post_id SERIAL PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    content TEXT NOT NULL,
    published_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    author_id INTEGER NOT NULL REFERENCES Members(member_id) ON DELETE CASCADE
);
