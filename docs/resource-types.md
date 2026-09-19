# Supported resource types

Every value in the **Accepted `resource_type` values** column resolves to the same
abbreviation. Matching is case-insensitive and leading/trailing whitespace is trimmed,
so `"Virtual Machine"`, `"virtualmachine"` and `"vm"` are equivalent.

A value that is not in this list is **not** an error — it is lowercased and used as the
name prefix as-is, and the name is then validated against the `default` constraints
(63 characters, `^[a-z0-9-]+$`). Pass an abbreviation from this list to get the
resource-specific length and character rules instead.

Abbreviations follow Microsoft's
[Abbreviation recommendations for Azure resources](https://learn.microsoft.com/en-us/azure/cloud-adoption-framework/ready/azure-best-practices/resource-abbreviations).

> Generated from `locals.tf`. If you change `local.resource_abbreviations`, update this file too.

## Contents

- [Compute & General](#compute--general)
- [AI + Machine Learning](#ai--machine-learning)
- [Analytics and IoT](#analytics-and-iot)
- [Compute and Web (Additional)](#compute-and-web-additional)
- [Containers](#containers)
- [Databases](#databases)
- [Developer Tools](#developer-tools)
- [DevOps](#devops)
- [Integration](#integration)
- [Management and Governance](#management-and-governance)
- [Migration](#migration)
- [Networking](#networking)
- [Security](#security)
- [Storage](#storage)
- [Virtual Desktop Infrastructure](#virtual-desktop-infrastructure)

### Compute & General

| Resource | Accepted `resource_type` values | Abbreviation |
|---|---|---|
| Virtual Machine | `virtualmachine`, `virtual machine`, `vm` | `vm` |
| Virtual Machine Scale Set | `virtualmachinescaleset`, `virtual machine scale set`, `vmss` | `vmss` |
| Network Interface | `networkinterface`, `network interface`, `nic` | `nic` |
| Virtual Network | `virtualnetwork`, `virtual network`, `vnet` | `vnet` |
| Public IP | `publicip`, `public ip`, `pip` | `pip` |
| Storage Account | `storageaccount`, `storage account`, `st` | `st` |
| App Service | `appservice`, `app service`, `app`, `appsvc` | `app` |
| App Service Plan | `appserviceplan`, `app service plan`, `asp` | `asp` |
| Function App | `functionapp`, `function app`, `func` | `func` |
| Gallery | `gallery`, `gal` | `gal` |
| Cloud Service | `cloudservice`, `cloud service`, `cld` | `cld` |
| Availability Set | `availabilityset`, `availability set`, `avail` | `avail` |
| Image Template | `imagetemplate`, `image template`, `it` | `it` |
| Managed Disk (OS) | `manageddisk(os)`, `managed disk os`, `osdisk` | `osdisk` |
| Managed Disk (data) | `manageddisk(data)`, `managed disk data`, `disk` | `disk` |
| Snapshot | `snapshot`, `snap` | `snap` |
| Restore Point Collection | `restorepointcollection`, `restore point collection`, `rpc` | `rpc` |
| VM Storage Account | `vmstorageaccount`, `vm storage account`, `stvm` | `stvm` |
| Virtual Machine Maintenance Configuration | `virtualmachinemaintenanceconfiguration`, `virtual machine maintenance configuration`, `mc` | `mc` |

### AI + Machine Learning

| Resource | Accepted `resource_type` values | Abbreviation |
|---|---|---|
| AI Search | `aisearch`, `ai search`, `srch` | `srch` |
| Azure AI services | `azureaiservices`, `azure ai services`, `ais` | `ais` |
| Azure AI Studio hub | `azureaistudiohub`, `azure ai studio hub`, `hub` | `hub` |
| Azure AI Studio project | `azureaistudioproject`, `azure ai studio project`, `proj` | `proj` |
| Azure AI Video Indexer | `azureaivideoinstexer`, `azure ai video indexer`, `avi` | `avi` |
| Azure Machine Learning workspace | `azuremachinelearningworkspace`, `azure machine learning workspace`, `mlw` | `mlw` |
| Azure OpenAI Service | `azureopenaiservice`, `azure openai service`, `oai` | `oai` |
| Bot service | `botservice`, `bot service`, `bot` | `bot` |
| Computer vision | `computervision`, `computer vision`, `cv` | `cv` |
| Content moderator | `contentmoderator`, `content moderator`, `cm` | `cm` |
| Content safety | `contentsafety`, `content safety`, `cs` | `cs` |
| Custom vision (prediction) | `customvision(prediction)`, `custom vision prediction`, `cstv` | `cstv` |
| Custom vision (training) | `customvision(training)`, `custom vision training`, `cstvt` | `cstvt` |
| Document intelligence | `documentintelligence`, `document intelligence`, `di` | `di` |
| Face API | `faceapi`, `face api`, `face` | `face` |
| Health Insights | `healthinsights`, `health insights`, `hi` | `hi` |
| Immersive reader | `immersivereader`, `immersive reader`, `ir` | `ir` |
| Language service | `languageservice`, `language service`, `lang` | `lang` |
| Speech service | `speechservice`, `speech service`, `spch` | `spch` |
| Translator | `translator`, `texttranslator`, `trsl` | `trsl` |

### Analytics and IoT

| Resource | Accepted `resource_type` values | Abbreviation |
|---|---|---|
| Azure Analysis Services server | `analysisservices`, `azureanalysissvcsserver`, `azure analysis services server`, `as` | `as` |
| Azure Databricks workspace | `azuredatabricksworkspace`, `azure databricks workspace`, `dbw` | `dbw` |
| Azure Data Explorer cluster | `azuredataexplorercluster`, `azure data explorer cluster`, `dec` | `dec` |
| Azure Data Explorer cluster database | `azuredataexplorerclusterdatabase`, `azure data explorer cluster database`, `dedb` | `dedb` |
| Azure Data Factory | `datafactory`, `data factory`, `adf` | `adf` |
| Azure Digital Twin instance | `azuredigitaltwininstance`, `azure digital twin instance`, `dt` | `dt` |
| Azure Stream Analytics | `azurestreamanalytics`, `azure stream analytics`, `asa` | `asa` |
| Azure Synapse Analytics private link hub | `azuresynapseanalyticsprivatelinkhub`, `azure synapse analytics private link hub`, `synplh` | `synplh` |
| Azure Synapse Analytics SQL Dedicated Pool | `azuresynapseanalyticssqldedicatedpool`, `azure synapse analytics sql dedicated pool`, `syndp` | `syndp` |
| Azure Synapse Analytics Spark Pool | `azuresynapseanalyticssparkpool`, `azure synapse analytics spark pool`, `synsp` | `synsp` |
| Azure Synapse Analytics workspaces | `azuresynapseanalyticsworkspaces`, `azure synapse analytics workspaces`, `synw` | `synw` |
| Data Lake Store account | `datalakestoreaccount`, `data lake store account`, `dls` | `dls` |
| Data Lake Analytics account | `datalakeanalyticsaccount`, `data lake analytics account`, `dla` | `dla` |
| Event Hubs namespace | `eventhubsnamespace`, `event hubs namespace`, `evhns` | `evhns` |
| Event hub | `eventhub`, `event hub`, `evh` | `evh` |
| Event Grid domain | `eventgriddomain`, `event grid domain`, `evgd` | `evgd` |
| Event Grid subscriptions | `eventgridsubscriptions`, `event grid subscriptions`, `evgs` | `evgs` |
| Event Grid topic | `eventgridtopic`, `event grid topic`, `evgt` | `evgt` |
| Event Grid system topic | `eventgridsystemtopic`, `event grid system topic`, `egst` | `egst` |
| HDInsight – Hadoop cluster | `hdinsighthadoopcluster`, `hdinsight hadoop cluster`, `hadoop` | `hadoop` |
| HDInsight – HBase cluster | `hdinsighthbasecluster`, `hdinsight hbase cluster`, `hbase` | `hbase` |
| HDInsight – Kafka cluster | `hdinsightkafkacluster`, `hdinsight kafka cluster`, `kafka` | `kafka` |
| HDInsight – Spark cluster | `hdinsightsparkcluster`, `hdinsight spark cluster`, `spark` | `spark` |
| HDInsight – Storm cluster | `hdinsightstormcluster`, `hdinsight storm cluster`, `storm` | `storm` |
| HDInsight – ML Services cluster | `hdinsightmlservicescluster`, `hdinsight ml services cluster`, `mls` | `mls` |
| IoT hub | `iothub`, `iot hub`, `iot` | `iot` |
| Provisioning services | `provisioningservices`, `provisioning services`, `provs` | `provs` |
| Provisioning services certificate | `provisioningservicescertificate`, `provisioning services certificate`, `pcert` | `pcert` |
| Power BI Embedded | `powerbiembedded`, `power bi embedded`, `pbi` | `pbi` |
| Time Series Insights environment | `timeseriesinsightsenvironment`, `time series insights environment`, `tsi` | `tsi` |

### Compute and Web (Additional)

| Resource | Accepted `resource_type` values | Abbreviation |
|---|---|---|
| App Service environment | `appserviceenvironment`, `app service environment`, `ase` | `ase` |
| Azure Load Testing instance | `azureloadtestinginstance`, `azure load testing instance`, `lt` | `lt` |
| Azure Arc enabled server | `azurearcenabledserver`, `azure arc enabled server`, `arcs` | `arcs` |
| Azure Arc enabled Kubernetes cluster | `azurearcenabledkubernetescluster`, `azure arc enabled kubernetes cluster`, `arck` | `arck` |
| Azure Arc private link scope | `azurearcprivatelinkscope`, `azure arc private link scope`, `pls` | `pls` |
| Azure Arc gateway | `azurearcgateway`, `azure arc gateway`, `arcgw` | `arcgw` |
| Batch accounts | `batchaccounts`, `batch accounts`, `ba` | `ba` |
| Communication Services | `communicationservices`, `communication services`, `acs` | `acs` |
| Disk encryption set | `diskencryptionset`, `disk encryption set`, `des` | `des` |
| Hosting environment (for web apps) | `hostingenvironment`, `hosting environment`, `host` | `host` |
| Notification Hubs | `notificationhubs`, `notification hubs`, `ntf` | `ntf` |
| Notification Hubs namespace | `notificationhubsnamespace`, `notification hubs namespace`, `ntfns` | `ntfns` |
| Proximity placement group | `proximityplacementgroup`, `proximity placement group`, `ppg` | `ppg` |

### Containers

| Resource | Accepted `resource_type` values | Abbreviation |
|---|---|---|
| AKS cluster | `akscluster`, `aks cluster`, `aks` | `aks` |
| AKS system node pool | `akssystemnodepool`, `aks system node pool`, `npsystem` | `npsystem` |
| AKS user node pool | `aksusernodepool`, `aks user node pool`, `np` | `np` |
| Container apps | `containerapps`, `container apps`, `ca` | `ca` |
| Container apps environment | `containerappsenvironment`, `container apps environment`, `cae` | `cae` |
| Container registry | `containerregistry`, `container registry`, `cr` | `cr` |
| Container instance | `containerinstance`, `container instance`, `ci` | `ci` |
| Service Fabric cluster | `servicefabriccluster`, `service fabric cluster`, `sf` | `sf` |
| Service Fabric managed cluster | `servicefabricmanagedcluster`, `service fabric managed cluster`, `sfmc` | `sfmc` |

### Databases

| Resource | Accepted `resource_type` values | Abbreviation |
|---|---|---|
| Azure Cosmos DB database | `azurecosmosdbdatabase`, `azure cosmos db database`, `cosmos`, `cosmosdb` | `cosmos` |
| Azure Cosmos DB for Apache Cassandra account | `azurecosmosdbforapachecassandraaccount`, `azure cosmos db for apache cassandra account`, `coscas` | `coscas` |
| Azure Cosmos DB for MongoDB account | `azurecosmosdbformongodbaccount`, `azure cosmos db for mongodb account`, `cosmon` | `cosmon` |
| Azure Cosmos DB for NoSQL account | `azurecosmosdbfornosqlaccount`, `azure cosmos db for nosql account`, `cosno` | `cosno` |
| Azure Cosmos DB for Table account | `azurecosmosdbfortableaccount`, `azure cosmos db for table account`, `costab` | `costab` |
| Azure Cosmos DB for Apache Gremlin account | `azurecosmosdbforapachegremlinaccount`, `azure cosmos db for apache gremlin account`, `cosgrm` | `cosgrm` |
| Azure Cosmos DB PostgreSQL cluster | `azurecosmosdbpostgresqlcluster`, `azure cosmos db postgresql cluster`, `cospos` | `cospos` |
| Azure Cache for Redis instance | `azurecacheforredisinstance`, `azure cache for redis instance`, `redis` | `redis` |
| Azure SQL Database server | `azuresqldatabaseserver`, `azure sql database server`, `sql`, `sqlserver`, `sqlsrv` | `sql` |
| Azure SQL database | `azuresqldatabase`, `azure sql database`, `sqldb` | `sqldb` |
| Azure SQL Elastic Job agent | `azuresqlelasticjobagent`, `azure sql elastic job agent`, `sqlja` | `sqlja` |
| Azure SQL Elastic Pool | `azuresqlelasticpool`, `azure sql elastic pool`, `sqlep` | `sqlep` |
| MariaDB server | `mariadbserver`, `maria db server`, `maria` | `maria` |
| MariaDB database | `mariadbdatabase`, `maria db database`, `mariadb` | `mariadb` |
| MySQL database | `mysqldatabase`, `mysql database`, `mysql` | `mysql` |
| PostgreSQL database | `postgresqldatabase`, `postgresql database`, `psql` | `psql` |
| SQL Server Stretch Database | `sqlserverstretchdatabase`, `sql server stretch database`, `sqlstrdb` | `sqlstrdb` |
| SQL Managed Instance | `sqlmanagedinstance`, `sql managed instance`, `sqlmi` | `sqlmi` |

### Developer Tools

| Resource | Accepted `resource_type` values | Abbreviation |
|---|---|---|
| App Configuration store | `appconfigurationstore`, `app configuration store`, `appcs` | `appcs` |
| Maps account | `mapsaccount`, `maps account`, `map` | `map` |
| SignalR | `signalr`, `signal r`, `sigr` | `sigr` |
| WebPubSub | `webpubsub`, `web pub sub`, `wps` | `wps` |

### DevOps

| Resource | Accepted `resource_type` values | Abbreviation |
|---|---|---|
| Azure Managed Grafana | `azuremanagedgrafana`, `azure managed grafana`, `amg` | `amg` |

### Integration

| Resource | Accepted `resource_type` values | Abbreviation |
|---|---|---|
| API management service instance | `apimanagement`, `apimanagementserviceinstance`, `api management service instance`, `apim` | `apim` |
| Integration account | `integrationaccount`, `integration account`, `ia` | `ia` |
| Logic app | `logicapp`, `logic app`, `logic` | `logic` |
| Service Bus namespace | `servicebusnamespace`, `service bus namespace`, `sbns` | `sbns` |
| Service Bus queue | `servicebusqueue`, `service bus queue`, `sbq` | `sbq` |
| Service Bus topic | `servicebustopic`, `service bus topic`, `sbt` | `sbt` |
| Service Bus topic subscription | `servicebustopicsubscription`, `service bus topic subscription`, `sbts` | `sbts` |

### Management and Governance

| Resource | Accepted `resource_type` values | Abbreviation |
|---|---|---|
| Automation account | `automationaccount`, `automation account`, `aa` | `aa` |
| Azure Policy definition (no standard short form provided; can be left descriptive) | `azurepolicydefinition`, `azure policy definition` | `policy` |
| Application Insights | `applicationinsights`, `application insights`, `appi` | `appi` |
| Azure Monitor action group | `azuremonitoractiongroup`, `azure monitor action group`, `ag` | `ag` |
| Azure Monitor data collection rule | `azuremonitordatacollectionrule`, `azure monitor data collection rule`, `dcr` | `dcr` |
| Azure Monitor alert processing rule | `azuremonitoralertprocessingrule`, `azure monitor alert processing rule`, `apr` | `apr` |
| Blueprint (planned for deprecation) — `bp` | `blueprint`, `bp` | `bp` |
| Blueprint (planned for deprecation) — `bpa` | `blueprint assignment`, `bpa` | `bpa` |
| Data collection endpoint | `datacollectionendpoint`, `data collection endpoint`, `dce` | `dce` |
| Log Analytics workspace | `loganalyticsworkspace`, `log analytics workspace`, `log` | `log` |
| Log Analytics query packs | `loganalyticsquerypacks`, `log analytics query packs`, `pack` | `pack` |
| Management group | `managementgroup`, `management group`, `mg` | `mg` |
| Microsoft Purview instance | `microsoftpurviewinstance`, `microsoft purview instance`, `pview` | `pview` |
| Resource group | `resourcegroup`, `resource group`, `rg` | `rg` |
| Template specs name | `templatespecs`, `template specs`, `ts` | `ts` |

### Migration

| Resource | Accepted `resource_type` values | Abbreviation |
|---|---|---|
| Azure Migrate project | `azuremigrateproject`, `azure migrate project`, `migr` | `migr` |
| Database Migration Service instance | `databasemigrationserviceinstance`, `database migration service instance`, `dms` | `dms` |
| Recovery Services vault | `recoveryservicesvault`, `recovery services vault`, `rsv` | `rsv` |

### Networking

| Resource | Accepted `resource_type` values | Abbreviation |
|---|---|---|
| Application gateway | `applicationgateway`, `application gateway`, `agw` | `agw` |
| Application security group (ASG) | `applicationsecuritygroup`, `application security group`, `asg` | `asg` |
| CDN profile | `cdnprofile`, `cdn profile`, `cdnp` | `cdnp` |
| CDN endpoint | `cdnendpoint`, `cdn endpoint`, `cdne` | `cdne` |
| Connections | `connections`, `connection`, `con` | `con` |
| DNS – (Note: Abbreviation may be customized per DNS domain name) | `azuredns`, `azure dns`, `dns` | `dns` |
| DNS forwarding ruleset | `dnsforwardingruleset`, `dns forwarding ruleset`, `dnsfrs` | `dnsfrs` |
| DNS private resolver | `dnsprivateresolver`, `dns private resolver`, `dnspr` | `dnspr` |
| DNS private resolver inbound endpoint | `dnsprivateresolverinboundendpoint`, `dns private resolver inbound endpoint`, `in` | `in` |
| DNS private resolver outbound endpoint | `dnsprivateresolveroutboundendpoint`, `dns private resolver outbound endpoint`, `out` | `out` |
| DNS zone – (Abbreviation can be the DNS domain name) | `dnszone`, `dns zone` | `dns` |
| Firewall | `firewall`, `azurefirewall`, `afw` | `afw` |
| Firewall policy | `firewallpolicy`, `firewall policy`, `afwp` | `afwp` |
| ExpressRoute circuit | `expressroutecircuit`, `express route circuit`, `erc` | `erc` |
| ExpressRoute direct | `expressroutedirect`, `express route direct`, `erd` | `erd` |
| ExpressRoute gateway | `expressroutegateway`, `express route gateway`, `ergw` | `ergw` |
| Front Door (Standard/Premium) profile | `frontdoorprofile`, `front door profile`, `afd` | `afd` |
| Front Door (Standard/Premium) endpoint | `frontdoorendpoint`, `front door endpoint`, `fde` | `fde` |
| Front Door firewall policy | `frontdoorfirewallpolicy`, `front door firewall policy`, `fdfp` | `fdfp` |
| Front Door (classic) | `frontdoorclassic`, `front door classic` | `afd` |
| IP group | `ipgroup`, `ip group`, `ipg` | `ipg` |
| Load balancer (internal) | `loadbalancerinternal`, `load balancer internal`, `lbi` | `lbi` |
| Load balancer (external) | `loadbalancerexternal`, `load balancer external`, `lbe` | `lbe` |
| Load balancer rule | `loadbalancerrule`, `load balancer rule`, `rule` | `rule` |
| Local network gateway | `localnetworkgateway`, `local network gateway`, `lgw` | `lgw` |
| NAT gateway | `natgateway`, `nat gateway`, `ng` | `ng` |
| Network security group (NSG) | `networksecuritygroup`, `network security group`, `nsg` | `nsg` |
| NSG security rules | `networksecuritygroupsecurityrules`, `nsg security rules`, `nsgsr` | `nsgsr` |
| Network Watcher | `networkwatcher`, `network watcher`, `nw` | `nw` |
| Private Link | `privatelink`, `private link`, `pl` | `pl` |
| Private endpoint | `privateendpoint`, `private endpoint`, `pep` | `pep` |
| Public IP address prefix | `publicipaddressprefix`, `public ip address prefix`, `ippre` | `ippre` |
| Route filter | `routefilter`, `route filter`, `rf` | `rf` |
| Route server | `routeserver`, `route server`, `rtserv` | `rtserv` |
| Route table | `routetable`, `route table`, `rt` | `rt` |
| Service endpoint policy | `serviceendpointpolicy`, `service endpoint policy`, `se` | `se` |
| Traffic Manager profile | `trafficmanagerprofile`, `traffic manager profile`, `traf` | `traf` |
| User defined route (UDR) | `userdefinedroute`, `user defined route`, `udr` | `udr` |
| Virtual network gateway | `virtualnetworkgateway`, `virtual network gateway`, `vgw` | `vgw` |
| Virtual network manager | `virtualnetworkmanager`, `virtual network manager`, `vnm` | `vnm` |
| Virtual network peering | `virtualnetworkpeering`, `virtual network peering`, `peer` | `peer` |
| Virtual network subnet | `virtualnetworksubnet`, `virtual network subnet`, `snet`, `subnet`, `sub net` | `snet` |
| Virtual WAN | `virtualwan`, `virtual wan`, `vwan` | `vwan` |
| Virtual WAN Hub | `virtualwanhub`, `virtual wan hub`, `vhub` | `vhub` |

### Security

| Resource | Accepted `resource_type` values | Abbreviation |
|---|---|---|
| Azure Bastion | `azurebastion`, `azure bastion`, `bas` | `bas` |
| Key vault | `keyvault`, `key vault`, `kv` | `kv` |
| Key Vault Managed HSM | `keyvaultmanagedhsm`, `key vault managed hsm`, `kvmhsm` | `kvmhsm` |
| Managed identity | `managedidentity`, `managed identity`, `id` | `id` |
| SSH key | `sshkey`, `ssh key` | `sshkey` |
| VPN Gateway | `vpngateway`, `vpn gateway`, `vpng` | `vpng` |
| VPN connection | `vpnconnection`, `vpn connection`, `vcn` | `vcn` |
| VPN site | `vpnsit`, `vpn site`, `vst` | `vst` |
| Web Application Firewall (WAF) policy | `wafpolicy`, `waf policy`, `waf` | `waf` |
| Web Application Firewall (WAF) policy rule group | `wafpolicyrulegroup`, `waf policy rule group`, `wafrg` | `wafrg` |

### Storage

| Resource | Accepted `resource_type` values | Abbreviation |
|---|---|---|
| Azure StorSimple | `azurestorsimple`, `azure storsimple`, `ssimp` | `ssimp` |
| Backup Vault name | `backupvaultname`, `backup vault name`, `bvault` | `bvault` |
| Backup Vault policy | `backupvaultpolicy`, `backup vault policy`, `bkpol` | `bkpol` |
| File share | `fileshare`, `file share`, `share` | `share` |
| Storage Sync Service name | `storagesyncservice`, `storage sync service`, `sss` | `sss` |

### Virtual Desktop Infrastructure

| Resource | Accepted `resource_type` values | Abbreviation |
|---|---|---|
| Virtual desktop host pool | `virtualdesktophostpool`, `virtual desktop host pool`, `vdpool` | `vdpool` |
| Virtual desktop application group | `virtualdesktopapplicationgroup`, `virtual desktop application group`, `vdag` | `vdag` |
| Virtual desktop workspace | `virtualdesktopworkspace`, `virtual desktop workspace`, `vdws` | `vdws` |
| Virtual desktop scaling plan | `virtualdesktopscalingplan`, `virtual desktop scaling plan`, `vdscaling` | `vdscaling` |
