# gherkin-lint-action

A GitHub Action to parse feature files and run linting against the default rules, and the optional rules you specified in your `.gherkin-lintrc` file.

## Usage

Add `.github/workflows/lint.yml` with the following contents:

```yaml
name: lint
on:
  push:
    tags:
      - v*
    branches:
      - master
      - main
  pull_request:
jobs:
  lint:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v2

      - name: gherkin-lint
        uses: nhatthm/gherkin-lint-action@v1
        with:
          # Optional: Version of gherkin-lint to use in the `npm install -g gherkin-lint` command. Default to `latest`.
          # version: latest

          # Optional: Comma separated list of feature files/glob patterns. Default to current working directory.
          feature_files: features/*

          # Optional: Use a custom configuration file instead of the default one.
          # config_file: .gherkin-lintrc

          # Optional: Output format. Possible values: json, stylish, xunit. Default to `stylish`.
          # format: stylish

          # Optional: Comma seperated list of files/glob patterns that the linter should ignore, overrides .gherkin-lintignore file
          # ignore:

          # Optional: Comma seperated list of additional rule directories
          # rule_dirs:
```

To specify some rule you can add a configuration file `.gherkin-lintrc` into your project folder.
If you don't specify anything, the [default ruleset](.gherkin-lintrc) is used.

See the [list of available rules](https://github.com/vsiakka/gherkin-lint#available-rules).

## Donation

If this project help you reduce time to develop, you can give me a cup of coffee :)

### Paypal donation

[![paypal](https://www.paypalobjects.com/en_US/i/btn/btn_donateCC_LG.gif)](https://www.paypal.com/donate/?hosted_button_id=PJZSGJN57TDJY)

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;or scan this

<img src="https://user-images.githubusercontent.com/1154587/113494222-ad8cb200-94e6-11eb-9ef3-eb883ada222a.png" width="147px" />
