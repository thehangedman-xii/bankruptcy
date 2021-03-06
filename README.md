# bankruptcy
Привет!

Представлена модель вероятности банкротства физического лица на основе нечеткой логики.
У модели 7 входных переменных, объединенных в две категории (Внешние и Внутренние факторы), и 1 выходная переменная, показывающая вероятность банкротства физического лица.
Исполняемый файл - FUZZY_bankruptcy.ftl , второй файл побочный. Модель коректно открывается в пакете FuzzyTECH.

Модель хоть и отображает точный результат, но является грубой из-за небольшого количества термов. При увеличении количество входных термов и усложнения правил можно получить более тонкую модель с более точными результатами.

Категория «Внешние факторы макросреды»:
 - Economics (Экономический фактор) измеряется показателями: «Благоприятный», «Нейтральный», «Неблагоприятный». Показатель «Благоприятный» имеет значение от 0 до 33, «Нейтральный» - от 33 до 66, «Неблагоприятный» - от 66 до 100. 
 - Politics (Политический фактор) измеряется аналогичными показателями: «Благоприятные», «Нейтральные», «Неблагоприятные». Показатель «Благоприятный» имеет значение от 0 до 33, «Нейтральный» - от 33 до 66, «Неблагоприятный» - от 66 до 100.
 - Progress (Усиление международной конкуренции в связи с развитием научно-технического прогресса) измеряется показателями: «Низкий», «Средний» и «Высокий». Показатель «Низкий» имеет значение от 0 до 25, «Средний» - от 25 до 50, «Высокий» - от 50 до 75.
 - Population (Демографический фактор) измеряется показателями: «Убыль» и «Прирост». Показатель «Убыль» имеет значение от 0 до 50, «Прирост» - от 50 до 100

Категория «Внутренние факторы микросреды»:
 - Income (Уровень дохода) измеряется показателями: «Нищий», «Бедный», «Средний достаток», «Состоятельный» и «Богатый». Показатель «Нищий» имеет значением от 7 до 12, «Бедный» - от 12 до 25, «Средний достаток» - от 26 до 60, «Состоятельный» - от 60 до 90, «Богатый» - свыше 90.
 - Debtor (Наличие недобросовестных должников) измеряется показателями: «Мало» и «Много». Показатель «Мало» имеет значение от 0 до 10, «Много» - от 10 до 20.
 - Loan (количество заемных средств) измеряется показателями: «Низкий», «Средний» и «Высокий». Показатель «Низкий» имеет значение от 0 до 25, «Средний» - от 26 до 50, «Высокий» - свыше 50.

Внешние факторы имеют меньшее влияние на модель, чем внутренние.


