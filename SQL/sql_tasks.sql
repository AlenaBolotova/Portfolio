
Исходные данные: есть 2 таблицы users и level с соответствующим набором полей.
Задания на написание запросов к БД:                
1. Отобрать из таблицы users всех пользователей, у которых level_id=1, skill > 799000 и в имени встречается буква а                
2. Удалить всех пользователей, у которых skill меньше 100000                
3. Вывести все данные из таблицы users в порядке убывания по полю skill                 
4. Добавить в таблицу users нового пользователя по имени Oleg, с уровнем 4 и skill =10                
5. Обновить данные в таблице users -  для пользователей с level_id меньше 2 проставить skill 2000000                
6. Выбрать user_name всех пользователей уровня admin используя подзапрос                
7. Выбрать user_name всех пользователей уровня admin используя join

1.Select user_name From Users Where level_id=1 AND sklil > 799000 AND user_name Like '%a%';
2.DELETE user_name From Users Where skill < 100000;
3.Select * From Users Order by skill Desc;
4.Insert into Users (user_name,level_id,skill) values ('Oleg',4,10);
5.Update Users Set level_id < 2 Where  sklill = 2000000;
6.Select user_name From Users Where level_id IN (Select id From Level Where Level_name = 'admin');
7.Select Users.user_name From Users Left Join level ON Users.level_id = level.id Where level.level_name ='admin';