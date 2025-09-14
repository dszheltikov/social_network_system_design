// БД сервиса Locations Service
// Хранит данные мест путешествий
// СУБД PostgreSQL
// Будет использоваться асинхронная (в приоритете производительность) master-slave репликация
// Replication factor = 3
// Шардирование не требуется (объем данных и количество запросов/IOPS позволяют не шардироваться).

Table locations {
  id uuid [primary key]
  name varchar
  category varchar
  country varchar
  latitude decimal
  longitude decimal
  created_at timestamp
  updated_at timestamp
}

Table locations_outbox {
  id uuid [primary key]
  location_id uuid [not null]
  event_type varchar
  payload jsonb
  event_time timestamp
  processed_at timestamp
  status varchar
}

Ref: "locations"."id" < "locations_outbox"."location_id"
