# Reminder: 
#YC environment variables should be updated 
#when terraform apply. Here is a set of commands to do this:
#export YC_TOKEN=$(yc iam create-token)
#export YC_CLOUD_ID=$(yc config get cloud-id)
#export YC_FOLDER_ID=$(yc config get folder-id)



terraform {
    required_providers {
        yandex = {
            source = "yandex-cloud/yandex"
        }
    }
    required_version = ">= 0.13"
}

provider "yandex" {
    zone = "${var.av_zone}"
}

