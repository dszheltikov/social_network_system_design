// БД сервиса Locations Service
// Хранит данные мест путешествий
// PostgreSQL

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
