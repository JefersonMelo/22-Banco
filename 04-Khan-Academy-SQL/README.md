# Quem realiza consultas SQL?

Com apenas esse simples conjunto de registros de exercício, conseguimos criar várias consultas úteis e diferentes. Agora eu quero fazer uma pausa nas consultas para falar sobre quem normalmente faria todas as consultas, e com que finalidade.  
Vamos imaginar que temos um aplicativo de exercício com milhares de usuários, armazenando dados similares à tabela de registros de exercício que usamos.  
Esse aplicativo permite que os usuários insiram registros diários e visualizem seu progresso em um painel pessoal:  

![https://cdn.kastatic.org/ka-perseus-images/638a710e1756d7a33a1054ce296d0e8c51451eb5.png](https://cdn.kastatic.org/ka-perseus-images/638a710e1756d7a33a1054ce296d0e8c51451eb5.png)  

Para um aplicativo como esse, há algumas pessoas na equipe que poderiam realizar consultas SQL:  

## Engenheiros de software

Eles são aqueles que constroem o backend (a lógica do lado do servidor) e o frontend (o HTML/CSS/JS que renderizam os dados e os formulários). Os engenheiros de software poderiam usar SQL para a comunicação no lado do servidor com o banco de dados que armazena todos os dados do usuário. Eles precisaram saber como fazer quaisquer consultas necessárias para o frontend. Por exemplo, se os usuários vissem um painel quando se conectam de quanto exercício eles fizeram naquele dia, o engenheiro precisaria descobrir como fazer um SELECT filtrado por data e usuário. Eles precisariam descobrir como inserir dados e atualizá-los (o que veremos mais tarde)  

## Cientistas de dados

Eles analisam os dados e tentam aprender mais sobre os usuários, podendo dar sugestões sobre como ajudá-los a se exercitarem mais. Eles precisam de um conhecimento profundo das instruções SELECT, porque eles precisam realizar consultas bastante complexas para fazer as análises nas quais eles estão interessados. For example, they might use a SELECT to analyze what percentage of users were more likely to do more exercise if they started off exercising in the morning, maybe using CASE and GROUP BY.

## Gerentes de produto

Eles tomam as decisões na empresa, são os que olham para os dados, falam com os usuários, analisam o mercado e tentam entender como melhorar um produto para obter mais usuários, aumentar a satisfação dos usuários ou para aumentar os lucros. Eles geralmente precisam ter conhecimento de consultas SQL para que eles possam olhar para as estatísticas e de uso e tentar compreender que partes do produto estão sendo mais usadas, quais partes estão sendo usadas de formas surpreendentes e o que não está sendo usado. Eles podem usar um SELECT para ver quantos usuários usam o campo "heart_rate" caso estejam debatendo a remoção do campo.  

Como todas essas pessoas estão trabalhando na mesma empresa, eles podem e devem compartilhar seus conhecimentos sobre como usar SQL em seus bancos de dados uns com os outros. Nem todos precisam ser experts em SQL, mas considerando minha experiência, muitas pessoas em uma empresa podem se beneficiar em ter um conhecimento básico de SQL, e alguns deles podem querer usar recursos mais avançados, conforme ficam mais sofisticados.  

Com isso em mente, vá em frente e aprenda recursos mais avançados...!
