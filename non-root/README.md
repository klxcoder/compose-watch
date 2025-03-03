# Explain Dockerfile

`RUN useradd -ms /bin/sh -u 1001 app`:
  - Creates a `non-privileged user` named `app` with `UID` `1001`.
  - The `-ms /bin/sh` creates a `home directory` and assigns a `default shell`.

USER app:
  - Switches to the `app` user, so any following instructions will run under this user, not as `root`

# docker compose up -d

```bash
(base) ┌──(klx㉿kali)-[~/docker-non-privileged/non-root] (main)
└─$ docker compose up -d
[+] Running 2/2
 ✔ Network non-root_default  Created     0.2s 
 ✔ Container non-root-app-1  Started     0.3s 

(base) ┌──(klx㉿kali)-[~/docker-non-privileged/non-root] (main)
└─$ 
```

# List all users and its group id

```bash
(base) ┌──(klx㉿kali)-[~/docker-non-privileged/non-root] (main)
└─$ docker exec -it non-root-app-1 awk -F: '{print $1, $4}' /etc/passwd
root 0
daemon 1
bin 2
sys 3
sync 65534
games 60
man 12
lp 7
mail 8
news 9
uucp 10
proxy 13
www-data 33
backup 34
list 38
irc 39
_apt 65534
nobody 65534
node 1000
app 1001

(base) ┌──(klx㉿kali)-[~/docker-non-privileged/non-root] (main)
└─$ 
```

# whoami

```bash
(base) ┌──(klx㉿kali)-[~/docker-non-privileged/non-root] (main)
└─$ docker exec -it non-root-app-1 whoami                              
app

(base) ┌──(klx㉿kali)-[~/docker-non-privileged/non-root] (main)
└─$
```