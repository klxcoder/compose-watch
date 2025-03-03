# docker compose up -d

```bash
(base) ┌──(klx㉿kali)-[~/compose-watch] (main)
└─$ docker compose up         
Compose now can delegate build to bake for better performances
Just set COMPOSE_BAKE=true
[+] Building 1.8s (12/12) FINISHED   0.0s
[+] Running 3/3
 ✔ app                            Built     0.0s 
 ✔ Network compose-watch_default  Created   0.1s 
 ✔ Container compose-watch-app-1  Created   0.0s 
Attaching to app-1
app-1  | yarn run v1.22.22
app-1  | $ nodemon src/index.js
app-1  | [nodemon] 3.1.9
app-1  | [nodemon] to restart at any time, enter `rs`
app-1  | [nodemon] watching path(s): *.*
app-1  | [nodemon] watching extensions: js,mjs,cjs,json
app-1  | [nodemon] starting `node src/index.js`
app-1  | Non-root server is running on http://localhost:3000
```

# Note

- Not support `Hot Reload` yet