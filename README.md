
Installation
-----------
Após o download do repositório, acessar a pasta Docker dentro de CloudOpss (sendo necessário ja ter o docker instalado e configurado em sua máquina)
Inicialmente:
```
sudo docker network create my-net
```
Após isso iremos iniciar nosso container:
```
sudo  docker run -p localhost:8080:8080 -it ubuntu-18 
```
O próximo passo deve ser realizado no terminal HOST(e não no bash do container ubuntu) para copiar os arquivos necessários para dentro do nosso docker

```
docker cp ../../CloudOpss/ "ID-DO-CONTAINER":/ 
```
Feito isso acessamos o bash do container Ubuntu:

```
cd /CloudOpss/
```
Agora iremos rodar o script que instala automaticamente, e sobe nossa aplicação configurando tudo que é necessário:

```
sh startArquiteturaMicroservices.sh
```
Utilizando Aplicação
--------------------

1 - Acessar o Portal

    http://localhost:8080/portal/login.xhtml

2 - Logar no sistema

    email: teste@gmail.com
    senha: 123



Contributing
------------

See [Contributing](CONTRIBUTING.md).
