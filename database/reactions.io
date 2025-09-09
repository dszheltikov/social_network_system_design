// БД сервиса Reactions Service
// Хранит данные реакций на посты
// PostgreSQL

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
