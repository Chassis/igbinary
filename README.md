# igbinary

A Chassis extension to install and configure [igbinary](https://www.php.net/manual/en/book.igbinary.php) on your Chassis server.

## Global Installation

We recommend [installing this extension globally](http://docs.chassis.io/en/latest/extend/#globally-installing-extensions) to make it available on every Chassis box.

```
git clone https://github.com/Chassis/igbinary ~/.chassis/extensions/igbinary
```

## Project Installation

1. Add this extension to your extensions directory `git clone git@github.com:Chassis/igbinary.git extensions/igbinary` or alternatively add the following to one of your [`.yaml`](https://github.com/Chassis/Chassis/blob/master/config.yaml) files:
   ```
   extensions:
     - chassis/igbinary
   ```
2. Set your `config.local.yaml` PHP version to 5.6 or higher.
3. Run `vagrant provision`.
