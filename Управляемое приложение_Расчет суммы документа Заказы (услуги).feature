﻿#language: ru

Функционал: Расчет суммы документа Заказ - количество Услуг

Как Как менеджер по продажам я хочу
проверить расчет суммы документа Заказ
чтобы продать товар 

Сценарий: Создание документа Заказ
* Открытие формы создания документа
	И В командном интерфейсе я выбираю 'Продажи' 'Заказы'
	Тогда открылось окно 'Заказы товаров'
	И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюСоздать' на элементе формы с именем "Список"
	Тогда открылось окно 'Заказ (создание)'
* Заполнение шапки документа
	И из выпадающего списка с именем "Организация" я выбираю точное значение 'ООО "Товары"'
	И из выпадающего списка с именем "Покупатель" я выбираю точное значение 'Магазин "Продукты"'
	И из выпадающего списка с именем "Склад" я выбираю точное значение 'Склад отдела продаж'
	И из выпадающего списка с именем "Валюта" я выбираю точное значение 'Рубли'
	И я выбираю пункт контекстного меню с именем 'ТоварыКонтекстноеМенюДобавить' на элементе формы с именем "Товары"
* Заполнение таблицы документа
	И в таблице "Товары" из выпадающего списка с именем "ТоварыТовар" я выбираю по строке 'Доставка'
	И я перехожу к следующему реквизиту
	И в таблице "Товары" в поле с именем 'ТоварыЦена' я ввожу текст '250,00'
	И в таблице "Товары" в поле с именем 'ТоварыКоличество' я ввожу текст '2'
	И в таблице "Товары" я завершаю редактирование строки		
* Проверка заполнения табличной части
	Тогда таблица "Товары" содержит строки:
		| 'Товар' | 'Цена'       | 'Количество' | 'Сумма'  |
		| 'Доставка'  | '250,00' | '2'          | '500,00' |		
	И я нажимаю на кнопку "Записать"
	Тогда значение поля с именем "ТоварыИтогСумма" содержит текст "500"
* Номер
	И я запоминаю значение поля "Номер" как "Номер"	
* Проведение документа	
	И я нажимаю на кнопку с именем 'ФормаПровестиИЗакрыть'
	И я жду закрытия окна 'Заказ (создание) *' в течение 20 секунд
* Проверка создания документа
	И таблица "Список" содержит строки:
		| 'Номер'   |
		| '$Номер$' |