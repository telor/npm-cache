# npm Cache

## Build

```
docker build -t npm-cache --no-cache .
```

## Run

```
docker run -it -p 5080:5080 -p 16984:16984 -v /data -e "BASE_URL=http://$(docker-machine ip dev):5080" --name npm-cache --restart=always npm-cache
```

## Configuration

```
npm set registry http://127.0.0.1:5080
```

Use the following command to switch back to the old default registry.

```
npm set registry https://registry.npmjs.org
```
