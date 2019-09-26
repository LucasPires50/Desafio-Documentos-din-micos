/*
Desafio: Documentos dinâmicos

Etapa 1

Criamos um banco de dados para um aplicativo de documentos, com linhas para cada documento com seu título,
 conteúdo e autor. Nessa primeira etapa, use UPDATE para alterar o autor para "Jackie Draper" em todas as 
 linhas que atualmente constam como "Jackie Paper". Então, selecione novamente todas as linhas para garantir
 que a tabela seja alterada como você espera.*/
 
 CREATE table documents (
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(100),
    content VARCHAR(100),
    author VARCHAR(100));
    
INSERT INTO documents (author, title, content)
    VALUES ("Puff T.M. Dragon", "Fancy Stuff", "Ceiling wax, dragon wings, etc.");
INSERT INTO documents (author, title, content)
    VALUES ("Puff T.M. Dragon", "Living Things", "They're located in the left ear, you know.");
INSERT INTO documents (author, title, content)
    VALUES ("Jackie Paper", "Pirate Recipes", "Cherry pie, apple pie, blueberry pie.");
INSERT INTO documents (author, title, content)
    VALUES ("Jackie Paper", "Boat Supplies", "Rudder - guitar. Main mast - bed post.");
INSERT INTO documents (author, title, content)
    VALUES ("Jackie Paper", "Things I'm Afraid Of", "Talking to my parents, the sea, giant pirates, heights.");

SELECT * FROM documents;

/* Comando para alterar uma coluna com um id especifico,

utilizando o id é o modo mais seguro
*/

UPDATE documents SET author = "Jackie Draper" WHERE id = 3;

# Ultilizando a sub-consulta
UPDATE documents SET author = "Jackie Tequila" WHERE id IN (SELECT id FROM documents WHERE author = "Jackie Draper");
UPDATE documents SET author = "Jackie Draper" WHERE id = 5;

SELECT * FROM documents;

/*

ETAPA 2 

Agora você vai excluir uma linha, com muito cuidado para não excluir todas as linhas. Exclua apenas a linha na qual o 
título é "Things I'm Afraid Of" (coisas das quais tenho medo). Então, selecione novamente todas as linhas para garantir
 que a tabela seja alterada como você espera.*/
 
 # Comando para deletar uma linha 
 
 DELETE FROM documents WHERE id = 5;
 
 /*Usando um comando Delete, apague o registro que no conteúdo tenha pie*/
 
 # Modo Seguro 
 DELETE FROM documents WHERE id IN (SELECT id FROM documents WHERE content LIKE "%ear%");
 
 SELECT * FROM documents;
 
 # Modo Inseguro
 DELETE FROM documents WHERE content LIKE "%pie%";
 
 SELECT * FROM documents;
 