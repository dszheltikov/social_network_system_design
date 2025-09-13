// Key-Value хранилище агрегированных/дополнительных данных по постам, реакциям и комментариям
// Redis

//1. Ключ: 
post:{id}:total_reactions_count  // Количество реакций на пост всего

//2. Ключ: 
post:{id}:like_reactions_count // Количество реакций like на пост

//3. Ключ: 
post:{id}:dislike_reactions_count // Количество реакций dislike на пост

//4. Ключ: 
post:{id}:love_reactions_count // Количество реакций love на пост

//5. Ключ: 
post:{id}:haha_reactions_count // Количество реакций haha на пост

//6. Ключ: 
post:{id}:sad_reactions_count // Количество реакций sad на пост

//7. Ключ: 
post:{id}:comments // Количество комментариев к посту

//8. Ключ: 
location:{id}:mentions_count // Количество упоминаний места путешествия в постах
