# Plugin Config File Reference

The plugin file is defined in yaml. Below is a example file. The table explains what each variable does.

## Example Flow

```yaml
name: gitlab_plugin
version: 0.1.0
exported_functions:
  - get_issues
  - name: add_issue
    args:
    - repo
    - title
    - text
has_help: true
license: AGPL-3.0-or-later
depndencies: []
```

TODO: plan Database managment

## Reference

### Root

| Key                | Description                                                                                            |
| ------------------ | ------------------------------------------------------------------------------------------------------ |
| name               | An identifier to use with the dependency array in other plugins                                        |
| version            | A semver version of the plugin to identify the version (In the future might make migrations possible)  |
| exported_functions | A list of functions that can be used inside of flows. This is needed as we cant detect the exported functions from the wasm blob. See: [Functions](#functions) for the extended version |
| has_help           | Indicated if the there is a `plugin_help` function available that generates a helptext.                |
| license            | The license identifier of the plugin                                                                   |
| depndencies        | A list of other plugins that are required to be run first. It takes the name of the plugin as a string |

## Functions

This extended format is required if the functions takes arguments and therefor needs to be handled different. It also indicates in what order these arguments should be input by the user.

{{< hint warning >}}
**TODO**  
This is up for discussion as it might be intersting to define what kind of arguments these are (message args, stuff from a dependency, db values, other stuff). Also information if it is optional should be taken in account.
{{< /hint >}}

| Key                | Description                                                             |
| ------------------ | ----------------------------------------------------------------------- |
| name               | The exact name of the function                                          |
| args               | A list of possible arguments in the function to be sent by a user       |