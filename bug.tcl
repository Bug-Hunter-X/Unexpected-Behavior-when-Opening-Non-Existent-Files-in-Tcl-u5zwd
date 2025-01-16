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
    puts "Error reading file"
} else {
    puts $data
}