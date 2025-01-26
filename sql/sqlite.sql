CREATE TABLE IF NOT EXISTS survey (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name VARCHAR(255) NOT NULL,
    age INTEGER NOT NULL,
    job ENUM('会社員', '自営業', '学生', '主婦（夫）', 'その他') NOT NULL,
    drinks TEXT NOT NULL,  -- よく飲むお酒（カンマ区切りで複数選択）
    remarks TEXT  -- 備考
);
