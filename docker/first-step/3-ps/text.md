### Docker ps

Pour tester la commande ps, nous aurons a nouveau besoin de deux containers. Créez les:
```
docker run -p 80:80 --name hello1 -d rancher/hello-world:latest
docker run -p 81:80 --name hello2 -d rancher/hello-world:latest
```{{exec}}

Comme nous l'avons vu plus tôt, vous pouvez voir la liste des containers via un simple `ps`{{}}.
```
docker ps
```{{exec}}

Stopez maintenant le premier container:
```
docker stop hello1
docker ps
```{{exec}}

Après un nouveau `ps`{{}}, vous pouvez voir qu'il n'y a plus qu'un container alors que vous ne l'avez pas supprimé. En effet, par défaut, seuls les containers en cours d'exécution sont montrés. Pour voir tous les containers, vous ajouter le flag `-a`{{}} 
```
docker ps -a
```{{exec}}

Si vous souhaitez maintenant relancer le container qui a été stoppé, vous pouvez utiliser la commande `start`{{}}. En effet `run`{{}} crée un container et le lance alors que `start`{{}} ne fait que lancer un container déjà existant.
```
docker start hello1
docker ps
```{{exec}}
