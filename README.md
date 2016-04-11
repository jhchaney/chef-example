# chef-example-cookbook

This cookbook is just an example of how to implement an apache web server and mysql database. Specifically, the cookbook will perform the three following tasks

<li>Install apache web server with static content</li>
<li>Install a mysql server</li>
<li>Create a database "test_db" within mysql</li>

## Supported Platforms
This cookbook has been tested on ubuntu and centos
<li>ubuntu</li>
<li>centos</li>
## Attributes

N/A. There are currently no definied attributes. 

## Usage

### chef-example::default

Include `chef-example` in your node's `run_list`:

```json
{
  "run_list": [
    "recipe[chef-example::default]"
  ]
}
```

## License and Authors

Author:: John Chaney (chaney.john@gmail.com)
