# Exame 2016- Recurso

1\. D  
3\. E  
4\. B   
6\. A  
7\. C  
8\. E  
10\. B  
11\. C  

14\.

```sql
SELECT name FROM Estudante INNER JOIN Curso
    WHERE name LIKE "%a%" AND Curso.nome = "MIEIC"
```

15\. 

```sql
SELECT e1.nome
    FROM Estudante as e1
        JOIN Amizade as a ON e1.id = a.id1
            JOIN Estudante AS e2 ON Estudante.id = a.id2
                WHERE e2.nome LIKE "Gabriel%";
```

16\.

```sql
WITH totalAnos AS (
    SELECT COUNT(DISTINCT anoCurricular)
    FROM estudante
)
SELECT e1.nome
FROM estudante e1 JOIN amizade a ON (e1.id = id1)
    JOIN estudante e2 ON (e2.id = id2)
GROUP BY e1.id
HAVING COUNT(DISTINCT e2.anoCurricular) IN totalAnos
```

17\.

```sql
INSERT INTO AmizadeTransitiva
    SELECT a1.id1, a2.id2
        FROM amizade AS a1 
            JOIN amizade AS a2 
                ON a1.id2 = a2.id1
                    WHERE a1.id1 <> a2.id2
                        AND (a1.id1, a2.id2) NOT IN Amizade
```

18\.

```sql
SELECT e1.nome, e2.nome
    FROM Estudante AS e1
        JOIN Amizade AS a
            ON e1.id = ad.id1
                WHERE e1.curso <> e2.curso 
                    AND e1.id < e2.id
```

19\.

```sql
DROP TRIGGER IF EXISTS T1;

CREATE TRIGGER T1 AS
    AFTER INSERT ON Amizade
    BEGIN
        INSERT INTO Amizade
            VALUES(New.id2, New.id1);
    END;
```

```sql
CREATE TRIGGER T2 AS
    AFTER DELETE ON Amizade
    BEGIN
        DELETE FROM AMIZADE
            WHERE Old.id1 = Amizade.id1 AND Old.id2 = Amizade.id2
    END;
```

```sql
DROP TRIGGER IF EXISTS T3;

CREATE TRIGGER T3 AS
    BEFORE UPDATE ON Amizade
    BEGIN
        RAISE(IGNORE);
    END;
```
