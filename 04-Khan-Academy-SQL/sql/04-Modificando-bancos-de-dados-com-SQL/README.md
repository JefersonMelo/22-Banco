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

## Torne seu SQL mais seguro

SQL pode ser uma coisa linda, mas também pode ser uma coisa perigosa. Se você está usando SQL para acessar um banco de dados para um aplicativo que é usado por centenas, milhares ou até mesmo milhões de usuários, você precisa tomar cuidado - porque você poderia acidentalmente danificar ou apagar todos os dados. Contudo, há várias técnicas que você pode usar para tornar seu SQL mais seguro.  

### Evitar atualizações/exclusões ruins

Antes de emitir um UPDATE, execute um SELECT como o mesmo WHERE para garantir que você está atualizando a coluna e a linha certas.  

Por exemplo, antes de executar:  

```"
UPDATE usuarios SET deleted = true WHERE id = 1;
```

Você poderia executar:  

```"
SELECT id, deleted FROM usuarios WHERE id = 1;
```

Uma vez que você decida executar a atualização, você pode usar o operador LIMIT para garantir que você não atualize muitas linhas acidentalmente:  

```"
UPDATE usuarios SET deleted = true WHERE id = 1 LIMIT 1;
```

Ou, se você estivesse excluindo:  

```"
DELETE usuarios WHERE id = 1 LIMIT 1;
```

### Usar transações

Quando emitimos um comando SQL que altera nosso banco de dados de alguma forma, ele começa o que chamamos de uma "transação." Uma transação é uma sequência de operações tratadas como uma parte lógica única (como uma transação bancária) e, no mundo dos bancos de dados, uma transação deve seguir os princípios "ACID" para garantir que ela seja processada de forma confiável.  

Sempre que emitimos um comando como CREATE, UPDATE, INSERT ou DELETE, estamos automaticamente iniciando uma transação. Contudo, se quisermos, podemos também agrupar vários comandos em uma transação maior. Pode ser que só queiramos que um UPDATE aconteça se outro UPDATE também acontecer, então colocamos ambos na mesma transação.  

Nesse caso, podemos agrupar os comandos em BEGIN TRANSACTION e COMMIT:  

```"
BEGIN TRANSACTION;
UPDATE pessoas SET marido= "Winston" WHERE user_id = 1;
UPDATE pessoas SET esposa = "Winnefer" WHERE user_id = 2;
COMMIT;
```

Se o banco de dados não puder emitir ambos os comandos UPDATE por alguma razão, ele vai reverter a transação e deixar o banco de dados como ele estava quando foi iniciado.  

Também usamos transações quando queremos garantir que todos os nossos comandos operem na mesma visão dos dados - quando queremos garantir que nenhuma outra transação opere no mesmo dado enquanto a sequência de comandos é executada. Quando você estiver olhando para uma sequência de comandos que você quer executar, pergunte-se o que aconteceria se outro usuário emitisse comandos ao mesmos tempo. Seus dados poderiam acabar em um estado estranho? Nesse caso, você deve executá-los em uma transação.  

Por exemplo, os seguintes comandos criam uma linha que indica que um usuário ganhou uma medalha e então atualiza as atividades recentes do usuário para descrever isso:  

```"
INSERT INTO medalhas_usuario VALUES (1, "SQL Master", "16h");
UPDATE usuarios SET atividade_recente = "Ganhou medalha SQL Master" WHERE id = 1;
```

Ao mesmo tempo, outro usuário ou processo pode estar fazendo a emissão de uma segunda medalha:  

```"
INSERT INTO medalhas_usuario VALUES (1, "Bom ouvinte", "16:05");
UPDATE usuarios SET atividade_recente = "Ganhou medalha Bom Ouvinte" WHERE id = 1;
```

Esses comandos poderiam na verdade ser emitidos nessa ordem:  

```"
INSERT INTO medalhas_usuario VALUES (1, "SQL Master");
INSERT INTO medalhas_usuario VALUES (1, "Bom ouvinte");
UPDATE usuarios SET atividade_recente = "Ganhou medalha Bom Ouvinte" WHERE id = 1;
UPDATE usuarios SET atividade_recente = "Ganhou medalha SQL Master" WHERE id = 1;
```

