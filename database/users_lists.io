// Users Lists Service DB
// Хранит заранее подготовленные списки пользователей
// Redis

//1. Ключ: 
top_users:{id}:users  // Хранит 200 самых запрашиваемых пользователей общего списка пользователей (сортировка по умолчанию)
// массив {user_id; name; username; photo; last_seen; followers_count}

//2. Ключ: 
user:{id}:subscriptions // список подписок пользователя, 60 пользователей (3 страницы) сортировки по умолчанию
// массив {user_id; name; username; photo; last_seen; followers_count}

//3. Ключ: 
user:{id}:followers // список подписчиков пользователя, 60 пользователей (3 страницы) сортировки по умолчанию
// массив {user_id; name; username; photo; last_seen; followers_count}
