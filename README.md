# terraform-module-template-render
Terraform module to render a template for output only


Inputs - Required:

 - `template_name` - Relative path and file name to the template file to render
 - `template_vars` - Map of variables which will be substituted into the template


Inputs - Optional: 

 - None

Outputs:

 - `rendered_file_contents` - Outputs the contents of the rendered file


Example Usage:

```hcl
module "stuff" {
    source                   = "github.com/cweibel/terraform-module-template-render.git?ref=0.0.1"

    template_name            = "templates/configure-mgmt-bosh-rds.tpl"
    template_vars            = {
                                  pickles = "mypickles"
                               }

}

output "stuff" {value = module.stuff.rendered_file_contents}
```