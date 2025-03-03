# docker compose up -d

```bash
(base) ┌──(klx㉿kali)-[~/docker-non-privileged/root] (main)
└─$ docker compose up -d
[+] Running 2/2
 ✔ Network root_default     Created       0.1s 
 ✔ Container root-app-1     Started       0.3s 

(base) ┌──(klx㉿kali)-[~/docker-non-privileged/root] (main)
└─$ 
```

# List all users and its group id

```bash
(base) ┌──(klx㉿kali)-[~/docker-non-privileged/root] (main)
└─$ docker exec -it root-app-1 awk -F: '{print $1, $4}' /etc/passwd
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

(base) ┌──(klx㉿kali)-[~/docker-non-privileged/root] (main)
└─$
```

# whoami

```bash
(base) ┌──(klx㉿kali)-[~/docker-non-privileged/root] (main)
└─$ docker exec -it root-app-1 whoami                              
root

(base) ┌──(klx㉿kali)-[~/docker-non-privileged/root] (main)
└─$
```