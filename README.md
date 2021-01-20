```
 _________________________________________
/ Help! I haven't written a README so all \
| my colleagues are forced to look at this |
\ scary dinosaur with a top hat!!!        /
 -----------------------------------------
\                             .       .
 \                           / `.   .' "
  \                  .---.  <    > <    >  .---.
   \                 |    \  \ - ~ ~ - /  /    |
         _____          ..-~             ~-..-~
        |     |   \~~~\.'                    `./~~~/
       ---------   \__/                        \__/
      .'  O    \     /               /       \  "
     (_____,    `._.'               |         }  \/~~~/
      `----.          /       }     |        /    \__/
            `-.      |       /      |       /      `. ,~~|
                ~-.__|      /_ - ~ ^|      /- _      `..-'
                     |     /        |     /     ~-.     `-. _  _  _
                     |_____|        |_____|         ~ - . _ _ _ _ _>
```

# How To Use

This default repo configuration comes ready made with the ability to build and
push a docker image. To use this function, please ask an administrator to add
the `RAPTOR_KEY` secret to your repo, and everything will work as expected.

If you need access to the cluster to write secrets please ask an admin to add
you to the Blackbox Keyring so that you can encrypt information to be used later
in the workflow. To use decrypted data in a GitHub action, see
[Velociraptor](https://github.com/sevenmind/velociraptor).

## Adding Tags to existing Repo

To add common tags to your GitHub project, you can either clone this repo and
retrieve the `.github/settings.yml` file or download the same from GitHub.

Unfortunately GitHub does not currently support `git archive` so there is no
clear one line command to do this.

---

If you do not wish to use some of these features they can be removed with the
following commands:

## Remove Docker

If your project does not use docker remove it by running

```sh
rm .dockerignore Dockerfile .github/*.gpg .github/main.workflow && \
  git commit -am 'Remove docker from default repo config'
```

## Remove Blackbox

To deconsecrate your repo, remove the following files.

```sh
rm -rf **/*.gpg keyrings && \
  git commit -am 'Deconsecrate repo'
```


```
                                  _____
                                 |___  |
                                    / /
                                   / /
                                  /_/
```
