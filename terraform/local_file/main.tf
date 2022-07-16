terraform {
  required_version = ">= 0.15"
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "~> 2.0"
    }
  }
}


resource "local_file" "literature" {
  filename             = "four_essential_freedoms"
  directory_permission = "0744"
  file_permission      = "0744"
  content              = <<-EOT
Free software means that the software's users have freedom. (The issue is not
about price.) We developed the GNU operating system so that users can have
freedom in their computing.

Specifically, free software means users have the four essential freedoms: (0) to
run the program, (1) to study and change the program in source code form, (2) to
redistribute exact copies, and (3) to distribute modified versions.

Software differs from material objects—such as chairs, sandwiches, and
gasoline—in that it can be copied and changed much more easily. These facilities
are why software is useful; we believe a program's users should be free to take
advantage of them, not solely its developer.
EOT
}
