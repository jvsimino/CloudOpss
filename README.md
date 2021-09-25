
Installation
-----------
Após o download do repositório, acessar a pasta Docker dentro de CloudOpss (sendo necessário ja ter o docker instalado e configurado em sua máquina)
Inicialmente:
```
sudo docker network create my-net
```
Após isso iremos iniciar nosso container:
```
sudo  docker run -it ubuntu-18
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

Contributing
------------

See [Contributing](CONTRIBUTING.md).
