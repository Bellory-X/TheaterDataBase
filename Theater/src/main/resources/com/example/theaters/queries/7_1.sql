SELECT COUNT(*)
FROM Звания, Актеры_И_Их_Звания, Актеры, Служащие
WHERE Звания.Id = Актеры_И_Их_Звания.Id_Звания
  AND Актеры_И_Их_Звания.Id_Служащего = Актеры.Id_Служащего
  AND Актеры.Id_Служащего = Служащие.Id
  AND Служащие.Театр = '#'
  AND Звания.Дата >= '#'
  AND Звания.Дата <= '#'
  AND Звания.Конкурс = '#'
  AND Служащие.Пол = '#'
  AND EXTRACT(YEAR FROM Служащие.Дата_рождения) >= #
GROUP BY Служащие.Id