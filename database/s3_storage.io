// S3 storage (e.g. Minio)
//Хранит фото профилей пользователей и медиа постов
Table media {
 key varchar
 bucket varchar
 content blob
 type varchar
 size decimal
 created_at timestamp
 updated_at timestamp
 
 indexes {
    (key, bucket) [pk] // composite primary key
  }
}
