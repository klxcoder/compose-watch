# docker compose up -d

```bash
(base) ┌──(klx㉿kali)-[~/compose-watch] (main)
└─$ docker compose up --watch
[+] Running 2/2
 ✔ Network compose-watch_default  Created    0.1s 
 ✔ Container compose-watch-app-1  Created    0.0s 
        ⦿ Watch enabled
Attaching to app-1
app-1   | yarn run v1.22.22
app-1   | $ nodemon src/index.js
app-1   | [nodemon] 3.1.9
app-1   | [nodemon] to restart at any time, enter `rs`
app-1   | [nodemon] watching path(s): *.*
app-1   | [nodemon] watching extensions: js,mjs,cjs,json
app-1   | [nodemon] starting `node src/index.js`
app-1   | Non-root server is running on http://localhost:3000
        ⦿ Syncing service "app" after 1 changes were detected
app-1   | [nodemon] restarting due to changes...
app-1   | [nodemon] starting `node src/index.js`
app-1   | Hot-Reload server is running on http://localhost:3000
        ⦿ Watch disabled
Gracefully stopping... (press Ctrl+C again to force)
[+] Stopping 1/1
 ✔ Container compose-watch-app-1  Stopped       0.1s 
   
(base) ┌──(klx㉿kali)-[~/compose-watch] (main)
└─$ docker compose down      
[+] Running 2/2
 ✔ Container compose-watch-app-1  Removed       0.0s 
 ✔ Network compose-watch_default  Removed       0.5s 
   
(base) ┌──(klx㉿kali)-[~/compose-watch] (main)
└─$ 
```

# Note

- Support `Hot Reload`
- Edit `src/index.js` will reload the app, thanks to nodemon
- Edit `package.json`, `Dockerfile`, `compose.yaml` will rebuild the app, thanks to `docker compose up --watch`
