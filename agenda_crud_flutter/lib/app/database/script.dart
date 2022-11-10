final createTable = '''
CREATE TABLE contact(
  id INT PRIMARY KEY
,nome VARCHAR(200) NOT NULL
,telefone CHAR(16) NOT NULL
,email VARCHAR(150) NOT NULL
,url_avatar VARCHAR(300) NOT NULL
)
''';

final insert1 = '''
INSERT INTO contact(nome, telefone, email, url_avatar)
VALUES('Herbert','(81)9999-8787','herbert@gmail.com','https://cdn.pixabay.com/photo/2018/08/28/13/29/avatar-3637561__340.png')
''';

final insert2 = '''
INSERT INTO contact(nome, telefone, email, url_avatar)
VALUES('Romoaldo','(81)9999-6767','romoaldo@outlook.com','https://cdn.pixabay.com/photo/2014/04/03/10/32/businessman-310819__340.png')
''';

final insert3 = '''
INSERT INTO contact(nome, telefone, email, url_avatar)
VALUES('Juliana','(81)9999-5566','juliana@yahoo.com.br','https://cdn.pixabay.com/photo/2021/01/17/09/11/woman-5924366__340.jpg')
''';
