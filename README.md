
# Subdomain Finder

This script retrieves subdomains for a given domain using the certificate transparency logs from [crt.sh](https://crt.sh) and saves them to a file.

## Features

- Fetches subdomains from crt.sh
- Filters and displays unique subdomains
- Saves results to a text file for later use

## Prerequisites

- **Bash**: The script is written in Bash, so a Linux, macOS, or Windows environment with Bash support is required.
- **curl**: Ensure `curl` is installed on your system.
- **grep**: The script uses `grep` for pattern matching.
- **sort**: The script uses `sort` for sorting and deduplication.
- Internet connection to access [crt.sh](https://crt.sh).

## Installation

1. Clone this repository:
   ```bash
   git clone https://github.com/yourusername/subdomain-finder.git
   cd subdomain-finder
   ```
2. Ensure the script is executable:
   ```bash
   chmod +x subdomain-finder.sh
   ```

## Usage

Run the script with a domain name as the input.

```bash
DOMAIN=example.com ./subdomain-finder.sh
```

### Explanation:
- Replace `example.com` with your target domain.
- The results will be displayed on the screen and saved to a file named `<domain>_subdomains.txt`.

## Output

- The script generates a file named `<DOMAIN>_subdomains.txt` containing all the unique subdomains found.

## Example

```bash
DOMAIN=example.com ./subdomain-finder.sh
```

Output:
```
www.example.com
mail.example.com
api.example.com
```

Saved file: `example.com_subdomains.txt`

## Limitations

- The script depends on the format of [crt.sh](https://crt.sh). If their website structure changes, the script might need updates.
- Only works for domains with subdomains listed in certificate transparency logs.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

## Contributing

Pull requests are welcome! Please open an issue first to discuss any major changes.

## Disclaimer

Use this script responsibly and ensure you have permission to analyze any domains that are not your own.
