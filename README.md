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
<mark>
if [ "$(id -u)" -eq 0 ]; then
    echo "Running as root!"
else
    echo "NOT running as root!"
fi
</mark>

