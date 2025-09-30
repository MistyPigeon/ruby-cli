# ruby-cli

This project is a Ruby command-line tool for generating new Ruby gem packages.It supports custom licensing, gemspec, README, lib, test folders, git initialization, and more.

## Features
- Scaffold a new Ruby gem project with a single command
- Specify output directory for the gem
- Optionally generate a Gemfile with the `--gem` flag
- Includes your custom Misty Foundation License 1.0
- Initializes a git repository and makes the first commit

## Usage

Run the CLI with:

```sh
ruby main.rb make GEM_NAME [--out DIR] [--gem]
```

- `GEM_NAME`: The name of your new gem
- `--out DIR`: (Optional) Output directory for the gem (default: current directory)
- `--gem`: (Optional) Generate a Gemfile document in the gem

Example:

```sh
ruby main.rb make my_gem --out /home/user/projects --gem
```

## Generated Structure

- `GEM_NAME/`
	- `GEM_NAME.gemspec`
	- `README.md`
	- `LICENSE` (Misty Foundation License 1.0)
	- `Gemfile` (if `--gem` is used)
	- `lib/GEM_NAME.rb`
	- `test/test_GEM_NAME.rb`

## License

All generated gems use the Misty Foundation License 1.0. See the LICENSE file in each gem for details.
