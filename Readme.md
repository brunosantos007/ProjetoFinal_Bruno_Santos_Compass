# Introdução
### Nome do Projeto: Automação web com Ruby, Cucumber e SitePrism
<p>
Trabalho realizado de testes de automação no site <a href="https://front.serverest.dev/login">Serverest</a>.
Com o intuito de testarmos a maioria das funcionalidades do sistema, desde o seu cadastro com Administrador e Default, até a Lista de Compras, verificando e testando sempre sua funcionalidade completa.
</p>

# Pré Requisitos para rodar a aplicação dos testes:
### Passo 1: Softwares
<ul>
  <li><a href="https://code.visualstudio.com/"> VS code</a> </li>
  <li><a href="http://rubyinstaller.org/downloads/"> Linguagem de programação Ruby</a>  </li>
  <li><a href="https://cmder.app/"> CMDER</a> </li>
  <li><a href="https://git-scm.com/"> GIT</a> </li>
</ul>

### Passo 2: Extensões no VS Code
<ul>
  <li>Snippets and Syntax Highlight for Gherkin </li>
  <li>Cucumber (Gherkin) Full Support</li>
</ul>

### Passo 3: Gemas a serem instaladas
<ul>
  <li>Cucumber: https://github.com/cucumber/cucumber-ruby</li>
  <li>Capybara: https://github.com/teamcapybara/capybara#calling-remote-servers</li>
  <li>Site-Prism: https://github.com/site-prism/site_prism</li>
  <li>Selenium-Webdriver: https://chromedriver.chromium.org/downloads</li>
  <li>Rspec: https://rubygems.org/gems/rspec</li>
  <li>Pry: https://rubygems.org/gems/pry?locale=es</li>
</ul>

# Processo de execução do teste
<p>Após realizar as devidas instalações, devemos executar os testes da forma descrita abaixo:</p>

### No VS Code:
<ul>
  <li>Abra uma nova janela no VS Code</li>
  <li>Selecione a pasta em que deseja fazer os testes</li>
  <li>Crie uma pasta chamada GEMFILE</li>
  <li>Dentro da pasta GEMFILE, adicione as gemas descritas acima</li>
</ul>

### No CMDER:
<ul>
  <li>Abra o CMDER</li>
  <li>Com o CMDER devidamente iniciado, digite cd e o caminho que esta a pasta para pode realizar os testes</li>
  <li>Com a pasta selecionada, execute o comando abaixo para instalarmos as gemas na devida pasta:</li>
  <strong> 
  <code>
  Bundle Install
  </code>
  </strong>
  <li>Dentro do caminho selecionado, digite o código para instalarmos as pastas: <strong>Features</strong>, <strong>Step_definitions</strong>, <strong>Support/Env.rb</strong> :</li>
  <code>
<strong>Cucumber --init</strong>
  </code>
  <li>Este será o código para realizarmos testes a partir de uma tag de Cenário <strong>(Caso houver uma tag)</strong>:</li>
  <strong> 
  <code>
  Bundle exec cucumber -p default -t(a partir disto, adicionando a tag da FEATURE, caso tenha uma tag no Cenário) 
  </code>
  </strong>
  <li>Ou, executar o código inteiro, rodando com a linha de código:</li>
  <strong>
  <code>
  Cucumber
  </code>
  </strong>
</ul>

# Tecnologias utilizadas:
<ul>
  <li>Ruby</li>
  <li>VS Code</li>
  <li>Git</li>
  <li>CMD</li>
  <li>Github</li>
</ul>

# Referências utilizadas:
<ul>
  <li>https://github.com/site-prism/site_prism</li>
  <li>https://nandovieira.com.br/openstruct-no-ruby-dois-ponto-zero#:~:text=A%20classe%20OpenStruct%20permite%20criar,ir%C3%A1%20gerar%20um%20atributo%20equivalente.</li>
  <li>https://www.youtube.com/watch?v=nh-tU29Tm8s&ab_channel=Iterasys</li>
  <li>https://github.com/ServeRest/ServeRest</li>
  <li>https://medium.com/cwi-software/automatizando-testes-de-aplica%C3%A7%C3%B5es-web-com-capybara-e-selenium-webdriver-8e630c7f6f03</li>
</ul>

# Autor
<p>Bruno Guimarães dos Santos</p>

# Agradecimentos:
<p>Willian Soares da Silva</p>
<p>Christian Oliveira da Silva</p>
<p>Eliane da Silva Freitas</p>