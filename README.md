# django container

Pré-requisitos:
* docker-compose
* docker (dã!)

Para gerar e executar os containeres, execute o comando
```
docker-compose up --build
```

Observa que se o diretório `data` existir por causa de uma instalação prévia, ele terá que ser apagado, pois o banco de dados PostgreSQL é recriado toda vez que o container é criado. Portanto um simples
```
sudo rm -rf data
```
poderá ser necessário. E se nenhuma alteração for feita, a página principal estára acessível no endereço `172.15.0.3:8000`.

O código fonte da aplicação em Django pode ser editada a partir do subdiretório `server/pdad2021` e tudo que for alterado lá dentro estará automaticamente sincronizado com o container. Além do mais, os scripts `start-shell-db.sh` e `start-shell-django.sh` abrem um terminal direto dentro dos containeres correspondentes (se eles estiverem executando é claro).

O ambiente de depuração é ativado através de variável de ambiente DEBUG com valor 1. Remova ou comente a linha em `server/start.sh` se quiser fazer deploy para produção com gunicorn. E lembre-se de alterar a senha padrão do PostgreSQL no arquivo `docker-compose.yaml` antes de fazer o deploy em produção.
