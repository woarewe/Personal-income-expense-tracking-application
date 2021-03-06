# План тестирования
 
<h3> Введение </h3>
В данном файле представлен план тестирования проекта "Personal income-expense tracking" . Основные характеристики тест-кейса:
 
1. <b> ID </b> - уникальный номер тест-кейса.
2. <b> Приоритет тест-кейса </b> - это важность тест-кейса. Примем за 1 - высший приоритет, за 4 - низший.
 
<h3> Объект тестирования </h3>
Объект тестирования - веб-приложение, основной целью  которого является учёт транзакций пользователя.
 
<h3> Риски </h3>
К рискам, можно отнести следующие аспекты:
 
1. Медленное или полное отсутствие интернет-соединения, так как мы имеем дело с веб-приложением.
2. Работа сервера Postgresql.
 
<h3> Аспекты тестирования </h3>
Тестированию подлежат следующие пункты:
 
1. Регистрация нового пользователя в системе.
2. Вход уже зарегистрированного пользователя.
3. Создание зарегистрированным пользователем категории.
4. Редактирование зарегистрированным пользователем категории.
5. Удаление зарегистрированным пользователем категории.
6. Создание зарегистированным пользователем транзакции.
7. Редактирование зарегистрированным пользователем транзакции.
8. Удаление зарегистрированным пользователем транзацкии.
 
 
<h3> Подходы к тестированию </h3>
 
Тестирование проводится вручную.
 
<h3> Представление результатов </h3>
 
<h4> Сценарий 001, приоритет 1 : Регистрация нового пользователя (ввод корректных данных)  </h4>
 
1. Посетить страницу регистрации.
2. Заполнить форму с личными данными (ввод корректных данных).
3. Нажать кнопку "Sign up".
 
<b> Ожидаемый результат </b>: После нажатия на кнопку "Sign up", пользователя перенаправляет на страницу личного кабинета. <br>
<b> Фактический результат </b>: <br>
<b> Оценка </b>: <br>
 
<h4> Сценарий 002, приоритет 2 : Регистрация нового пользователя  (ввод некорректных данных) </h4>
 
1. Посетить страницу регистрации.
2. Заполнить форму с личными данными (ввод некорректных данных).
3. Нажать кнопку "Sign up".
 
<b> Ожидаемый результат </b>: После нажатия на кнопку "Sign up" система выведет уведомление об ошибке. <br>
<b> Фактический результат </b>: <br>
<b> Оценка </b>: <br>
 
<h4> Сценарий 003, приоритет 1 : Вход в систему предварительно зарегистрированного пользователя (ввод корректных данных)  </h4>
 
1. Посетить страницу входа.
2. Заполнить форму (ввод корректных данных).
2. Нажать кнопку "Sign in".
 
<b> Ожидаемый результат </b>: отображение личного кабинета. <br>
<b> Фактический результат </b>: <br>
<b> Оценка </b>: <br>
 
<h4> Сценарий 004, приоритет 2 : Вход в систему предварительно зарегистрированного пользователя (ввод некорректных данных)  </h4>
 
1. Посетить страницу входа.
2. Заполнить форму (ввод некорректных данных).
2. Нажать кнопку "Sign in".
 
<b> Ожидаемый результат </b>: получение уведомления об ошибке. <br>
<b> Фактический результат </b>: <br>
<b> Оценка </b>: <br>
 
<h4> Сценарий 005, приоритет 1 : Создание зарегистрированным пользователем категории ( ввод корректных данных )  </h4>
 
1. Войти в личный кабинет.
2. Перейти на вкладку "Сreate category".
3. Заполнить форму (Ввод корректных данных).
4. Нажать кнопку "Сreate".
 
<b> Ожидаемый результат </b>: возврат на cтраницу пользователя, получение уведомление об успешно созданной категории. <br>
<b> Фактический результат </b>: <br>
<b> Оценка </b>: <br>
 
<h4> Сценарий 005, приоритет 1 : Создание зарегистрированным пользователем категории ( ввод некорректных данных )  </h4>
 
1. Войти в личный кабинет.
2. Перейти на вкладку "Сreate category".
3. Заполнить форму (Ввод некорректных данных).
4. Нажать кнопку "Сreate".
 
<b> Ожидаемый результат </b>: Получение уведомление о некорректно введеных данных. <br>
<b> Фактический результат </b>: <br>
<b> Оценка </b>: <br>
 
<h4> Сценарий 007, приоритет 1 : Редактирование категории ( ввод корректных данных ).  </h4>
 
