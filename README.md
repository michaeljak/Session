<a href='https://github.com/michaeljak'><img src='https://dl.dropboxusercontent.com/s/2042wlthpkfzjcv/banner-github-personal-page.png' height='50'></a>

##Gerenciamento de Sessão em Java

gerenciamento de sessões em servlets usando banco de dados postgres.
----
O protocolo HTTP e os Servidores Web são apátridas, o que significa é que para o servidor web 
cada pedido é um novo pedido para processar e eles não conseguem identificar se ele está vindo do cliente que tem enviado solicitação anteriormente.
Mas às vezes em aplicações web, devemos saber quem é o cliente e processar a solicitação em conformidade. Por exemplo, uma aplicação carrinho de compras
 deve saber quem está enviando o pedido para adicionar um item e em que carrinho o item tem de ser adicionado ou que está enviando pedido de check-out 
para que ele possa cobrar o valor para o cliente correto.

Sessão é um estado de conversão entre cliente e servidor e pode ser composto por vários pedidos e respostas entre cliente e servidor.
 Como o HTTP eo Web Server são apátridas, a única maneira de manter uma sessão é quando algumas informações exclusivas sobre a sessão
 (id da sessão) são passadas entre o servidor e o cliente em cada solicitação e resposta.

Existem várias maneiras através das quais podemos fornecer identificador exclusivo em solicitação e 

# Sistema abre nos Seguintes Navegadores

![IE](https://cloud.githubusercontent.com/assets/398893/3528325/20373e76-078e-11e4-8e3a-1cb86cf506f0.png) | 
![Chrome](https://cloud.githubusercontent.com/assets/398893/3528328/23bc7bc4-078e-11e4-8752-ba2809bf5cce.png) | 
![Firefox](https://cloud.githubusercontent.com/assets/398893/3528329/26283ab0-078e-11e4-84d4-db2cf1009953.png) | 
![Opera](https://cloud.githubusercontent.com/assets/398893/3528330/27ec9fa8-078e-11e4-95cb-709fd11dac16.png) | 
![Safari](https://cloud.githubusercontent.com/assets/398893/3528331/29df8618-078e-11e4-8e3e-ed8ac738693f.png)
--- | --- | --- | --- | --- |
IE 9+ ✔ | Ultimas ✔ | Ultimas ✔ | Ultimas ✔ | Ultimas ✔ |

## Licença
Este projeto é licenciado sob os termos da [Licença MIT](https://github.com/michaeljak/Pedidos/blob/master/LICENSE) © Michael Jakson
