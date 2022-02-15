﻿#language: ru

@tree
@Отчеты

Функционал: тестирование отчетов

Как Тестировщик я хочу
протестировать отчеты
чтобы проверить что у пользователея не возникнет проблем

Контекст:
	Дано Я открыл новый сеанс TestClient или подключил уже существующий
	
Сценарий: _0910 подготовительный сценарий (тестирование отчетов)
	Когда экспорт основных данных		
	Когда экспорт данных для продаж
	И я выполняю код встроенного языка на сервере	
		|'Документы.SalesInvoice.НайтиПоНомеру(100).ПолучитьОбъект().Записать(РежимЗаписиДокумента.Проведение);'|	
		
	
Сценарий: _0911 проверка отчета D2001 Продажи
	01.02.202228.02.2022И В командном интерфейсе я выбираю 'Отчеты' 'D2001 Продажи'
	Тогда открылось окно 'D2001 Продажи'
	И я нажимаю на кнопку с именем 'FormChangeVariant'
	Тогда открылось окно 'Вариант "Default" отчета "D2001 Продажи"'
	И в таблице "SettingsComposerSettingsDataParameters" я перехожу к строке:
		| 'Дата начала'        | 'Дата окончания'      | 'Значение'   | 'Использование' | 'Параметр' |
		| '{Строка(НачалоМесяца(ТекущаяДата()))}' | '{Строка(КонецМесяца(ТекущаяДата()))}' | 'Этот месяц' | 'Да'            | 'Период'   |
	И в таблице "SettingsComposerSettingsDataParameters" я активизирую поле с именем "SettingsComposerSettingsDataParametersValue"
	И в таблице "SettingsComposerSettingsDataParameters" я выбираю текущую строку
	И в таблице "SettingsComposerSettingsDataParameters" я нажимаю кнопку выбора у реквизита с именем "SettingsComposerSettingsDataParametersValue"
	Тогда открылось окно 'Выберите период'
	И в поле с именем 'DateBegin' я ввожу текст '01.02.2022'
	И я перехожу к следующему реквизиту
	И в поле с именем 'DateEnd' я ввожу текст '28.02.2022'
	И я перехожу к следующему реквизиту
	И я нажимаю на кнопку с именем 'Select'
	Тогда открылось окно 'Вариант "Default" отчета "D2001 Продажи"'
	И в таблице "SettingsComposerSettingsDataParameters" я завершаю редактирование строки
	И я нажимаю на кнопку с именем 'FormEndEdit'
	Тогда открылось окно 'D2001 Продажи'
	И я нажимаю на кнопку с именем 'FormGenerate'	
	Дано Табличный документ "Result" равен макету "ИнформацияПоПродажам1" по шаблону	