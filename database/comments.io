// БД сервиса Comments Service
// Хранит данные комментариев к постам
// СУБД PostgreSQL
// Будет использоваться асинхронная (в приоритете производительность) master-slave репликация
// Replication factor = 3
// Шардирование - key based по id поста (все комментарии на один пост пишутся в один и тот же шард).

Table comments  {
  id uuid [primary key]
  post_id uuid
  user_id uuid
  parent_comment uuid
  text text
  created_at timestamp
  updated_at timestamp
}

Table comments_outbox {
  id uuid [primary key]
  comment_id uuid [not null]
  event_type varchar
  payload jsonb
  event_time timestamp
  processed_at timestamp
  status varchar
}

Ref: "comments"."id" < "comments_outbox"."comment_id"
