# Lists with Integers
variable "mylist" { 
    default = [1,2,3] 
}

# Lists with Strings
variable "mylist_1" { 
    default = ["hello", "world"]
}

# Map 
variable "mymap" {
    default = {
        company_name = "Amazon"
        profile = "Devops Engineer"
        Experience = 15
    }
}