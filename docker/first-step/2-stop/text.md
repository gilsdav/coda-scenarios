### Docker run

Après la step précédente, vous avez peut-être remarqué que vous ne pouvez plus exécuter la commande `rm`{{}} sur le container **hello**.

En effet il n'est pas possible de supprimer un container qui tourne. Pour cela il va d'abord faloir l'arrêter via la commande `stop`{{}}.

```
docker stop hello
docker rm hello
```{{exec}}
