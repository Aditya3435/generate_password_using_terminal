# Generate Passwords using Terminal

This shell script generates random passwords for you.

## Installation

Clone the repository using following command:

```bash
git clone https://github.com/Aditya3435/generate_password_using_terminal
cd generate_password_using_terminal
chmod +x passwordGenerator.sh
```

Finally run the script using following command:

```bash
./passwordGenerator.sh
```

## Usage

```bash
./passwordGenerator.sh password_length password_counts

# Returns 2 random passwords of length 10
./passwordGenerator.sh 10 2

# Returns 1 random passwords of length 10 (default: password_count = 1)
./passwordGenerator.sh 10

# Returns 1 random passwords of length 8 (default: password_count = 1, password_length = 8)
./passwordGenerator.sh

#passing no argument will always return 1 password with length of 8.

```

## Contributing

Pull requests are welcome. For major changes, please open an issue first
to discuss what you would like to change.

Please make sure to update tests as appropriate.

Authored by [Aditya](https://github.com/Aditya3435/)

## License

[MIT](https://choosealicense.com/licenses/mit/)
