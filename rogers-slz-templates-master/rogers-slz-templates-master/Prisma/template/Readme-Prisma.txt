Step-1 Place the file "prisma.tf.json" inside template folder.

Step-2 Go inside "prisma.tf.json" and change below secions:

    i. Add "project" and "access_token" paramaeter with value inside provider > google block(around line no. 9) and after adding it should look like shown below:

        "provider": {
            "random": {},
            "google": {
                "project": "${var.iac_project_id}",
                "access_token": "${var.access_token}"
            }
        },

    ii. Add default value for variable "project_id" inside variable > project_id block(around line no. 77) and after adding it should look like shown below:

        "variable": {
            "project_id": {
                "default": "gcp-prj-inf-logging-prd-1",
                "type": "string"
            }
        }

    iii. Add backend block with gcs block inside terraform block(around line no. 880) and after adding it should look like shown below:

        "terraform": {
            "backend": {
                "gcs": {}
            }
        }