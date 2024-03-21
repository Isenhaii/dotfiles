## Package installs

The objective for this section was to install the following:

- `dnsutils` (to get `dig`) 
- `nmap`
- `anaconda` 
- `cmatrix`

Below are the basic rules for this section:

1. Check if running as `root`
2. Check for `apt` package manager
3. Install things above
4. Determine how to run remainder of taskings as non-root so that the right ownership is applied

1. To check if the script is running as root, I came up with the following code:
```
if [ "$(id -u)" -eq 0 ]; then
    echo "Running as root!"
else
    echo "NOT running as root!"
fi
```
This code snippet uses the id -u command to get the user ID, and if the ID is equal to 0 (which is the ID of the root user), it prints "Running as root!". Otherwise, it prints "NOT running as root!". 
