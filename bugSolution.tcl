proc read_file {filename} {
    set f [open $filename r]
    if {$f == -1} {
        return -1
    }
    set data [read $f]
    close $f
    return $data
}

set data [read_file non_existent_file.txt]
if {$data == -1} {
    puts "Error: File not found or inaccessible"
} else {
    puts "File content:\n$data"
}

#Improved version with more informative error handling:
proc read_file_improved {filename} {
    set f [open $filename r]
    if {$f == -1} {
        error "Error opening file: $filename"
    }
    set data [read $f]
    close $f
    return $data
}

# Example usage demonstrating error handling
catch {set improvedData [read_file_improved non_existent_file.txt]} errMsg
puts "Result of Improved version: $improvedData"
if {$errMsg != ""} {
    puts "Error Message: $errMsg"
} 