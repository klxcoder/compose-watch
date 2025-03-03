# Explain Dockerfile

`RUN useradd -ms /bin/sh -u 1001 app`:
  - Creates a `non-privileged user` named `app` with `UID` `1001`.
  - The `-ms /bin/sh` creates a `home directory` and assigns a `default shell`.

`USER app`:
  - Switches to the `app` user, so any following instructions will run under this user, not as `root`

`COPY --chown=app:app ./src ./src`:
  - Copies the source code into the `/app/src` directory and ensures it is owned by the `app user and group`, for security

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

# List files

```bash
(base) ┌──(klx㉿kali)-[~/docker-non-privileged/non-root] (main)
└─$ docker exec -it non-root-app-1 pwd      
/app

(base) ┌──(klx㉿kali)-[~/docker-non-privileged/non-root] (main)
└─$ docker exec -it non-root-app-1 ls -l    
total 36
drwxr-xr-x 70 app  app   4096 Mar  3 14:30 node_modules
-rw-rw-r--  1 root root   139 Mar  3 14:22 package.json
drwxr-xr-x  2 app  app   4096 Mar  3 14:34 src
-rw-rw-r--  1 root root 21747 Mar  3 14:21 yarn.lock

(base) ┌──(klx㉿kali)-[~/docker-non-privileged/non-root] (main)
└─$ docker exec -it non-root-app-1 ls -l src
total 4
-rw-rw-r-- 1 app app 312 Mar  3 14:32 index.js

(base) ┌──(klx㉿kali)-[~/docker-non-privileged/non-root] (main)
└─$ 
```

# Logs

```bash
(base) ┌──(klx㉿kali)-[~/docker-non-privileged/non-root] (main)
└─$ docker logs non-root-app-1              
Non-root server is running on http://localhost:3000

(base) ┌──(klx㉿kali)-[~/docker-non-privileged/non-root] (main)
└─$ 
```