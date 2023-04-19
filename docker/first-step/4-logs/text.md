### Docker logs

> Précédement nous avons lancé les containers **hello1** et **hello2**.

Vous avez donc compris que Docker permet de lancer des applications sans être installé directement sur votre machine mais dans un container (une sorte de VM light).

Lancer l'application c'est bien, mais il y a besoins d'accéders à des informations autour de l'application qui tourne dans le container. Par exemple: les **logs**.

Pour accéder aux logs du terminal, vous pouvez utiliser la commande `logs`{{}}.

```
docker logs hello1
```{{exec}}
