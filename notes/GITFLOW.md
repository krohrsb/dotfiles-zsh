# Gitflow Workflow

A rough flow of events could be:

```
$ git flow feature start myfeature
# change files
$ git add .
$ git commit -m "my stuff"
$ git flow feature rebase myfeature [-i]
$ git flow feature finish myfeature
$ git pull --rebase
$ git push
```
