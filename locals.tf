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
    "azurestorsimple"  = "ssimp"
    "azure storsimple" = "ssimp"
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
    "vnet",   # Virtual Network – typically one per environment
    "cr",     # Container Registry – usually one per team/environment
    "rg",     # Resource Group – a global container
    "mg",     # Management Group – global across subscriptions
    "policy", # Policy – defined once per scope
    "ase",    # App Service Environment – deployed as a single environment
    "dce",    # Data Collection Endpoint – usually a singular configuration
    "dns",    # DNS Zone – typically unique per domain
    "app",    # App Service – typically unique per domain
    "as",     # Azure Analysis Services – typically unique per domain
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
    "policy", # Policy
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
    "as",       # Analysis Services server - alphanumerics only
    "ba",       # Batch account - lowercase letters and numbers
    "cr",       # Container Registry - alphanumerics only
    "cosmos",   # Cosmos DB account - hyphens are legal, but the house style is unbroken
    "dec",      # Data Explorer cluster - lowercase letters and numbers
    "dla",      # Data Lake Analytics account - lowercase letters and numbers
    "dls",      # Data Lake Store account - lowercase letters and numbers
    "fdfp",     # Front Door firewall policy - alphanumerics only
    "gal",      # Compute gallery - alphanumerics, underscores and periods; no hyphens
    "np",       # AKS user node pool - alphanumerics only
    "npsystem", # AKS system node pool - alphanumerics only
    "pbi",      # Power BI Embedded capacity - lowercase letters and numbers
    "st",       # Storage Account - lowercase letters and numbers
    "stvm",     # VM Storage Account - lowercase letters and numbers
    "syndp",    # Synapse SQL dedicated pool - hyphens are explicitly disallowed
    "synplh",   # Synapse private link hub - alphanumerics only
    "synsp",    # Synapse Spark pool - letters and numbers only
    "waf",      # Web Application Firewall policy - alphanumerics only
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
  #   {resourceAbbr}{businessUnitSection}{applicationSection}{workloadSection}{environmentSection}{regionSection}{instanceSection}
  name = "${local.resourceAbbr}${local.businessUnitSection}${local.applicationSection}${local.workloadSection}${local.environmentSection}${local.regionSection}${local.instanceSection}"

  ######################################################################
  # Named regex patterns used by the validation map below.
  #
  # Names are always lowercased before validation, so every class is
  # written over [a-z0-9] rather than [a-zA-Z0-9].
  ######################################################################
  regexp_patterns = {
    alnum                                 = "^[a-z0-9]+$"
    alnum_dot_paren_us_hyphen             = "^[a-z0-9._()-]+$"
    alnum_dot_paren_us_hyphen_ends_alnum  = "^[a-z0-9](?:[a-z0-9._()-]*[a-z0-9])?$"
    alnum_dot_paren_us_hyphen_start_alnum = "^[a-z0-9][a-z0-9._()-]*$"
    alnum_dot_slash_us_hyphen_ends_alnum  = "^[a-z0-9](?:[a-z0-9./_-]*[a-z0-9])?$"
    alnum_dot_us_ends_alnum               = "^[a-z0-9](?:[a-z0-9._]*[a-z0-9])?$"
    alnum_dot_us_hyphen                   = "^[a-z0-9._-]+$"
    alnum_dot_us_hyphen_end_alnum_us      = "^[a-z0-9](?:[a-z0-9._-]*[a-z0-9_])?$"
    alnum_dot_us_hyphen_ends_alnum        = "^[a-z0-9](?:[a-z0-9._-]*[a-z0-9])?$"
    alnum_dot_us_hyphen_start_alnum       = "^[a-z0-9][a-z0-9._-]*$"
    alnum_hyphen                          = "^[a-z0-9-]+$"
    alnum_hyphen_end_alnum                = "^[a-z0-9-]*[a-z0-9]$"
    alnum_hyphen_ends_alnum               = "^[a-z0-9](?:[a-z0-9-]*[a-z0-9])?$"
    alnum_hyphen_start_alnum              = "^[a-z0-9][a-z0-9-]*$"
    alnum_hyphen_start_letter             = "^[a-z][a-z0-9-]*$"
    alnum_hyphen_start_letter_end_alnum   = "^[a-z](?:[a-z0-9-]*[a-z0-9])?$"
    alnum_space_dot_hyphen                = "^[a-z0-9 .-]+$"
    alnum_start_letter                    = "^[a-z][a-z0-9]*$"
    alnum_us_hyphen                       = "^[a-z0-9_-]+$"
    alnum_us_hyphen_ends_alnum            = "^[a-z0-9](?:[a-z0-9_-]*[a-z0-9])?$"
    alnum_us_hyphen_start_alnum           = "^[a-z0-9][a-z0-9_-]*$"
    dns_labels                            = "^[a-z0-9-]+(\\.[a-z0-9-]+)*$"
  }

  ######################################################################
  # Per-resource-type name constraints.
  #
  # Sourced from 'Naming rules and restrictions for Azure resources':
  # https://learn.microsoft.com/en-us/azure/azure-resource-manager/management/resource-name-rules
  #
  # Each entry cites the resource provider entity it came from. Entries
  # marked 'no published rule' cover resources absent from that article;
  # they take the rule of the closest documented sibling, which is noted.
  ######################################################################
  validation_map = {
    # Fallback for resource types with no entry below.
    default = {
      min_length = 1
      max_length = 63
      pattern    = local.regexp_patterns.alnum_hyphen
    }

    ##### Compute & General #####

    # App Service (Microsoft.Web/sites)
    app = {
      min_length = 2
      max_length = 60
      pattern    = local.regexp_patterns.alnum_hyphen
    }

    # App Service Plan (Microsoft.Web/serverfarms)
    asp = {
      min_length = 1
      max_length = 60
      pattern    = local.regexp_patterns.alnum_hyphen
    }

    # Availability Set (Microsoft.Compute/availabilitySets)
    avail = {
      min_length = 1
      max_length = 80
      pattern    = local.regexp_patterns.alnum_dot_us_hyphen_end_alnum_us
    }

    # Cloud Service (Microsoft.Compute/cloudservices)
    cld = {
      min_length = 1
      max_length = 15
      pattern    = local.regexp_patterns.alnum_hyphen_ends_alnum
    }

    # Managed Disk (data) (Microsoft.Compute/disks)
    disk = {
      min_length = 1
      max_length = 80
      pattern    = local.regexp_patterns.alnum_us_hyphen
    }

    # Function App (Microsoft.Web/sites)
    func = {
      min_length = 2
      max_length = 60
      pattern    = local.regexp_patterns.alnum_hyphen
    }

    # Gallery (Microsoft.Compute/galleries)
    gal = {
      min_length = 1
      max_length = 80
      pattern    = local.regexp_patterns.alnum_dot_us_ends_alnum
    }

    # Image Template (Microsoft.Compute/images)
    it = {
      min_length = 1
      max_length = 80
      pattern    = local.regexp_patterns.alnum_dot_us_hyphen_end_alnum_us
    }

    # Virtual Machine Maintenance Configuration - no published rule; follows Maintenance/maintenanceConfigurations
    mc = {
      min_length = 1
      max_length = 64
      pattern    = local.regexp_patterns.alnum_dot_us_hyphen_end_alnum_us
    }

    # Network Interface (Microsoft.Network/networkInterfaces)
    nic = {
      min_length = 1
      max_length = 80
      pattern    = local.regexp_patterns.alnum_dot_us_hyphen_end_alnum_us
    }

    # Managed Disk (OS) (Microsoft.Compute/disks)
    osdisk = {
      min_length = 1
      max_length = 80
      pattern    = local.regexp_patterns.alnum_us_hyphen
    }

    # Public IP (Microsoft.Network/publicIPAddresses)
    pip = {
      min_length = 1
      max_length = 80
      pattern    = local.regexp_patterns.alnum_dot_us_hyphen_end_alnum_us
    }

    # Restore Point Collection - no published rule for Compute/restorePointCollections; follows Compute/disks
    rpc = {
      min_length = 1
      max_length = 80
      pattern    = local.regexp_patterns.alnum_dot_us_hyphen_end_alnum_us
    }

    # Snapshot (Microsoft.Compute/snapshots)
    snap = {
      min_length = 1
      max_length = 80
      pattern    = local.regexp_patterns.alnum_dot_us_hyphen_end_alnum_us
    }

    # Storage Account (Microsoft.Storage/storageAccounts)
    st = {
      min_length = 3
      max_length = 24
      pattern    = local.regexp_patterns.alnum
    }

    # VM Storage Account (Microsoft.Storage/storageAccounts)
    stvm = {
      min_length = 3
      max_length = 24
      pattern    = local.regexp_patterns.alnum
    }

    # Virtual Machine (Microsoft.Compute/virtualMachines)
    vm = {
      min_length = 1
      max_length = 64
      pattern    = local.regexp_patterns.alnum_dot_us_hyphen_end_alnum_us
    }

    # Virtual Machine Scale Set (Microsoft.Compute/virtualMachineScaleSets)
    vmss = {
      min_length = 1
      max_length = 64
      pattern    = local.regexp_patterns.alnum_dot_us_hyphen_end_alnum_us
    }

    # Virtual Network (Microsoft.Network/virtualNetworks)
    vnet = {
      min_length = 2
      max_length = 64
      pattern    = local.regexp_patterns.alnum_dot_us_hyphen_end_alnum_us
    }

    ##### AI + Machine Learning #####

    # Azure AI services (Microsoft.CognitiveServices/accounts)
    ais = {
      min_length = 2
      max_length = 64
      pattern    = local.regexp_patterns.alnum_hyphen_ends_alnum
    }

    # Azure AI Video Indexer (Microsoft.CognitiveServices/accounts)
    avi = {
      min_length = 2
      max_length = 64
      pattern    = local.regexp_patterns.alnum_hyphen_ends_alnum
    }

    # Bot service (Microsoft.BotService/botServices)
    bot = {
      min_length = 2
      max_length = 64
      pattern    = local.regexp_patterns.alnum_dot_us_hyphen_start_alnum
    }

    # Content moderator (Microsoft.CognitiveServices/accounts)
    cm = {
      min_length = 2
      max_length = 64
      pattern    = local.regexp_patterns.alnum_hyphen_ends_alnum
    }

    # Content safety (Microsoft.CognitiveServices/accounts)
    cs = {
      min_length = 2
      max_length = 64
      pattern    = local.regexp_patterns.alnum_hyphen_ends_alnum
    }

    # Custom vision (prediction) (Microsoft.CognitiveServices/accounts)
    cstv = {
      min_length = 2
      max_length = 64
      pattern    = local.regexp_patterns.alnum_hyphen_ends_alnum
    }

    # Custom vision (training) (Microsoft.CognitiveServices/accounts)
    cstvt = {
      min_length = 2
      max_length = 64
      pattern    = local.regexp_patterns.alnum_hyphen_ends_alnum
    }

    # Computer vision (Microsoft.CognitiveServices/accounts)
    cv = {
      min_length = 2
      max_length = 64
      pattern    = local.regexp_patterns.alnum_hyphen_ends_alnum
    }

    # Document intelligence (Microsoft.CognitiveServices/accounts)
    di = {
      min_length = 2
      max_length = 64
      pattern    = local.regexp_patterns.alnum_hyphen_ends_alnum
    }

    # Face API (Microsoft.CognitiveServices/accounts)
    face = {
      min_length = 2
      max_length = 64
      pattern    = local.regexp_patterns.alnum_hyphen_ends_alnum
    }

    # Health Insights (Microsoft.CognitiveServices/accounts)
    hi = {
      min_length = 2
      max_length = 64
      pattern    = local.regexp_patterns.alnum_hyphen_ends_alnum
    }

    # Azure AI Studio hub (Microsoft.MachineLearningServices/workspaces)
    hub = {
      min_length = 3
      max_length = 33
      pattern    = local.regexp_patterns.alnum_us_hyphen
    }

    # Immersive reader (Microsoft.CognitiveServices/accounts)
    ir = {
      min_length = 2
      max_length = 64
      pattern    = local.regexp_patterns.alnum_hyphen_ends_alnum
    }

    # Language service (Microsoft.CognitiveServices/accounts)
    lang = {
      min_length = 2
      max_length = 64
      pattern    = local.regexp_patterns.alnum_hyphen_ends_alnum
    }

    # Azure Machine Learning workspace (Microsoft.MachineLearningServices/workspaces)
    mlw = {
      min_length = 3
      max_length = 33
      pattern    = local.regexp_patterns.alnum_us_hyphen
    }

    # Azure OpenAI Service (Microsoft.CognitiveServices/accounts)
    oai = {
      min_length = 2
      max_length = 64
      pattern    = local.regexp_patterns.alnum_hyphen_ends_alnum
    }

    # Azure AI Studio project (Microsoft.MachineLearningServices/workspaces)
    proj = {
      min_length = 3
      max_length = 33
      pattern    = local.regexp_patterns.alnum_us_hyphen
    }

    # Speech service (Microsoft.CognitiveServices/accounts)
    spch = {
      min_length = 2
      max_length = 64
      pattern    = local.regexp_patterns.alnum_hyphen_ends_alnum
    }

    # AI Search - no published rule; follows Search/searchServices
    srch = {
      min_length = 2
      max_length = 60
      pattern    = local.regexp_patterns.alnum_hyphen_ends_alnum
    }

    # Translator (Microsoft.CognitiveServices/accounts)
    trsl = {
      min_length = 2
      max_length = 64
      pattern    = local.regexp_patterns.alnum_hyphen_ends_alnum
    }

    ##### Analytics and IoT #####

    # Azure Data Factory (Microsoft.DataFactory/factories)
    adf = {
      min_length = 3
      max_length = 63
      pattern    = local.regexp_patterns.alnum_hyphen_ends_alnum
    }

    # Azure Analysis Services server (Microsoft.AnalysisServices/servers)
    as = {
      min_length = 3
      max_length = 63
      pattern    = local.regexp_patterns.alnum_start_letter
    }

    # Azure Stream Analytics (Microsoft.StreamAnalytics/streamingjobs)
    asa = {
      min_length = 3
      max_length = 63
      pattern    = local.regexp_patterns.alnum_us_hyphen
    }

    # Azure Databricks workspace (Microsoft.Databricks/workspaces)
    dbw = {
      min_length = 3
      max_length = 64
      pattern    = local.regexp_patterns.alnum_us_hyphen
    }

    # Azure Data Explorer cluster (Microsoft.Kusto/clusters)
    dec = {
      min_length = 4
      max_length = 22
      pattern    = local.regexp_patterns.alnum_start_letter
    }

    # Azure Data Explorer cluster database (Microsoft.Kusto//clusters/databases)
    dedb = {
      min_length = 1
      max_length = 260
      pattern    = local.regexp_patterns.alnum_space_dot_hyphen
    }

    # Data Lake Analytics account (Microsoft.DataLakeAnalytics/accounts)
    dla = {
      min_length = 3
      max_length = 24
      pattern    = local.regexp_patterns.alnum
    }

    # Data Lake Store account (Microsoft.DataLakeStore/accounts)
    dls = {
      min_length = 3
      max_length = 24
      pattern    = local.regexp_patterns.alnum
    }

    # Azure Digital Twin instance - no published rule; follows DigitalTwins/digitalTwinsInstances
    dt = {
      min_length = 3
      max_length = 63
      pattern    = local.regexp_patterns.alnum_hyphen_ends_alnum
    }

    # Event Grid system topic (Microsoft.EventGrid/topics)
    egst = {
      min_length = 3
      max_length = 50
      pattern    = local.regexp_patterns.alnum_hyphen
    }

    # Event Grid domain (Microsoft.EventGrid/domains)
    evgd = {
      min_length = 3
      max_length = 50
      pattern    = local.regexp_patterns.alnum_hyphen
    }

    # Event Grid subscriptions (Microsoft.EventGrid/eventSubscriptions)
    evgs = {
      min_length = 3
      max_length = 64
      pattern    = local.regexp_patterns.alnum_hyphen
    }

    # Event Grid topic (Microsoft.EventGrid/topics)
    evgt = {
      min_length = 3
      max_length = 50
      pattern    = local.regexp_patterns.alnum_hyphen
    }

    # Event hub (Microsoft.EventHub/namespaces/eventhubs)
    evh = {
      min_length = 1
      max_length = 256
      pattern    = local.regexp_patterns.alnum_dot_us_hyphen_ends_alnum
    }

    # Event Hubs namespace (Microsoft.EventHub/namespaces)
    evhns = {
      min_length = 6
      max_length = 50
      pattern    = local.regexp_patterns.alnum_hyphen_start_letter_end_alnum
    }

    # HDInsight – Hadoop cluster (Microsoft.HDInsight/clusters)
    hadoop = {
      min_length = 3
      max_length = 59
      pattern    = local.regexp_patterns.alnum_hyphen_ends_alnum
    }

    # HDInsight – HBase cluster (Microsoft.HDInsight/clusters)
    hbase = {
      min_length = 3
      max_length = 59
      pattern    = local.regexp_patterns.alnum_hyphen_ends_alnum
    }

    # IoT hub (Microsoft.Devices/IotHubs)
    iot = {
      min_length = 3
      max_length = 50
      pattern    = local.regexp_patterns.alnum_hyphen
    }

    # HDInsight – Kafka cluster (Microsoft.HDInsight/clusters)
    kafka = {
      min_length = 3
      max_length = 59
      pattern    = local.regexp_patterns.alnum_hyphen_ends_alnum
    }

    # HDInsight – ML Services cluster (Microsoft.HDInsight/clusters)
    mls = {
      min_length = 3
      max_length = 59
      pattern    = local.regexp_patterns.alnum_hyphen_ends_alnum
    }

    # Power BI Embedded (Microsoft.PowerBIDedicated/capacities)
    pbi = {
      min_length = 3
      max_length = 63
      pattern    = local.regexp_patterns.alnum_start_letter
    }

    # Provisioning services certificate (Microsoft.Devices/provisioningServices/certificates)
    pcert = {
      min_length = 1
      max_length = 64
      pattern    = local.regexp_patterns.alnum_dot_us_hyphen
    }

    # Provisioning services (Microsoft.Devices/provisioningServices)
    provs = {
      min_length = 3
      max_length = 64
      pattern    = local.regexp_patterns.alnum_hyphen_end_alnum
    }

    # HDInsight – Spark cluster (Microsoft.HDInsight/clusters)
    spark = {
      min_length = 3
      max_length = 59
      pattern    = local.regexp_patterns.alnum_hyphen_ends_alnum
    }

    # HDInsight – Storm cluster (Microsoft.HDInsight/clusters)
    storm = {
      min_length = 3
      max_length = 59
      pattern    = local.regexp_patterns.alnum_hyphen_ends_alnum
    }

    # Azure Synapse Analytics SQL Dedicated Pool (Microsoft.Synapse/workspaces/sqlPools)
    syndp = {
      min_length = 1
      max_length = 60
      pattern    = local.regexp_patterns.alnum_dot_us_ends_alnum
    }

    # Azure Synapse Analytics private link hub (Microsoft.Synapse/privateLinkHubs)
    synplh = {
      min_length = 1
      max_length = 45
      pattern    = local.regexp_patterns.alnum
    }

    # Azure Synapse Analytics Spark Pool (Microsoft.Synapse/workspaces/bigDataPools)
    synsp = {
      min_length = 1
      max_length = 15
      pattern    = local.regexp_patterns.alnum_start_letter
    }

    # Azure Synapse Analytics workspaces (Microsoft.Synapse/workspaces)
    synw = {
      min_length = 1
      max_length = 50
      pattern    = local.regexp_patterns.alnum_hyphen_ends_alnum
    }

    # Time Series Insights environment (Microsoft.TimeSeriesInsights/environments)
    tsi = {
      min_length = 1
      max_length = 90
      pattern    = local.regexp_patterns.alnum_dot_us_hyphen_end_alnum_us
    }

    ##### Compute and Web (Additional) #####

    # Communication Services (Microsoft.Communication/communicationServices)
    acs = {
      min_length = 1
      max_length = 63
      pattern    = local.regexp_patterns.alnum_hyphen
    }

    # Azure Arc gateway - no published rule; follows HybridCompute/gateways
    arcgw = {
      min_length = 1
      max_length = 80
      pattern    = local.regexp_patterns.alnum_dot_us_hyphen_end_alnum_us
    }

    # Azure Arc enabled Kubernetes cluster - no published rule; follows Kubernetes/connectedClusters
    arck = {
      min_length = 1
      max_length = 63
      pattern    = local.regexp_patterns.alnum_dot_us_hyphen_end_alnum_us
    }

    # Azure Arc enabled server - no published rule; follows HybridCompute/machines
    arcs = {
      min_length = 1
      max_length = 54
      pattern    = local.regexp_patterns.alnum_hyphen_ends_alnum
    }

    # App Service environment - no published rule for Web/hostingEnvironments; follows Web/serverfarms
    ase = {
      min_length = 1
      max_length = 60
      pattern    = local.regexp_patterns.alnum_hyphen_ends_alnum
    }

    # Batch accounts (Microsoft.Batch/batchAccounts)
    ba = {
      min_length = 3
      max_length = 24
      pattern    = local.regexp_patterns.alnum
    }

    # Disk encryption set (Microsoft.Compute/diskEncryptionSets)
    des = {
      min_length = 1
      max_length = 80
      pattern    = local.regexp_patterns.alnum_us_hyphen
    }

    # Hosting environment (for web apps) - no published rule for Web/hostingEnvironments; follows Web/serverfarms
    host = {
      min_length = 1
      max_length = 60
      pattern    = local.regexp_patterns.alnum_hyphen_ends_alnum
    }

    # Azure Load Testing instance (Microsoft.LoadTestService/loadtests)
    lt = {
      min_length = 1
      max_length = 64
      pattern    = local.regexp_patterns.alnum_us_hyphen_ends_alnum
    }

    # Notification Hubs (Microsoft.NotificationHubs/namespaces/notificationHubs)
    ntf = {
      min_length = 1
      max_length = 260
      pattern    = local.regexp_patterns.alnum_dot_us_hyphen_start_alnum
    }

    # Notification Hubs namespace (Microsoft.NotificationHubs/namespaces)
    ntfns = {
      min_length = 6
      max_length = 50
      pattern    = local.regexp_patterns.alnum_hyphen_start_letter_end_alnum
    }

    # Azure Arc private link scope - no published rule; follows HybridCompute/privateLinkScopes
    pls = {
      min_length = 1
      max_length = 80
      pattern    = local.regexp_patterns.alnum_dot_us_hyphen_end_alnum_us
    }

    # Proximity placement group - no published rule; follows Compute/proximityPlacementGroups
    ppg = {
      min_length = 1
      max_length = 80
      pattern    = local.regexp_patterns.alnum_dot_us_hyphen_end_alnum_us
    }

    ##### Containers #####

    # AKS cluster (Microsoft.ContainerService/managedClusters)
    aks = {
      min_length = 1
      max_length = 63
      pattern    = local.regexp_patterns.alnum_us_hyphen_ends_alnum
    }

    # Container apps (Microsoft.App/containerApps)
    ca = {
      min_length = 2
      max_length = 32
      pattern    = local.regexp_patterns.alnum_hyphen_start_letter_end_alnum
    }

    # Container apps environment - no published rule for App/managedEnvironments; follows App/containerApps
    cae = {
      min_length = 2
      max_length = 32
      pattern    = local.regexp_patterns.alnum_hyphen_start_letter_end_alnum
    }

    # Container instance (Microsoft.ContainerInstance/containerGroups)
    ci = {
      min_length = 1
      max_length = 63
      pattern    = local.regexp_patterns.alnum_hyphen
    }

    # Container registry (Microsoft.ContainerRegistry/registries)
    cr = {
      min_length = 5
      max_length = 50
      pattern    = local.regexp_patterns.alnum
    }

    # AKS user node pool (Microsoft.ContainerService/managedClusters/agentPools)
    np = {
      min_length = 1
      max_length = 12
      pattern    = local.regexp_patterns.alnum
    }

    # AKS system node pool (Microsoft.ContainerService/managedClusters/agentPools)
    npsystem = {
      min_length = 1
      max_length = 12
      pattern    = local.regexp_patterns.alnum
    }

    # Service Fabric cluster (Microsoft.ServiceFabric/clusters)
    sf = {
      min_length = 4
      max_length = 23
      pattern    = local.regexp_patterns.alnum_hyphen_start_letter
    }

    # Service Fabric managed cluster - no published rule for ServiceFabric/managedClusters; follows ServiceFabric/clusters
    sfmc = {
      min_length = 4
      max_length = 23
      pattern    = local.regexp_patterns.alnum_hyphen_start_letter_end_alnum
    }

    ##### Databases #####

    # Azure Cosmos DB for Apache Cassandra account (Microsoft.DocumentDB/databaseAccounts)
    coscas = {
      min_length = 3
      max_length = 44
      pattern    = local.regexp_patterns.alnum_hyphen_start_alnum
    }

    # Azure Cosmos DB for Apache Gremlin account (Microsoft.DocumentDB/databaseAccounts)
    cosgrm = {
      min_length = 3
      max_length = 44
      pattern    = local.regexp_patterns.alnum_hyphen_start_alnum
    }

    # Azure Cosmos DB for MongoDB account (Microsoft.DocumentDB/databaseAccounts)
    cosmon = {
      min_length = 3
      max_length = 44
      pattern    = local.regexp_patterns.alnum_hyphen_start_alnum
    }

    # Azure Cosmos DB database (Microsoft.DocumentDB/databaseAccounts)
    cosmos = {
      min_length = 3
      max_length = 44
      pattern    = local.regexp_patterns.alnum_hyphen_start_alnum
    }

    # Azure Cosmos DB for NoSQL account (Microsoft.DocumentDB/databaseAccounts)
    cosno = {
      min_length = 3
      max_length = 44
      pattern    = local.regexp_patterns.alnum_hyphen_start_alnum
    }

    # Azure Cosmos DB PostgreSQL cluster (Microsoft.DocumentDB/databaseAccounts)
    cospos = {
      min_length = 3
      max_length = 44
      pattern    = local.regexp_patterns.alnum_hyphen_start_alnum
    }

    # Azure Cosmos DB for Table account (Microsoft.DocumentDB/databaseAccounts)
    costab = {
      min_length = 3
      max_length = 44
      pattern    = local.regexp_patterns.alnum_hyphen_start_alnum
    }

    # MariaDB server (Microsoft.DBforMariaDB/servers)
    maria = {
      min_length = 3
      max_length = 63
      pattern    = local.regexp_patterns.alnum_hyphen
    }

    # MariaDB database (Microsoft.DBforMariaDB/servers/databases)
    mariadb = {
      min_length = 1
      max_length = 63
      pattern    = local.regexp_patterns.alnum_hyphen
    }

    # MySQL database (Microsoft.DBforMySQL/servers)
    mysql = {
      min_length = 3
      max_length = 63
      pattern    = local.regexp_patterns.alnum_hyphen
    }

    # PostgreSQL database (Microsoft.DBforPostgreSQL/servers)
    psql = {
      min_length = 3
      max_length = 63
      pattern    = local.regexp_patterns.alnum_hyphen
    }

    # Azure Cache for Redis instance (Microsoft.Cache/Redis)
    redis = {
      min_length = 1
      max_length = 63
      pattern    = local.regexp_patterns.alnum_hyphen_ends_alnum
    }

    # Azure SQL Database server (Microsoft.Sql/servers)
    sql = {
      min_length = 1
      max_length = 63
      pattern    = local.regexp_patterns.alnum_hyphen
    }

    # Azure SQL database (Microsoft.Sql/servers/databases)
    sqldb = {
      min_length = 1
      max_length = 128
      pattern    = local.regexp_patterns.alnum_dot_us_hyphen_end_alnum_us
    }

    # Azure SQL Elastic Pool (Microsoft.Sql/servers/elasticPools)
    sqlep = {
      min_length = 1
      max_length = 128
      pattern    = local.regexp_patterns.alnum_dot_us_hyphen_end_alnum_us
    }

    # Azure SQL Elastic Job agent - no published rule for Sql/servers/jobAgents; follows Sql/servers/databases
    sqlja = {
      min_length = 1
      max_length = 128
      pattern    = local.regexp_patterns.alnum_hyphen_ends_alnum
    }

    # SQL Managed Instance (Microsoft.Sql/managedInstances)
    sqlmi = {
      min_length = 1
      max_length = 63
      pattern    = local.regexp_patterns.alnum_hyphen
    }

    # SQL Server Stretch Database (Microsoft.Sql/servers/databases)
    sqlstrdb = {
      min_length = 1
      max_length = 128
      pattern    = local.regexp_patterns.alnum_dot_us_hyphen_end_alnum_us
    }

    ##### Developer Tools #####

    # App Configuration store (Microsoft.AppConfiguration/configurationStores)
    appcs = {
      min_length = 5
      max_length = 50
      pattern    = local.regexp_patterns.alnum_hyphen
    }

    # Maps account (Microsoft.Maps/accounts)
    map = {
      min_length = 1
      max_length = 98
      pattern    = local.regexp_patterns.alnum_dot_us_hyphen_start_alnum
    }

    # SignalR (Microsoft.SignalRService/signalR)
    sigr = {
      min_length = 3
      max_length = 63
      pattern    = local.regexp_patterns.alnum_hyphen_start_letter_end_alnum
    }

    # WebPubSub - no published rule for SignalRService/webPubSub; follows SignalRService/signalR
    wps = {
      min_length = 3
      max_length = 63
      pattern    = local.regexp_patterns.alnum_hyphen_start_letter_end_alnum
    }

    ##### DevOps #####

    # Azure Managed Grafana - no published rule; follows Dashboard/grafana
    amg = {
      min_length = 2
      max_length = 23
      pattern    = local.regexp_patterns.alnum_hyphen_start_letter_end_alnum
    }

    ##### Integration #####

    # API management service instance (Microsoft.ApiManagement/service)
    apim = {
      min_length = 1
      max_length = 50
      pattern    = local.regexp_patterns.alnum_hyphen_start_letter_end_alnum
    }

    # Integration account (Microsoft.Logic/integrationAccounts)
    ia = {
      min_length = 1
      max_length = 80
      pattern    = local.regexp_patterns.alnum_dot_paren_us_hyphen
    }

    # Logic app (Microsoft.Logic/workflows)
    logic = {
      min_length = 1
      max_length = 43
      pattern    = local.regexp_patterns.alnum_dot_paren_us_hyphen
    }

    # Service Bus namespace (Microsoft.ServiceBus/namespaces)
    sbns = {
      min_length = 6
      max_length = 50
      pattern    = local.regexp_patterns.alnum_hyphen_start_letter_end_alnum
    }

    # Service Bus queue (Microsoft.ServiceBus/namespaces/queues)
    sbq = {
      min_length = 1
      max_length = 260
      pattern    = local.regexp_patterns.alnum_dot_slash_us_hyphen_ends_alnum
    }

    # Service Bus topic (Microsoft.ServiceBus/namespaces/topics)
    sbt = {
      min_length = 1
      max_length = 260
      pattern    = local.regexp_patterns.alnum_dot_slash_us_hyphen_ends_alnum
    }

    # Service Bus topic subscription (Microsoft.ServiceBus/namespaces/topics/subscriptions)
    sbts = {
      min_length = 1
      max_length = 50
      pattern    = local.regexp_patterns.alnum_dot_us_hyphen_ends_alnum
    }

    ##### Management and Governance #####

    # Automation account (Microsoft.Automation/automationAccounts)
    aa = {
      min_length = 6
      max_length = 50
      pattern    = local.regexp_patterns.alnum_hyphen_start_letter_end_alnum
    }

    # Azure Monitor action group (Microsoft.Insights/actionGroups)
    ag = {
      min_length = 1
      max_length = 260
      pattern    = local.regexp_patterns.alnum_dot_us_hyphen_end_alnum_us
    }

    # Application Insights (Microsoft.Insights/components)
    appi = {
      min_length = 1
      max_length = 260
      pattern    = local.regexp_patterns.alnum_dot_us_hyphen_end_alnum_us
    }

    # Azure Monitor alert processing rule - no published rule for AlertsManagement/actionRules; follows Insights/actionGroups
    apr = {
      min_length = 1
      max_length = 260
      pattern    = local.regexp_patterns.alnum_dot_us_hyphen_end_alnum_us
    }

    # Blueprint (planned for deprecation) (Microsoft.Blueprint/blueprint)
    bp = {
      min_length = 1
      max_length = 90
      pattern    = local.regexp_patterns.alnum_us_hyphen
    }

    # Blueprint (planned for deprecation) (Microsoft.Blueprint/blueprintAssignments)
    bpa = {
      min_length = 1
      max_length = 90
      pattern    = local.regexp_patterns.alnum_us_hyphen
    }

    # Data collection endpoint - no published rule; follows Insights/dataCollectionEndpoints
    dce = {
      min_length = 1
      max_length = 44
      pattern    = local.regexp_patterns.alnum_dot_us_hyphen_end_alnum_us
    }

    # Azure Monitor data collection rule - no published rule; follows Insights/dataCollectionRules
    dcr = {
      min_length = 1
      max_length = 64
      pattern    = local.regexp_patterns.alnum_dot_us_hyphen_end_alnum_us
    }

    # Log Analytics workspace (Microsoft.OperationalInsights/workspaces)
    log = {
      min_length = 4
      max_length = 63
      pattern    = local.regexp_patterns.alnum_hyphen_ends_alnum
    }

    # Management group (Microsoft.Management/managementgroups)
    mg = {
      min_length = 1
      max_length = 90
      pattern    = local.regexp_patterns.alnum_dot_paren_us_hyphen_start_alnum
    }

    # Log Analytics query packs - no published rule; follows OperationalInsights/queryPacks
    pack = {
      min_length = 1
      max_length = 260
      pattern    = local.regexp_patterns.alnum_dot_us_hyphen_end_alnum_us
    }

    # Azure Policy definition (no standard short form provided; can be left descriptive) (Microsoft.Authorization/policyDefinitions)
    policy = {
      min_length = 1
      max_length = 64
      pattern    = local.regexp_patterns.alnum_dot_us_hyphen_end_alnum_us
    }

    # Microsoft Purview instance - no published rule; follows Purview/accounts
    pview = {
      min_length = 3
      max_length = 63
      pattern    = local.regexp_patterns.alnum_hyphen_start_letter_end_alnum
    }

    # Resource group (Microsoft.Resources/resourcegroups)
    rg = {
      min_length = 1
      max_length = 90
      pattern    = local.regexp_patterns.alnum_dot_paren_us_hyphen_ends_alnum
    }

    # Template specs name (Microsoft.Resources/templateSpecs)
    ts = {
      min_length = 1
      max_length = 90
      pattern    = local.regexp_patterns.alnum_dot_paren_us_hyphen
    }

    ##### Migration #####

    # Database Migration Service instance (Microsoft.DataMigration/services)
    dms = {
      min_length = 2
      max_length = 62
      pattern    = local.regexp_patterns.alnum_dot_us_hyphen_start_alnum
    }

    # Azure Migrate project - no published rule; follows Migrate/migrateProjects
    migr = {
      min_length = 1
      max_length = 260
      pattern    = local.regexp_patterns.alnum_dot_us_hyphen_end_alnum_us
    }

    # Recovery Services vault (Microsoft.RecoveryServices/vaults)
    rsv = {
      min_length = 2
      max_length = 50
      pattern    = local.regexp_patterns.alnum_hyphen_start_letter
    }

    ##### Networking #####

    # Front Door (Standard/Premium) profile (Microsoft.Network/frontDoors)
    afd = {
      min_length = 5
      max_length = 64
      pattern    = local.regexp_patterns.alnum_hyphen_ends_alnum
    }

    # Firewall (Microsoft.Network/azureFirewalls)
    afw = {
      min_length = 1
      max_length = 80
      pattern    = local.regexp_patterns.alnum_dot_us_hyphen_end_alnum_us
    }

    # Firewall policy (Microsoft.Network/firewallPolicies)
    afwp = {
      min_length = 1
      max_length = 80
      pattern    = local.regexp_patterns.alnum_dot_us_hyphen_end_alnum_us
    }

    # Application gateway (Microsoft.Network/applicationGateways)
    agw = {
      min_length = 1
      max_length = 80
      pattern    = local.regexp_patterns.alnum_dot_us_hyphen_end_alnum_us
    }

    # Application security group (ASG) (Microsoft.Network/applicationSecurityGroups)
    asg = {
      min_length = 1
      max_length = 80
      pattern    = local.regexp_patterns.alnum_dot_us_hyphen_end_alnum_us
    }

    # CDN endpoint (Microsoft.Cdn/profiles/endpoints)
    cdne = {
      min_length = 1
      max_length = 50
      pattern    = local.regexp_patterns.alnum_hyphen_ends_alnum
    }

    # CDN profile (Microsoft.Cdn/profiles)
    cdnp = {
      min_length = 1
      max_length = 260
      pattern    = local.regexp_patterns.alnum_hyphen_ends_alnum
    }

    # Connections (Microsoft.Network/connections)
    con = {
      min_length = 1
      max_length = 80
      pattern    = local.regexp_patterns.alnum_dot_us_hyphen_end_alnum_us
    }

    # DNS – (Note: Abbreviation may be customized per DNS domain name) (Microsoft.Network/dnsZones)
    dns = {
      min_length = 1
      max_length = 63
      pattern    = local.regexp_patterns.dns_labels
    }

    # DNS forwarding ruleset (Microsoft.Network/dnsForwardingRuleset)
    dnsfrs = {
      min_length = 1
      max_length = 80
      pattern    = local.regexp_patterns.alnum_us_hyphen_ends_alnum
    }

    # DNS private resolver (Microsoft.Network/dnsResolvers)
    dnspr = {
      min_length = 1
      max_length = 80
      pattern    = local.regexp_patterns.alnum_us_hyphen_ends_alnum
    }

    # ExpressRoute circuit (Microsoft.Network/expressRouteCircuits)
    erc = {
      min_length = 1
      max_length = 80
      pattern    = local.regexp_patterns.alnum_dot_us_hyphen_end_alnum_us
    }

    # ExpressRoute direct - no published rule; follows Network/expressRoutePorts
    erd = {
      min_length = 1
      max_length = 80
      pattern    = local.regexp_patterns.alnum_dot_us_hyphen_end_alnum_us
    }

    # ExpressRoute gateway (Microsoft.Network/virtualNetworkGateways)
    ergw = {
      min_length = 1
      max_length = 80
      pattern    = local.regexp_patterns.alnum_dot_us_hyphen_end_alnum_us
    }

    # Front Door (Standard/Premium) endpoint (Microsoft.Cdn/profiles/endpoints)
    fde = {
      min_length = 1
      max_length = 50
      pattern    = local.regexp_patterns.alnum_hyphen_ends_alnum
    }

    # Front Door firewall policy (Microsoft.Network/frontdoorWebApplicationFirewallPolicies)
    fdfp = {
      min_length = 1
      max_length = 128
      pattern    = local.regexp_patterns.alnum_start_letter
    }

    # DNS private resolver inbound endpoint (Microsoft.Network/dnsResolvers/inboundEndpoints)
    in = {
      min_length = 1
      max_length = 80
      pattern    = local.regexp_patterns.alnum_us_hyphen_ends_alnum
    }

    # IP group - no published rule; follows Network/ipGroups
    ipg = {
      min_length = 1
      max_length = 80
      pattern    = local.regexp_patterns.alnum_dot_us_hyphen_end_alnum_us
    }

    # Public IP address prefix (Microsoft.Network/publicIPPrefixes)
    ippre = {
      min_length = 1
      max_length = 80
      pattern    = local.regexp_patterns.alnum_dot_us_hyphen_end_alnum_us
    }

    # Load balancer (external) (Microsoft.Network/loadBalancers)
    lbe = {
      min_length = 1
      max_length = 80
      pattern    = local.regexp_patterns.alnum_dot_us_hyphen_end_alnum_us
    }

    # Load balancer (internal) (Microsoft.Network/loadBalancers)
    lbi = {
      min_length = 1
      max_length = 80
      pattern    = local.regexp_patterns.alnum_dot_us_hyphen_end_alnum_us
    }

    # Local network gateway (Microsoft.Network/localNetworkGateways)
    lgw = {
      min_length = 1
      max_length = 80
      pattern    = local.regexp_patterns.alnum_dot_us_hyphen_end_alnum_us
    }

    # NAT gateway - no published rule; follows Network/natGateways
    ng = {
      min_length = 1
      max_length = 80
      pattern    = local.regexp_patterns.alnum_dot_us_hyphen_end_alnum_us
    }

    # Network security group (NSG) (Microsoft.Network/networkSecurityGroups)
    nsg = {
      min_length = 1
      max_length = 80
      pattern    = local.regexp_patterns.alnum_dot_us_hyphen_end_alnum_us
    }

    # NSG security rules (Microsoft.Network/networkSecurityGroups/securityRules)
    nsgsr = {
      min_length = 1
      max_length = 80
      pattern    = local.regexp_patterns.alnum_dot_us_hyphen_end_alnum_us
    }

    # Network Watcher (Microsoft.Network/networkWatchers)
    nw = {
      min_length = 1
      max_length = 80
      pattern    = local.regexp_patterns.alnum_dot_us_hyphen_end_alnum_us
    }

    # DNS private resolver outbound endpoint (Microsoft.Network/dnsResolvers/outboundEndpoints)
    out = {
      min_length = 1
      max_length = 80
      pattern    = local.regexp_patterns.alnum_us_hyphen_ends_alnum
    }

    # Virtual network peering (Microsoft.Network/virtualNetworks/virtualNetworkPeerings)
    peer = {
      min_length = 1
      max_length = 80
      pattern    = local.regexp_patterns.alnum_dot_us_hyphen_end_alnum_us
    }

    # Private endpoint (Microsoft.Network/privateEndpoints)
    pep = {
      min_length = 2
      max_length = 64
      pattern    = local.regexp_patterns.alnum_dot_us_hyphen_end_alnum_us
    }

    # Private Link (Microsoft.Network/privateLinkServices)
    pl = {
      min_length = 2
      max_length = 64
      pattern    = local.regexp_patterns.alnum_dot_us_hyphen_end_alnum_us
    }

    # Route filter (Microsoft.Network/routeFilters)
    rf = {
      min_length = 1
      max_length = 80
      pattern    = local.regexp_patterns.alnum_dot_us_hyphen_end_alnum_us
    }

    # Route table (Microsoft.Network/routeTables)
    rt = {
      min_length = 1
      max_length = 80
      pattern    = local.regexp_patterns.alnum_dot_us_hyphen_end_alnum_us
    }

    # Route server - no published rule; follows Network/virtualHubs routeServers
    rtserv = {
      min_length = 1
      max_length = 80
      pattern    = local.regexp_patterns.alnum_dot_us_hyphen_end_alnum_us
    }

    # Load balancer rule (Microsoft.Network/loadBalancers/inboundNatRules)
    rule = {
      min_length = 1
      max_length = 80
      pattern    = local.regexp_patterns.alnum_dot_us_hyphen_end_alnum_us
    }

    # Service endpoint policy (Microsoft.Network/serviceEndpointPolicies)
    se = {
      min_length = 1
      max_length = 80
      pattern    = local.regexp_patterns.alnum_dot_us_hyphen_end_alnum_us
    }

    # Virtual network subnet (Microsoft.Network/virtualnetworks/subnets)
    snet = {
      min_length = 1
      max_length = 80
      pattern    = local.regexp_patterns.alnum_dot_us_hyphen_end_alnum_us
    }

    # Traffic Manager profile (Microsoft.Network/trafficmanagerprofiles)
    traf = {
      min_length = 1
      max_length = 63
      pattern    = local.regexp_patterns.alnum_hyphen_ends_alnum
    }

    # User defined route (UDR) (Microsoft.Network/routeTables/routes)
    udr = {
      min_length = 1
      max_length = 80
      pattern    = local.regexp_patterns.alnum_dot_us_hyphen_end_alnum_us
    }

    # Virtual network gateway (Microsoft.Network/virtualNetworkGateways)
    vgw = {
      min_length = 1
      max_length = 80
      pattern    = local.regexp_patterns.alnum_dot_us_hyphen_end_alnum_us
    }

    # Virtual WAN Hub - no published rule; follows Network/virtualHubs
    vhub = {
      min_length = 1
      max_length = 80
      pattern    = local.regexp_patterns.alnum_dot_us_hyphen_end_alnum_us
    }

    # Virtual network manager - no published rule; follows Network/networkManagers
    vnm = {
      min_length = 1
      max_length = 80
      pattern    = local.regexp_patterns.alnum_dot_us_hyphen_end_alnum_us
    }

    # Virtual WAN (Microsoft.Network/virtualWans)
    vwan = {
      min_length = 1
      max_length = 80
      pattern    = local.regexp_patterns.alnum_dot_us_hyphen_end_alnum_us
    }

    ##### Security #####

    # Azure Bastion (Microsoft.Network/bastionHosts)
    bas = {
      min_length = 1
      max_length = 80
      pattern    = local.regexp_patterns.alnum_dot_us_hyphen_end_alnum_us
    }

    # Managed identity (Microsoft.ManagedIdentity/userAssignedIdentities)
    id = {
      min_length = 3
      max_length = 128
      pattern    = local.regexp_patterns.alnum_us_hyphen_start_alnum
    }

    # Key vault (Microsoft.KeyVault/vaults)
    kv = {
      min_length = 3
      max_length = 24
      pattern    = local.regexp_patterns.alnum_hyphen_start_letter_end_alnum
    }

    # Key Vault Managed HSM - no published rule for KeyVault/managedHSMs; follows KeyVault/vaults
    kvmhsm = {
      min_length = 3
      max_length = 24
      pattern    = local.regexp_patterns.alnum_hyphen_start_letter_end_alnum
    }

    # SSH key - no published rule; follows Compute/sshPublicKeys
    sshkey = {
      min_length = 1
      max_length = 80
      pattern    = local.regexp_patterns.alnum_dot_us_hyphen_end_alnum_us
    }

    # VPN connection (Microsoft.Network/vpnGateways/vpnConnections)
    vcn = {
      min_length = 1
      max_length = 80
      pattern    = local.regexp_patterns.alnum_dot_us_hyphen_end_alnum_us
    }

    # VPN Gateway (Microsoft.Network/vpnGateways)
    vpng = {
      min_length = 1
      max_length = 80
      pattern    = local.regexp_patterns.alnum_dot_us_hyphen_end_alnum_us
    }

    # VPN site (Microsoft.Network/vpnSites)
    vst = {
      min_length = 1
      max_length = 80
      pattern    = local.regexp_patterns.alnum_dot_us_hyphen_end_alnum_us
    }

    # Web Application Firewall (WAF) policy (Microsoft.Network/frontdoorWebApplicationFirewallPolicies)
    waf = {
      min_length = 1
      max_length = 128
      pattern    = local.regexp_patterns.alnum_start_letter
    }

    # Web Application Firewall (WAF) policy rule group (Microsoft.Network/firewallPolicies/ruleGroups)
    wafrg = {
      min_length = 1
      max_length = 80
      pattern    = local.regexp_patterns.alnum_dot_us_hyphen_end_alnum_us
    }

    ##### Storage #####

    # Backup Vault policy (Microsoft.DataProtection/backupVaults/backupPolicies)
    bkpol = {
      min_length = 1
      max_length = 75
      pattern    = local.regexp_patterns.alnum_hyphen
    }

    # Backup Vault name (Microsoft.DataProtection/backupVaults)
    bvault = {
      min_length = 2
      max_length = 50
      pattern    = local.regexp_patterns.alnum_hyphen_start_letter
    }

    # File share (Microsoft.FileShares/file share)
    share = {
      min_length = 3
      max_length = 63
      pattern    = local.regexp_patterns.alnum_hyphen
    }

    # Azure StorSimple (Microsoft.StorSimple/managers)
    ssimp = {
      min_length = 2
      max_length = 50
      pattern    = local.regexp_patterns.alnum_hyphen_start_letter_end_alnum
    }

    # Storage Sync Service name (Microsoft.StorageSync/storageSyncServices)
    sss = {
      min_length = 1
      max_length = 260
      pattern    = local.regexp_patterns.alnum_dot_us_hyphen_end_alnum_us
    }

    ##### Virtual Desktop Infrastructure #####

    # Virtual desktop application group (Microsoft.DesktopVirtualization/applicationGroups)
    vdag = {
      min_length = 3
      max_length = 64
      pattern    = local.regexp_patterns.alnum_dot_us_hyphen_end_alnum_us
    }

    # Virtual desktop host pool (Microsoft.DesktopVirtualization/hostPools)
    vdpool = {
      min_length = 3
      max_length = 64
      pattern    = local.regexp_patterns.alnum_dot_us_hyphen_end_alnum_us
    }

    # Virtual desktop scaling plan - no published rule for DesktopVirtualization/scalingPlans; follows DesktopVirtualization/workspaces
    vdscaling = {
      min_length = 3
      max_length = 64
      pattern    = local.regexp_patterns.alnum_dot_us_hyphen_end_alnum_us
    }

    # Virtual desktop workspace (Microsoft.DesktopVirtualization/workspaces)
    vdws = {
      min_length = 3
      max_length = 64
      pattern    = local.regexp_patterns.alnum_dot_us_hyphen_end_alnum_us
    }
  }


  # Lookup the constraints for the current resource.
  constraints     = lookup(local.validation_map, local.resourceAbbr, local.validation_map["default"])
  name_min_length = local.constraints.min_length
  name_max_length = local.constraints.max_length
  name_pattern    = local.constraints.pattern
}
