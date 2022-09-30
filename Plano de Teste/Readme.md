<img style="" src="https://user-images.githubusercontent.com/87214658/193294137-f33afed0-1432-4968-b3b7-28c5f232a79d.png" alt="Banana" />

# Plano de Teste
<p><strong>Curso:</strong> Programa de Bolsa QA</p>
<p><strong>Autor:</strong> Bruno Guimarães dos Santos</p>
<hr>

## <strong>1)	Objetivo:</strong>

Utilização e funcionalidade das principais funções do site, desde o seu cadastro até a sua busca de produtos no site <a href="https://front.serverest.dev/login">ServeRest</a>
<p><strong>Por que faremos este teste ?</strong></p>
Verificarei o andamento das páginas para que o administrador ou o usuário padrão não tenham algum impedimento ao efetuar as principais funções do site.
<hr>

## <strong>2)	Escopo:</strong>

Estes testes que são prioritários, são fundamentais para garantir que os mesmos estejam aptos para a realização do objetivo, sendo feitos por ordem lógica para se chegar ao objetivo final. 
O fluxo de testes serão feitos desde seu cadastro até a adição de produtos em uma lista de compras. Ou seja, o teste será feito de ponta a ponta.
### Funcionalidades a serem testadas:

Cadastro de usuário administrador:
<ul>
<li>Cadastrar usuários;</li>
<li>Cadastrar Produtos;</li>
</ul>

Cadastro de usuário padrão:
<ul>
<li>Pesquisa de produtos;</li>
<li>Adicionar um produto a lista;</li>
</ul>
Login;
<hr>

## <strong>3)	Requisitos para o teste:</strong>

A lista a seguir identifica os itens que foram identificados como alvos prioritários para o teste. Essa lista representa o que será testado.

<strong>Teste da tela de cadastro:</strong>

<ul>
<li>Verificar se os campos: Nome, Email e Senha estão vazios;</li>
<li>Verificar se o e-mail correspondente é um formato de um email;</li>
<li>Validar a escolha do usuário entre: Administrador e Usuário Padrão;</li>
<li>Verificar se o cadastro foi realizado com sucesso;</li>
</ul>

<strong>Teste da tela de Login:</strong>

<ul>
<li>Verificar se os campos: Email e Senha estão vazios;</li>
<li>Verificar se o e-mail correspondente existe;</li>
<li>Verificar se a senha correspondente existe.</li>
</ul>

<strong>Pesquisa de Produto/Home:</strong>

<ul>
<li>Exibir os produtos;</li>
<li>Examinar a Funcionalidade da Barra de Pesquisa;</li>
<li>Examinar a Funcionalidade do Botão Pesquisar;</li>
</ul>

<strong>Adicionar um Produto a lista:</strong>
<ul>
<li>Examinar a Funcionalidade do botão Adicionar a lista;</li>
<li>Examinar se realmente o produto foi adicionado a Lista de Compras conforme o esperado;</li>
</ul>

<strong>Cadastro de Usuários sendo Administrador:</strong>
<ul>
<li>Examinar a Funcionalidade do botão Cadastrar;</li>
<li>Examinar se realmente os dados do usuario foram adicionados a seus respectivos campos;</li>
<li>Examinar se o usuario foi cadastrado.</li>
</ul>

<strong>Cadastro de Produtos sendo Administrador:</strong>

<li>Examinar a Funcionalidade do botão Cadastrar;</li>
<li>Examinar se realmente os dados do produto foram adicionados a seus respectivos campos;</li>
<li>Examinar se o produto foi cadastrado.</li>
<hr> 

## <strong>4)	Estratégia dos Testes:</strong>

<p>A Estratégia de Teste apresenta a abordagem recomendada para o teste dos aplicativos de software. A seção anterior dos Requisitos de Teste descrevia o que será testado; esta descreve como será testado.</p>

## <strong>Teste da tela de cadastro:</strong>

<strong>Objetivo do Teste:</strong> Cadastrar o Usuário Administrador.
<p>Primeiramente iremos cadastrar o usuário administrador para posteriormente podermos:</p>
<ul>
<li><strong>Cadastrar usuários</strong>( De modo que estejamos logados).</li>
<li><strong>Cadastrar Produtos</strong>( De modo que estejamos logados).</li>
</ul>

<strong>Objetivo do Teste:</strong> Cadastrar o Usuário Padrão.
<p>Após cadastrarmos o usuário administrador, agora devemos cadastrar o usuário padrão para podermos:</p>
<ul>
<li><strong>Pesquisar Produtos</strong>( De modo que estejamos logados).</li>
<li><strong>Adicionar um produto a lista de Compras</strong>( De modo que estejamos logados).</li>
</ul>

## <strong>Teste da tela de Login:</strong>
<strong>Objetivo do Teste:</strong> Logar o usuário.
<p>Caso o usuário já esteja devidamente cadastrado, testaremos seu e-mail e sua senha para podermos respectivamente concluir as funcionalidades a serem testadas.</p>

## <strong>Pesquisa de Produto/Home:</strong>
<strong>Objetivo do Teste:</strong> Realizar uma pesquisa de Produto.
<p>Caso o usuário esteja devidamente logado e ao mesmo tempo estar na página de Pesquisa de Produto/Home, iremos verificar a funcionalidade de Pesquisa.</p>

## <strong>Lista de Compras:</strong>
<strong>Objetivo do Teste:</strong> Adicionar um produto a Lista de compras.
<p>Caso o usuário esteja devidamente logado e ao mesmo tempo estar na página dos Produto/Home, iremos verificar a funcionalidade de Lista de Compras.</p>
<hr>

## <strong>5)	Recursos Utilizados:</strong>

<strong>Ferramentas:</strong>
<ul>
<li>Vs code.</li>
<li>Xmind.</li>
<li>CMD.</li>
<li>Git.</li>
</ul>

<strong>Dispositivo:</strong>
<ul>
<li>Desktop.</li>
</ul>

<strong>Navegador:</strong>
<ul>
<li>Google Chrome.</li>
</ul>
