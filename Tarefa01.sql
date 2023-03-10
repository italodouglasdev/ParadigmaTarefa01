

    --Atividade 01 | Solução 01	
	SELECT TOP (Select COUNT(D.Id) FROM Departamento D) Departamento.Nome as 'Departamento', Pessoa.Nome as 'Pessoa', Pessoa.Salario From Departamento Inner Join Pessoa ON Departamento.Id = Pessoa.DeptId ORDER BY Pessoa.Salario DESC
  
    --Atividade 01 | Solução 02	
	SELECT Departamento.Nome as 'Departamento', Pessoa.Nome as 'Pessoa', Pessoa.Salario FROM Pessoa, Departamento WHERE Pessoa.DeptId = Departamento.Id AND Pessoa.Salario IN (SELECT Max(P2.Salario) FROM [Pessoa] P2 GROUP BY P2.[DeptId])
    
