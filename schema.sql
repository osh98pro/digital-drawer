CREATE TABLE 영화 (
    영화번호 INTEGER(1000) PRIMARY KEY,
    영화이름 VARCHAR(30) NOT NULL,
    장르 VARCHAR(20),
    영화길이 INTEGER
);

CREATE TABLE 회원 (
    회원번호 INTEGER(1000) PRIMARY KEY,
    이름 VARCHAR(20) NOT NULL
);

CREATE TABLE 영화평점 (
    평점번호 INTEGER(1000) PRIMARY KEY,
    회원번호 INTEGER REFERENCES 회원(회원번호),
    영화번호 INTEGER REFERENCES 영화(영화번호),
    평가점수 REAL(5)
);

CREATE TABLE 리뷰 (
    리뷰번호 INTEGER(1000) PRIMARY KEY,
    회원번호 INTEGER REFERENCES 회원(회원번호),
    영화번호 INTEGER REFERENCES 영화(영화번호),
    리뷰 VARCHAR(100)
);