Sua atividade recente agora poderia ser "Earned SQL Master badge" mesmo que a medalha inserida mais recentemente fosse "Great listener". Isso não é o fim do mundo, mas isso provavelmente também não é o que esperávamos.  

Ao invés disso, poderíamos executar os comandos em uma transação, para garantir que nenhuma outra transação aconteça no meio:  

```"
BEGIN TRANSACTION;
INSERT INTO medalhas_usuario VALUES (1, "SQL Master");
UPDATE usuarios SET atividade_recente = "Ganhou medalha SQL Master" WHERE id = 1;
COMMIT;
```

### Fazer backups

Você pode seguir todas essas dicas, mas ainda assim os erros podem acontecer às vezes. Por isso, a maioria das empresas fazem backup de seus bancos de dados - de hora em hora, diariamente ou semanalmente, dependendo do tamanho do banco de dados e do espaço disponível. Quando algo ruim acontece, eles podem importar os dados do banco de dados antigo para quaisquer tabelas danificadas ou perdidas. Os dados podem ficar um pouco desatualizados, mas dados desatualizados geralmente são melhores do que nenhum dado.  

### Replicação

Uma abordagem relacionada é a replicação - sempre armazenar várias cópias dos bancos de dados em lugares diferentes. Se por alguma razão uma cópia em especial do banco de dados estiver indisponível (como quando um raio atinge o local onde ela está, o que já aconteceu comigo!), então a consulta pode ser enviada a outra cópia do banco de dados que ainda esteja disponível. Se o dado for realmente importante, então ele deve ser replicado para garantir sua disponibilidade. Por exemplo, se um doutor estiver tentando fazer o levantamento de uma lista das alergias de um paciente para determinar como tratá-la em uma situação emergencial, então não se pode esperar até que os engenheiros recuperem os dados de um backup, porque eles precisam deles imediatamente.  

Contudo, o esforço para replicar bancos de dados é muito maior e normalmente significa uma performance mais lenta, já que é preciso escrever operações em todos eles. Assim, as empresas devem decidir se os benefícios da replicação valem os custos e investigar a melhor forma de configurá-la para seu ambiente.  

### Conceder privilégios

Muitos sistemas de bancos de dados têm usuários e privilégios, porque eles estão armazenados em um servidor e são acessados por vários usuários. Não há o conceito de usuário/privilégio nos scripts em SQL da Khan Academy, porque SQLite é normalmente usado em um cenário com um único usuário e, portanto, você pode escrever para ele enquanto você tiver acesso à unidade na qual ele está armazenado.  

Mas se um dia você estiver usando um sistema de banco de dados em um servidor compartilhado, então você deve lembrar-se de configurar os usuários e os privilégios corretamente desde o princípio. Como regra geral, deve haver apenas alguns usuários com acesso total ao banco de dados (como os engenheiros de backend), uma vez que isso pode ser perigoso.  

Por exemplo, é assim que podemos dar acesso total a um usuário específico:  

```"
GRANT FULL ON TABLE usuarios TO super_admin;
```

E é assim que podemos dar acesso somente ao comando SELECT para um usuário diferente:  

```"
GRANT SELECT ON TABLE usuarios TO usuario_analista;
```

Em uma grande empresa, muitas vezes você não quer dar nem mesmo acesso ao SELECT para a maioria dos usuários, pois podem existir dados privados em uma tabela, tal como o e-mail ou o nome dos usuários. Muitas companhias tem versões anônimas de seus bancos de dados nos quais podem ser realizadas consultas sem haver a preocupação do acesso à informações privadas.  

Bônus: Leia esta tirinha famosa [XKCD](https://xkcd.com/327/) sobre SQL seguro (mais [esta explicação](https://stackoverflow.com/questions/332365/how-does-the-sql-injection-from-the-bobby-tables-xkcd-comic-work)).
