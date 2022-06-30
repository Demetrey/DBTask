# DBTask

Скрипт генерации простой БД для заполнения табличными единицами измерения с целью дальнейшего стандартизированного использования. Предназначен для исполнения в PostgreSQL. Добавляется несколько значений: 
- величины `time` и `volume`; 
- по 3 значения единиц измерения для каждой величины.
Пример запроса выборки всех значений:
```sql
/* Select time names */
SELECT value.name FROM value 
	RIGHT JOIN value_type ON value_type.name = 'time' 
	AND value_type.id = id_type;
```
EDR средствами pgAdmin 4:
<p align="center">
<img title="ERD" src="/images/erd.png" alt='Диаграмма "сущность-связь"'data-align="center" width="300">
</p>
