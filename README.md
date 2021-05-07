# django container

Para gerar e executar os containeres em modo teste, execute o comando:
```
docker-compose up --build
```

Para executar os containeres em modo de produção, execute o comando:
```
docker-compose up 
```

O código fonte da aplicação em Django pode ser editada a partir do subdiretório `server/pdad2021` e tudo que for alterado lá dentro estará automaticamente sincronizado com o container. Além do mais os scripts `start-shell-db.sh` e `start-shell-django.sh` abrem um terminal direto dentro dos containeres correspondentes.
