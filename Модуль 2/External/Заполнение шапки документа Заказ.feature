﻿#language: ru

@tree
@ExportScenarios

Функционал: Заполнение шапки документа

Сценарий: заполнение шапки документа
* Заполнение шапки документа
	И из выпадающего списка с именем "Организация" я выбираю точное значение 'ООО "Товары"'
	И из выпадающего списка с именем "Покупатель" я выбираю точное значение 'Магазин "Продукты"'
	И из выпадающего списка с именем "Склад" я выбираю точное значение 'Склад отдела продаж'
	И из выпадающего списка с именем "Валюта" я выбираю точное значение 'Рубли'
	И я выбираю пункт контекстного меню с именем 'ТоварыКонтекстноеМенюДобавить' на элементе формы с именем "Товары"
