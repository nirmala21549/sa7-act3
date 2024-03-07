#!/usr/bin/env python3
import argparse

def convert_units(value, from_unit, to_unit):
    print(f"Converting from {from_unit} to {to_unit}")  # Add this line for debugging
    print(f"from_unit: {from_unit}, to_unit: {to_unit}")  # Add this line for debugging
    if from_unit == "cm" and to_unit == "in":
        return value / 2.54
    elif from_unit == "in" and to_unit == "cm":
        return value * 2.54
    elif from_unit == "lb" and to_unit == "kg":
        return value * 0.453592  
    elif from_unit == "kg" and to_unit == "lb":
        return value / 0.453592
    elif from_unit == "c" and to_unit == "f":
        return (value * 9/5) + 32
    elif from_unit == "f" and to_unit == "c":
        return (value - 32) * 5/9
    else:
        return None

def main():
    parser = argparse.ArgumentParser(description="Unit Converter")
    parser.add_argument("--value", type=float, help="Value to be converted")
    parser.add_argument("--from_unit", type=str, help="Unit of the input value")
    parser.add_argument("--to_unit", type=str, help="Unit to convert to")
    args = parser.parse_args()

    value = args.value
    from_unit = args.from_unit.lower()  # Convert to lowercase
    to_unit = args.to_unit.lower()      # Convert to lowercase

    converted_value = convert_units(value, from_unit, to_unit)
    
    if converted_value is not None:
        print(f"{value} {from_unit} is equal to {converted_value} {to_unit}")
    else:
        print("Error: Unsupported conversion")

if __name__ == "__main__":
    main()
