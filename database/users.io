// БД сервиса Users Service
// Хранит данные профилей пользователей
// СУБД PostgreSQL
// Будет использоваться асинхронная (в приоритете производительность) master-slave репликация
// Replication factor = 3
// Шардирование не требуется (объем данных и количество запросов/IOPS позволяют не шардироваться).

Table users {
  id uuid [primary key]
  name varchar
  username varchar
  birthdate date
  sex boolean
  city varchar
  userStatus varchar
  status varchar  
  about varchar  
  photo varchar
  last_seen timestamp
  created_at timestamp
  updated_at timestamp
}

Table users_outbox {
  id uuid [primary key]
  user_id uuid [not null]
  event_type varchar
  payload jsonb
  event_time timestamp
  processed_at timestamp
  status varchar
}

Ref: "users"."id" < "users_outbox"."user_id"
