SELECT COUNT(*)
FROM Пьесы,
     (SELECT Спектакли.Id, Спектакли.Id_Пьесы, Спектакли.От_Театра
      FROM Спектакли, Залы, Репертуары
      WHERE Спектакли.Id = Залы.Id_Спектакля
        AND Спектакли.Id_Репертуара = Репертуары.Id
        AND Репертуары.Театр = Спектакли.От_Театра
        AND Спектакли.От_Театра = '#'
        AND Залы.Начало::DATE >= '#'
        AND Залы.Начало::DATE <= '#'
      GROUP BY Спектакли.Id) AS cp
WHERE Пьесы.Id = cp.Id_Пьесы
  AND Пьесы.Жанр = '#';