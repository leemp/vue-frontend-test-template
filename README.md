# Vue app

## Project setup
```
npm install
```

### Compiles and hot-reloads for development
```
npm serve
```

### Compiles and minifies for production
```
npm build
```

### Lints and fixes files
```
npm lint
```

# API Backend

## Start Directus

```
CONFIG_PATH="./directus.env" npx directus start
```

## Log In

Open: `http://localhost:8055`

User: `admin@example.com` 
Password: `password12`

## Explore The API

GET on `data_groups`

```
curl http://localhost:8055/items/data_groups
```

GET on `record_groups`

```
curl http://localhost:8055/items/record_groups
```

Use Directus API Reference:

Get Items: https://docs.directus.io/reference/items/#get-items

Get Item by ID: https://docs.directus.io/reference/items/#get-item-by-id

Create an Item: https://docs.directus.io/reference/items/#create-an-item

Update an Item: https://docs.directus.io/reference/items/#update-an-item


## Expose the Backend

Should you use Ngrok https://ngrok.com/ 

Or Bore https://github.com/ekzhang/bore

Or LocalTunnel https://github.com/localtunnel/localtunnel


```
npx localtunnel --port 8055
```

# Start Coding!