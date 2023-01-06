import yaml
sitl_data_format = {
    "apiVersion" : "v0", # this Data's Version
    "kind" : "SITL", # SITL or REAL
    "userName" : "" , # this cluster's Owner that is same with Openstack's UserName
    "region" : "", # cluster's region Same with Openstack's Region
    "domainName" : "Default", # cluster's domain name same with Openstack's DomainName
    "osID" : 0 , #CloudLayer's OPENSTACK Identity Number
    "cluster" : {
        "name" : "",  # px4 cluster's Name that is same with Openstack's ProjectName (in Terraform tenant_name).
        "idNum" : 0,  # cluster's identity number
        "airSimID" : 0,  # cluster's simulator ID
        "gccID" : 0,  # GroundControlCenter's identity number (like QGC)
        "uamNum" : 2, # the Number of Uam
        "uam":[
            {
                "name" : "PX4_{index}", #uam's name same with vm's hostname
                "region" : "RegionOne", # openstack's Region
                "flavorID" : "", #UAM's CPU RAM Resource Format ID
                "keyPair" : "", #VM'S Remoter Access Pem KEY
                "networkID" : "", #NETWORK SETTING FOR DEV
                "networkName" : "", #NETWORK SETTTING FOR DEV
                "sequrityGroups" : ["default"], #Sequrity Group
                "imageID" : "" #Image ID for DEV
            },
            {
                "name" : "PX4_{index}", #uam's name same with vm's hostname
                "region" : "RegionOne", # openstack's Region
                "flavorID" : "", #UAM's CPU RAM Resource Format ID
                "keyPair" : "", #VM'S Remoter Access Pem KEY
                "networkID" : "", #NETWORK SETTING FOR DEV
                "networkName" : "", #NETWORK SETTTING FOR DEV
                "sequrityGroups" : ["default"], #Sequrity Group
                "imageID" : "" #Image ID for DEV
            }
        ]

    },


}
print(yaml.dump(sitl_data_format))
