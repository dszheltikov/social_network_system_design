// Feed Service DB
// Хранит заранее подготовленные ленты постов
// Redis

//1. Ключ: 
user:{id}:users_feed  // Хранит ленты постов пользователей (свои посты пользователя), 60 последних по хронологии постов
// массив {post_id; user_id; user_name; user_username; user_photo; title; text; photo[]; location_id; location_name; created_at; reactions_count; comments_count}

//2. Ключ: 
user:{id}:subscriptions_feed // Хранит ленты по подпискам пользователей, 60 последних по хронологии постов
// массив {post_id; user_id; user_name; user_username; user_photo; title; text; photo[]; location_id; location_name; created_at; reactions_count; comments_count}

//3. Ключ: 
location:{id}:locations_feed // Хранит ленты по местам путешествий, 60 последних по хронологии постов
// массив {post_id; user_id; user_name; user_username; user_photo; title; text; photo[]; location_id; location_name; created_at; reactions_count; comments_count}
