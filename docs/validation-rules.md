# Name validation rules

Every one of the 200 abbreviations has a dedicated entry in
`local.validation_map`. The generated name must satisfy all three constraints or
the plan fails:

| Constraint | Enforced by |
|---|---|
| `min_length` | precondition on the `is_name_valid` output |
| `max_length` | precondition on the `is_name_valid` output |
| `pattern` | precondition on the `is_name_valid` output |

## Where the rules come from

169 of the 200 entries are taken from Microsoft's
[Naming rules and restrictions for Azure resources](https://learn.microsoft.com/en-us/azure/azure-resource-manager/management/resource-name-rules),
and the **Source** column names the resource provider entity each one was read
from.

The remaining 31 cover resources that article does not list. Those are marked
**no published rule** and take the constraints of the closest documented sibling,
which the Source column names. They are the entries most worth checking against
the portal before you rely on them.

## How to read the patterns

Names are lowercased before validation, so every character class is written over
`[a-z0-9]` rather than `[a-zA-Z0-9]`. A pattern without `-` in its character set
means Azure forbids hyphens for that resource; those types are also in
`local.no_delimiter_resource_types`, so the module concatenates their segments
instead of joining them (marked **no separator** below).

> Generated from `local.validation_map` in `locals.tf`. Regenerate this file when
> that map changes.


## Compute & General

| Abbr | Resource | Min | Max | Pattern | Source |
|---|---|---:|---:|---|---|
| `app` | App Service | 2 | 60 | `^[a-z0-9-]+$` | `Microsoft.Web/sites` |
| `asp` | App Service Plan | 1 | 60 | `^[a-z0-9-]+$` | `Microsoft.Web/serverfarms` |
| `avail` | Availability Set | 1 | 80 | `^[a-z0-9](?:[a-z0-9._-]*[a-z0-9_])?$` | `Microsoft.Compute/availabilitySets` |
| `cld` | Cloud Service | 1 | 15 | `^[a-z0-9](?:[a-z0-9-]*[a-z0-9])?$` | `Microsoft.Compute/cloudservices` |
| `disk` | Managed Disk (data) | 1 | 80 | `^[a-z0-9_-]+$` | `Microsoft.Compute/disks` |
| `func` | Function App | 2 | 60 | `^[a-z0-9-]+$` | `Microsoft.Web/sites` |
| `gal` **no separator** | Gallery | 1 | 80 | `^[a-z0-9](?:[a-z0-9._]*[a-z0-9])?$` | `Microsoft.Compute/galleries` |
| `it` | Image Template | 1 | 80 | `^[a-z0-9](?:[a-z0-9._-]*[a-z0-9_])?$` | `Microsoft.Compute/images` |
| `mc` | Virtual Machine Maintenance Configuration | 1 | 64 | `^[a-z0-9](?:[a-z0-9._-]*[a-z0-9_])?$` | *no published rule* - follows `Maintenance/maintenanceConfigurations` |
| `nic` | Network Interface | 1 | 80 | `^[a-z0-9](?:[a-z0-9._-]*[a-z0-9_])?$` | `Microsoft.Network/networkInterfaces` |
| `osdisk` | Managed Disk (OS) | 1 | 80 | `^[a-z0-9_-]+$` | `Microsoft.Compute/disks` |
| `pip` | Public IP | 1 | 80 | `^[a-z0-9](?:[a-z0-9._-]*[a-z0-9_])?$` | `Microsoft.Network/publicIPAddresses` |
| `rpc` | Restore Point Collection | 1 | 80 | `^[a-z0-9](?:[a-z0-9._-]*[a-z0-9_])?$` | *no published rule* for `Compute/restorePointCollections` - follows `Compute/disks` |
| `snap` | Snapshot | 1 | 80 | `^[a-z0-9](?:[a-z0-9._-]*[a-z0-9_])?$` | `Microsoft.Compute/snapshots` |
| `st` **no separator** | Storage Account | 3 | 24 | `^[a-z0-9]+$` | `Microsoft.Storage/storageAccounts` |
| `stvm` **no separator** | VM Storage Account | 3 | 24 | `^[a-z0-9]+$` | `Microsoft.Storage/storageAccounts` |
| `vm` | Virtual Machine | 1 | 64 | `^[a-z0-9](?:[a-z0-9._-]*[a-z0-9_])?$` | `Microsoft.Compute/virtualMachines` |
| `vmss` | Virtual Machine Scale Set | 1 | 64 | `^[a-z0-9](?:[a-z0-9._-]*[a-z0-9_])?$` | `Microsoft.Compute/virtualMachineScaleSets` |
| `vnet` | Virtual Network | 2 | 64 | `^[a-z0-9](?:[a-z0-9._-]*[a-z0-9_])?$` | `Microsoft.Network/virtualNetworks` |

## AI + Machine Learning

| Abbr | Resource | Min | Max | Pattern | Source |
|---|---|---:|---:|---|---|
| `ais` | Azure AI services | 2 | 64 | `^[a-z0-9](?:[a-z0-9-]*[a-z0-9])?$` | `Microsoft.CognitiveServices/accounts` |
| `avi` | Azure AI Video Indexer | 2 | 64 | `^[a-z0-9](?:[a-z0-9-]*[a-z0-9])?$` | `Microsoft.CognitiveServices/accounts` |
| `bot` | Bot service | 2 | 64 | `^[a-z0-9][a-z0-9._-]*$` | `Microsoft.BotService/botServices` |
| `cm` | Content moderator | 2 | 64 | `^[a-z0-9](?:[a-z0-9-]*[a-z0-9])?$` | `Microsoft.CognitiveServices/accounts` |
| `cs` | Content safety | 2 | 64 | `^[a-z0-9](?:[a-z0-9-]*[a-z0-9])?$` | `Microsoft.CognitiveServices/accounts` |
| `cstv` | Custom vision (prediction) | 2 | 64 | `^[a-z0-9](?:[a-z0-9-]*[a-z0-9])?$` | `Microsoft.CognitiveServices/accounts` |
| `cstvt` | Custom vision (training) | 2 | 64 | `^[a-z0-9](?:[a-z0-9-]*[a-z0-9])?$` | `Microsoft.CognitiveServices/accounts` |
| `cv` | Computer vision | 2 | 64 | `^[a-z0-9](?:[a-z0-9-]*[a-z0-9])?$` | `Microsoft.CognitiveServices/accounts` |
| `di` | Document intelligence | 2 | 64 | `^[a-z0-9](?:[a-z0-9-]*[a-z0-9])?$` | `Microsoft.CognitiveServices/accounts` |
| `face` | Face API | 2 | 64 | `^[a-z0-9](?:[a-z0-9-]*[a-z0-9])?$` | `Microsoft.CognitiveServices/accounts` |
| `hi` | Health Insights | 2 | 64 | `^[a-z0-9](?:[a-z0-9-]*[a-z0-9])?$` | `Microsoft.CognitiveServices/accounts` |
| `hub` | Azure AI Studio hub | 3 | 33 | `^[a-z0-9_-]+$` | `Microsoft.MachineLearningServices/workspaces` |
| `ir` | Immersive reader | 2 | 64 | `^[a-z0-9](?:[a-z0-9-]*[a-z0-9])?$` | `Microsoft.CognitiveServices/accounts` |
| `lang` | Language service | 2 | 64 | `^[a-z0-9](?:[a-z0-9-]*[a-z0-9])?$` | `Microsoft.CognitiveServices/accounts` |
| `mlw` | Azure Machine Learning workspace | 3 | 33 | `^[a-z0-9_-]+$` | `Microsoft.MachineLearningServices/workspaces` |
| `oai` | Azure OpenAI Service | 2 | 64 | `^[a-z0-9](?:[a-z0-9-]*[a-z0-9])?$` | `Microsoft.CognitiveServices/accounts` |
| `proj` | Azure AI Studio project | 3 | 33 | `^[a-z0-9_-]+$` | `Microsoft.MachineLearningServices/workspaces` |
| `spch` | Speech service | 2 | 64 | `^[a-z0-9](?:[a-z0-9-]*[a-z0-9])?$` | `Microsoft.CognitiveServices/accounts` |
| `srch` | AI Search | 2 | 60 | `^[a-z0-9](?:[a-z0-9-]*[a-z0-9])?$` | *no published rule* - follows `Search/searchServices` |
| `trsl` | Translator | 2 | 64 | `^[a-z0-9](?:[a-z0-9-]*[a-z0-9])?$` | `Microsoft.CognitiveServices/accounts` |

## Analytics and IoT

| Abbr | Resource | Min | Max | Pattern | Source |
|---|---|---:|---:|---|---|
| `adf` | Azure Data Factory | 3 | 63 | `^[a-z0-9](?:[a-z0-9-]*[a-z0-9])?$` | `Microsoft.DataFactory/factories` |
| `as` **no separator** | Azure Analysis Services server | 3 | 63 | `^[a-z][a-z0-9]*$` | `Microsoft.AnalysisServices/servers` |
| `asa` | Azure Stream Analytics | 3 | 63 | `^[a-z0-9_-]+$` | `Microsoft.StreamAnalytics/streamingjobs` |
| `dbw` | Azure Databricks workspace | 3 | 64 | `^[a-z0-9_-]+$` | `Microsoft.Databricks/workspaces` |
| `dec` **no separator** | Azure Data Explorer cluster | 4 | 22 | `^[a-z][a-z0-9]*$` | `Microsoft.Kusto/clusters` |
| `dedb` | Azure Data Explorer cluster database | 1 | 260 | `^[a-z0-9 .-]+$` | `Microsoft.Kusto//clusters/databases` |
| `dla` **no separator** | Data Lake Analytics account | 3 | 24 | `^[a-z0-9]+$` | `Microsoft.DataLakeAnalytics/accounts` |
| `dls` **no separator** | Data Lake Store account | 3 | 24 | `^[a-z0-9]+$` | `Microsoft.DataLakeStore/accounts` |
| `dt` | Azure Digital Twin instance | 3 | 63 | `^[a-z0-9](?:[a-z0-9-]*[a-z0-9])?$` | *no published rule* - follows `DigitalTwins/digitalTwinsInstances` |
| `egst` | Event Grid system topic | 3 | 50 | `^[a-z0-9-]+$` | `Microsoft.EventGrid/topics` |
| `evgd` | Event Grid domain | 3 | 50 | `^[a-z0-9-]+$` | `Microsoft.EventGrid/domains` |
| `evgs` | Event Grid subscriptions | 3 | 64 | `^[a-z0-9-]+$` | `Microsoft.EventGrid/eventSubscriptions` |
| `evgt` | Event Grid topic | 3 | 50 | `^[a-z0-9-]+$` | `Microsoft.EventGrid/topics` |
| `evh` | Event hub | 1 | 256 | `^[a-z0-9](?:[a-z0-9._-]*[a-z0-9])?$` | `Microsoft.EventHub/namespaces/eventhubs` |
| `evhns` | Event Hubs namespace | 6 | 50 | `^[a-z](?:[a-z0-9-]*[a-z0-9])?$` | `Microsoft.EventHub/namespaces` |
| `hadoop` | HDInsight – Hadoop cluster | 3 | 59 | `^[a-z0-9](?:[a-z0-9-]*[a-z0-9])?$` | `Microsoft.HDInsight/clusters` |
| `hbase` | HDInsight – HBase cluster | 3 | 59 | `^[a-z0-9](?:[a-z0-9-]*[a-z0-9])?$` | `Microsoft.HDInsight/clusters` |
| `iot` | IoT hub | 3 | 50 | `^[a-z0-9-]+$` | `Microsoft.Devices/IotHubs` |
| `kafka` | HDInsight – Kafka cluster | 3 | 59 | `^[a-z0-9](?:[a-z0-9-]*[a-z0-9])?$` | `Microsoft.HDInsight/clusters` |
| `mls` | HDInsight – ML Services cluster | 3 | 59 | `^[a-z0-9](?:[a-z0-9-]*[a-z0-9])?$` | `Microsoft.HDInsight/clusters` |
| `pbi` **no separator** | Power BI Embedded | 3 | 63 | `^[a-z][a-z0-9]*$` | `Microsoft.PowerBIDedicated/capacities` |
| `pcert` | Provisioning services certificate | 1 | 64 | `^[a-z0-9._-]+$` | `Microsoft.Devices/provisioningServices/certificates` |
| `provs` | Provisioning services | 3 | 64 | `^[a-z0-9-]*[a-z0-9]$` | `Microsoft.Devices/provisioningServices` |
| `spark` | HDInsight – Spark cluster | 3 | 59 | `^[a-z0-9](?:[a-z0-9-]*[a-z0-9])?$` | `Microsoft.HDInsight/clusters` |
| `storm` | HDInsight – Storm cluster | 3 | 59 | `^[a-z0-9](?:[a-z0-9-]*[a-z0-9])?$` | `Microsoft.HDInsight/clusters` |
| `syndp` **no separator** | Azure Synapse Analytics SQL Dedicated Pool | 1 | 60 | `^[a-z0-9](?:[a-z0-9._]*[a-z0-9])?$` | `Microsoft.Synapse/workspaces/sqlPools` |
| `synplh` **no separator** | Azure Synapse Analytics private link hub | 1 | 45 | `^[a-z0-9]+$` | `Microsoft.Synapse/privateLinkHubs` |
| `synsp` **no separator** | Azure Synapse Analytics Spark Pool | 1 | 15 | `^[a-z][a-z0-9]*$` | `Microsoft.Synapse/workspaces/bigDataPools` |
| `synw` | Azure Synapse Analytics workspaces | 1 | 50 | `^[a-z0-9](?:[a-z0-9-]*[a-z0-9])?$` | `Microsoft.Synapse/workspaces` |
| `tsi` | Time Series Insights environment | 1 | 90 | `^[a-z0-9](?:[a-z0-9._-]*[a-z0-9_])?$` | `Microsoft.TimeSeriesInsights/environments` |

## Compute and Web (Additional)

| Abbr | Resource | Min | Max | Pattern | Source |
|---|---|---:|---:|---|---|
| `acs` | Communication Services | 1 | 63 | `^[a-z0-9-]+$` | `Microsoft.Communication/communicationServices` |
| `arcgw` | Azure Arc gateway | 1 | 80 | `^[a-z0-9](?:[a-z0-9._-]*[a-z0-9_])?$` | *no published rule* - follows `HybridCompute/gateways` |
| `arck` | Azure Arc enabled Kubernetes cluster | 1 | 63 | `^[a-z0-9](?:[a-z0-9._-]*[a-z0-9_])?$` | *no published rule* - follows `Kubernetes/connectedClusters` |
| `arcs` | Azure Arc enabled server | 1 | 54 | `^[a-z0-9](?:[a-z0-9-]*[a-z0-9])?$` | *no published rule* - follows `HybridCompute/machines` |
| `ase` | App Service environment | 1 | 60 | `^[a-z0-9](?:[a-z0-9-]*[a-z0-9])?$` | *no published rule* for `Web/hostingEnvironments` - follows `Web/serverfarms `|
| `ba` **no separator** | Batch accounts | 3 | 24 | `^[a-z0-9]+$` | `Microsoft.Batch/batchAccounts` |
| `des` | Disk encryption set | 1 | 80 | `^[a-z0-9_-]+$` | `Microsoft.Compute/diskEncryptionSets` |
| `host` | Hosting environment (for web apps) | 1 | 60 | `^[a-z0-9](?:[a-z0-9-]*[a-z0-9])?$` | *no published rule* for `Web/hostingEnvironments` - follows `Web/serverfarms `|
| `lt` | Azure Load Testing instance | 1 | 64 | `^[a-z0-9](?:[a-z0-9_-]*[a-z0-9])?$` | `Microsoft.LoadTestService/loadtests` |
| `ntf` | Notification Hubs | 1 | 260 | `^[a-z0-9][a-z0-9._-]*$` | `Microsoft.NotificationHubs/namespaces/notificationHubs` |
| `ntfns` | Notification Hubs namespace | 6 | 50 | `^[a-z](?:[a-z0-9-]*[a-z0-9])?$` | `Microsoft.NotificationHubs/namespaces` |
| `pls` | Azure Arc private link scope | 1 | 80 | `^[a-z0-9](?:[a-z0-9._-]*[a-z0-9_])?$` | *no published rule* - follows `HybridCompute/privateLinkScopes` |
| `ppg` | Proximity placement group | 1 | 80 | `^[a-z0-9](?:[a-z0-9._-]*[a-z0-9_])?$` | *no published rule* - follows `Compute/proximityPlacementGroups` |

## Containers

| Abbr | Resource | Min | Max | Pattern | Source |
|---|---|---:|---:|---|---|
| `aks` | AKS cluster | 1 | 63 | `^[a-z0-9](?:[a-z0-9_-]*[a-z0-9])?$` | `Microsoft.ContainerService/managedClusters` |
| `ca` | Container apps | 2 | 32 | `^[a-z](?:[a-z0-9-]*[a-z0-9])?$` | `Microsoft.App/containerApps` |
| `cae` | Container apps environment | 2 | 32 | `^[a-z](?:[a-z0-9-]*[a-z0-9])?$` | *no published rule* for `App/managedEnvironments` - follows `App/containerApps `|
| `ci` | Container instance | 1 | 63 | `^[a-z0-9-]+$` | `Microsoft.ContainerInstance/containerGroups` |
| `cr` **no separator** | Container registry | 5 | 50 | `^[a-z0-9]+$` | `Microsoft.ContainerRegistry/registries` |
| `np` **no separator** | AKS user node pool | 1 | 12 | `^[a-z0-9]+$` | `Microsoft.ContainerService/managedClusters/agentPools` |
| `npsystem` **no separator** | AKS system node pool | 1 | 12 | `^[a-z0-9]+$` | `Microsoft.ContainerService/managedClusters/agentPools` |
| `sf` | Service Fabric cluster | 4 | 23 | `^[a-z][a-z0-9-]*$` | `Microsoft.ServiceFabric/clusters` |
| `sfmc` | Service Fabric managed cluster | 4 | 23 | `^[a-z](?:[a-z0-9-]*[a-z0-9])?$` | *no published rule* for `ServiceFabric/managedClusters` - follows `ServiceFabric/clusters `|

## Databases

| Abbr | Resource | Min | Max | Pattern | Source |
|---|---|---:|---:|---|---|
| `coscas` | Azure Cosmos DB for Apache Cassandra account | 3 | 44 | `^[a-z0-9][a-z0-9-]*$` | `Microsoft.DocumentDB/databaseAccounts` |
| `cosgrm` | Azure Cosmos DB for Apache Gremlin account | 3 | 44 | `^[a-z0-9][a-z0-9-]*$` | `Microsoft.DocumentDB/databaseAccounts` |
| `cosmon` | Azure Cosmos DB for MongoDB account | 3 | 44 | `^[a-z0-9][a-z0-9-]*$` | `Microsoft.DocumentDB/databaseAccounts` |
| `cosmos` **no separator** | Azure Cosmos DB database | 3 | 44 | `^[a-z0-9][a-z0-9-]*$` | `Microsoft.DocumentDB/databaseAccounts` |
| `cosno` | Azure Cosmos DB for NoSQL account | 3 | 44 | `^[a-z0-9][a-z0-9-]*$` | `Microsoft.DocumentDB/databaseAccounts` |
| `cospos` | Azure Cosmos DB PostgreSQL cluster | 3 | 44 | `^[a-z0-9][a-z0-9-]*$` | `Microsoft.DocumentDB/databaseAccounts` |
| `costab` | Azure Cosmos DB for Table account | 3 | 44 | `^[a-z0-9][a-z0-9-]*$` | `Microsoft.DocumentDB/databaseAccounts` |
| `maria` | MariaDB server | 3 | 63 | `^[a-z0-9-]+$` | `Microsoft.DBforMariaDB/servers` |
| `mariadb` | MariaDB database | 1 | 63 | `^[a-z0-9-]+$` | `Microsoft.DBforMariaDB/servers/databases` |
| `mysql` | MySQL database | 3 | 63 | `^[a-z0-9-]+$` | `Microsoft.DBforMySQL/servers` |
| `psql` | PostgreSQL database | 3 | 63 | `^[a-z0-9-]+$` | `Microsoft.DBforPostgreSQL/servers` |
| `redis` | Azure Cache for Redis instance | 1 | 63 | `^[a-z0-9](?:[a-z0-9-]*[a-z0-9])?$` | `Microsoft.Cache/Redis` |
| `sql` | Azure SQL Database server | 1 | 63 | `^[a-z0-9-]+$` | `Microsoft.Sql/servers` |
| `sqldb` | Azure SQL database | 1 | 128 | `^[a-z0-9](?:[a-z0-9._-]*[a-z0-9_])?$` | `Microsoft.Sql/servers/databases` |
| `sqlep` | Azure SQL Elastic Pool | 1 | 128 | `^[a-z0-9](?:[a-z0-9._-]*[a-z0-9_])?$` | `Microsoft.Sql/servers/elasticPools` |
| `sqlja` | Azure SQL Elastic Job agent | 1 | 128 | `^[a-z0-9](?:[a-z0-9-]*[a-z0-9])?$` | *no published rule* for `Sql/servers/jobAgents` - follows `Sql/servers/databases `|
| `sqlmi` | SQL Managed Instance | 1 | 63 | `^[a-z0-9-]+$` | `Microsoft.Sql/managedInstances` |
| `sqlstrdb` | SQL Server Stretch Database | 1 | 128 | `^[a-z0-9](?:[a-z0-9._-]*[a-z0-9_])?$` | `Microsoft.Sql/servers/databases` |

## Developer Tools

| Abbr | Resource | Min | Max | Pattern | Source |
|---|---|---:|---:|---|---|
| `appcs` | App Configuration store | 5 | 50 | `^[a-z0-9-]+$` | `Microsoft.AppConfiguration/configurationStores` |
| `map` | Maps account | 1 | 98 | `^[a-z0-9][a-z0-9._-]*$` | `Microsoft.Maps/accounts` |
| `sigr` | SignalR | 3 | 63 | `^[a-z](?:[a-z0-9-]*[a-z0-9])?$` | `Microsoft.SignalRService/signalR` |
| `wps` | WebPubSub | 3 | 63 | `^[a-z](?:[a-z0-9-]*[a-z0-9])?$` | *no published rule* for `SignalRService/webPubSub` - follows `SignalRService/signalR `|

## DevOps

| Abbr | Resource | Min | Max | Pattern | Source |
|---|---|---:|---:|---|---|
| `amg` | Azure Managed Grafana | 2 | 23 | `^[a-z](?:[a-z0-9-]*[a-z0-9])?$` | *no published rule* - follows `Dashboard/grafana` |

## Integration

| Abbr | Resource | Min | Max | Pattern | Source |
|---|---|---:|---:|---|---|
| `apim` | API management service instance | 1 | 50 | `^[a-z](?:[a-z0-9-]*[a-z0-9])?$` | `Microsoft.ApiManagement/service` |
| `ia` | Integration account | 1 | 80 | `^[a-z0-9._()-]+$` | `Microsoft.Logic/integrationAccounts` |
| `logic` | Logic app | 1 | 43 | `^[a-z0-9._()-]+$` | `Microsoft.Logic/workflows` |
| `sbns` | Service Bus namespace | 6 | 50 | `^[a-z](?:[a-z0-9-]*[a-z0-9])?$` | `Microsoft.ServiceBus/namespaces` |
| `sbq` | Service Bus queue | 1 | 260 | `^[a-z0-9](?:[a-z0-9./_-]*[a-z0-9])?$` | `Microsoft.ServiceBus/namespaces/queues` |
| `sbt` | Service Bus topic | 1 | 260 | `^[a-z0-9](?:[a-z0-9./_-]*[a-z0-9])?$` | `Microsoft.ServiceBus/namespaces/topics` |
| `sbts` | Service Bus topic subscription | 1 | 50 | `^[a-z0-9](?:[a-z0-9._-]*[a-z0-9])?$` | `Microsoft.ServiceBus/namespaces/topics/subscriptions` |

## Management and Governance

| Abbr | Resource | Min | Max | Pattern | Source |
|---|---|---:|---:|---|---|
| `aa` | Automation account | 6 | 50 | `^[a-z](?:[a-z0-9-]*[a-z0-9])?$` | `Microsoft.Automation/automationAccounts` |
| `ag` | Azure Monitor action group | 1 | 260 | `^[a-z0-9](?:[a-z0-9._-]*[a-z0-9_])?$` | `Microsoft.Insights/actionGroups` |
| `appi` | Application Insights | 1 | 260 | `^[a-z0-9](?:[a-z0-9._-]*[a-z0-9_])?$` | `Microsoft.Insights/components` |
| `apr` | Azure Monitor alert processing rule | 1 | 260 | `^[a-z0-9](?:[a-z0-9._-]*[a-z0-9_])?$` | *no published rule* for `AlertsManagement/actionRules` - follows `Insights/actionGroups `|
| `bp` | Blueprint (planned for deprecation) | 1 | 90 | `^[a-z0-9_-]+$` | `Microsoft.Blueprint/blueprint` |
| `bpa` | Blueprint (planned for deprecation) | 1 | 90 | `^[a-z0-9_-]+$` | `Microsoft.Blueprint/blueprintAssignments` |
| `dce` | Data collection endpoint | 1 | 44 | `^[a-z0-9](?:[a-z0-9._-]*[a-z0-9_])?$` | *no published rule* - follows `Insights/dataCollectionEndpoints` |
| `dcr` | Azure Monitor data collection rule | 1 | 64 | `^[a-z0-9](?:[a-z0-9._-]*[a-z0-9_])?$` | *no published rule* - follows `Insights/dataCollectionRules` |
| `log` | Log Analytics workspace | 4 | 63 | `^[a-z0-9](?:[a-z0-9-]*[a-z0-9])?$` | `Microsoft.OperationalInsights/workspaces` |
| `mg` | Management group | 1 | 90 | `^[a-z0-9][a-z0-9._()-]*$` | `Microsoft.Management/managementgroups` |
| `pack` | Log Analytics query packs | 1 | 260 | `^[a-z0-9](?:[a-z0-9._-]*[a-z0-9_])?$` | *no published rule* - follows `OperationalInsights/queryPacks` |
| `policy` | Azure Policy definition (no standard short form provided; can be left descriptive) | 1 | 64 | `^[a-z0-9](?:[a-z0-9._-]*[a-z0-9_])?$` | `Microsoft.Authorization/policyDefinitions` |
| `pview` | Microsoft Purview instance | 3 | 63 | `^[a-z](?:[a-z0-9-]*[a-z0-9])?$` | *no published rule* - follows `Purview/accounts` |
| `rg` | Resource group | 1 | 90 | `^[a-z0-9](?:[a-z0-9._()-]*[a-z0-9])?$` | `Microsoft.Resources/resourcegroups` |
| `ts` | Template specs name | 1 | 90 | `^[a-z0-9._()-]+$` | `Microsoft.Resources/templateSpecs` |

## Migration

| Abbr | Resource | Min | Max | Pattern | Source |
|---|---|---:|---:|---|---|
| `dms` | Database Migration Service instance | 2 | 62 | `^[a-z0-9][a-z0-9._-]*$` | `Microsoft.DataMigration/services` |
| `migr` | Azure Migrate project | 1 | 260 | `^[a-z0-9](?:[a-z0-9._-]*[a-z0-9_])?$` | *no published rule* - follows `Migrate/migrateProjects` |
| `rsv` | Recovery Services vault | 2 | 50 | `^[a-z][a-z0-9-]*$` | `Microsoft.RecoveryServices/vaults` |

## Networking

| Abbr | Resource | Min | Max | Pattern | Source |
|---|---|---:|---:|---|---|
| `afd` | Front Door (Standard/Premium) profile | 5 | 64 | `^[a-z0-9](?:[a-z0-9-]*[a-z0-9])?$` | `Microsoft.Network/frontDoors` |
| `afw` | Firewall | 1 | 80 | `^[a-z0-9](?:[a-z0-9._-]*[a-z0-9_])?$` | `Microsoft.Network/azureFirewalls` |
| `afwp` | Firewall policy | 1 | 80 | `^[a-z0-9](?:[a-z0-9._-]*[a-z0-9_])?$` | `Microsoft.Network/firewallPolicies` |
| `agw` | Application gateway | 1 | 80 | `^[a-z0-9](?:[a-z0-9._-]*[a-z0-9_])?$` | `Microsoft.Network/applicationGateways` |
| `asg` | Application security group (ASG) | 1 | 80 | `^[a-z0-9](?:[a-z0-9._-]*[a-z0-9_])?$` | `Microsoft.Network/applicationSecurityGroups` |
| `cdne` | CDN endpoint | 1 | 50 | `^[a-z0-9](?:[a-z0-9-]*[a-z0-9])?$` | `Microsoft.Cdn/profiles/endpoints` |
| `cdnp` | CDN profile | 1 | 260 | `^[a-z0-9](?:[a-z0-9-]*[a-z0-9])?$` | `Microsoft.Cdn/profiles` |
| `con` | Connections | 1 | 80 | `^[a-z0-9](?:[a-z0-9._-]*[a-z0-9_])?$` | `Microsoft.Network/connections` |
| `dns` | DNS – (Note: Abbreviation may be customized per DNS domain name) | 1 | 63 | `^[a-z0-9-]+(\.[a-z0-9-]+)*$` | `Microsoft.Network/dnsZones` |
| `dnsfrs` | DNS forwarding ruleset | 1 | 80 | `^[a-z0-9](?:[a-z0-9_-]*[a-z0-9])?$` | `Microsoft.Network/dnsForwardingRuleset` |
| `dnspr` | DNS private resolver | 1 | 80 | `^[a-z0-9](?:[a-z0-9_-]*[a-z0-9])?$` | `Microsoft.Network/dnsResolvers` |
| `erc` | ExpressRoute circuit | 1 | 80 | `^[a-z0-9](?:[a-z0-9._-]*[a-z0-9_])?$` | `Microsoft.Network/expressRouteCircuits` |
| `erd` | ExpressRoute direct | 1 | 80 | `^[a-z0-9](?:[a-z0-9._-]*[a-z0-9_])?$` | *no published rule* - follows `Network/expressRoutePorts` |
| `ergw` | ExpressRoute gateway | 1 | 80 | `^[a-z0-9](?:[a-z0-9._-]*[a-z0-9_])?$` | `Microsoft.Network/virtualNetworkGateways` |
| `fde` | Front Door (Standard/Premium) endpoint | 1 | 50 | `^[a-z0-9](?:[a-z0-9-]*[a-z0-9])?$` | `Microsoft.Cdn/profiles/endpoints` |
| `fdfp` **no separator** | Front Door firewall policy | 1 | 128 | `^[a-z][a-z0-9]*$` | `Microsoft.Network/frontdoorWebApplicationFirewallPolicies` |
| `in` | DNS private resolver inbound endpoint | 1 | 80 | `^[a-z0-9](?:[a-z0-9_-]*[a-z0-9])?$` | `Microsoft.Network/dnsResolvers/inboundEndpoints` |
| `ipg` | IP group | 1 | 80 | `^[a-z0-9](?:[a-z0-9._-]*[a-z0-9_])?$` | *no published rule* - follows `Network/ipGroups` |
| `ippre` | Public IP address prefix | 1 | 80 | `^[a-z0-9](?:[a-z0-9._-]*[a-z0-9_])?$` | `Microsoft.Network/publicIPPrefixes` |
| `lbe` | Load balancer (external) | 1 | 80 | `^[a-z0-9](?:[a-z0-9._-]*[a-z0-9_])?$` | `Microsoft.Network/loadBalancers` |
| `lbi` | Load balancer (internal) | 1 | 80 | `^[a-z0-9](?:[a-z0-9._-]*[a-z0-9_])?$` | `Microsoft.Network/loadBalancers` |
| `lgw` | Local network gateway | 1 | 80 | `^[a-z0-9](?:[a-z0-9._-]*[a-z0-9_])?$` | `Microsoft.Network/localNetworkGateways` |
| `ng` | NAT gateway | 1 | 80 | `^[a-z0-9](?:[a-z0-9._-]*[a-z0-9_])?$` | *no published rule* - follows `Network/natGateways` |
| `nsg` | Network security group (NSG) | 1 | 80 | `^[a-z0-9](?:[a-z0-9._-]*[a-z0-9_])?$` | `Microsoft.Network/networkSecurityGroups` |
| `nsgsr` | NSG security rules | 1 | 80 | `^[a-z0-9](?:[a-z0-9._-]*[a-z0-9_])?$` | `Microsoft.Network/networkSecurityGroups/securityRules` |
| `nw` | Network Watcher | 1 | 80 | `^[a-z0-9](?:[a-z0-9._-]*[a-z0-9_])?$` | `Microsoft.Network/networkWatchers` |
| `out` | DNS private resolver outbound endpoint | 1 | 80 | `^[a-z0-9](?:[a-z0-9_-]*[a-z0-9])?$` | `Microsoft.Network/dnsResolvers/outboundEndpoints` |
| `peer` | Virtual network peering | 1 | 80 | `^[a-z0-9](?:[a-z0-9._-]*[a-z0-9_])?$` | `Microsoft.Network/virtualNetworks/virtualNetworkPeerings` |
| `pep` | Private endpoint | 2 | 64 | `^[a-z0-9](?:[a-z0-9._-]*[a-z0-9_])?$` | `Microsoft.Network/privateEndpoints` |
| `pl` | Private Link | 2 | 64 | `^[a-z0-9](?:[a-z0-9._-]*[a-z0-9_])?$` | `Microsoft.Network/privateLinkServices` |
| `rf` | Route filter | 1 | 80 | `^[a-z0-9](?:[a-z0-9._-]*[a-z0-9_])?$` | `Microsoft.Network/routeFilters` |
| `rt` | Route table | 1 | 80 | `^[a-z0-9](?:[a-z0-9._-]*[a-z0-9_])?$` | `Microsoft.Network/routeTables` |
| `rtserv` | Route server | 1 | 80 | `^[a-z0-9](?:[a-z0-9._-]*[a-z0-9_])?$` | *no published rule* - follows `Network/virtualHubs routeServers` |
| `rule` | Load balancer rule | 1 | 80 | `^[a-z0-9](?:[a-z0-9._-]*[a-z0-9_])?$` | `Microsoft.Network/loadBalancers/inboundNatRules` |
| `se` | Service endpoint policy | 1 | 80 | `^[a-z0-9](?:[a-z0-9._-]*[a-z0-9_])?$` | `Microsoft.Network/serviceEndpointPolicies` |
| `snet` | Virtual network subnet | 1 | 80 | `^[a-z0-9](?:[a-z0-9._-]*[a-z0-9_])?$` | `Microsoft.Network/virtualnetworks/subnets` |
| `traf` | Traffic Manager profile | 1 | 63 | `^[a-z0-9](?:[a-z0-9-]*[a-z0-9])?$` | `Microsoft.Network/trafficmanagerprofiles` |
| `udr` | User defined route (UDR) | 1 | 80 | `^[a-z0-9](?:[a-z0-9._-]*[a-z0-9_])?$` | `Microsoft.Network/routeTables/routes` |
| `vgw` | Virtual network gateway | 1 | 80 | `^[a-z0-9](?:[a-z0-9._-]*[a-z0-9_])?$` | `Microsoft.Network/virtualNetworkGateways` |
| `vhub` | Virtual WAN Hub | 1 | 80 | `^[a-z0-9](?:[a-z0-9._-]*[a-z0-9_])?$` | *no published rule* - follows `Network/virtualHubs` |
| `vnm` | Virtual network manager | 1 | 80 | `^[a-z0-9](?:[a-z0-9._-]*[a-z0-9_])?$` | *no published rule* - follows `Network/networkManagers` |
| `vwan` | Virtual WAN | 1 | 80 | `^[a-z0-9](?:[a-z0-9._-]*[a-z0-9_])?$` | `Microsoft.Network/virtualWans` |

## Security

| Abbr | Resource | Min | Max | Pattern | Source |
|---|---|---:|---:|---|---|
| `bas` | Azure Bastion | 1 | 80 | `^[a-z0-9](?:[a-z0-9._-]*[a-z0-9_])?$` | `Microsoft.Network/bastionHosts` |
| `id` | Managed identity | 3 | 128 | `^[a-z0-9][a-z0-9_-]*$` | `Microsoft.ManagedIdentity/userAssignedIdentities` |
| `kv` | Key vault | 3 | 24 | `^[a-z](?:[a-z0-9-]*[a-z0-9])?$` | `Microsoft.KeyVault/vaults` |
| `kvmhsm` | Key Vault Managed HSM | 3 | 24 | `^[a-z](?:[a-z0-9-]*[a-z0-9])?$` | *no published rule* for `KeyVault/managedHSMs` - follows `KeyVault/vaults `|
| `sshkey` | SSH key | 1 | 80 | `^[a-z0-9](?:[a-z0-9._-]*[a-z0-9_])?$` | *no published rule* - follows `Compute/sshPublicKeys` |
| `vcn` | VPN connection | 1 | 80 | `^[a-z0-9](?:[a-z0-9._-]*[a-z0-9_])?$` | `Microsoft.Network/vpnGateways/vpnConnections` |
| `vpng` | VPN Gateway | 1 | 80 | `^[a-z0-9](?:[a-z0-9._-]*[a-z0-9_])?$` | `Microsoft.Network/vpnGateways` |
| `vst` | VPN site | 1 | 80 | `^[a-z0-9](?:[a-z0-9._-]*[a-z0-9_])?$` | `Microsoft.Network/vpnSites` |
| `waf` **no separator** | Web Application Firewall (WAF) policy | 1 | 128 | `^[a-z][a-z0-9]*$` | `Microsoft.Network/frontdoorWebApplicationFirewallPolicies` |
| `wafrg` | Web Application Firewall (WAF) policy rule group | 1 | 80 | `^[a-z0-9](?:[a-z0-9._-]*[a-z0-9_])?$` | `Microsoft.Network/firewallPolicies/ruleGroups` |

## Storage

| Abbr | Resource | Min | Max | Pattern | Source |
|---|---|---:|---:|---|---|
| `bkpol` | Backup Vault policy | 1 | 75 | `^[a-z0-9-]+$` | `Microsoft.DataProtection/backupVaults/backupPolicies` |
| `bvault` | Backup Vault name | 2 | 50 | `^[a-z][a-z0-9-]*$` | `Microsoft.DataProtection/backupVaults` |
| `share` | File share | 3 | 63 | `^[a-z0-9-]+$` | `Microsoft.FileShares/file share` |
| `ssimp` | Azure StorSimple | 2 | 50 | `^[a-z](?:[a-z0-9-]*[a-z0-9])?$` | `Microsoft.StorSimple/managers` |
| `sss` | Storage Sync Service name | 1 | 260 | `^[a-z0-9](?:[a-z0-9._-]*[a-z0-9_])?$` | `Microsoft.StorageSync/storageSyncServices` |

## Virtual Desktop Infrastructure

| Abbr | Resource | Min | Max | Pattern | Source |
|---|---|---:|---:|---|---|
| `vdag` | Virtual desktop application group | 3 | 64 | `^[a-z0-9](?:[a-z0-9._-]*[a-z0-9_])?$` | `Microsoft.DesktopVirtualization/applicationGroups` |
| `vdpool` | Virtual desktop host pool | 3 | 64 | `^[a-z0-9](?:[a-z0-9._-]*[a-z0-9_])?$` | `Microsoft.DesktopVirtualization/hostPools` |
| `vdscaling` | Virtual desktop scaling plan | 3 | 64 | `^[a-z0-9](?:[a-z0-9._-]*[a-z0-9_])?$` | *no published rule* for `DesktopVirtualization/scalingPlans` - follows `DesktopVirtualization/workspaces `|
| `vdws` | Virtual desktop workspace | 3 | 64 | `^[a-z0-9](?:[a-z0-9._-]*[a-z0-9_])?$` | `Microsoft.DesktopVirtualization/workspaces` |
