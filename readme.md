# sslcheck

A simple php script to check the expiry of SSL certificates.

### Requirements

* PHP (Including CLI support).
* OpenSSL

This script has been tested only on Ubuntu 16.04+ using PHP7.

### Usage

1. Clone this repo or simply download the `sslcheck` file.
2. Ensure the `sslcheck` file is executable (`chmod a+x sslcheck`).
3. Execute the script `./sslcheck www.example.com`.

If you can't execute the script directly you may need to envoke php (`php sslcheck www.example.com`);

You can check mutiple domains by listing them all out when running the script:

```
sslcheck www.google.com www.example.com www.github.com
```

