﻿#language: ru

@tree

Функционал: заказ покупателя

Как Менеджер по продажам я хочу
убедиться в корректности работы формы заказов покупателей

Контекст:
	Дано Я открыл новый сеанс TestClient или подключил уже существующий
	
Сценарий: _0501 подготовительный сценарий (заказ покупателю)
	Когда экспорт основных данных

Сценарий: _0502 проверка заполнения соглашения и контрагента из данных поля партнер
	Дано я закрыл все окна клиентского приложения
	* Заполнение документа заказ покупателя
		Дано Я открываю навигационную ссылку "e1cib/list/Document.SalesOrder"
		И я нажимаю на кнопку с именем 'FormCreate'
		И я нажимаю кнопку выбора у поля с именем "Partner"
		И в таблице "List" я перехожу к строке:
			| 'Наименование'               |
			| 'Клиент 1 (1 соглашение)'    |
		И в таблице "List" я выбираю текущую строку
		И в таблице "ItemList" я завершаю редактирование строки		
	* Проверка	заполнения полей Соглашение и Контрагент
		Тогда элемент формы с именем "Partner" стал равен 'Клиент 1 (1 соглашение)'
		И элемент формы с именем "LegalName" стал равен 'Клиент 1'
		И элемент формы с именем "Agreement" стал равен 'Соглашение с клиентами (расчет по документам + кредитный лимит)'				
	* Проверка доступности элемента Контрагент при пустом поле Партнер
		И в поле с именем 'Partner' я ввожу текст ''
		И я перехожу к следующему реквизиту
		И Проверяю шаги на Исключение:
				|'И в таблице "List" я активизирую поле с именем "Description"'|
		И элемент формы с именем "Partner" стал равен ''
		И элемент формы с именем "LegalName" стал равен ''
		И элемент формы с именем "Agreement" стал равен ''				
						
		И я закрыл все окна клиентского приложения		