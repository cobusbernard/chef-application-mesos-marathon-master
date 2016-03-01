# chef-application-mesos-marathon-master-cookbook

Application cookbook that configures a node as a Mesos master with Marathon.

## Supported Platforms

Ubuntu 14.04

## Attributes

<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['chef-application-mesos-marathon-master']['bacon']</tt></td>
    <td>Boolean</td>
    <td>whether to include bacon</td>
    <td><tt>true</tt></td>
  </tr>
</table>

## Usage

### chef-application-mesos-marathon-master::default

Include `chef-application-mesos-marathon-master` in your node's `run_list`:

```json
{
  "run_list": [
    "recipe[chef-application-mesos-marathon-master::default]"
  ]
}
```

## License and Authors

Author:: Cobus Bernard (<me@cobus.io>)
