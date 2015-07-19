Towboat
=======

Simple CLI to communicate w DigitalOcean API.

NO heavy script-interpreters required , just (soon standard util) jq,curl and POSIX.

## Usage

First set env var DO_TOKEN ;
    
    # smart to put this into ~/.bashrc
    export DO_TOKEN={my_token_from_api_settings}


    ./towboat help
   
will return ;

    usage: ./towboat [post] <resource>

    resource: 

      help|usage
      droplets
      regions
      keys
      images
      images_user


To read (GET) a resource-list just skip 'post' in command ;

   ./towboat droplets

   ..long list..

And to create new (sample) resource ;

    cat sample-droplet.json | ./towboat post droplets

### Filters

It's possible to filter the droplets-list further like this ;

    . ./dro.filters
    ./towboat droplets | region ams1 | priv_ips | json_list
    ./towboat droplets | publ_ips | json_list

## Dependencies

  * jq
  * curl
  * awk/sed

Debian/Mint way to get these;

    apt-get install jq curl


