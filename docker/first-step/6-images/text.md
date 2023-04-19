### Docker images

> Précédemment nous avons lancé les containers **hello1** et **hello2**.

Pour savoir quelles sont les images disponibles sur la machine, vous pouvez utiliser la commande Docker `images`{{}}.

```
docker images
```{{exec}}

Vous pouvez récupérer une image (ou récupérer une version plus récente) à l'aide de la commande `pull`{{}}.

```
docker pull rancher/hello-world:latest
```{{exec}}

Avant de pouvoir supprimer une image, il faut que tous les containers qui l'utilisent soient supprimés.
```
docker stop hello1
docker stop hello2
docker rm hello1
docker rm hello2
```{{exec}}

Pour supprimer une image de l'instance Docker, utilisez la commande `rmi`{{}}
```
docker rmi rancher/hello-world
docker images
```{{exec}}