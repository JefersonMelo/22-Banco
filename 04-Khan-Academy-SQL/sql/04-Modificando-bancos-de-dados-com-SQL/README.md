# Usando SQL para atualizar um banco de dados

Como mencionamos ao longo desse curso, diversas vezes podemos nos ver na necessidade de usar SQL ou uma outra linguagem semelhante em um banco de dados. Podemos pensar em alguns usos como "operações somente de leitura" e em outros usos como "operações de leitura/escrita".  

Um exemplo de uma "operação somente de leitura" é uma análise de dados em um despejo de dados de algum aplicativo ou pesquisa. Por exemplo, se eu fosse um cientista de dados trabalhando para uma agenda diária, eu poderia consultar qual a porcentagem de usuários que tomam sorvete no mesmo dia que eles correm, para entender se o exercício faz as pessoas quererem se recompensar:  

```"
SELECT * 
FROM diary_logs 
WHERE comida 
LIKE "%sorvete%" 
AND atividade 
LIKE "%correndo%";
```

Se estou fazendo uma análise de dados como essa, então praticamente tudo que estou fazendo é um SELECT - isso é somente leitura. Não estamos criando qualquer dado novo, estamos apenas consultando dados já existentes. Precisamos ficar craques em consultas SELECT, mas não precisamos saber como criar tabelas, atualizar linhas e todo o resto.  

Um exemplo de "operação de leitura/escrita" é um engenheiro de software criando o backend para um aplicativo web. Por exemplo, se eu fosse o engenheiro de software trabalhando no monitoramento de saúde, eu poderia escrever um código que soubesse como inserir um novo registro diário no bano de dados toda vez que um usuário enviasse um formulário:  

```"
INSERT INTO diary_logs (id, comida, atividade)
    VALUES (123, "sorvete", "correndo");
```

Eu provavelmente emitiria o comando SQL de dentro de uma linguagem do lado do servidor, provavelmente usando uma biblioteca para facilitar a construção dos comandos. É assim que uma inserção pareceria se eu estivesse usando Python com a biblioteca SQLAlchemy:  

```"
diary_logs.insert().values(id=123, comida="sorvete", atividade='correndo')
```

Eu também precisaria escrever SQL para modificar o banco de dados se o usuário editasse o registro diário, o excluísse ou até mesmo se ele excluísse sua conta. Se a equipe decidisse adicionar mais recursos ao registro diário do usuário, como uma coluna de emoção para monitorar o quão feliz o usuário estava enquanto tomava o sorvete e corria (minha hipótese: muito feliz), eu precisaria escrever SQL para modificar o próprio esquema da tabela.  

Todas essas são "operações de escrita", e elas são necessárias se vamos usar um banco de dados para armazenar e atualizar dados para um aplicativo. INSERT é relativamente seguro, porque tudo que ele faz é inserir dados, mas UPDATE, DELETE, DROP, ou ALTER podem ser muito mais perigosos, porque eles atualizam dados existentes. É por isso que é importante entendê-los realmente bem e usá-los com cuidado. Siga em frente para aprender a usá-los!  
