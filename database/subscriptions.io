// БД сервиса Subscriptions Service
// Хранит данные подписок
// СУБД PostgreSQL
// Будет использоваться асинхронная (в приоритете производительность) master-slave репликация
// Replication factor = 3
// Шардирование не требуется (объем данных и количество запросов/IOPS позволяют не шардироваться).

Table subscriptions {
  subscription_user_id uuid
  follower_user_id uuid
  created_at timestamp
  
  indexes {
    (subscription_user_id, follower_user_id) [pk] // composite primary key
  }
}
 
Table subscriptions_outbox {
  id uuid [primary key]
  event_type varchar
  payload jsonb
  event_time timestamp
  processed_at timestamp
  status varchar
}
