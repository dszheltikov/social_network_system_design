// БД сервиса Reactions Service
// Хранит данные реакций на посты
// СУБД PostgreSQL
// Будет использоваться асинхронная (в приоритете производительность) master-slave репликация
// Replication factor = 3
// Шардирование - key based по id поста (все реакции на один пост пишутся в один и тот же шард).

Table reactions  {
  id uuid [primary key]
  post_id uuid
  user_id uuid
  reaction_type varchar
  created_at timestamp
  updated_at timestamp
}

Table reactions_outbox {
  id uuid [primary key]
  reaction_id uuid [not null]
  event_type varchar
  payload jsonb
  event_time timestamp
  processed_at timestamp
  status varchar
}

Ref: "reactions"."id" < "reactions_outbox"."reaction_id"