1. Войти в личный кабинет.
2. В списке категорий напротив нужно нажать кнопку "Edit".
3. Изменить данные в форме (ввод корректных данных).
4. Нажать кнопку "Update".
 
<b> Ожидаемый результат </b>: Отображение главной страницы со списком всех категорий. <br>
<b> Фактический результат </b>: <br>
<b> Оценка </b>: <br>
 
<h4> Сценарий 008, приоритет 1 : Редактирование категории ( ввод некорректных данных ).  </h4>
 
1. Войти в личный кабинет.
2. В списке категорий напротив нужно нажать кнопку "Edit".
3. Изменить данные в форме (ввод некорректных данных).
4. Нажать кнопку "Update".
 
<b> Ожидаемый результат </b>: Получение уведомлений об ошибке. <br>
<b> Фактический результат </b>: <br>
<b> Оценка </b>: <br>
 
<h4> Сценарий 009, приоритет 1 : Удаление категории.  </h4>
 
1. Войти в личный кабинет.
2. Рядом с нужной категорией нажать кнопку "Delete".
3. Нажать кнопку "Ok" на модальном окне подтверждения.
 
<b> Ожидаемый результат </b>: Отображение личного кабинета пользователя с обновленным списком категорий. <br>
<b> Фактический результат </b>: <br>
<b> Оценка </b>: <br>
 
<h4> Сценарий 010, приоритет 1 : Создание зарегистрированным пользователем транзакции ( ввод корректных данных )  </h4>
 
1. Войти в личный кабинет.
2. Перейти на вкладку "Сreate transaction".
3. Заполнить форму (Ввод корректных данных).
4. Нажать кнопку "Сreate".
 
<b> Ожидаемый результат </b>: возврат на cтраницу пользователя, получение уведомление об успешно созданной транзакции. <br>
<b> Фактический результат </b>: <br>
<b> Оценка </b>: <br>
 
<h4> Сценарий 011, приоритет 2 : Создание зарегистрированным пользователем категории ( ввод некорректных данных )  </h4>
 
1. Войти в личный кабинет.
2. Перейти на вкладку "Сreate transaction".
3. Заполнить форму (Ввод некорректных данных).
4. Нажать кнопку "Сreate".
 
<b> Ожидаемый результат </b>: Получение уведомление о некорректно введеных данных. <br>
<b> Фактический результат </b>: <br>
<b> Оценка </b>: <br>
 
<h4> Сценарий 0012, приоритет 1 : Редактирование транзакции ( ввод корректных данных ).  </h4>
 
1. Войти в личный кабинет.
2. В списке транзакций напротив нужной нажать кнопку "Edit".
3. Изменить данные в форме (ввод корректных данных).
4. Нажать кнопку "Update".
 
<b> Ожидаемый результат </b>: Отображение главной страницы со списком всех транзакций. <br>
<b> Фактический результат </b>: <br>
<b> Оценка </b>: <br>
 
<h4> Сценарий 0013, приоритет21 : Редактирование транзакции ( ввод некорректных данных ).  </h4>
 
1. Войти в личный кабинет.
2. В списке траназкций напротив нужно нажать кнопку "Edit".
3. Изменить данные в форме (ввод некорректных данных).
4. Нажать кнопку "Update".
 
<b> Ожидаемый результат </b>: Получение уведомлений об ошибке. <br>
<b> Фактический результат </b>: <br>
<b> Оценка </b>: <br>
 
<h4> Сценарий 014, приоритет 3 : Удаление транзакции.  </h4>
 
1. Войти в личный кабинет.
2. Рядом с нужной транзакцией нажать кнопку "Delete".
3. Нажать кнопку "Ok" на модальном окне подтверждения.
 
<b> Ожидаемый результат </b>: Отображение личного кабинета пользователя с обновленным списком транзакций. <br>
<b> Фактический результат </b>: <br>
<b> Оценка </b>: <br>
 
<h4> Сценарий 015, приоритет 4 : Просмотр отчета.  </h4>
 
1. Войти в личный кабинет.
2. Нажать кнопку 'Show report'.
 
<b> Ожидаемый результат </b>: Отображение отчета в виде таблицы, содержащей категорию, стоимость и тип транзакции. <br>
<b> Фактический результат </b>: <br>
<b> Оценка </b>: <br>
 
<h3> Выводы </h3>
Основная цель проекта полностью выполнена. Данное приложение имеет весь функционал описанный в требованиях к проекту. Все функциональные и нефунциональные требования к проекту также выполнены.