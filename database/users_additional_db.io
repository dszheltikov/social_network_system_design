// Additional DB for Users information
// Redis

//1. Ключ: 
user:{id}:online  // Признак "онлайн", булево, с TTL

//2. Ключ: 
user:{id}:subscriptions_count  // Количество подписок пользователя

//3. Ключ: 
user:{id}:followers_count  // Количество подписчиков пользователя

//4. Ключ:
user:{id}:followers // Список id подписчиков (используется для быстрого определения признака isSubscribed)
