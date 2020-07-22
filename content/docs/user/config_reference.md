# Config File Reference

The config file is defined in yaml. Below is a example file. The table explains what each variable does.

## Example Config

```yaml
plugins_path: "./plugins"

matrix:
  username: "@bot:example.com"
  access_token: ""
  homeserver_url: "https://example.com"
  store_path: "./store"
```

## Refernce

### Root

| Key           | Description                                           |
| ------------- | ----------------------------------------------------- |
| plugins_path  | Path to a folder which contains the plugin wasm files |
| matrix        | See [Matrix](#matrix)                                 |

### Matrix

| Key            | Description                                                                                                     |
| -------------- | --------------------------------------------------------------------------------------------------------------- |
| username       | The Matrix ID of the bot User                                                                                   |
| access_token   | The Matrix access token for the above bot user which allows to talk to the Homeserver                           |
| homeserver_url | The URL of the Homeserver where the Bot user is at. This is often the url after the colon or that url with a `matrix.` subdomain in front. It must contain `https://` in front of it |
| store_path     | This is where the synced data of that user gets cached too. This allows us to not produce the same output twice |