Towboat
=======

Simple CLI to communicate w DigitalOcean API.

NO heavy script-interpreters required !

## Usage

First set env var DO_TOKEN ;
    
    # smart to put this into ~/.bashrc
    export DO_TOKEN={my_token_from_api_settings}

### Help

   ./towboat help
   
will give you ;

   usage: ./towboat [post] <resource>

   resource: 

     help|usage
     droplets
     regions
     keys
     images
     images_user

## Dependencies

  * jq
  * curl
  * awk/sed

Debian/Mint way to get these;

    apt-get install jq curl


