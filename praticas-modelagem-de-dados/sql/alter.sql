-- TESTES FINAIS E CORREÇÕES
-- Alterar campo NOTA da tabela Disc_Hist para tipo FLOAT
ALTER TABLE Disc_Hist
MODIFY COLUMN NOTA FLOAT(4,2);
-- Inserir alguns dados de disciplinas e notas nos históricos, que estavam faltando
INSERT INTO Disc_Hist (Cod_Historico, Cod_Disciplina, Nota, Frequência)
VALUES
(1, 2, 7, 6), -- Marcos - Psicologia Cognitiva (cod 2)
(2, 3, 8.5, 2), -- Beatriz - Programação em C (cod 3)
(3, 1, 6.8, 8); -- Gabriel - Raciocínio Lógico (cod 1)