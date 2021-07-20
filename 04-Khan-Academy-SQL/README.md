# SQL

## Quem realiza consultas SQL?

Com apenas esse simples conjunto de registros de exercício, conseguimos criar várias consultas úteis e diferentes. Agora eu quero fazer uma pausa nas consultas para falar sobre quem normalmente faria todas as consultas, e com que finalidade.  
Vamos imaginar que temos um aplicativo de exercício com milhares de usuários, armazenando dados similares à tabela de registros de exercício que usamos.  
Esse aplicativo permite que os usuários insiram registros diários e visualizem seu progresso em um painel pessoal:  

![https://cdn.kastatic.org/ka-perseus-images/638a710e1756d7a33a1054ce296d0e8c51451eb5.png](https://cdn.kastatic.org/ka-perseus-images/638a710e1756d7a33a1054ce296d0e8c51451eb5.png)  

Para um aplicativo como esse, há algumas pessoas na equipe que poderiam realizar consultas SQL:  

### Engenheiros de software

Eles são aqueles que constroem o backend (a lógica do lado do servidor) e o frontend (o HTML/CSS/JS que renderizam os dados e os formulários). Os engenheiros de software poderiam usar SQL para a comunicação no lado do servidor com o banco de dados que armazena todos os dados do usuário. Eles precisaram saber como fazer quaisquer consultas necessárias para o frontend. Por exemplo, se os usuários vissem um painel quando se conectam de quanto exercício eles fizeram naquele dia, o engenheiro precisaria descobrir como fazer um SELECT filtrado por data e usuário. Eles precisariam descobrir como inserir dados e atualizá-los (o que veremos mais tarde)  

### Cientistas de dados

Eles analisam os dados e tentam aprender mais sobre os usuários, podendo dar sugestões sobre como ajudá-los a se exercitarem mais. Eles precisam de um conhecimento profundo das instruções SELECT, porque eles precisam realizar consultas bastante complexas para fazer as análises nas quais eles estão interessados. For example, they might use a SELECT to analyze what percentage of users were more likely to do more exercise if they started off exercising in the morning, maybe using CASE and GROUP BY.

### Gerentes de produto

Eles tomam as decisões na empresa, são os que olham para os dados, falam com os usuários, analisam o mercado e tentam entender como melhorar um produto para obter mais usuários, aumentar a satisfação dos usuários ou para aumentar os lucros. Eles geralmente precisam ter conhecimento de consultas SQL para que eles possam olhar para as estatísticas e de uso e tentar compreender que partes do produto estão sendo mais usadas, quais partes estão sendo usadas de formas surpreendentes e o que não está sendo usado. Eles podem usar um SELECT para ver quantos usuários usam o campo "heart_rate" caso estejam debatendo a remoção do campo.  

Como todas essas pessoas estão trabalhando na mesma empresa, eles podem e devem compartilhar seus conhecimentos sobre como usar SQL em seus bancos de dados uns com os outros. Nem todos precisam ser experts em SQL, mas considerando minha experiência, muitas pessoas em uma empresa podem se beneficiar em ter um conhecimento básico de SQL, e alguns deles podem querer usar recursos mais avançados, conforme ficam mais sofisticados.  

Com isso em mente, vá em frente e aprenda recursos mais avançados...!

## Separando dados em tabelas relacionadas

Até agora, trabalhamos com apenas uma tabela por vez e vimos que dados interessantes podemos selecionar a partir da tabela. Mas na verdade, na maioria das vezes, temos nossos dados distribuídos em várias tabelas e essas tabelas estão "relacionadas" umas às outras de alguma forma.  

Por exemplo, vamos supor que temos uma tabela para registrar o quão bem os alunos se saem em suas provas e vamos incluir e-mails caso precisemos entrar em contato com seus pais devido a notas ruins:  

| nome_aluno       | email_aluno          | prova    | nota |
| ---------------- | -------------------- | -------- | ---- |
| Peter Rabbit     | peter@rabbit.com     | Nutrição | 95   |
| Alice Wonderland | alice@wonderland.com | Nutrição | 92   |
| Peter Rabbit     | peter@rabbit.com     | Química  | 85   |
| Alice Wonderland | alice@wonderland.com | Química  | 95   |

Também podemos ter uma tabela para registrar quais livros cada aluno lê:  

| nome_aluno       | título_livro                  | autor_livro    |
| ---------------- | ----------------------------- | -------------- |
| Peter Rabbit     | The Tale of Mrs. Tiggy-Winkle | Beatrix Potter |
| Peter Rabbit     | Jabberwocky                   | Lewis Carroll  |
| Alice Wonderland | The Hunting of the Snark      | Lewis Carroll  |
| Alice Wonderland | Jabberwocky                   | Lewis Carroll  |

Também podemos ter uma tabela apenas para informações detalhadas do aluno:  

| id  | primeiro_nome | sobrenome  | email_aluno          | telefone | nascimento |
| --- | ------------- | ---------- | -------------------- | -------- | ---------- |
| 1   | Pedro         | Coelho     | peter@rabbit.com     | 555-6666 | 2001-05-10 |
| 2   | Alice         | Wonderland | alice@wonderland.com | 555-4444 | 2001-04-02 |

O que você acha dessas tabelas? Você as alteraria de alguma forma?  

Há uma coisa importante sobre essas tabelas: elas estão descrevendo dados relacionais - elas estão descrevendo dados relacionados entre si. Cada uma dessas tabelas descreve dados relacionados a um aluno específico e muitas delas replicam os mesmos dados. Quando o mesmo dado está replicado em várias tabelas, pode haver consequências interessantes.  

Por exemplo, e se um aluno trocasse de e-mail? Que tabelas precisaríamos alterar?  

Precisaríamos alterar a tabela de informações sobre o aluno, mas como também incluímos esse dado na tabela de notas, também precisaríamos encontrar todas as linhas sobre esse aluno e alterar o e-mail em todas elas.  

Geralmente é preferível garantir que uma coluna específica de dados está armazenada apenas em um único local, assim há menos locais para atualizar e menos riscos de ter dados diferentes em locais diferentes. Se fizermos isso, precisamos garantir que tenhamos uma forma de relacionar os dados entre as tabelas, e veremos isso mais tarde.  

Vamos supor que decidimos remover o e-mail das tabelas de nota, porque percebemos que esse dado é redundante com o e-mail na tabela de detalhes sobre o aluno. É isso que teríamos:  

| nome_aluno       | prova    | nota |
| ---------------- | -------- | ---- |
| Peter Rabbit     | Nutrição | 95   |
| Alice Wonderland | Nutrição | 92   |
| Peter Rabbit     | química  | 85   |
| Alice Wonderland | química  | 95   |

Como poderíamos descobrir o e-mail de cada aluno? Poderíamos encontrar a linha na tabela de informações sobre o aluno com o nome correspondente. E se dois alunos tivessem o mesmo nome? (Você sabia que em Bali só existem 4 nomes e cada pessoa só pode ter um deles?) Não podemos confiar no nome para encontrar um aluno e, na verdade, nunca devemos confiar em algo como um nome para identificar algo único em uma tabela.  

Assim, o melhor a fazer é substituir nome_aluno por id_aluno, já que este é um identificador único:  

| id_aluno | prova    | nota |
| -------- | -------- | ---- |
| 1        | Nutrição | 95   |
| 2        | Nutrição | 92   |
| 1        | Química  | 85   |
| 2        | Química  | 95   |

Nós poderíamos fazer a mesma mudança na nossa tabela de livros, usando student_id ao invés de student_name:  

| id_aluno | título_livro                  | autor_livro    |
| -------- | ----------------------------- | -------------- |
| 1        | The Tale of Mrs. Tiggy-Winkle | Beatrix Potter |
| 1        | Jabberwocky                   | Lewis Carroll  |
| 2        | The Hunting of the Snark      | Lewis Carroll  |
| 2        | Jabberwocky                   | Lewis Carroll  |

Percebe que temos o título e o autor repetidos duas vezes para Jabberwocky? Esse é outro sinal de alerta de que podemos dividir nossa tabela em várias tabelas relacionadas, assim não precisamos atualizar vários locais se algo sobre um livro for alterado.  

Poderíamos ter uma tabela apenas sobre livros:  

| id  | título_livro                  | autor_livro    |
| --- | ----------------------------- | -------------- |
| 1   | The Tale of Mrs. Tiggy-Winkle | Beatrix Potter |
| 2   | Jabberwocky                   | Lewis Carroll  |
| 3   | The Hunting of the Snark      | Lewis Carroll  |

E então nossa tabela livros_aluno fica assim:  

| id_aluno | id_livro |
| -------- | -------- |
| 1        | 1        |
| 1        | 2        |
| 2        | 3        |
| 2        | 2        |

Eu sei, essa tabela não é tão legível quanto a antiga, que tinha toda a informação armazenada em cada linha. Mas, geralmente, as tabelas não são concebidas para serem lidas por humanos - elas são concebidas para armazenar dados da melhor forma possível, com a maior facilidade de manutenção e da forma menos propensa a erros. Em muitos casos, pode ser melhor dividir as informações em várias tabelas relacionadas, assim há menos dados redundantes e menos locais para atualizar.  

É importante compreender como usar SQL para lidar com dados reais que foram divididos em várias tabelas relacionadas e juntar os dados das tabelas quando for necessário. Isso é feito usando um conceito chamado "join"s e é isso que vamos lhe mostrar a seguir.  

- [Normalização de dados](https://pt.wikipedia.org/wiki/Normaliza%C3%A7%C3%A3o_de_dados)
