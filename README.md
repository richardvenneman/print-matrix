# Print Matrix

> A class to print all entries in a matrix, but spiral-wise...

## Prerequisites

1. Install Ruby 2.7.1 with rbenv, chruby or rvm
2. Install Bundler
3. Run `bundle install`

## Usage

Initialise a new instance of `PrintMatrix` with the matrix data as a multidimensional array. Then use `#output` to print the spiral-wise entries:

```ruby
data = [
  [1, 2, 3, 4, 5, 6, 7, 8],
  [9, 10, 11, 12, 13, 14, 15, 16],
  [17, 18, 19, 20, 21, 22, 23, 24]
]

matrix = PrintMatrix.new(data)

puts matrix.output
# => 1 2 3 4 5 6 7 8 16 24 23 22 21 20 19 18 17 9 10 11 12 13 14 15
```

Additionally, use `#input` to print a table representation of the input.
Use `#print` to print both the input and the output.

## Testing

Run the tests with:

```shell
rake
```
