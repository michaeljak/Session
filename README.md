Gerenciamento de Sessão em Java

gerenciamento de sessões em servlets usando banco de dados postgres.


O protocolo HTTP e os Servidores Web são apátridas, o que significa é que para o servidor web 
cada pedido é um novo pedido para processar e eles não conseguem identificar se ele está vindo do cliente que tem enviado solicitação anteriormente.
Mas às vezes em aplicações web, devemos saber quem é o cliente e processar a solicitação em conformidade. Por exemplo, uma aplicação carrinho de compras
 deve saber quem está enviando o pedido para adicionar um item e em que carrinho o item tem de ser adicionado ou que está enviando pedido de check-out 
para que ele possa cobrar o valor para o cliente correto.

Sessão é um estado de conversão entre cliente e servidor e pode ser composto por vários pedidos e respostas entre cliente e servidor.
 Como o HTTP eo Web Server são apátridas, a única maneira de manter uma sessão é quando algumas informações exclusivas sobre a sessão
 (id da sessão) são passadas entre o servidor e o cliente em cada solicitação e resposta.

Existem várias maneiras através das quais podemos fornecer identificador exclusivo em solicitação e 
