Towboat
=======

Simple CLI to communicate w DigitalOcean API

NO heavy script-interpreters required , just POSIX

## Dependencies

  * jq
  * curl
  * awk/sed

Debian/Mint way to get these;

    $ apt-get install jq curl

## Usage

First set env var DO_TOKEN ;
    
    # smart to put this into ~/.bashrc
    export DO_TOKEN={my_token_from_api_settings}


    $ ./towboat help
   
will return ;

    usage: ./towboat [post] <resource>

    resource: 

      help|usage
      droplets
      regions
      keys
      images
      images_user

Delete is not supported, and the field selection is just *HIGHLY OPINIONATED*

### Reading

To read (GET) a resource-list, just skip 'post' in command ;

    $ ./towboat droplets

    ..long 
    long..
    list..
   
### Posting

To create new (sample) resource ;

    # Creates a new DROPLET in DigitalOcean CLOUD !!
    $ cat sample-droplet.json | ./towboat post droplets

### Filters

It's possible to filter the 'droplets' output further like this ;

    $ . ./dro.filters
    $ ./towboat droplets | region ams1 | priv_ips | json_str_list
    $ ./towboat droplets | publ_ips | json_str_list

### DASH *Singleline* Sample

    . ./dro.filters; \
    ./towboat droplets \
      | region ams3 | tee /tmp/ds.txt \
      | priv_ips | json_str_list > /tmp/priv_ips.json && \
    cat /tmp/ds.txt | publ_ips > /tmp/publ_ips.txt
