# Quick Start

## Step 1: Install mx-eternity

### Step 1.1: Install Rust

`curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh`

For other systems check out https://rustup.rs/

### Step 1.2: Install eternity

1. `git clone https://github.com/mx-eternity/mx-eternity`
2. `cd eternity`
2. `cargo install`

## Step 2: Setup the folder structure

This step is currently required to be done manually. In the future there will be a cli sub command to generate the folder structure and a example configuration.

```
│── plugins
│   │
│   └── # Contains all plugins. Usually a folder containing a plugin config and a wasm file.
│── config.yml # The general config to configure eternity
│── state # The folder where the state gets stored into. This might get autogenerated but you should create it first to be on the save side.
```

Eternity will try to load all plugins in the plugins folder. Currently the only way to deactivate them is to move them to another folder

## Step 3: Fill the configuration with the essential fields

See also the [Config Reference]({{< relref "/docs/user/config_reference" >}})

```yaml
plugins_path: "./plugins"

matrix:
  username: "<Bot MXID>"
  access_token: "<Access Token>"
  homeserver_url: "https://<Homeserver domain>"
  store_path: "./store"
```

## Step 4: Define a simple flow
TODO

## Step 5: Run eternity

To run eternity you simply can execute `eternity`. Keep in mind that all config folders that are relative are relative to the folder where eternity was started in.