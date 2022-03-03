﻿#language: ru

@tree

Функционал: Проверка заполенния документ Заказ

Сценарий: Проверка редактирования поля Количество в документе Заказ
	И В командном интерфейсе я выбираю 'Продажи' 'Заказы'
	И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюСоздать' на элементе формы с именем "Список"
	И из выпадающего списка с именем "Организация" я выбираю точное значение 'ООО "1000 мелочей"'
	И из выпадающего списка с именем "Покупатель" я выбираю точное значение 'Магазин "Обувь"'
	И из выпадающего списка с именем "Склад" я выбираю точное значение 'Строящийся склад'
	И я выбираю пункт контекстного меню с именем 'ТоварыКонтекстноеМенюДобавить' на элементе формы с именем "Товары"
	И в таблице "Товары" я нажимаю кнопку выбора у реквизита с именем "ТоварыТовар"
	И я нажимаю на кнопку с именем 'ФормаСписок'			
	И в таблице "Список" я перехожу к строке:
		| 'Код'       | 'Наименование' |
		| '000000030' | 'Колбаса'      |
	И в таблице "Список" я выбираю текущую строку
	И в таблице "Товары" я активизирую поле с именем "ТоварыКоличество"
	И в таблице "Товары" в поле с именем 'ТоварыКоличество' я ввожу текст '3'
	И в таблице "Товары" я завершаю редактирование строки
	И я выбираю пункт контекстного меню с именем 'ТоварыКонтекстноеМенюДобавить' на элементе формы с именем "Товары"
	И в таблице "Товары" я нажимаю кнопку выбора у реквизита с именем "ТоварыТовар"
	И я нажимаю на кнопку с именем 'ФормаСписок'
	И в таблице "Список" я перехожу к строке:
		| 'Код'       | 'Наименование' |
		| '000000038' | 'Ремонт'       |
	И в таблице "Список" я выбираю текущую строку
	Когда Проверяю шаги на Исключение:
		|'И в таблице "Товары" я активизирую поле с именем "ТоварыКоличество"  '|
		|'И в таблице "Товары" в поле с именем "ТоварыКоличество" я ввожу текст "1"'|
	И в таблице "Товары" я завершаю редактирование строки	
	И таблица "Товары" стала равной:
		| 'Товар'   | 'Цена'       | 'Количество' | 'Сумма'      |
		| 'Колбаса' | '400,00'     | '3'          | '1 200,00'   |
		| 'Ремонт'  | '100 000,00' | ''           | '100 000,00' |	
	И элемент формы с именем "ТоварыИтогКоличество" стал равен '4'	
	И элемент формы с именем "ТоварыИтогСумма" стал равен '101 200'				
	И я нажимаю на кнопку с именем 'ФормаЗаписать'

