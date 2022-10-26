--Criando Database da escola
DATABASE labschool;
--Criando Schema da escola
CREATE SCHEMA lab;
--Criando as Tabelas
CREATE TABLE lab.endereco(
id SERIAL PRIMARY KEY UNIQUE NOT NULL,
cep VARCHAR(8) NOT NULL,
logradouro VARCHAR(40) NOT NULL,
numero INTEGER NOT NULL,
complemento VARCHAR(30),
bairro VARCHAR(50) NOT NULL,
cidade VARCHAR(60) NOT NULL,
uf VARCHAR(2) NOT NULL
);
CREATE TABLE lab.aluno(
id SERIAL PRIMARY KEY NOT NULL UNIQUE,
id_endereco INTEGER REFERENCES lab.endereco(id) NOT NULL,
nome_completo VARCHAR(60) NOT NULL,
cpf VARCHAR(11) NOT NULL UNIQUE,
data_nascimento DATE NOT NULL,
telefone VARCHAR(12),
estado_matricula BOOLEAN NOT NULL,
nota_processo_seletivo NUMERIC NOT NULL
);
CREATE TABLE lab.professor(
id SERIAL PRIMARY KEY NOT NULL,
id_endereco INTEGER REFERENCES lab.endereco(id)NOT NULL,
nome_completo VARCHAR(60) NOT NULL,
cpf VARCHAR(11) UNIQUE NOT NULL,
data_nascimento DATE NOT NULL,
telefone VARCHAR(12),
formacao VARCHAR(25) NOT NULL,
experiencia VARCHAR(25) NOT NULL,
estado_matricula BOOLEAN NOT NULL
);
CREATE TABLE lab.pedagogo(
id SERIAL PRIMARY KEY NOT NULL,
id_endereco INTEGER REFERENCES lab.endereco(id) NOT NULL,
nome_completo VARCHAR(60) NOT NULL,
cpf VARCHAR(11) UNIQUE NOT NULL,
data_nascimento DATE NOT NULL,
telefone VARCHAR(12),
situacao BOOLEAN NOT NULL
);
CREATE TABLE lab.atendimentos_pedagogicos(
id SERIAL PRIMARY KEY NOT NULL,
id_pedagogo INTEGER REFERENCES lab.pedagogo(id) NOT NULL,
id_aluno INTEGER REFERENCES lab.aluno(id) NOT NULL,
titulo_atendimento VARCHAR(30) NOT NULL,
descricao_atendimento VARCHAR(80) NOT NULL,
categoria_atendimento VARCHAR(30) NOT NULL,
situacao_atendimento BOOLEAN NOT NULL
);
--INSERTS da tabela endereço
INSERT INTO lab.endereco(cep,logradouro, numero, complemento, bairro,
cidade, uf)
VALUES
(88056683,'Rua Candido Serafim de Oliveira',36,'casa','Ponta das
Canas','Florianopolis','SC'),
(8805825,'Rua Nivaldo Alfredo
Silva',33,'casa','Ingleses','Florianópolis','SC'),
(88066279,'Servidão do Cícero',85,'esquina','Armação do Pântano do
Sul','Florianópolis','SC'),
(88047043,'Travessa Laudemir de Oliveira',99,'fundos','Costeira do
Pirajubaé','Florianópolis','SC'),
(88075537,'Vila da Caixa Econômica',12,'primeiro
kitnet','Balneário','Florianópolis','SC'),
(88062415,'Servidão Manoel Luiz Duarte',88,'casa azul','Lagoa da
Conceição','Florianópolis','SC'),
(88061385,'Rua Valdemar Tomáz Ramos',29,'casa','Barra da
Lagoa','Florianópolis','SC'),
(88051100,'Rua Maria Eduvirgem da Rocha',24,'casa','Ingleses do Rio
Vermelho','Florianópolis','SC'),
(88052138,'Servidão José Roque Damasco',58,'segunda casa','Armação do
Pântano do Sul','Florianópolis','SC'),
(88032659,'Servidão João Neves Teixeira',20,'ap','Ponta das
Canas','Florianopolis','SC');
INSERT INTO lab.aluno(id_endereco, nome_completo, cpf, data_nascimento,
telefone, estado_matricula, nota_processo_seletivo)
VALUES
(1,'Maria Clara Cantarelli da Silva',
'07177106618','12/10/2023','984662610', TRUE, 10),
(1,'Samuel Avila da Silva','45335977000','28/09/2017','984661026',TRUE,
9),
(1,'Valetim Cantarelli da Silva','07048766808', '08/04/2024', '984662610',
TRUE,9),
(4,'Jose Antonio Lisboa','69927208057','20/03/1990','999201221',FALSE,2),
(10,'João Pedro Luz','80438985028','03/03/1998','988281888',TRUE,8),
(8,'Jesus Lindo','42221914007','09/12/1992','999291521',TRUE,10),
(2,'Melisa Bondom','31386517046','22/10/1995','98423241238',FALSE,5),
(5,'Rosa Maria Schellin','45837364013','24/01/2000','996261269',FALSE,6),
(3,'Joana Silveira','84348863083','01/01/2002','988322512',TRUE,8),
(6,'Mario Junior Venancio','75823355033','30/03/1995','984567849',TRUE,7);
INSERT INTO lab.professor(id_endereco,
nome_completo,cpf,data_nascimento,telefone,formacao,experiencia,estado_mat
ricula)
VALUES
(1,'Thais Cantarelli Da
Silva','10883528383','10/04/1997','84662610','doutorado','fullstack',TRUE)
,
(1,'Rafael da Rosa da
Silva','02309043020','24/09/1990','84324525','bacharel','frontend',TRUE),
(7,'Eliane Herreira','91959837087','29/05/1962','84232421','em
formacao','backend',TRUE),
(9,'Paulo Rogerio','91959837456','21/12/1963','99321903','em
formacao','fullstack',TRUE),
(8,'Juca de
Menezes','67251925052','14/07/1999','88281868','mestrado','frontend',FALSE
),
(3,'Dulce
Pedroza','83179469080','23/04/200','84322345','doutorado','backend',FALSE)
,
(5,'Bruna Terezina','49678150069','30/09/1994','96966969','em
formacao','frontend',TRUE),
(6,'Jaqueline
Beck','55373846040','01/01/2002','8988486774','bacharel','frontend',
FALSE),
(2,'Kleber Silva','97062273007','30/08/2000','96562332','em
formacao','backend',TRUE),
(4,'Bruno
Long','12056201097','12/11/1998','9934435699','doutorado','fullstack',FALS
E);
INSERT INTO
lab.pedagogo(id_endereco,nome_completo,cpf,data_nascimento,situacao)
VALUES
(8,'Camila Frederico','26168593004','20/02/1990',TRUE),
(10,'Jessica Amaral','77986513063','30/04/2002',FALSE),
(3,'Mario Jok','08996265055','24/02/1998',TRUE),
(2,'Joaquim Quim','66189522041','21/01/2001',TRUE),
(1,'Sandra Maria da Rosa','72433771064','02/03/1962',TRUE),
(7,'Jose da Silva','23295628025','15/10/1960',FALSE),
(9,'João Fret','95626229086','25/06/1980',TRUE),
(2,'Taila Hijo','58636239068','01/03/1960',FALSE),
(8,'Cristal Dog','62861965010','07/08/1999',TRUE),
(1,'Thiago Herreira','33875615042','15/10/1984',TRUE);
INSERT INTO lab.atendimentos_pedagogicos(id_pedagogo, id_aluno,
titulo_atendimento, descricao_atendimento, categoria_atendimento,
situacao_atendimento)
VALUES
(3,4,'Registro emergencial','morde os colegas','suspensao',TRUE),
(10,8,'Atendimento especial','defict de atencao','psicologo',TRUE),
(2,6,'Registro emergencial','briga com todos','advertencia',TRUE),
(9,5,'Registro psicologico','timidez','psciologo',TRUE),
(8,2,'Registro acompanhamento','dificuldade de aprender','medico',TRUE),
(3,3,'Registro conversar pais','conversa na aula','responsaveis',TRUE),
(7,6,'Atendimento duvidas','precisa de reforco','reforço',TRUE),
(1,1,'Atendimento prodigio','parabenizar os pais','consulta',TRUE),
(4,9,'Atendimento monitoramento','acompanhar aluno','medico',FALSE),
(6,2,'Atendimento especial','aluno precisa de mais
professores','consulta',FALSE);
--SELECT ALUNO
SELECT * FROM lab.aluno;
SELECT nome_completo FROM lab.aluno;
SELECT data_nascimento FROM lab.aluno;
SELECT nome_completo, data_nascimento FROM lab.aluno;
SELECT nome_completo, cpf FROM lab.aluno WHERE id<=4;
-- SELECT JOIN ALUNO
SELECT al.nome_completo from lab.aluno al INNER JOIN
lab.atendimentos_pedagogicos ap ON al.id = ap.id_aluno WHERE al.id = 6;
SELECT al.nome_completo, descricao_atendimento from lab.aluno al INNER
JOIN lab.atendimentos_pedagogicos ap ON al.id = ap.id_aluno WHERE al.id =
8;
--SELECT ENDEREÇO
SELECT * FROM lab.endereco;
SELECT logradouro FROM lab.endereco;
SELECT cep FROM lab.endereco;
SELECT cep,cidade FROM lab.endereco;
SELECT logradouro,numero FROM lab.endereco WHERE id>2;
--SELECT PROFESSOR
SELECT * FROM lab.professor;
SELECT nome_completo FROM lab.professor;
SELECT id, nome_completo FROM lab.professor;
SELECT formacao,nome_completo FROM lab.professor WHERE
estado_matricula=TRUE;
SELECT nome_completo FROM lab.professor WHERE formacao='doutorado';
--SELECT JOIN PROFESSOR
SELECT * FROM lab.professor pr INNER JOIN lab.endereco e ON e.id =
pr.id_endereco WHERE e.bairro = 'Ingleses';
SELECT * FROM lab.professor pr INNER JOIN lab.endereco e ON e.id =
pr.id_endereco WHERE e.cep = '88056683';
--SELECT PEDAGOGO
SELECT * FROM lab.pedagogo;
SELECT nome_completo FROM lab.pedagogo;
SELECT id, nome_completo FROM lab.pedagogo;
SELECT id, cpf FROM lab.pedagogo WHERE situacao='true';
SELECT id, nome_completo, data_nascimento FROM lab.pedagogo;
--SELECT JOIN PEDAGOGO
SELECT ped.nome_completo from lab.pedagogo ped INNER JOIN
lab.atendimentos_pedagogicos ap ON ped.id = ap.id_pedagogo WHERE ped.id =
9;
SELECT ped.data_nascimento from lab.pedagogo ped INNER JOIN
lab.atendimentos_pedagogicos ap ON ped.id = ap.id_pedagogo WHERE ped.id =
10;
--SELECT ATENDIMENTOS_PEDAGOGICOS
SELECT * FROM lab.atendimentos_pedagogicos;
SELECT * FROM lab.atendimentos_pedagogicos WHERE id_aluno=4;
SELECT descricao_atendimento FROM lab.atendimentos_pedagogicos WHERE
categoria_atendimento='consulta';
SELECT * FROM lab.atendimentos_pedagogicos WHERE id_aluno=9;
SELECT * FROM lab.atendimentos_pedagogicos WHERE
categoria_atendimento='suspensao';
--SELECT JOIN ATENDIMENTOS_PEDAGOGICOS
SELECT COUNT (*) FROM lab.atendimentos_pedagogicos ap INNER JOIN lab.aluno
a ON a.id=ap.id_aluno WHERE ap.titulo_atendimento='Registro emergencial';
SELECT COUNT (*) FROM lab.atendimentos_pedagogicos ap INNER JOIN lab.aluno
a ON a.id=ap.id_aluno;








