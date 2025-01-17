CREATE DATABASE fishbread_db;
USE fishbread_db;



CREATE TABLE users(
	user_id INT AUTO_INCREMENT PRIMARY KEY COMMENT '사용자의 고유 ID',
    name VARCHAR(255) NOT NULL COMMENT '사용자 이름',
    age INT NOT NULL COMMENT '사용자 나이',
    email VARCHAR(100) UNIQUE COMMENT '사용자 이메일',
    is_business BOOLEAN COMMENT '사용자 비즈니스 사용 유무'
);

CREATE TABLE orders(
	order_id INT AUTO_INCREMENT PRIMARY KEY COMMENT '주문의 고유 ID',
    user_id INT COMMENT '사용자의 고유 ID',
    order_date DATE COMMENT '주문 날짜',
    amount DECIMAL(10, 2) COMMENT '주문 금액',
    FOREIGN KEY (user_id) REFERENCES users(user_id)
);

CREATE TABLE inventory (
    item_id INT PRIMARY KEY AUTO_INCREMENT COMMENT '재고 항목의 고유 ID',
    itme_name VARCHAR(255) NOT NULL COMMENT '재고 항목 이름',
    quantity INT NOT NULL COMMENT '재고 수량'
);



CREATE TABLE sales(
	sale_id INT PRIMARY KEY AUTO_INCREMENT COMMENT '판매의 고유 ID',
    order_id INT COMMENT '주문 ID',
    item_id INT COMMENT '재고 항목의 고유 ID',
	quantity_sold INT NOT NULL COMMENT '판매된 수량',
    FOREIGN KEY (order_id) REFERENCES orders(order_id),
    FOREIGN KEY (item_id) REFERENCES inventory(item_id)
);

CREATE TABLE daily_sales(
	date DATE PRIMARY KEY COMMENT '날짜',
    total_sales DECIMAL(10, 2) NOT NULL COMMENT '총 매출'
);

