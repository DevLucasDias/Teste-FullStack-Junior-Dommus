-- # Avaliação SQL

-- Com base no SQL do banco de dados Mysql 5.7 presente no repositório (bd_universidade.sql), elabore consultas SQL que busquem o que se pede baixo:

-- a) Encontre a MATRÍCULA(s) dos alunos com nota em BD12015-1menor que 90;
SELECT  matricula from tb_historico_academico WHERE  codigo_turma = "BD12015-1" AND  nota < 90; -- Mostrando apenas a matricula 
SELECT  matricula, nota, codigo_turma  from tb_historico_academico WHERE  codigo_turma = "BD12015-1" AND  nota < 90; -- Mostrando matricula, nota e codigo da turma 


-- b) Encontre a MATRÍCULA(s) e calcule a média das notas dos alunos na disciplina de POO2015-1. 
SELECT  AVG(nota) as media from tb_historico_academico WHERE  codigo_turma = "POO2015-1";  -- Media dos alunos
SELECT  matricula, codigo_turma from tb_historico_academico WHERE  codigo_turma = "POO2015-1"; --Lista das matriculas dos alunos

-- c) Encontre o CODIGO do professor que ministra a turma WEB2015-1.
SELECT codigo_professor, codigo_turma  from tb_turma   WHERE  codigo_turma = "WEB2015-1"; -- Codigo do Professor e Turma
SELECT codigo_professor  from tb_turma   WHERE  codigo_turma = "WEB2015-1"; -- Apenas o codigo do professor


-- d) Gere o histórico completo do aluno 2015010106 mostrando MATRICULA,CODIGO DA TURMA, CODIGO DA DISCIPLINA, CODIGO PROFESSOR, FREQUENCIA,NOTA.
SELECT tbh.matricula as MATRICULA, tbh.codigo_turma as CODIGO_DA_TURMA, tbt.codigo_disciplina as CODIGO_DA_DISCIPLINA, tbt.codigo_professor as CODIGO_DO_PROFESSOR, tbh.frequencia as FREQUENCIA, tbh.nota as NOTAS from tb_historico_academico tbh
JOIN   tb_turma tbt on tbt.codigo_turma  =  tbh.codigo_turma 
WHERE  tbh.matricula  = "2015010106" ; 
-- Faça a entrega em um arquivo .SQL.