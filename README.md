# docker compose up -d

```bash
(base) ┌──(klx㉿kali)-[~/docker-non-privileged]
└─$ docker compose up -d
[+] Running 2/2
 ✔ Network docker-non-privileged_default   Created    0.1s 
 ✔ Container docker-non-privileged-app-1   Started    0.2s 

(base) ┌──(klx㉿kali)-[~/docker-non-privileged] 
```

# List all users and its group id

```bash
(base) ┌──(klx㉿kali)-[~/docker-non-privileged]
└─$ docker exec -it docker-non-privileged-app-1 awk -F: '{print $1, $4}' /etc/passwd
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

(base) ┌──(klx㉿kali)-[~/docker-non-privileged]
└─$
```

# whoami

```bash
(base) ┌──(klx㉿kali)-[~/docker-non-privileged]
└─$ docker exec -it docker-non-privileged-app-1 whoami                              
root

(base) ┌──(klx㉿kali)-[~/docker-non-privileged]
└─$
```