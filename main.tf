
variable template_name                        {} # Relative path and file name to the template file to render
variable template_vars                        {} # Map of variables which will be substituted into the template



data "template_file" "myfile" {
  template = file("./${var.template_name}")
  vars     = var.template_vars
}


output "rendered_file_contents"      {value = data.template_file.myfile.rendered }
