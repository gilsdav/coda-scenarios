### Docker run

La commande docker `run`{{}} permet de lancer un container sur base d'une image.

Vous pouvez trouver la documentation <a href="https://docs.docker.com/engine/reference/run/" target="_blank">ici</a>.

Commençons par démarrer une image hello world:
```
docker run -p 80:80 --name hello rancher/hello-world:latest
```{{exec}}

Testez l'application via [accéder au hello worlds]({{TRAFFIC_HOST1_80}})

Comme vous pouvez le remarquer le container travail en avant plan (en gardant votre terminal captif). Pour le lancer en arrière plan, utilisez le flag `-d`{{}}. Vous pouvez stoper la commande précédente à l'aide des couches `ctrl + c`{{}}

```
docker run -p 80:80 --name hello -d rancher/hello-world:latest
```{{exec interrupt}}

En exécutant cette commande directement après la première vous recevrez une erreur indiquant que le container avec le nom "hello" existe déjà.

Pour supprimer un container existant, vous devrez utiliser la commande `rm`{{}}.
```
docker rm hello
```{{exec}}

Retestez la commande avec le `-d`{{}} après celle-ci.

Pour vérifier que le container est bien lancé vous pouvez utiliser la commande `ps`{{}}

```
docker ps
```{{exec}}
