# Obtendo o software necessário e preparando ambiente

## 1. 7-zip (para máquinas rodando windows) 

Baixe e instale o 7-zip

https://www.7-zip.org/

## 2. Cygwin (para máquinas rodando windows)

Baixe e instale o Cygwin

https://cygwin.com/setup-x86_64.exe

## 3. Git

Baixe e instale o Git

https://git-scm.com/download/win

Para verificar sua instalação acesse o teminal do Cygwin e execute:
```
$ git --version
```
O retorno deverá ser algo como:
```
$ git --version
git version 2.17.0.windows.1
```
## 5. Visual Studio Code

Baixe e instale o Visual Studio Code

https://code.visualstudio.com/download

## Nota importante sobre as Variáveis de ambiente

No Cygwin, para definir corretamente as variáveies de ambiente, deve-ser remover o C: e substituir as barras invertidas, por exemplo, C:\Program Files\Java\jdk1.8.0_171 deve ser informado como /Program Files/Java/jdk1.8.0_171.

## 6. Java

Baixe e instale o Java JDK 1.8 utilizando as opções padrão.

http://www.oracle.com/technetwork/java/javase/downloads/jdk8-downloads-2133151.html

Para verificar sua instalação acesse o teminal do Cygwin e execute:

$ java -version

O retorno deverá ser algo como:

$ java -version
java version "1.8.0_171"
Java(TM) SE Runtime Environment (build 1.8.0_171-b11)
Java HotSpot(TM) Client VM (build 25.171-b11, mixed mode)

## 7. Criando a estrutura de pastas padrão para este treinamento

Acesse o terminal Cygwin e digite:

$ mkdir -p /projetos/
$ mkdir -p /projetos/opt

### Copiando o Java para Cygwin

Copie a pasta C:\Program Files\Java\jdk1.8.xxx para C:\cygwin\projetos\opt.

### Definindo o JAVA_HOME

A variável JAVA_HOME indica onde o caminho físico da instalação do JDK. Por exemplo, "C:\Program Files\Java\jdk1.6.0_17". Para definir o JAVA_HOME abra o arquivo .bash_profile em "C:\cygwin\home\NOME_USUARIO" e acrescente as seguintes linhas no final do arquivo, de acordo com o caminho do java instalado em sua máquina:

JAVA_HOME="/projetos/opt/jdk1.8.xxx"

Para testar, feche o terminal do Cygwin e abra-o novamente. então digite:

$ echo $JAVA_HOME

O retorno deverá ser algo como:

$ echo $JAVA_HOME
/projetos/opt/jdk1.8.xxx

## 6. Maven

Baixe o arquivo http://ftp.unicamp.br/pub/apache/maven/maven-3/3.5.3/binaries/apache-maven-3.5.3-bin.zip. E o descompacte em C:\cygwin\projetos\opt.

### Criando o MVN_HOME

Abra o arquivo .bash_profile em "C:\cygwin\home\NOME_USUARIO" e acrescente as seguintes linhas no final do arquivo, de acordo com o caminho do Maven instalado em sua máquina:

MVN_HOME=/projetos/opt/apache-maven-xxx

Para testar, feche o terminal do Cygwin e abra-o novamente. então digite:

$ echo $MVN_HOME

O retorno deverá ser algo como:

$ echo $MVN_HOME
/projetos/opt/apache-maven-3.5.3-bin

## 7. Definindo o PATH

A variável PATH corretamente configurada permite acessar os comandos mvn e java de qualquer diretório. Para fazer essa configuração abra o arquivo .bash_profile em "C:\cygwin\home\NOME_USUARIO" e acrescente as seguintes linhas no final do arquivo:

PATH=$PATH:$JAVA_HOME/bin:$MVN_HOME/bin

Para testar, feche o terminal do Cygwin e abra-o novamente. então digite:

$ java --version

O retorno deverá ser algo como:

$ java -version
java version "1.8.0_171"
Java(TM) SE Runtime Environment (build 1.8.0_171-b11)
Java HotSpot(TM) Client VM (build 25.171-b11, mixed mode)

e 

$ mvn -version

O retorno deverá ser algo como:

$ mvn -version
Apache Maven 3.5.3 (3383c37e1f9e9b3bc3df5050c29c8aff9f295297; 2018-02-24T16:49:05-03:00)
Maven home: C:\cygwin\projetos\opt\apache-maven-3.5.3
Java version: 1.8.0_171, vendor: Oracle Corporation
Java home: C:\cygwin\projetos\opt\jdk1.8.0_171\jre
Default locale: pt_BR, platform encoding: Cp1252
OS name: "windows 7", version: "6.1", arch: "x86", family: "windows"

## 8. Eclipse

Baixe o arquivo http://www.eclipse.org/downloads/download.php?file=/technology/epp/downloads/release/oxygen/3a/eclipse-jee-oxygen-3a-win32-x86_64.zip e o descompante em C:\cygwin\projetos\opt.

## 9. Wildfly

Baixe o arquivo http://download.jboss.org/wildfly/12.0.0.Final/wildfly-12.0.0.Final.zip e o descompacte em C:\cygwin\projetos\opt;

# Baixando os projetos

Abra o terminal Cygwin e digite

$ cd /projetos/
$ git clone https://github.com/jfnasc/treinamento


