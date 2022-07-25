# Feve Calculator

## Feve

Fração de ejeção do ventrículo esquerdo (Feve) é a porcentagem de sangue do ventrículo esquerdo que é ejetada a cada batimento cardíaco, usada para avaliar a efetividade da função cardíaca.

É calculada através da estimativa do percentual de diferença dos volumes sistólico e diastólico do ventrículo esquerdo, baseado numa convenção volumétrica do formato de um ventrículo. As variáveis necessárias para realização do cálculo são os diâmetros sistólico e diastólico do paciente em questão.

A aplicação tem por objetivo automatizar esse cálculo através do input dos diâmetros sistólico e diastólico, facilitando a rotina do médico e dando mais celeridade à sua tomada de decisão.

## Instalação

Para execução do projeto são necessários:

* Ruby versão 3.1.2
* No diretório do projeto, instalar as dependências contidas no `Gemfile` com o comando `bundle install`.
* Crie a database com o comando `rails db:create`. O sistema utilizado é o PostgreSQL.
* Com todas as dependências instaladas, execute `rails s` no seu terminal e acesse o `localhost:3000` no navegador.
