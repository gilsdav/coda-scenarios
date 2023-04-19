### Docker exec

> Précédemment nous avons lancé les containers **hello1** et **hello2**.

Vous avez maintenant accès aux logs, mais pour du debugging vous voudrez probablement parfois accéder à des fichiers que l'application modifie ou crée.

Pour entrer dans un container qui est lancé, vous devez utiliser la commande `exec`{{}}.

```
docker exec -it hello1 /bin/bash
ls
```{{exec}}

Pour sortir du terminal de container utilisez la commande Linux `exit`{{}}.

```
exit
```{{exec}}

Un fichier vous intéresse et vous voulez l'extraire du container ? Utilisez la commande Docker `cp`{{}}.

```
docker cp hello1:/opt/hello-world/rancher-logo.svg ./
ls
```{{exec}}

Or you can upload something into the container.

```
docker cp ./test.txt hello1:/opt/hello-world/
docker exec -it hello1 ls
```{{exec}}
