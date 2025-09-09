// БД сервиса Posts Service
// Хранит данные постов
// PostgreSQL

Table posts {
  id uuid [primary key]
  user_id uuid [not null]
  title varchar
  text text [note: 'Content of the post']
  status varchar
  location_id uuid
  created_at timestamp
  updated_at timestamp
}

Table posts_outbox {
  id uuid [primary key]
  post_id uuid [not null]
  event_type varchar
  payload jsonb
  event_time timestamp
  processed_at timestamp
  status varchar
}

Table post_photos {
  id uuid [primary key]
  post_id uuid [not null]
  url varchar
  order integer
  created_at timestamp
  updated_at timestamp
}

Ref: "posts"."id" < "post_photos"."post_id"
Ref: "posts"."id" < "posts_outbox"."post_id"
