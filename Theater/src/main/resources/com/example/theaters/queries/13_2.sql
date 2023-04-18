SELECT Залы.Название, Места.Номер
FROM Спектакли, Залы, Места
WHERE Спектакли.Id = Залы.Id_Спектакля
  AND Залы.Id = Места.Id_Зала
  AND Места.Резерв = 'False'
  AND Залы.Начало::DATE >= '#'
  AND Залы.Начало::DATE <= '#'
  AND Спектакли.Id = ?