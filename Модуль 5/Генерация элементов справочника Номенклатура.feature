#language: ru

@tree

Функционал: Создание элементов справочника Номенклатура

Сценарий: создание 10 элементов справочника Номенклатура
	И Я запоминаю значение выражения '0' в переменную "Элемент"
	И я делаю 10 раз
		И Я запоминаю значение выражения '$Элемент$ + 1' в переменную "Элемент"
		И Я запоминаю значение выражения '"Товар (генерация) " + $Элемент$' в переменную "Наименование"	
		И я проверяю или создаю для справочника "Items" объекты:			
			| 'Ref'                                                              | 'DeletionMark' | 'Code' | 'ItemType'                                                          | 'Unit'                                                          | 'MainPricture' | 'Vendor' | 'ItemID' | 'PackageUnit' | 'Description_en'           | 'Description_hash' | 'Description_ru' | 'Description_tr' | 'Height' | 'Length' | 'Volume' | 'Weight' | 'Width' |
			| '{"e1cib/data/Catalog.Items?ref=" + StrReplace(New UUID, "-", "")}' | 'False'        |        | 'e1cib/data/Catalog.ItemTypes?ref=b762b13668d0905011eb76684b9f6878' | 'e1cib/data/Catalog.Units?ref=b762b13668d0905011eb76684b9f687b' | ''             | ''       | ''  	  | ''            | '$Наименование$' 		   | ''                 | ''               | ''               |          |          |          | 0        |         |
