locals {
  ######################################################################
  # Region mapping – maps Azure region names to their abbreviations
  ######################################################################
  region_map = {
    # United States
    "eastus"           = "eus"
    "east us"          = "eus"
    "eastus2"          = "eus2"
    "east us 2"        = "eus2"
    "centralus"        = "cus"
    "central us"       = "cus"
    "westus"           = "wus"
    "west us"          = "wus"
    "westus2"          = "wus2"
    "west us 2"        = "wus2"
    "westus3"          = "wus3"
    "west us 3"        = "wus3"
    "northcentralus"   = "ncus"
    "north central us" = "ncus"
    "southcentralus"   = "scus"
    "south central us" = "scus"

    # Europe
    "northeurope"          = "neu"
    "north europe"         = "neu"
    "westeurope"           = "weu"
    "west europe"          = "weu"
    "francecentral"        = "frc"
    "france central"       = "frc"
    "francesouth"          = "frs"
    "france south"         = "frs"
    "germanywestcentral"   = "gwc"
    "germany west central" = "gwc"
    "germanynortheast"     = "gne"
    "germany north east"   = "gne"
    "norwayeast"           = "noe"
    "norway east"          = "noe"
    "norwaywest"           = "now"
    "norway west"          = "now"
    "switzerlandnorth"     = "swn"
    "switzerland north"    = "swn"
    "switzerlandwest"      = "sww"
    "switzerland west"     = "sww"

    # Asia Pacific
    "southeastasia"   = "sea"
    "south east asia" = "sea"
    "eastasia"        = "eas"
    "east asia"       = "eas"
    "japaneast"       = "je"
    "japan east"      = "je"
    "japanwest"       = "jw"
    "japan west"      = "jw"
    "koreacentral"    = "krn"
    "korea central"   = "krn"
    "koreasouth"      = "krs"
    "korea south"     = "krs"

    # Australia
    "australiaeast"       = "aea"
    "australia east"      = "aea"
    "australiasoutheast"  = "ases"
    "australia southeast" = "ases"
    "australiacentral"    = "aac"
    "australia central"   = "aac"
    "australiacentral2"   = "aac2"
    "australia central 2" = "aac2"

    # India
    "centralindia"  = "cin"
    "central india" = "cin"
    "southindia"    = "sin"
    "south india"   = "sin"
    "westindia"     = "win"
    "west india"    = "win"

    # Canada
    "canadacentral"  = "cac"
    "canada central" = "cac"
    "canadaeast"     = "cae"
    "canada east"    = "cae"

    # United Kingdom
    "uksouth"  = "uks"
    "uk south" = "uks"
    "ukwest"   = "ukw"
    "uk west"  = "ukw"

    # United Arab Emirates
    "uaenorth"    = "uan"
    "uae north"   = "uan"
    "uaecentral"  = "uac"
    "uae central" = "uac"

    # Brazil
    "brazilsouth"      = "brs"
    "brazil south"     = "brs"
    "brazilsoutheast"  = "brse"
    "brazil southeast" = "brse"
  }


  ######################################################################
  # Resource type abbreviations – maps verbose names to standard abbreviations
  ######################################################################
  resource_abbreviations = {

    ##########################################
    # Compute & General
    ##########################################

    # Virtual Machine
    "virtualmachine"  = "vm"
    "virtual machine" = "vm"
    "vm"              = "vm"

    "virtualmachinescaleset"    = "vmss"
    "virtual machine scale set" = "vmss"
    "vmss"                      = "vmss"

    # Network Interface
    "networkinterface"  = "nic"
    "network interface" = "nic"
    "nic"               = "nic"

    # Virtual Network
    "virtualnetwork"  = "vnet"
    "virtual network" = "vnet"
    "vnet"            = "vnet"

    # Public IP
    "publicip"  = "pip"
    "public ip" = "pip"
    "pip"       = "pip"

    # Storage Account
    "storageaccount"  = "st"
    "storage account" = "st"
    "st"              = "st"

    # App Service & Web
    "appservice"  = "app"
    "app service" = "app"
    "app"         = "app"
    "appsvc"      = "app"

    "appserviceplan"   = "asp"
    "app service plan" = "asp"
    "asp"              = "asp"

    "functionapp"  = "func"
    "function app" = "func"
    "func"         = "func"

    # Gallery
    "gallery" = "gal"
    "gal"     = "gal"

    # Cloud Service
    "cloudservice"  = "cld"
    "cloud service" = "cld"
    "cld"           = "cld"

    # Availability Set
    "availabilityset"  = "avail"
    "availability set" = "avail"
    "avail"            = "avail"

    # Image Template
    "imagetemplate"  = "it"
    "image template" = "it"
    "it"             = "it"

    # Managed Disk (OS)
    "manageddisk(os)" = "osdisk"
    "managed disk os" = "osdisk"
    "osdisk"          = "osdisk"

    # Managed Disk (data)
    "manageddisk(data)" = "disk"
    "managed disk data" = "disk"
    "disk"              = "disk"

    # Snapshot
    "snapshot" = "snap"
    "snap"     = "snap"

    # Restore Point Collection
    "restorepointcollection"   = "rpc"
    "restore point collection" = "rpc"
    "rpc"                      = "rpc"

    # VM Storage Account
    "vmstorageaccount"   = "stvm"
    "vm storage account" = "stvm"
    "stvm"               = "stvm"

    # Virtual Machine Maintenance Configuration
    "virtualmachinemaintenanceconfiguration"    = "mc"
    "virtual machine maintenance configuration" = "mc"
    "mc"                                        = "mc"

    ##########################################
    # AI + Machine Learning
    ##########################################

    # AI Search
    "aisearch"  = "srch"
    "ai search" = "srch"
    "srch"      = "srch"

    # Azure AI services
    "azureaiservices"   = "ais"
    "azure ai services" = "ais"
    "ais"               = "ais"

    # Azure AI Studio hub
    "azureaistudiohub"    = "hub"
    "azure ai studio hub" = "hub"
    "hub"                 = "hub"

    # Azure AI Studio project
    "azureaistudioproject"    = "proj"
    "azure ai studio project" = "proj"
    "proj"                    = "proj"

    # Azure AI Video Indexer
    "azureaivideoinstexer"   = "avi" # (note: key slightly adjusted for consistency)
    "azure ai video indexer" = "avi"
    "avi"                    = "avi"

    # Azure Machine Learning workspace
    "azuremachinelearningworkspace"    = "mlw"
    "azure machine learning workspace" = "mlw"
    "mlw"                              = "mlw"

    # Azure OpenAI Service
    "azureopenaiservice"   = "oai"
    "azure openai service" = "oai"
    "oai"                  = "oai"

    # Bot service
    "botservice"  = "bot"
    "bot service" = "bot"
    "bot"         = "bot"

    # Computer vision
    "computervision"  = "cv"
    "computer vision" = "cv"
    "cv"              = "cv"

    # Content moderator
    "contentmoderator"  = "cm"
    "content moderator" = "cm"
    "cm"                = "cm"

    # Content safety
    "contentsafety"  = "cs"
    "content safety" = "cs"
    "cs"             = "cs"

    # Custom vision (prediction)
    "customvision(prediction)" = "cstv"
    "custom vision prediction" = "cstv"
    "cstv"                     = "cstv"

    # Custom vision (training)
    "customvision(training)" = "cstvt"
    "custom vision training" = "cstvt"
    "cstvt"                  = "cstvt"

    # Document intelligence
    "documentintelligence"  = "di"
    "document intelligence" = "di"
    "di"                    = "di"

    # Face API
    "faceapi"  = "face"
    "face api" = "face"
    "face"     = "face"

    # Health Insights
    "healthinsights"  = "hi"
    "health insights" = "hi"
    "hi"              = "hi"

    # Immersive reader
    "immersivereader"  = "ir"
    "immersive reader" = "ir"
    "ir"               = "ir"

    # Language service
    "languageservice"  = "lang"
    "language service" = "lang"
    "lang"             = "lang"

    # Speech service
    "speechservice"  = "spch"
    "speech service" = "spch"
    "spch"           = "spch"

    # Translator
    "translator"     = "trsl"
    "texttranslator" = "trsl" # alternative key if needed
    "trsl"           = "trsl"

    ##########################################
    # Analytics and IoT
    ##########################################

    # Azure Analysis Services server
    "analysisservices"               = "as"
    "azureanalysissvcsserver"        = "as"
    "azure analysis services server" = "as"
    "as"                             = "as"

    # Azure Databricks workspace
    "azuredatabricksworkspace"   = "dbw"
    "azure databricks workspace" = "dbw"
    "dbw"                        = "dbw"

    # Azure Data Explorer cluster
    "azuredataexplorercluster"    = "dec"
    "azure data explorer cluster" = "dec"
    "dec"                         = "dec"

    # Azure Data Explorer cluster database
    "azuredataexplorerclusterdatabase"     = "dedb"
    "azure data explorer cluster database" = "dedb"
    "dedb"                                 = "dedb"

    # Azure Data Factory
    "datafactory"  = "adf"
    "data factory" = "adf"
    "adf"          = "adf"

    # Azure Digital Twin instance
    "azuredigitaltwininstance"    = "dt"
    "azure digital twin instance" = "dt"
    "dt"                          = "dt"

    # Azure Stream Analytics
    "azurestreamanalytics"   = "asa"
    "azure stream analytics" = "asa"
    "asa"                    = "asa"

    # Azure Synapse Analytics private link hub
    "azuresynapseanalyticsprivatelinkhub"      = "synplh"
    "azure synapse analytics private link hub" = "synplh"
    "synplh"                                   = "synplh"

    # Azure Synapse Analytics SQL Dedicated Pool
    "azuresynapseanalyticssqldedicatedpool"      = "syndp"
    "azure synapse analytics sql dedicated pool" = "syndp"
    "syndp"                                      = "syndp"

    # Azure Synapse Analytics Spark Pool
    "azuresynapseanalyticssparkpool"     = "synsp"
    "azure synapse analytics spark pool" = "synsp"
    "synsp"                              = "synsp"

    # Azure Synapse Analytics workspaces
    "azuresynapseanalyticsworkspaces"    = "synw"
    "azure synapse analytics workspaces" = "synw"
    "synw"                               = "synw"

    # Data Lake Store account
    "datalakestoreaccount"    = "dls"
    "data lake store account" = "dls"
    "dls"                     = "dls"

    # Data Lake Analytics account
    "datalakeanalyticsaccount"    = "dla"
    "data lake analytics account" = "dla"
    "dla"                         = "dla"

    # Event Hubs namespace
    "eventhubsnamespace"   = "evhns"
    "event hubs namespace" = "evhns"
    "evhns"                = "evhns"

    # Event hub
    "eventhub"  = "evh"
    "event hub" = "evh"
    "evh"       = "evh"

    # Event Grid domain
    "eventgriddomain"   = "evgd"
    "event grid domain" = "evgd"
    "evgd"              = "evgd"

    # Event Grid subscriptions
    "eventgridsubscriptions"   = "evgs"
    "event grid subscriptions" = "evgs"
    "evgs"                     = "evgs"

    # Event Grid topic
    "eventgridtopic"   = "evgt"
    "event grid topic" = "evgt"
    "evgt"             = "evgt"

    # Event Grid system topic
    "eventgridsystemtopic"    = "egst"
    "event grid system topic" = "egst"
    "egst"                    = "egst"

    # HDInsight – Hadoop cluster
    "hdinsighthadoopcluster"   = "hadoop"
    "hdinsight hadoop cluster" = "hadoop"
    "hadoop"                   = "hadoop"

    # HDInsight – HBase cluster
    "hdinsighthbasecluster"   = "hbase"
    "hdinsight hbase cluster" = "hbase"
    "hbase"                   = "hbase"

    # HDInsight – Kafka cluster
    "hdinsightkafkacluster"   = "kafka"
    "hdinsight kafka cluster" = "kafka"
    "kafka"                   = "kafka"

    # HDInsight – Spark cluster
    "hdinsightsparkcluster"   = "spark"
    "hdinsight spark cluster" = "spark"
    "spark"                   = "spark"

    # HDInsight – Storm cluster
    "hdinsightstormcluster"   = "storm"
    "hdinsight storm cluster" = "storm"
    "storm"                   = "storm"

    # HDInsight – ML Services cluster
    "hdinsightmlservicescluster"    = "mls"
    "hdinsight ml services cluster" = "mls"
    "mls"                           = "mls"

    # IoT hub
    "iothub"  = "iot"
    "iot hub" = "iot"
    "iot"     = "iot"

    # Provisioning services
    "provisioningservices"  = "provs"
    "provisioning services" = "provs"
    "provs"                 = "provs"

    # Provisioning services certificate
    "provisioningservicescertificate"   = "pcert"
    "provisioning services certificate" = "pcert"
    "pcert"                             = "pcert"

    # Power BI Embedded
    "powerbiembedded"   = "pbi"
    "power bi embedded" = "pbi"
    "pbi"               = "pbi"

    # Time Series Insights environment
    "timeseriesinsightsenvironment"    = "tsi"
    "time series insights environment" = "tsi"
    "tsi"                              = "tsi"

    ##########################################
    # Compute and Web (Additional)
    ##########################################

    # App Service environment
    "appserviceenvironment"   = "ase"
    "app service environment" = "ase"
    "ase"                     = "ase"

    # Azure Load Testing instance
    "azureloadtestinginstance"    = "lt"
    "azure load testing instance" = "lt"
    "lt"                          = "lt"

    # Azure Arc enabled server
    "azurearcenabledserver"    = "arcs"
    "azure arc enabled server" = "arcs"
    "arcs"                     = "arcs"

    # Azure Arc enabled Kubernetes cluster
    "azurearcenabledkubernetescluster"     = "arck"
    "azure arc enabled kubernetes cluster" = "arck"
    "arck"                                 = "arck"

    # Azure Arc private link scope
    "azurearcprivatelinkscope"     = "pls"
    "azure arc private link scope" = "pls"
    "pls"                          = "pls"

    # Azure Arc gateway
    "azurearcgateway"   = "arcgw"
    "azure arc gateway" = "arcgw"
    "arcgw"             = "arcgw"

    # Batch accounts
    "batchaccounts"  = "ba"
    "batch accounts" = "ba"
    "ba"             = "ba"

    # Communication Services
    "communicationservices"  = "acs"
    "communication services" = "acs"
    "acs"                    = "acs"

    # Disk encryption set
    "diskencryptionset"   = "des"
    "disk encryption set" = "des"
    "des"                 = "des"

    # Hosting environment (for web apps)
    "hostingenvironment"  = "host"
    "hosting environment" = "host"
    "host"                = "host"

    # Notification Hubs
    "notificationhubs"  = "ntf"
    "notification hubs" = "ntf"
    "ntf"               = "ntf"

    # Notification Hubs namespace
    "notificationhubsnamespace"   = "ntfns"
    "notification hubs namespace" = "ntfns"
    "ntfns"                       = "ntfns"

    # Proximity placement group
    "proximityplacementgroup"   = "ppg"
    "proximity placement group" = "ppg"
    "ppg"                       = "ppg"

    ##########################################
    # Containers
    ##########################################

    # AKS cluster
    "akscluster"  = "aks"
    "aks cluster" = "aks"
    "aks"         = "aks"

    # AKS system node pool
    "akssystemnodepool"    = "npsystem"
    "aks system node pool" = "npsystem"
    "npsystem"             = "npsystem"

    # AKS user node pool
    "aksusernodepool"    = "np"
    "aks user node pool" = "np"
    "np"                 = "np"

    # Container apps
    "containerapps"  = "ca"
    "container apps" = "ca"
    "ca"             = "ca"

    # Container apps environment
    "containerappsenvironment"   = "cae"
    "container apps environment" = "cae"
    "cae"                        = "cae"

    # Container registry
    "containerregistry"  = "cr"
    "container registry" = "cr"
    "cr"                 = "cr"

    # Container instance
    "containerinstance"  = "ci"
    "container instance" = "ci"
    "ci"                 = "ci"

    # Service Fabric cluster
    "servicefabriccluster"   = "sf"
    "service fabric cluster" = "sf"
    "sf"                     = "sf"

    # Service Fabric managed cluster
    "servicefabricmanagedcluster"    = "sfmc"
    "service fabric managed cluster" = "sfmc"
    "sfmc"                           = "sfmc"

    ##########################################
    # Databases
    ##########################################

    # Azure Cosmos DB database
    "azurecosmosdbdatabase"    = "cosmos"
    "azure cosmos db database" = "cosmos"
    "cosmos"                   = "cosmos"
    "cosmosdb"                 = "cosmos"

    # Azure Cosmos DB for Apache Cassandra account
    "azurecosmosdbforapachecassandraaccount"       = "coscas"
    "azure cosmos db for apache cassandra account" = "coscas"
    "coscas"                                       = "coscas"

    # Azure Cosmos DB for MongoDB account
    "azurecosmosdbformongodbaccount"      = "cosmon"
    "azure cosmos db for mongodb account" = "cosmon"
    "cosmon"                              = "cosmon"

    # Azure Cosmos DB for NoSQL account
    "azurecosmosdbfornosqlaccount"      = "cosno"
    "azure cosmos db for nosql account" = "cosno"
    "cosno"                             = "cosno"

    # Azure Cosmos DB for Table account
    "azurecosmosdbfortableaccount"      = "costab"
    "azure cosmos db for table account" = "costab"
    "costab"                            = "costab"

    # Azure Cosmos DB for Apache Gremlin account
    "azurecosmosdbforapachegremlinaccount"       = "cosgrm"
    "azure cosmos db for apache gremlin account" = "cosgrm"
    "cosgrm"                                     = "cosgrm"

    # Azure Cosmos DB PostgreSQL cluster
    "azurecosmosdbpostgresqlcluster"     = "cospos"
    "azure cosmos db postgresql cluster" = "cospos"
    "cospos"                             = "cospos"

    # Azure Cache for Redis instance
    "azurecacheforredisinstance"     = "redis"
    "azure cache for redis instance" = "redis"
    "redis"                          = "redis"

    # Azure SQL Database server
    "azuresqldatabaseserver"    = "sql"
    "azure sql database server" = "sql"
    "sql"                       = "sql"
    "sqlserver"                 = "sql"
    "sqlsrv"                    = "sql"

    # Azure SQL database
    "azuresqldatabase"   = "sqldb"
    "azure sql database" = "sqldb"
    "sqldb"              = "sqldb"

    # Azure SQL Elastic Job agent
    "azuresqlelasticjobagent"     = "sqlja"
    "azure sql elastic job agent" = "sqlja"
    "sqlja"                       = "sqlja"

    # Azure SQL Elastic Pool
    "azuresqlelasticpool"    = "sqlep"
    "azure sql elastic pool" = "sqlep"
    "sqlep"                  = "sqlep"

    # MariaDB server
    "mariadbserver"   = "maria"
    "maria db server" = "maria"
    "maria"           = "maria"

    # MariaDB database
    "mariadbdatabase"   = "mariadb"
    "maria db database" = "mariadb"
    "mariadb"           = "mariadb"

    # MySQL database
    "mysqldatabase"  = "mysql"
    "mysql database" = "mysql"
    "mysql"          = "mysql"

    # PostgreSQL database
    "postgresqldatabase"  = "psql"
    "postgresql database" = "psql"
    "psql"                = "psql"

    # SQL Server Stretch Database
    "sqlserverstretchdatabase"    = "sqlstrdb"
    "sql server stretch database" = "sqlstrdb"
    "sqlstrdb"                    = "sqlstrdb"

    # SQL Managed Instance
    "sqlmanagedinstance"   = "sqlmi"
    "sql managed instance" = "sqlmi"
    "sqlmi"                = "sqlmi"

    ##########################################
    # Developer Tools
    ##########################################

    # App Configuration store
    "appconfigurationstore"   = "appcs"
    "app configuration store" = "appcs"
    "appcs"                   = "appcs"

    # Maps account
    "mapsaccount"  = "map"
    "maps account" = "map"
    "map"          = "map"

    # SignalR
    "signalr"  = "sigr"
    "signal r" = "sigr"
    "sigr"     = "sigr"

    # WebPubSub
    "webpubsub"   = "wps"
    "web pub sub" = "wps"
    "wps"         = "wps"

    ##########################################
    # DevOps
    ##########################################

    # Azure Managed Grafana
    "azuremanagedgrafana"   = "amg"
    "azure managed grafana" = "amg"
    "amg"                   = "amg"

    ##########################################
    # Integration
    ##########################################

    # API management service instance
    "apimanagement"                   = "apim"
    "apimanagementserviceinstance"    = "apim"
    "api management service instance" = "apim"
    "apim"                            = "apim"

    # Integration account
    "integrationaccount"  = "ia"
    "integration account" = "ia"
    "ia"                  = "ia"

    # Logic app
    "logicapp"  = "logic"
    "logic app" = "logic"
    "logic"     = "logic"

    # Service Bus namespace
    "servicebusnamespace"   = "sbns"
    "service bus namespace" = "sbns"
    "sbns"                  = "sbns"

    # Service Bus queue
    "servicebusqueue"   = "sbq"
    "service bus queue" = "sbq"
    "sbq"               = "sbq"

    # Service Bus topic
    "servicebustopic"   = "sbt"
    "service bus topic" = "sbt"
    "sbt"               = "sbt"

    # Service Bus topic subscription
    "servicebustopicsubscription"    = "sbts"
    "service bus topic subscription" = "sbts"
    "sbts"                           = "sbts"

    ##########################################
    # Management and Governance
    ##########################################

    # Automation account
    "automationaccount"  = "aa"
    "automation account" = "aa"
    "aa"                 = "aa"

    # Azure Policy definition (no standard short form provided; can be left descriptive)
    "azurepolicydefinition"   = "policy"
    "azure policy definition" = "policy"

    # Application Insights
    "applicationinsights"  = "appi"
    "application insights" = "appi"
    "appi"                 = "appi"

    # Azure Monitor action group
    "azuremonitoractiongroup"    = "ag"
    "azure monitor action group" = "ag"
    "ag"                         = "ag"

    # Azure Monitor data collection rule
    "azuremonitordatacollectionrule"     = "dcr"
    "azure monitor data collection rule" = "dcr"
    "dcr"                                = "dcr"

    # Azure Monitor alert processing rule
    "azuremonitoralertprocessingrule"     = "apr"
    "azure monitor alert processing rule" = "apr"
    "apr"                                 = "apr"

    # Blueprint (planned for deprecation)
    "blueprint"            = "bp"
    "blueprint assignment" = "bpa" # for assignment
    "bp"                   = "bp"
    "bpa"                  = "bpa"

    # Data collection endpoint
    "datacollectionendpoint"   = "dce"
    "data collection endpoint" = "dce"
    "dce"                      = "dce"

    # Log Analytics workspace
    "loganalyticsworkspace"   = "log"
    "log analytics workspace" = "log"
    "log"                     = "log"

    # Log Analytics query packs
    "loganalyticsquerypacks"    = "pack"
    "log analytics query packs" = "pack"
    "pack"                      = "pack"

    # Management group
    "managementgroup"  = "mg"
    "management group" = "mg"
    "mg"               = "mg"

    # Microsoft Purview instance
    "microsoftpurviewinstance"   = "pview"
    "microsoft purview instance" = "pview"
    "pview"                      = "pview"

    # Resource group
    "resourcegroup"  = "rg"
    "resource group" = "rg"
    "rg"             = "rg"

    # Template specs name
    "templatespecs"  = "ts"
    "template specs" = "ts"
    "ts"             = "ts"

    ##########################################
    # Migration
    ##########################################

    # Azure Migrate project
    "azuremigrateproject"   = "migr"
    "azure migrate project" = "migr"
    "migr"                  = "migr"

    # Database Migration Service instance
    "databasemigrationserviceinstance"    = "dms"
    "database migration service instance" = "dms"
    "dms"                                 = "dms"

    # Recovery Services vault
    "recoveryservicesvault"   = "rsv"
    "recovery services vault" = "rsv"
    "rsv"                     = "rsv"

    ##########################################
    # Networking
    ##########################################

    # Application gateway
    "applicationgateway"  = "agw"
    "application gateway" = "agw"
    "agw"                 = "agw"

    # Application security group (ASG)
    "applicationsecuritygroup"   = "asg"
    "application security group" = "asg"
    "asg"                        = "asg"

    # CDN profile
    "cdnprofile"  = "cdnp"
    "cdn profile" = "cdnp"
    "cdnp"        = "cdnp"

    # CDN endpoint
    "cdnendpoint"  = "cdne"
    "cdn endpoint" = "cdne"
    "cdne"         = "cdne"

    # Connections
    "connections" = "con"
    "connection"  = "con"
    "con"         = "con"

    # DNS – (Note: Abbreviation may be customized per DNS domain name)
    "azuredns"  = "dns"
    "azure dns" = "dns"
    "dns"       = "dns"

    # DNS forwarding ruleset
    "dnsforwardingruleset"   = "dnsfrs"
    "dns forwarding ruleset" = "dnsfrs"
    "dnsfrs"                 = "dnsfrs"

    # DNS private resolver
    "dnsprivateresolver"   = "dnspr"
    "dns private resolver" = "dnspr"
    "dnspr"                = "dnspr"

    # DNS private resolver inbound endpoint
    "dnsprivateresolverinboundendpoint"     = "in"
    "dns private resolver inbound endpoint" = "in"
    "in"                                    = "in"

    # DNS private resolver outbound endpoint
    "dnsprivateresolveroutboundendpoint"     = "out"
    "dns private resolver outbound endpoint" = "out"
    "out"                                    = "out"

    # DNS zone – (Abbreviation can be the DNS domain name)
    "dnszone"  = "dns"
    "dns zone" = "dns"

    # Firewall
    "firewall"      = "afw"
    "azurefirewall" = "afw"
    "afw"           = "afw"

    # Firewall policy
    "firewallpolicy"  = "afwp"
    "firewall policy" = "afwp"
    "afwp"            = "afwp"

    # ExpressRoute circuit
    "expressroutecircuit"   = "erc"
    "express route circuit" = "erc"
    "erc"                   = "erc"

    # ExpressRoute direct
    "expressroutedirect"   = "erd"
    "express route direct" = "erd"
    "erd"                  = "erd"

    # ExpressRoute gateway
    "expressroutegateway"   = "ergw"
    "express route gateway" = "ergw"
    "ergw"                  = "ergw"

    # Front Door (Standard/Premium) profile
    "frontdoorprofile"   = "afd"
    "front door profile" = "afd"
    "afd"                = "afd"

    # Front Door (Standard/Premium) endpoint
    "frontdoorendpoint"   = "fde"
    "front door endpoint" = "fde"
    "fde"                 = "fde"

    # Front Door firewall policy
    "frontdoorfirewallpolicy"    = "fdfp"
    "front door firewall policy" = "fdfp"
    "fdfp"                       = "fdfp"

    # Front Door (classic)
    "frontdoorclassic"   = "afd"
    "front door classic" = "afd"

    # IP group
    "ipgroup"  = "ipg"
    "ip group" = "ipg"
    "ipg"      = "ipg"

    # Load balancer (internal)
    "loadbalancerinternal"   = "lbi"
    "load balancer internal" = "lbi"
    "lbi"                    = "lbi"

    # Load balancer (external)
    "loadbalancerexternal"   = "lbe"
    "load balancer external" = "lbe"
    "lbe"                    = "lbe"

    # Load balancer rule
    "loadbalancerrule"   = "rule"
    "load balancer rule" = "rule"
    "rule"               = "rule"

    # Local network gateway
    "localnetworkgateway"   = "lgw"
    "local network gateway" = "lgw"
    "lgw"                   = "lgw"

    # NAT gateway
    "natgateway"  = "ng"
    "nat gateway" = "ng"
    "ng"          = "ng"

    # Network security group (NSG)
    "networksecuritygroup"   = "nsg"
    "network security group" = "nsg"
    "nsg"                    = "nsg"

    # NSG security rules
    "networksecuritygroupsecurityrules" = "nsgsr"
    "nsg security rules"                = "nsgsr"
    "nsgsr"                             = "nsgsr"

    # Network Watcher
    "networkwatcher"  = "nw"
    "network watcher" = "nw"
    "nw"              = "nw"

    # Private Link
    "privatelink"  = "pl"
    "private link" = "pl"
    "pl"           = "pl"

    # Private endpoint
    "privateendpoint"  = "pep"
    "private endpoint" = "pep"
    "pep"              = "pep"

    # Public IP address prefix
    "publicipaddressprefix"    = "ippre"
    "public ip address prefix" = "ippre"
    "ippre"                    = "ippre"

    # Route filter
    "routefilter"  = "rf"
    "route filter" = "rf"
    "rf"           = "rf"

    # Route server
    "routeserver"  = "rtserv"
    "route server" = "rtserv"
    "rtserv"       = "rtserv"

    # Route table
    "routetable"  = "rt"
    "route table" = "rt"
    "rt"          = "rt"

    # Service endpoint policy
    "serviceendpointpolicy"   = "se"
    "service endpoint policy" = "se"
    "se"                      = "se"

    # Traffic Manager profile
    "trafficmanagerprofile"   = "traf"
    "traffic manager profile" = "traf"
    "traf"                    = "traf"

    # User defined route (UDR)
    "userdefinedroute"   = "udr"
    "user defined route" = "udr"
    "udr"                = "udr"

    # Virtual network gateway
    "virtualnetworkgateway"   = "vgw"
    "virtual network gateway" = "vgw"
    "vgw"                     = "vgw"

    # Virtual network manager
    "virtualnetworkmanager"   = "vnm"
    "virtual network manager" = "vnm"
    "vnm"                     = "vnm"

    # Virtual network peering
    "virtualnetworkpeering"   = "peer"
    "virtual network peering" = "peer"
    "peer"                    = "peer"

    # Virtual network subnet
    "virtualnetworksubnet"   = "snet"
    "virtual network subnet" = "snet"
    "snet"                   = "snet"
    "subnet"                 = "snet"
    "sub net"                = "snet"

    # Virtual WAN
    "virtualwan"  = "vwan"
    "virtual wan" = "vwan"
    "vwan"        = "vwan"

    # Virtual WAN Hub
    "virtualwanhub"   = "vhub"
    "virtual wan hub" = "vhub"
    "vhub"            = "vhub"

    ##########################################
    # Security
    ##########################################

    # Azure Bastion
    "azurebastion"  = "bas"
    "azure bastion" = "bas"
    "bas"           = "bas"

    # Key vault
    "keyvault"  = "kv"
    "key vault" = "kv"
    "kv"        = "kv"

    # Key Vault Managed HSM
    "keyvaultmanagedhsm"    = "kvmhsm"
    "key vault managed hsm" = "kvmhsm"
    "kvmhsm"                = "kvmhsm"

    # Managed identity
    "managedidentity"  = "id"
    "managed identity" = "id"
    "id"               = "id"

    # SSH key
    "sshkey"  = "sshkey"
    "ssh key" = "sshkey"

    # VPN Gateway
    "vpngateway"  = "vpng"
    "vpn gateway" = "vpng"
    "vpng"        = "vpng"

    # VPN connection
    "vpnconnection"  = "vcn"
    "vpn connection" = "vcn"
    "vcn"            = "vcn"

    # VPN site
    "vpnsit"   = "vst"
    "vpn site" = "vst"
    "vst"      = "vst"

    # Web Application Firewall (WAF) policy
    "wafpolicy"  = "waf"
    "waf policy" = "waf"
    "waf"        = "waf"

    # Web Application Firewall (WAF) policy rule group
    "wafpolicyrulegroup"    = "wafrg"
    "waf policy rule group" = "wafrg"
    "wafrg"                 = "wafrg"

    ##########################################
    # Storage
    ##########################################

    # Azure StorSimple
    "azurestorSimple"  = "ssimp"
    "azure storSimple" = "ssimp"
    "ssimp"            = "ssimp"

    # Backup Vault name
    "backupvaultname"   = "bvault"
    "backup vault name" = "bvault"
    "bvault"            = "bvault"

    # Backup Vault policy
    "backupvaultpolicy"   = "bkpol"
    "backup vault policy" = "bkpol"
    "bkpol"               = "bkpol"

    # File share
    "fileshare"  = "share"
    "file share" = "share"
    "share"      = "share"

    # Storage Sync Service name
    "storagesyncservice"   = "sss"
    "storage sync service" = "sss"
    "sss"                  = "sss"

    ##########################################
    # Virtual Desktop Infrastructure
    ##########################################

    # Virtual desktop host pool
    "virtualdesktophostpool"    = "vdpool"
    "virtual desktop host pool" = "vdpool"
    "vdpool"                    = "vdpool"

    # Virtual desktop application group
    "virtualdesktopapplicationgroup"    = "vdag"
    "virtual desktop application group" = "vdag"
    "vdag"                              = "vdag"

    # Virtual desktop workspace
    "virtualdesktopworkspace"   = "vdws"
    "virtual desktop workspace" = "vdws"
    "vdws"                      = "vdws"

    # Virtual desktop scaling plan
    "virtualdesktopscalingplan"    = "vdscaling"
    "virtual desktop scaling plan" = "vdscaling"
    "vdscaling"                    = "vdscaling"
  }

  ######################################################################
  # Special handling lists – define resource types that omit certain segments
  ######################################################################
  # Resources that generally are not instanced (i.e. don’t require an instance number)
  no_instance_resource_types = [
    "vnet", # Virtual Network – typically one per environment
    "cr",   # Container Registry – usually one per team/environment
    "rg",   # Resource Group – a global container
    "mg",   # Management Group – global across subscriptions
    "pol",  # Policy – defined once per scope
    "ase",  # App Service Environment – deployed as a single environment
    "dce",  # Data Collection Endpoint – usually a singular configuration
    "dns",  # DNS Zone – typically unique per domain
    "app",  # App Service – typically unique per domain
    "as",   # Azure Analysis Services – typically unique per domain
  ]

  # Resources that aren’t region-specific (e.g. resources that exist at a global level)
  no_region_resource_types = [
    "bp",     # Blueprint – a global definition (even if assignments are applied regionally)
    "cr",     # Container Registry - global scope
    "mg",     # Management Group
    "rg",     # Resource Group
    "st",     # Storage Account
    "ts",     # Template Specs – global resource definitions
    "adf",    # Azure Data Factory - global scope
    "app",    # App Service - global scope
    "bpa",    # Blueprint Assignment – typically not tied to a specific region
    "dls",    # Data Lake Storage Account - global scope
    "iot",    # IoT Hub - global scope
    "pol",    # Policy
    "apim",   # API Management Service Instance - global scope
    "func",   # Function App - global scope
    "sbns",   # Service Bus Namespace - global scope
    "srch",   # Azure AI Search - global scope
    "pview",  # Microsoft Purview Instance – managed globally
    "redis",  # Redis Cache Instance - global scope
    "cosmos", # Cosmos DB Database - global scope
  ]

  # Resources that should not include delimiters because their naming pattern is fixed
  no_delimiter_resource_types = [
    "st",     # Storage Account – must be all lowercase without hyphens
    "cr",     # Container Registry – similar restrictions as storage accounts
    "cosmos", # Cosmos DB account – must be lowercase with no delimiters
    "media",  # Media Services - must be lowercase letters and numbers
    "as",     # Analysis Services Servers - must be lowercase letters and numbers 
    "ba",     # Batch Accounts - must be lowercase letters and numbers
    "dla",    # Data Lake Analytics Account - must be lowercase letters and numbers
    "dls",    # Data Lake Analytics Store Account - must be lowercase letters and numbers
    "synplh", # Synapse Private Link hub - must be lowercase letters and numbers
  ]

  ######################################################################
  # Process input variables safely and transform to lowercase for consistency
  ######################################################################
  resourceTypeInput = lower(trimspace(var.resource_type))
  resourceAbbr      = lookup(local.resource_abbreviations, local.resourceTypeInput, local.resourceTypeInput)

  regionInput = var.location != null ? (
    trimspace(var.location) != "" ? lower(trimspace(var.location)) : ""
  ) : ""

  applicationInput = var.application != null ? (
    trimspace(var.application) != "" ? lower(trimspace(var.application)) : ""
  ) : ""

  environmentInput = var.environment != null ? (
    trimspace(var.environment) != "" ? lower(trimspace(var.environment)) : ""
  ) : ""

  workloadInput = var.workload != null ? (
    trimspace(var.workload) != "" ? lower(trimspace(var.workload)) : ""
  ) : ""

  businessUnitInput = var.business_unit != null ? (
    trimspace(var.business_unit) != "" ? lower(trimspace(var.business_unit)) : ""
  ) : ""

  instanceNumberInput = var.instance_number != null ? (
    trimspace(var.instance_number) != "" ? format("%03d", tonumber(trimspace(var.instance_number))) : ""
  ) : ""

  ######################################################################
  # Determine delimiter based on resource type restrictions (e.g. storage accounts)
  ######################################################################
  delimiter = !contains(local.no_delimiter_resource_types, local.resourceAbbr) ? "-" : ""

  ######################################################################
  # Build each naming segment according to Microsoft’s recommended order
  #
  # Recommended Order:
  #   {Resource Abbr}-{Business Unit (optional)-{Application (optional)}-{Workload (optional)}-{Environment (optional)}-{Region (optional)}-{Instance (optional)}}
  ######################################################################
  applicationSection  = local.applicationInput != "" ? "${local.delimiter}${local.applicationInput}" : ""
  workloadSection     = local.workloadInput != "" ? "${local.delimiter}${local.workloadInput}" : ""
  environmentSection  = local.environmentInput != "" ? "${local.delimiter}${local.environmentInput}" : ""
  regionSection       = !contains(local.no_region_resource_types, local.resourceAbbr) && local.regionInput != "" ? "${local.delimiter}${lookup(local.region_map, local.regionInput, local.regionInput)}" : ""
  instanceSection     = !contains(local.no_instance_resource_types, local.resourceAbbr) && local.instanceNumberInput != "" ? "${local.delimiter}${local.instanceNumberInput}" : ""
  businessUnitSection = local.businessUnitInput != "" ? "${local.delimiter}${local.businessUnitInput}" : ""

  ######################################################################
  # Assemble the final resource name using the defined segments.
  ######################################################################
  # Final naming convention:
  #   {resourceAbbr}{applicationSection}{workloadSection}{environmentSection}{regionSection}{instanceSection}{businessUnitSection}
  name = "${local.resourceAbbr}${local.businessUnitSection}${local.applicationSection}${local.workloadSection}${local.environmentSection}${local.regionSection}${local.instanceSection}"

  ######################################################################
  # Define a validation map for final name constraints.
  # Each key is a resource abbreviation and the value is an object containing:
  #   - min_length: minimum allowed length
  #   - max_length: maximum allowed length
  #   - pattern: a regex the name must match
  ######################################################################

  # bk = bookmark
  regexp_patterns = {
    alpha_alphanumeric_hyphen_bk      = "^[a-zA-Z]{1}[a-zA-Z0-9-]*[a-zA-Z0-9]{1}$"     # start with alpha, alphanumeric + hyphen, end with alphanumeric e.g. h-e1
    alphanumeric_hyphen_bk            = "^[a-zA-Z0-9]{1}[a-zA-Z0-9-]*[a-zA-Z0-9]{1}$"  # start with alphanumeric, alphanumeric + hyphen, end with alphanumeric e.g. 01-12
    alphanumeric_hyphen_underscore_bk = "^[a-zA-Z0-9]{1}[a-zA-Z0-9-_]*[a-zA-Z0-9]{1}$" # start with alphanumeric, alphanumeric + hyphen + underscore, end with alphanumeric e.g. 01-1_A
  }

  # TODO: Validate all these validations
  validation_map = {
    /*
    Azure AD Domain Services (Microsoft.CognitiveServices/accounts with kind:AIDS)
    2-64 characters
    alphanumerics and hyphens
    must start and end with an alphanumeric
    */
    aadds = {
      min_length = 2,
      max_length = 64,
      pattern    = local.regexp_patterns.alphanumeric_hyphen_bk
    }

    /*
    Front Door (Microsoft.Cdn/profiles or Microsoft.Network/frontDoors)
    5-64 characters
    alphanumerics and hyphens
    must start and end with an alphanumeric
    */
    afd = {
      min_length = 5,
      max_length = 64,
      pattern    = local.regexp_patterns.alphanumeric_hyphen_bk
    }

    /*
    Azure NetApp Files (Microsoft.NetApp/netAppAccounts);
    1-128 characters
    alphanumerics, hyphens, and underscores
    must start and end with an alphanumeric
    */
    anf = {
      min_length = 1,
      max_length = 128,
      pattern    = "^[a-zA-Z0-9]{1}[a-zA-Z0-9-_]*[a-zA-Z0-9]{1}$" # alphanumeric_hyphen_underscore_bk
    }

    /*
    Api Management Service (Microsoft.ApiManagement/service)
    1–50 characters
    alphanumerics and hyphens
    must start with a letter and end with alphanumeric.
    */
    apim = {
      max_length = 50,
      pattern    = "^[a-zA-Z]{1}[a-zA-Z0-9-]*[a-zA-Z0-9]{1}$" # alpha_alphanumeric_hyphen_bk
    }

    /*
    App Service (Microsoft.Web/sites)
    1–50 characters
    alphanumerics and hyphens
    must start with a letter and end with alphanumeric.
    */
    app = {
      min_length = 2,
      max_length = 60,
      pattern    = local.regexp_patterns.alphanumeric_hyphen_bk
    }

    /*
    Application Insights (Microsoft.Insights/components)
    1-260 characters
    Can't use:
      :<>+/&%\?| or control characters

    Can't end with space or period.
    */
    appinsights = {
      min_length = 1,
      max_length = 50,
      pattern    = "^[^%&\\?/^]*[^%&\\?/. ^]$"
    }

    # Microsoft.AnalysisServices servers: resource group scope; 3–63 characters; lowercase letters and numbers; must start with a lowercase letter
    as = {
      max_length = 63,
      pattern    = "^[a-z]{1}[a-z0-9]{2,}$"
    }

    # Azure Spring Cloud (Microsoft.AppPlatform/spring)
    asc = {
      max_length = 32,
      pattern    = "^[a-z0-9-]+$"
    }

    # App Service Plan (Microsoft.Web/serverFarms)
    asp = {
      max_length = 60,
      pattern    = "^[a-zA-Z][a-zA-Z0-9-]*[a-zA-Z0-9]$"
    }

    # Azure Virtual Desktop (Microsoft.DesktopVirtualization/hostPools)
    avd = {
      max_length = 64,
      pattern    = "^[a-z0-9-]+$"
    }

    # Backup Vault (Microsoft.RecoveryServices/vaults)
    bak = {
      max_length = 50,
      pattern    = "^[a-zA-Z][a-zA-Z0-9-]*[a-zA-Z0-9]$"
    }

    # Bastion (Microsoft.Network/bastionHosts)
    bastion = {
      max_length = 80,
      pattern    = "^[a-z0-9-]+$"
    }

    # Blueprint (Microsoft.Blueprint/blueprints)
    bp = {
      max_length = 90,
      pattern    = "^[a-z0-9-_]+$"
    }

    # Blueprint Assignment (Microsoft.Blueprint/blueprints/artifacts)
    bpa = {
      max_length = 90,
      pattern    = "^[a-z0-9-_]+$"
    }

    # CDN (Microsoft.Cdn/profiles)
    cdn = {
      max_length = 260,
      pattern    = "^[a-z0-9-]+$"
    }

    # Cognitive Services (Microsoft.CognitiveServices/accounts)
    cogs = {
      max_length = 50,
      pattern    = "^[a-z0-9-]+$"
    }

    # Cosmos DB (Microsoft.DocumentDB/databaseAccounts)
    cosmos = {
      max_length = 44,
      pattern    = "^[a-z0-9]+$" # Only lowercase letters and numbers
    }

    # Container Registry (Microsoft.ContainerRegistry)
    cr = {
      max_length = 50,
      pattern    = "^[a-z0-9]+$" # 5–50 characters, lowercase alphanumerics only
    }

    # Fallback default for any resource type not explicitly listed
    default = {
      max_length = 63,
      pattern    = "^[a-z0-9-]+$"
    }

    # DNS (Microsoft.Network/dnsZones)
    dns = {
      max_length = 63,
      pattern    = "^[a-z0-9-]+(\\.[a-z0-9-]+)*$"
    }

    # Event Hub (Microsoft.EventHub/namespaces/eventHubs)
    eh = {
      max_length = 256,
      pattern    = "^[a-z0-9-]+$"
    }

    # Function App (Microsoft.Web/sites with functions)
    func = {
      max_length = 60,
      pattern    = "^[a-zA-Z][a-zA-Z0-9-]*[a-zA-Z0-9]$"
    }

    # Firewall (Microsoft.Network/azureFirewalls)
    fw = {
      max_length = 80,
      pattern    = "^[a-z0-9-]+$"
    }

    # IoT Hub (Microsoft.Devices/IotHubs)
    iot = {
      max_length = 50,
      pattern    = "^[a-z0-9-]+$"
    }

    # Log Analytics Workspace (Microsoft.OperationalInsights/workspaces)
    law = {
      max_length = 63,
      pattern    = "^[a-z0-9-]+$"
    }

    # Logic App (Microsoft.Logic/workflows)
    logic = {
      max_length = 50,
      pattern    = "^[a-z0-9-]+$"
    }

    # Media Services (Microsoft.Media/mediaservices)
    media = {
      max_length = 24,
      pattern    = "^[a-z0-9]+$"
    }

    # Migrate (Microsoft.Migrate/assessmentProjects)
    migrate = {
      max_length = 50,
      pattern    = "^[a-z0-9-]+$"
    }

    # Management Group (Microsoft.Management/managementGroups)
    mg = {
      max_length = 90,
      pattern    = "^[a-zA-Z0-9-_().]+$"
    }

    # Monitor (Microsoft.Insights components, Azure Monitor)
    monitor = {
      max_length = 50,
      pattern    = "^[a-z0-9-]+$"
    }

    # Network Interface (Microsoft.Compute)
    nic = {
      max_length = 80,
      pattern    = "^[a-z0-9-._]+$"
    }

    # Power BI Embedded (Microsoft.PowerBIDedicated/capacities)
    pbi = {
      max_length = 63,
      pattern    = "^[a-z0-9-]+$"
    }
    # Policy (Microsoft.Authorization/policyDefinitions)
    pol = {
      max_length = 60,
      pattern    = "^[a-z0-9-]+$"
    }

    # Public IP (Microsoft.Network)
    pip = {
      max_length = 80,
      pattern    = "^[a-z0-9-]+$"
    }

    # Resource Group (Microsoft.Resources/resourceGroups)
    rg = {
      max_length = 90,
      pattern    = "^[a-zA-Z0-9-_().]+$"
    }

    # Recovery Services Vault (Microsoft.RecoveryServices/vaults)
    rsv = {
      max_length = 50,
      pattern    = "^[a-zA-Z][a-zA-Z0-9-]*[a-zA-Z0-9]$"
    }

    # Service Bus (Microsoft.ServiceBus/namespaces)
    sb = {
      max_length = 50,
      pattern    = "^[a-z0-9-]+$"
    }

    # Cognitive Search (Microsoft.Search/searchServices)
    search = {
      max_length = 80,
      pattern    = "^[a-zA-Z][a-zA-Z0-9-]*[a-zA-Z0-9]$"
    }

    # Service Fabric (Microsoft.ServiceFabric/clusters)
    sf = {
      max_length = 23,
      pattern    = "^[a-z0-9-]+$"
    }

    # SignalR Service (Microsoft.SignalRService/SignalR)
    signalr = {
      max_length = 63,
      pattern    = "^[a-zA-Z][a-zA-Z0-9-]*[a-zA-Z0-9]$"
    }

    # Storage Account (Microsoft.Storage)
    st = {
      max_length = 24,
      pattern    = "^[a-z0-9]+$" # Must be lowercase, numbers only
    }

    # Subnet (Microsoft.Network; defined within a VNet)
    sub = {
      max_length = 80,
      pattern    = "^[a-z0-9-]+$"
    }

    # SQL Server (Microsoft.Sql/servers)
    sql = {
      max_length = 63,
      pattern    = "^[a-z0-9-]+$" # Lowercase letters, numbers, and hyphens; Can't start or end with hyphen.
    }

    # SQL Database (Microsoft.Sql/servers/databases)
    sqldb = {
      max_length = 63,
      pattern    = "^[a-z0-9-]+$"
    }

    # SQL Managed Instance (Microsoft.Sql/managedInstances)
    sqlmi = {
      max_length = 63,
      pattern    = "^[a-z0-9-]+$"
    }

    # Virtual Machine (Microsoft.Compute)
    vm = {
      max_length = 64,
      pattern    = "^[a-z0-9-]+$"
    }

    # Virtual Machine Scale Set (Microsoft.Compute)
    vmss = {
      max_length = 64,
      pattern    = "^[a-z0-9-]+$"
    }

    # Virtual Network (Microsoft.Network)
    vnet = {
      max_length = 64,
      pattern    = "^[a-z0-9-]+$"
    }
  }

  # Lookup the constraints for the current resource.
  constraints     = lookup(local.validation_map, local.resourceAbbr, local.validation_map["default"])
  name_max_length = local.constraints.max_length
  name_pattern    = local.constraints.pattern
}
