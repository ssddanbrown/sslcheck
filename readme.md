# sslcheck

A simple php script to check the expiry of SSL certificates.

<a href="https://asciinema.org/a/105703" target="_blank"><img src="https://asciinema.org/a/105703.png" width="480"/></a>

### Requirements

* PHP (Including CLI support).
* OpenSSL

This script has been tested only on Ubuntu 16.04+ using PHP7.

### Usage

1. Clone this repo or simply download the `sslcheck` file.
2. Ensure the `sslcheck` file is executable (`chmod a+x sslcheck`).
3. Execute the script `./sslcheck www.example.com`.

If you can't execute the script directly you may need to envoke the script via php (`php sslcheck www.example.com`);

You can check mutiple domains by listing them all out when running the script:

```
sslcheck www.google.com www.example.com www.github.com
```

#### Usage via Email

The file `email-example.sh` is a simple script showing how this can be used via email. Simply read the comments at the top of the script and change the configuration variables to set it up. If the `mail` command is not available on your system you may need to install it (ubuntu: `sudo apt-get install mailutils`). A good idea would be to set this up as a cron job to send a weekly report.

