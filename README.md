# テーブル設計

## users テーブル

| Column      | Type   | Options     |
| ----------- | ------ | ----------- |
| email       | string | null: false |
| password    | string | null: false |
| name        | string | null: false |
| profile     | text   | null: false |
| occupation  | text   | null: false |
| position    | text   | null: false |



## comments テーブル

| Column | Type      | Options     |
| ------ | --------- | ----------- |
| text   | text      | null: false |
| user   | reference |             |
| text   | text      |             |

## prototypes テーブル

| Column      | Type       | Options                        |
| ----------- | ---------- | ------------------------------ |
| title       | string     | null: false, foreign_key: true |
| catch_copy  | text       | null: false, foreign_key: true |
| concept     | text       | null: false, foreign_key: true |
| user        | references |                                |

