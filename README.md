# WASUP (WASSUP)

**WASUP** allows users to check the connectivity of their devices by pinging them using a provided IP address and name.


<img width="376" alt="image" src="https://github.com/stevevoto/wasup/assets/22358076/0bfa42d3-5d23-4f2c-9b2d-a9f5449a25d4">


## Overview

**WASUP** is a simple ping script designed to validate network health by pinging a list of specified hosts. Users can add the names and IP addresses of their devices to be checked.

## Prerequisites

- Ensure that the `dialog` package is installed. You can install it using the following command:

    ```bash
    sudo apt install dialog
    ```

## Usage

1. Add the names and IP addresses of the hosts you want to ping to the `addresses` array in the script.
2. Run the script.
3. The script will perform ping tests on each specified host and display the results.
4. Press Enter to return to the command line interface after viewing the results.

## Sample Usage

```bash
./wasup.sh
