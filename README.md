# base-conversion-algorithm
I created this MATLAB program during my University of Ferrara numerical computing course. It converts real numbers between bases 2-36, purely for educational purposes. Heavily inspired by our associate professor's published solution.

Sure, here's the README translated into English:

---

## Description of Codes

This repository contains a series of MATLAB codes that allow you to perform number conversion between different bases. Below is a brief description of each file:

### 1. script.m

This main script enables the conversion of a real number from a base between 2 and 36 (inclusive) to another base within the same range. Users can input numbers containing letters since the initial base can be different from 10. The program treats these numbers as strings and converts them first to base 10 and then to the target base.

### 2. convReal.m

This file contains a supporting function for the main code. It handles the conversion of real numbers from one base to another, with checks for valid inputs and necessary manipulations when the starting base is not 10.

### 3. convIntFromBaseXto10.m

This function converts the integer part of a number from a base other than 10 to base 10. It is used within `convReal.m` when the starting base is not 10.

### 4. convFractFromBaseXto10.m

This function converts the fractional part of a number from a base other than 10 to base 10. This is also used within `convReal.m` when the starting base is not 10.

### 5. convFract.m

This function performs the conversion of the fractional part of a number from one base to another. It is used in `convReal.m` to handle fractional part conversion.

### 6. convInt.m

This file contains a function that performs the conversion of the integer part of a number from one base to another. It is used in `convReal.m` to handle integer part conversion.

### Usage Instructions

To use these codes, follow the instructions provided in the README files of each specific code. Ensure you adhere to the input requirements and follow the specific conventions described within the files.

### Contact

For questions or comments regarding these codes, feel free to contact us at [manuelconte615@gmail.com].

Thank you for using these codes!

---
