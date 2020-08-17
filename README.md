# AvaliacaoAsp

Site criado em ASP.NET Web Forms como avaliação de conhecimento.

### Requisitos

Por trabalhar com servidor local, voce deve ter instalado o SQL Server no Visual Studio.

### Utilização

Na primeira abertura da solução, voce deve atualizar os pacotes NuGet e depois atualizar a base de dados pelo console do gerenciador de pacotes NuGet com:

>Update-Database

Se voce receber um erro na inicialização "Could not find a part of the path … bin\roslyn\csc.exe", execute o comando:

>Update-Package Microsoft.CodeDom.Providers.DotNetCompilerPlatform -r

## Informação da aplicação

O projeto se baseia de um site com um formulário para cadastro de Aplicações Web. Nele contém uma tabela com todas as informações das aplicações cadastradas no banco de dados.
O projeto foi feito com base no Entity Framework. Toda a interação com o banco de dados SQL é feita através de um DbContext chamado de Contexto.

#### Classe Aplicacao
|Campo | Valor |
-------|--------|
Id     | int |
Nome| string |
Descricao| string|
Data| DateTime |
Status| enum : byte |
Email| string |


#### DbAplicacao
|Campo | Valor |
-------|--------|
Id| PK int not null|
Nome| nvarchar(50) not null|
Descricao | nvarchar(250) null|
Data | datetime not null |
Status| tinyint not null|
Email | nvarchar(50) null|
