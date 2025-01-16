# Tcl File Reading Error Handling

This example demonstrates a common error in Tcl file reading:  failure to properly handle errors from the `open` command.  The `read_file` procedure attempts to open a file. If the file does not exist, `open` returns -1.  However, the original code does not check for this return value, which can cause issues.

The solution includes robust error handling to prevent these issues.