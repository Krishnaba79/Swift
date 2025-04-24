//write a function to print a message based on a person's role ( like Admin , Member , Guest) and their 
//access level (you can use a switch statement).

import Foundation

//function to print access message based on role and access level

func printAccessMessage(role: String , accessLevel: Int){
    switch role {
        case "Admin": //Admin role
        switch accessLevel {
            case 1: 
                print("Admin: Basic access granted.")
        case 2:
            print("Admin: Intermediate access granted.")
        case 3:
            print("Admin: Full access granted.")
        default:
            print("Admin: Unknown access level.")
        
        }

        case "Member": // Member role
        switch accessLevel {
        case 1:
            print("Member: Read-only access granted.")
        case 2:
            print("Member: Read and write access granted.")
        default:
            print("Member: Unknown access level.")
        }

        case "Guest": // Guest role
        switch accessLevel {
        case 1:
            print("Guest: Limited access granted.")
        default:
            print("Guest: Unknown access level.")
        }
    
    default: // Unknown role
        print("Unknown role. Access denied.")
    }

}

// Example Usage
print("Testing Access Messages:")
printAccessMessage(role: "Admin", accessLevel: 3) // Admin with full access
printAccessMessage(role: "Member", accessLevel: 2) // Member with read and write access
printAccessMessage(role: "Guest", accessLevel: 1) // Guest with limited access
printAccessMessage(role: "Member", accessLevel: 4) // Undefined access level for Member
