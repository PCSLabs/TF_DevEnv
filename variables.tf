#Set the OS you are using to run the terraform apply from, options are "windows" and "linux", linux will work with Mac.
variable host_os {
    type = string 
    default = "windows"
}

