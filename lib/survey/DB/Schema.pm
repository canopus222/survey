package survey::DB::Schema;
use strict;
use warnings;
use utf8;

use Teng::Schema::Declare;

base_row_class 'survey::DB::Row';

# surveyテーブルのスキーマを定義
table {
    name 'survey'; # テーブル名
    pk 'id'; # テーブルのプライマリーキーを指定
    columns qw(id name age job drinks remarks);
};

1;
