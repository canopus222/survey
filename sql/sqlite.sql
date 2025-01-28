CREATE TABLE IF NOT EXISTS survey (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name VARCHAR(255) NOT NULL,
    age INTEGER NOT NULL,
    job TEXT NOT NULL,     -- 職業（ユーザーの選択肢を保存）
    drinks TEXT NOT NULL,  -- よく飲むお酒
    remarks TEXT  -- 備考
);
