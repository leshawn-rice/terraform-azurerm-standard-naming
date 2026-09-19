# One plan, one assertion per abbreviation. A failure here means either the
# generated name changed or it no longer satisfies that type's own rules in
# local.validation_map - the module's output preconditions run during the plan,
# so an invalid name fails this run before any assertion is reached.

run "every_resource_type_produces_its_expected_name" {
  command = plan

  module {
    source = "./tests/all-resource-types"
  }

  assert {
    condition     = output.names["aa"] == "aa-dev-001"
    error_message = "Expected Automation account (aa) to be 'aa-dev-001', got '${output.names["aa"]}'."
  }

  assert {
    condition     = output.names["acs"] == "acs-dev-001"
    error_message = "Expected Communication Services (acs) to be 'acs-dev-001', got '${output.names["acs"]}'."
  }

  assert {
    condition     = output.names["adf"] == "adf-dev-001"
    error_message = "Expected Azure Data Factory (adf) to be 'adf-dev-001', got '${output.names["adf"]}'."
  }

  assert {
    condition     = output.names["afd"] == "afd-dev-001"
    error_message = "Expected Front Door (Standard/Premium) profile (afd) to be 'afd-dev-001', got '${output.names["afd"]}'."
  }

  assert {
    condition     = output.names["afw"] == "afw-dev-001"
    error_message = "Expected Firewall (afw) to be 'afw-dev-001', got '${output.names["afw"]}'."
  }

  assert {
    condition     = output.names["afwp"] == "afwp-dev-001"
    error_message = "Expected Firewall policy (afwp) to be 'afwp-dev-001', got '${output.names["afwp"]}'."
  }

  assert {
    condition     = output.names["ag"] == "ag-dev-001"
    error_message = "Expected Azure Monitor action group (ag) to be 'ag-dev-001', got '${output.names["ag"]}'."
  }

  assert {
    condition     = output.names["agw"] == "agw-dev-001"
    error_message = "Expected Application gateway (agw) to be 'agw-dev-001', got '${output.names["agw"]}'."
  }

  assert {
    condition     = output.names["ais"] == "ais-dev-001"
    error_message = "Expected Azure AI services (ais) to be 'ais-dev-001', got '${output.names["ais"]}'."
  }

  assert {
    condition     = output.names["aks"] == "aks-dev-001"
    error_message = "Expected AKS cluster (aks) to be 'aks-dev-001', got '${output.names["aks"]}'."
  }

  assert {
    condition     = output.names["amg"] == "amg-dev-001"
    error_message = "Expected Azure Managed Grafana (amg) to be 'amg-dev-001', got '${output.names["amg"]}'."
  }

  assert {
    condition     = output.names["apim"] == "apim-dev-001"
    error_message = "Expected API management service instance (apim) to be 'apim-dev-001', got '${output.names["apim"]}'."
  }

  assert {
    condition     = output.names["app"] == "app-dev"
    error_message = "Expected App Service & Web (app) to be 'app-dev', got '${output.names["app"]}'."
  }

  assert {
    condition     = output.names["appcs"] == "appcs-dev-001"
    error_message = "Expected App Configuration store (appcs) to be 'appcs-dev-001', got '${output.names["appcs"]}'."
  }

  assert {
    condition     = output.names["appi"] == "appi-dev-001"
    error_message = "Expected Application Insights (appi) to be 'appi-dev-001', got '${output.names["appi"]}'."
  }

  assert {
    condition     = output.names["apr"] == "apr-dev-001"
    error_message = "Expected Azure Monitor alert processing rule (apr) to be 'apr-dev-001', got '${output.names["apr"]}'."
  }

  assert {
    condition     = output.names["arcgw"] == "arcgw-dev-001"
    error_message = "Expected Azure Arc gateway (arcgw) to be 'arcgw-dev-001', got '${output.names["arcgw"]}'."
  }

  assert {
    condition     = output.names["arck"] == "arck-dev-001"
    error_message = "Expected Azure Arc enabled Kubernetes cluster (arck) to be 'arck-dev-001', got '${output.names["arck"]}'."
  }

  assert {
    condition     = output.names["arcs"] == "arcs-dev-001"
    error_message = "Expected Azure Arc enabled server (arcs) to be 'arcs-dev-001', got '${output.names["arcs"]}'."
  }

  assert {
    condition     = output.names["as"] == "asdev"
    error_message = "Expected Azure Analysis Services server (as) to be 'asdev', got '${output.names["as"]}'."
  }

  assert {
    condition     = output.names["asa"] == "asa-dev-001"
    error_message = "Expected Azure Stream Analytics (asa) to be 'asa-dev-001', got '${output.names["asa"]}'."
  }

  assert {
    condition     = output.names["ase"] == "ase-dev"
    error_message = "Expected App Service environment (ase) to be 'ase-dev', got '${output.names["ase"]}'."
  }

  assert {
    condition     = output.names["asg"] == "asg-dev-001"
    error_message = "Expected Application security group (ASG) (asg) to be 'asg-dev-001', got '${output.names["asg"]}'."
  }

  assert {
    condition     = output.names["asp"] == "asp-dev-001"
    error_message = "Expected app service plan (asp) to be 'asp-dev-001', got '${output.names["asp"]}'."
  }

  assert {
    condition     = output.names["avail"] == "avail-dev-001"
    error_message = "Expected Availability Set (avail) to be 'avail-dev-001', got '${output.names["avail"]}'."
  }

  assert {
    condition     = output.names["avi"] == "avi-dev-001"
    error_message = "Expected Azure AI Video Indexer (avi) to be 'avi-dev-001', got '${output.names["avi"]}'."
  }

  assert {
    condition     = output.names["ba"] == "badev001"
    error_message = "Expected Batch accounts (ba) to be 'badev001', got '${output.names["ba"]}'."
  }

  assert {
    condition     = output.names["bas"] == "bas-dev-001"
    error_message = "Expected Azure Bastion (bas) to be 'bas-dev-001', got '${output.names["bas"]}'."
  }

  assert {
    condition     = output.names["bkpol"] == "bkpol-dev-001"
    error_message = "Expected Backup Vault policy (bkpol) to be 'bkpol-dev-001', got '${output.names["bkpol"]}'."
  }

  assert {
    condition     = output.names["bot"] == "bot-dev-001"
    error_message = "Expected Bot service (bot) to be 'bot-dev-001', got '${output.names["bot"]}'."
  }

  assert {
    condition     = output.names["bp"] == "bp-dev-001"
    error_message = "Expected Blueprint (planned for deprecation) (bp) to be 'bp-dev-001', got '${output.names["bp"]}'."
  }

  assert {
    condition     = output.names["bpa"] == "bpa-dev-001"
    error_message = "Expected Blueprint (planned for deprecation) (bpa) to be 'bpa-dev-001', got '${output.names["bpa"]}'."
  }

  assert {
    condition     = output.names["bvault"] == "bvault-dev-001"
    error_message = "Expected Backup Vault name (bvault) to be 'bvault-dev-001', got '${output.names["bvault"]}'."
  }

  assert {
    condition     = output.names["ca"] == "ca-dev-001"
    error_message = "Expected Container apps (ca) to be 'ca-dev-001', got '${output.names["ca"]}'."
  }

  assert {
    condition     = output.names["cae"] == "cae-dev-001"
    error_message = "Expected Container apps environment (cae) to be 'cae-dev-001', got '${output.names["cae"]}'."
  }

  assert {
    condition     = output.names["cdne"] == "cdne-dev-001"
    error_message = "Expected CDN endpoint (cdne) to be 'cdne-dev-001', got '${output.names["cdne"]}'."
  }

  assert {
    condition     = output.names["cdnp"] == "cdnp-dev-001"
    error_message = "Expected CDN profile (cdnp) to be 'cdnp-dev-001', got '${output.names["cdnp"]}'."
  }

  assert {
    condition     = output.names["ci"] == "ci-dev-001"
    error_message = "Expected Container instance (ci) to be 'ci-dev-001', got '${output.names["ci"]}'."
  }

  assert {
    condition     = output.names["cld"] == "cld-dev-001"
    error_message = "Expected Cloud Service (cld) to be 'cld-dev-001', got '${output.names["cld"]}'."
  }

  assert {
    condition     = output.names["cm"] == "cm-dev-001"
    error_message = "Expected Content moderator (cm) to be 'cm-dev-001', got '${output.names["cm"]}'."
  }

  assert {
    condition     = output.names["con"] == "con-dev-001"
    error_message = "Expected Connections (con) to be 'con-dev-001', got '${output.names["con"]}'."
  }

  assert {
    condition     = output.names["coscas"] == "coscas-dev-001"
    error_message = "Expected Azure Cosmos DB for Apache Cassandra account (coscas) to be 'coscas-dev-001', got '${output.names["coscas"]}'."
  }

  assert {
    condition     = output.names["cosgrm"] == "cosgrm-dev-001"
    error_message = "Expected Azure Cosmos DB for Apache Gremlin account (cosgrm) to be 'cosgrm-dev-001', got '${output.names["cosgrm"]}'."
  }

  assert {
    condition     = output.names["cosmon"] == "cosmon-dev-001"
    error_message = "Expected Azure Cosmos DB for MongoDB account (cosmon) to be 'cosmon-dev-001', got '${output.names["cosmon"]}'."
  }

  assert {
    condition     = output.names["cosmos"] == "cosmosdev001"
    error_message = "Expected Azure Cosmos DB database (cosmos) to be 'cosmosdev001', got '${output.names["cosmos"]}'."
  }

  assert {
    condition     = output.names["cosno"] == "cosno-dev-001"
    error_message = "Expected Azure Cosmos DB for NoSQL account (cosno) to be 'cosno-dev-001', got '${output.names["cosno"]}'."
  }

  assert {
    condition     = output.names["cospos"] == "cospos-dev-001"
    error_message = "Expected Azure Cosmos DB PostgreSQL cluster (cospos) to be 'cospos-dev-001', got '${output.names["cospos"]}'."
  }

  assert {
    condition     = output.names["costab"] == "costab-dev-001"
    error_message = "Expected Azure Cosmos DB for Table account (costab) to be 'costab-dev-001', got '${output.names["costab"]}'."
  }

  assert {
    condition     = output.names["cr"] == "crdev"
    error_message = "Expected Container registry (cr) to be 'crdev', got '${output.names["cr"]}'."
  }

  assert {
    condition     = output.names["cs"] == "cs-dev-001"
    error_message = "Expected Content safety (cs) to be 'cs-dev-001', got '${output.names["cs"]}'."
  }

  assert {
    condition     = output.names["cstv"] == "cstv-dev-001"
    error_message = "Expected Custom vision (prediction) (cstv) to be 'cstv-dev-001', got '${output.names["cstv"]}'."
  }

  assert {
    condition     = output.names["cstvt"] == "cstvt-dev-001"
    error_message = "Expected Custom vision (training) (cstvt) to be 'cstvt-dev-001', got '${output.names["cstvt"]}'."
  }

  assert {
    condition     = output.names["cv"] == "cv-dev-001"
    error_message = "Expected Computer vision (cv) to be 'cv-dev-001', got '${output.names["cv"]}'."
  }

  assert {
    condition     = output.names["dbw"] == "dbw-dev-001"
    error_message = "Expected Azure Databricks workspace (dbw) to be 'dbw-dev-001', got '${output.names["dbw"]}'."
  }

  assert {
    condition     = output.names["dce"] == "dce-dev"
    error_message = "Expected Data collection endpoint (dce) to be 'dce-dev', got '${output.names["dce"]}'."
  }

  assert {
    condition     = output.names["dcr"] == "dcr-dev-001"
    error_message = "Expected Azure Monitor data collection rule (dcr) to be 'dcr-dev-001', got '${output.names["dcr"]}'."
  }

  assert {
    condition     = output.names["dec"] == "decdev001"
    error_message = "Expected Azure Data Explorer cluster (dec) to be 'decdev001', got '${output.names["dec"]}'."
  }

  assert {
    condition     = output.names["dedb"] == "dedb-dev-001"
    error_message = "Expected Azure Data Explorer cluster database (dedb) to be 'dedb-dev-001', got '${output.names["dedb"]}'."
  }

  assert {
    condition     = output.names["des"] == "des-dev-001"
    error_message = "Expected Disk encryption set (des) to be 'des-dev-001', got '${output.names["des"]}'."
  }

  assert {
    condition     = output.names["di"] == "di-dev-001"
    error_message = "Expected Document intelligence (di) to be 'di-dev-001', got '${output.names["di"]}'."
  }

  assert {
    condition     = output.names["disk"] == "disk-dev-001"
    error_message = "Expected Managed Disk (data) (disk) to be 'disk-dev-001', got '${output.names["disk"]}'."
  }

  assert {
    condition     = output.names["dla"] == "dladev001"
    error_message = "Expected Data Lake Analytics account (dla) to be 'dladev001', got '${output.names["dla"]}'."
  }

  assert {
    condition     = output.names["dls"] == "dlsdev001"
    error_message = "Expected Data Lake Store account (dls) to be 'dlsdev001', got '${output.names["dls"]}'."
  }

  assert {
    condition     = output.names["dms"] == "dms-dev-001"
    error_message = "Expected Database Migration Service instance (dms) to be 'dms-dev-001', got '${output.names["dms"]}'."
  }

  assert {
    condition     = output.names["dns"] == "dns-dev"
    error_message = "Expected DNS – (Note: Abbreviation may be customized per DNS domain name) (dns) to be 'dns-dev', got '${output.names["dns"]}'."
  }

  assert {
    condition     = output.names["dnsfrs"] == "dnsfrs-dev-001"
    error_message = "Expected DNS forwarding ruleset (dnsfrs) to be 'dnsfrs-dev-001', got '${output.names["dnsfrs"]}'."
  }

  assert {
    condition     = output.names["dnspr"] == "dnspr-dev-001"
    error_message = "Expected DNS private resolver (dnspr) to be 'dnspr-dev-001', got '${output.names["dnspr"]}'."
  }

  assert {
    condition     = output.names["dt"] == "dt-dev-001"
    error_message = "Expected Azure Digital Twin instance (dt) to be 'dt-dev-001', got '${output.names["dt"]}'."
  }

  assert {
    condition     = output.names["egst"] == "egst-dev-001"
    error_message = "Expected Event Grid system topic (egst) to be 'egst-dev-001', got '${output.names["egst"]}'."
  }

  assert {
    condition     = output.names["erc"] == "erc-dev-001"
    error_message = "Expected ExpressRoute circuit (erc) to be 'erc-dev-001', got '${output.names["erc"]}'."
  }

  assert {
    condition     = output.names["erd"] == "erd-dev-001"
    error_message = "Expected ExpressRoute direct (erd) to be 'erd-dev-001', got '${output.names["erd"]}'."
  }

  assert {
    condition     = output.names["ergw"] == "ergw-dev-001"
    error_message = "Expected ExpressRoute gateway (ergw) to be 'ergw-dev-001', got '${output.names["ergw"]}'."
  }

  assert {
    condition     = output.names["evgd"] == "evgd-dev-001"
    error_message = "Expected Event Grid domain (evgd) to be 'evgd-dev-001', got '${output.names["evgd"]}'."
  }

  assert {
    condition     = output.names["evgs"] == "evgs-dev-001"
    error_message = "Expected Event Grid subscriptions (evgs) to be 'evgs-dev-001', got '${output.names["evgs"]}'."
  }

  assert {
    condition     = output.names["evgt"] == "evgt-dev-001"
    error_message = "Expected Event Grid topic (evgt) to be 'evgt-dev-001', got '${output.names["evgt"]}'."
  }

  assert {
    condition     = output.names["evh"] == "evh-dev-001"
    error_message = "Expected Event hub (evh) to be 'evh-dev-001', got '${output.names["evh"]}'."
  }

  assert {
    condition     = output.names["evhns"] == "evhns-dev-001"
    error_message = "Expected Event Hubs namespace (evhns) to be 'evhns-dev-001', got '${output.names["evhns"]}'."
  }

  assert {
    condition     = output.names["face"] == "face-dev-001"
    error_message = "Expected Face API (face) to be 'face-dev-001', got '${output.names["face"]}'."
  }

  assert {
    condition     = output.names["fde"] == "fde-dev-001"
    error_message = "Expected Front Door (Standard/Premium) endpoint (fde) to be 'fde-dev-001', got '${output.names["fde"]}'."
  }

  assert {
    condition     = output.names["fdfp"] == "fdfpdev001"
    error_message = "Expected Front Door firewall policy (fdfp) to be 'fdfpdev001', got '${output.names["fdfp"]}'."
  }

  assert {
    condition     = output.names["func"] == "func-dev-001"
    error_message = "Expected function app (func) to be 'func-dev-001', got '${output.names["func"]}'."
  }

  assert {
    condition     = output.names["gal"] == "galdev001"
    error_message = "Expected Gallery (gal) to be 'galdev001', got '${output.names["gal"]}'."
  }

  assert {
    condition     = output.names["hadoop"] == "hadoop-dev-001"
    error_message = "Expected HDInsight – Hadoop cluster (hadoop) to be 'hadoop-dev-001', got '${output.names["hadoop"]}'."
  }

  assert {
    condition     = output.names["hbase"] == "hbase-dev-001"
    error_message = "Expected HDInsight – HBase cluster (hbase) to be 'hbase-dev-001', got '${output.names["hbase"]}'."
  }

  assert {
    condition     = output.names["hi"] == "hi-dev-001"
    error_message = "Expected Health Insights (hi) to be 'hi-dev-001', got '${output.names["hi"]}'."
  }

  assert {
    condition     = output.names["host"] == "host-dev-001"
    error_message = "Expected Hosting environment (for web apps) (host) to be 'host-dev-001', got '${output.names["host"]}'."
  }

  assert {
    condition     = output.names["hub"] == "hub-dev-001"
    error_message = "Expected Azure AI Studio hub (hub) to be 'hub-dev-001', got '${output.names["hub"]}'."
  }

  assert {
    condition     = output.names["ia"] == "ia-dev-001"
    error_message = "Expected Integration account (ia) to be 'ia-dev-001', got '${output.names["ia"]}'."
  }

  assert {
    condition     = output.names["id"] == "id-dev-001"
    error_message = "Expected Managed identity (id) to be 'id-dev-001', got '${output.names["id"]}'."
  }

  assert {
    condition     = output.names["in"] == "in-dev-001"
    error_message = "Expected DNS private resolver inbound endpoint (in) to be 'in-dev-001', got '${output.names["in"]}'."
  }

  assert {
    condition     = output.names["iot"] == "iot-dev-001"
    error_message = "Expected IoT hub (iot) to be 'iot-dev-001', got '${output.names["iot"]}'."
  }

  assert {
    condition     = output.names["ipg"] == "ipg-dev-001"
    error_message = "Expected IP group (ipg) to be 'ipg-dev-001', got '${output.names["ipg"]}'."
  }

  assert {
    condition     = output.names["ippre"] == "ippre-dev-001"
    error_message = "Expected Public IP address prefix (ippre) to be 'ippre-dev-001', got '${output.names["ippre"]}'."
  }

  assert {
    condition     = output.names["ir"] == "ir-dev-001"
    error_message = "Expected Immersive reader (ir) to be 'ir-dev-001', got '${output.names["ir"]}'."
  }

  assert {
    condition     = output.names["it"] == "it-dev-001"
    error_message = "Expected Image Template (it) to be 'it-dev-001', got '${output.names["it"]}'."
  }

  assert {
    condition     = output.names["kafka"] == "kafka-dev-001"
    error_message = "Expected HDInsight – Kafka cluster (kafka) to be 'kafka-dev-001', got '${output.names["kafka"]}'."
  }

  assert {
    condition     = output.names["kv"] == "kv-dev-001"
    error_message = "Expected Key vault (kv) to be 'kv-dev-001', got '${output.names["kv"]}'."
  }

  assert {
    condition     = output.names["kvmhsm"] == "kvmhsm-dev-001"
    error_message = "Expected Key Vault Managed HSM (kvmhsm) to be 'kvmhsm-dev-001', got '${output.names["kvmhsm"]}'."
  }

  assert {
    condition     = output.names["lang"] == "lang-dev-001"
    error_message = "Expected Language service (lang) to be 'lang-dev-001', got '${output.names["lang"]}'."
  }

  assert {
    condition     = output.names["lbe"] == "lbe-dev-001"
    error_message = "Expected Load balancer (external) (lbe) to be 'lbe-dev-001', got '${output.names["lbe"]}'."
  }

  assert {
    condition     = output.names["lbi"] == "lbi-dev-001"
    error_message = "Expected Load balancer (internal) (lbi) to be 'lbi-dev-001', got '${output.names["lbi"]}'."
  }

  assert {
    condition     = output.names["lgw"] == "lgw-dev-001"
    error_message = "Expected Local network gateway (lgw) to be 'lgw-dev-001', got '${output.names["lgw"]}'."
  }

  assert {
    condition     = output.names["log"] == "log-dev-001"
    error_message = "Expected Log Analytics workspace (log) to be 'log-dev-001', got '${output.names["log"]}'."
  }

  assert {
    condition     = output.names["logic"] == "logic-dev-001"
    error_message = "Expected Logic app (logic) to be 'logic-dev-001', got '${output.names["logic"]}'."
  }

  assert {
    condition     = output.names["lt"] == "lt-dev-001"
    error_message = "Expected Azure Load Testing instance (lt) to be 'lt-dev-001', got '${output.names["lt"]}'."
  }

  assert {
    condition     = output.names["map"] == "map-dev-001"
    error_message = "Expected Maps account (map) to be 'map-dev-001', got '${output.names["map"]}'."
  }

  assert {
    condition     = output.names["maria"] == "maria-dev-001"
    error_message = "Expected MariaDB server (maria) to be 'maria-dev-001', got '${output.names["maria"]}'."
  }

  assert {
    condition     = output.names["mariadb"] == "mariadb-dev-001"
    error_message = "Expected MariaDB database (mariadb) to be 'mariadb-dev-001', got '${output.names["mariadb"]}'."
  }

  assert {
    condition     = output.names["mc"] == "mc-dev-001"
    error_message = "Expected Virtual Machine Maintenance Configuration (mc) to be 'mc-dev-001', got '${output.names["mc"]}'."
  }

  assert {
    condition     = output.names["mg"] == "mg-dev"
    error_message = "Expected Management group (mg) to be 'mg-dev', got '${output.names["mg"]}'."
  }

  assert {
    condition     = output.names["migr"] == "migr-dev-001"
    error_message = "Expected Azure Migrate project (migr) to be 'migr-dev-001', got '${output.names["migr"]}'."
  }

  assert {
    condition     = output.names["mls"] == "mls-dev-001"
    error_message = "Expected HDInsight – ML Services cluster (mls) to be 'mls-dev-001', got '${output.names["mls"]}'."
  }

  assert {
    condition     = output.names["mlw"] == "mlw-dev-001"
    error_message = "Expected Azure Machine Learning workspace (mlw) to be 'mlw-dev-001', got '${output.names["mlw"]}'."
  }

  assert {
    condition     = output.names["mysql"] == "mysql-dev-001"
    error_message = "Expected MySQL database (mysql) to be 'mysql-dev-001', got '${output.names["mysql"]}'."
  }

  assert {
    condition     = output.names["ng"] == "ng-dev-001"
    error_message = "Expected NAT gateway (ng) to be 'ng-dev-001', got '${output.names["ng"]}'."
  }

  assert {
    condition     = output.names["nic"] == "nic-dev-001"
    error_message = "Expected Network Interface (nic) to be 'nic-dev-001', got '${output.names["nic"]}'."
  }

  assert {
    condition     = output.names["np"] == "npdev001"
    error_message = "Expected AKS user node pool (np) to be 'npdev001', got '${output.names["np"]}'."
  }

  assert {
    condition     = output.names["npsystem"] == "npsystemd001"
    error_message = "Expected AKS system node pool (npsystem) to be 'npsystemd001', got '${output.names["npsystem"]}'."
  }

  assert {
    condition     = output.names["nsg"] == "nsg-dev-001"
    error_message = "Expected Network security group (NSG) (nsg) to be 'nsg-dev-001', got '${output.names["nsg"]}'."
  }

  assert {
    condition     = output.names["nsgsr"] == "nsgsr-dev-001"
    error_message = "Expected NSG security rules (nsgsr) to be 'nsgsr-dev-001', got '${output.names["nsgsr"]}'."
  }

  assert {
    condition     = output.names["ntf"] == "ntf-dev-001"
    error_message = "Expected Notification Hubs (ntf) to be 'ntf-dev-001', got '${output.names["ntf"]}'."
  }

  assert {
    condition     = output.names["ntfns"] == "ntfns-dev-001"
    error_message = "Expected Notification Hubs namespace (ntfns) to be 'ntfns-dev-001', got '${output.names["ntfns"]}'."
  }

  assert {
    condition     = output.names["nw"] == "nw-dev-001"
    error_message = "Expected Network Watcher (nw) to be 'nw-dev-001', got '${output.names["nw"]}'."
  }

  assert {
    condition     = output.names["oai"] == "oai-dev-001"
    error_message = "Expected Azure OpenAI Service (oai) to be 'oai-dev-001', got '${output.names["oai"]}'."
  }

  assert {
    condition     = output.names["osdisk"] == "osdisk-dev-001"
    error_message = "Expected Managed Disk (OS) (osdisk) to be 'osdisk-dev-001', got '${output.names["osdisk"]}'."
  }

  assert {
    condition     = output.names["out"] == "out-dev-001"
    error_message = "Expected DNS private resolver outbound endpoint (out) to be 'out-dev-001', got '${output.names["out"]}'."
  }

  assert {
    condition     = output.names["pack"] == "pack-dev-001"
    error_message = "Expected Log Analytics query packs (pack) to be 'pack-dev-001', got '${output.names["pack"]}'."
  }

  assert {
    condition     = output.names["pbi"] == "pbidev001"
    error_message = "Expected Power BI Embedded (pbi) to be 'pbidev001', got '${output.names["pbi"]}'."
  }

  assert {
    condition     = output.names["pcert"] == "pcert-dev-001"
    error_message = "Expected Provisioning services certificate (pcert) to be 'pcert-dev-001', got '${output.names["pcert"]}'."
  }

  assert {
    condition     = output.names["peer"] == "peer-dev-001"
    error_message = "Expected Virtual network peering (peer) to be 'peer-dev-001', got '${output.names["peer"]}'."
  }

  assert {
    condition     = output.names["pep"] == "pep-dev-001"
    error_message = "Expected Private endpoint (pep) to be 'pep-dev-001', got '${output.names["pep"]}'."
  }

  assert {
    condition     = output.names["pip"] == "pip-dev-001"
    error_message = "Expected Public IP (pip) to be 'pip-dev-001', got '${output.names["pip"]}'."
  }

  assert {
    condition     = output.names["pl"] == "pl-dev-001"
    error_message = "Expected Private Link (pl) to be 'pl-dev-001', got '${output.names["pl"]}'."
  }

  assert {
    condition     = output.names["pls"] == "pls-dev-001"
    error_message = "Expected Azure Arc private link scope (pls) to be 'pls-dev-001', got '${output.names["pls"]}'."
  }

  assert {
    condition     = output.names["policy"] == "policy-dev"
    error_message = "Expected Azure Policy definition (no standard short form provided; can be left descriptive) (policy) to be 'policy-dev', got '${output.names["policy"]}'."
  }

  assert {
    condition     = output.names["ppg"] == "ppg-dev-001"
    error_message = "Expected Proximity placement group (ppg) to be 'ppg-dev-001', got '${output.names["ppg"]}'."
  }

  assert {
    condition     = output.names["proj"] == "proj-dev-001"
    error_message = "Expected Azure AI Studio project (proj) to be 'proj-dev-001', got '${output.names["proj"]}'."
  }

  assert {
    condition     = output.names["provs"] == "provs-dev-001"
    error_message = "Expected Provisioning services (provs) to be 'provs-dev-001', got '${output.names["provs"]}'."
  }

  assert {
    condition     = output.names["psql"] == "psql-dev-001"
    error_message = "Expected PostgreSQL database (psql) to be 'psql-dev-001', got '${output.names["psql"]}'."
  }

  assert {
    condition     = output.names["pview"] == "pview-dev-001"
    error_message = "Expected Microsoft Purview instance (pview) to be 'pview-dev-001', got '${output.names["pview"]}'."
  }

  assert {
    condition     = output.names["redis"] == "redis-dev-001"
    error_message = "Expected Azure Cache for Redis instance (redis) to be 'redis-dev-001', got '${output.names["redis"]}'."
  }

  assert {
    condition     = output.names["rf"] == "rf-dev-001"
    error_message = "Expected Route filter (rf) to be 'rf-dev-001', got '${output.names["rf"]}'."
  }

  assert {
    condition     = output.names["rg"] == "rg-dev"
    error_message = "Expected Resource group (rg) to be 'rg-dev', got '${output.names["rg"]}'."
  }

  assert {
    condition     = output.names["rpc"] == "rpc-dev-001"
    error_message = "Expected Restore Point Collection (rpc) to be 'rpc-dev-001', got '${output.names["rpc"]}'."
  }

  assert {
    condition     = output.names["rsv"] == "rsv-dev-001"
    error_message = "Expected Recovery Services vault (rsv) to be 'rsv-dev-001', got '${output.names["rsv"]}'."
  }

  assert {
    condition     = output.names["rt"] == "rt-dev-001"
    error_message = "Expected Route table (rt) to be 'rt-dev-001', got '${output.names["rt"]}'."
  }

  assert {
    condition     = output.names["rtserv"] == "rtserv-dev-001"
    error_message = "Expected Route server (rtserv) to be 'rtserv-dev-001', got '${output.names["rtserv"]}'."
  }

  assert {
    condition     = output.names["rule"] == "rule-dev-001"
    error_message = "Expected Load balancer rule (rule) to be 'rule-dev-001', got '${output.names["rule"]}'."
  }

  assert {
    condition     = output.names["sbns"] == "sbns-dev-001"
    error_message = "Expected Service Bus namespace (sbns) to be 'sbns-dev-001', got '${output.names["sbns"]}'."
  }

  assert {
    condition     = output.names["sbq"] == "sbq-dev-001"
    error_message = "Expected Service Bus queue (sbq) to be 'sbq-dev-001', got '${output.names["sbq"]}'."
  }

  assert {
    condition     = output.names["sbt"] == "sbt-dev-001"
    error_message = "Expected Service Bus topic (sbt) to be 'sbt-dev-001', got '${output.names["sbt"]}'."
  }

  assert {
    condition     = output.names["sbts"] == "sbts-dev-001"
    error_message = "Expected Service Bus topic subscription (sbts) to be 'sbts-dev-001', got '${output.names["sbts"]}'."
  }

  assert {
    condition     = output.names["se"] == "se-dev-001"
    error_message = "Expected Service endpoint policy (se) to be 'se-dev-001', got '${output.names["se"]}'."
  }

  assert {
    condition     = output.names["sf"] == "sf-dev-001"
    error_message = "Expected Service Fabric cluster (sf) to be 'sf-dev-001', got '${output.names["sf"]}'."
  }

  assert {
    condition     = output.names["sfmc"] == "sfmc-dev-001"
    error_message = "Expected Service Fabric managed cluster (sfmc) to be 'sfmc-dev-001', got '${output.names["sfmc"]}'."
  }

  assert {
    condition     = output.names["share"] == "share-dev-001"
    error_message = "Expected File share (share) to be 'share-dev-001', got '${output.names["share"]}'."
  }

  assert {
    condition     = output.names["sigr"] == "sigr-dev-001"
    error_message = "Expected SignalR (sigr) to be 'sigr-dev-001', got '${output.names["sigr"]}'."
  }

  assert {
    condition     = output.names["snap"] == "snap-dev-001"
    error_message = "Expected Snapshot (snap) to be 'snap-dev-001', got '${output.names["snap"]}'."
  }

  assert {
    condition     = output.names["snet"] == "snet-dev-001"
    error_message = "Expected Virtual network subnet (snet) to be 'snet-dev-001', got '${output.names["snet"]}'."
  }

  assert {
    condition     = output.names["spark"] == "spark-dev-001"
    error_message = "Expected HDInsight – Spark cluster (spark) to be 'spark-dev-001', got '${output.names["spark"]}'."
  }

  assert {
    condition     = output.names["spch"] == "spch-dev-001"
    error_message = "Expected Speech service (spch) to be 'spch-dev-001', got '${output.names["spch"]}'."
  }

  assert {
    condition     = output.names["sql"] == "sql-dev-001"
    error_message = "Expected Azure SQL Database server (sql) to be 'sql-dev-001', got '${output.names["sql"]}'."
  }

  assert {
    condition     = output.names["sqldb"] == "sqldb-dev-001"
    error_message = "Expected Azure SQL database (sqldb) to be 'sqldb-dev-001', got '${output.names["sqldb"]}'."
  }

  assert {
    condition     = output.names["sqlep"] == "sqlep-dev-001"
    error_message = "Expected Azure SQL Elastic Pool (sqlep) to be 'sqlep-dev-001', got '${output.names["sqlep"]}'."
  }

  assert {
    condition     = output.names["sqlja"] == "sqlja-dev-001"
    error_message = "Expected Azure SQL Elastic Job agent (sqlja) to be 'sqlja-dev-001', got '${output.names["sqlja"]}'."
  }

  assert {
    condition     = output.names["sqlmi"] == "sqlmi-dev-001"
    error_message = "Expected SQL Managed Instance (sqlmi) to be 'sqlmi-dev-001', got '${output.names["sqlmi"]}'."
  }

  assert {
    condition     = output.names["sqlstrdb"] == "sqlstrdb-dev-001"
    error_message = "Expected SQL Server Stretch Database (sqlstrdb) to be 'sqlstrdb-dev-001', got '${output.names["sqlstrdb"]}'."
  }

  assert {
    condition     = output.names["srch"] == "srch-dev-001"
    error_message = "Expected AI Search (srch) to be 'srch-dev-001', got '${output.names["srch"]}'."
  }

  assert {
    condition     = output.names["sshkey"] == "sshkey-dev-001"
    error_message = "Expected SSH key (sshkey) to be 'sshkey-dev-001', got '${output.names["sshkey"]}'."
  }

  assert {
    condition     = output.names["ssimp"] == "ssimp-dev-001"
    error_message = "Expected Azure StorSimple (ssimp) to be 'ssimp-dev-001', got '${output.names["ssimp"]}'."
  }

  assert {
    condition     = output.names["sss"] == "sss-dev-001"
    error_message = "Expected Storage Sync Service name (sss) to be 'sss-dev-001', got '${output.names["sss"]}'."
  }

  assert {
    condition     = output.names["st"] == "stdev001"
    error_message = "Expected Storage Account (st) to be 'stdev001', got '${output.names["st"]}'."
  }

  assert {
    condition     = output.names["storm"] == "storm-dev-001"
    error_message = "Expected HDInsight – Storm cluster (storm) to be 'storm-dev-001', got '${output.names["storm"]}'."
  }

  assert {
    condition     = output.names["stvm"] == "stvmdev001"
    error_message = "Expected VM Storage Account (stvm) to be 'stvmdev001', got '${output.names["stvm"]}'."
  }

  assert {
    condition     = output.names["syndp"] == "syndpdev001"
    error_message = "Expected Azure Synapse Analytics SQL Dedicated Pool (syndp) to be 'syndpdev001', got '${output.names["syndp"]}'."
  }

  assert {
    condition     = output.names["synplh"] == "synplhdev001"
    error_message = "Expected Azure Synapse Analytics private link hub (synplh) to be 'synplhdev001', got '${output.names["synplh"]}'."
  }

  assert {
    condition     = output.names["synsp"] == "synspdev001"
    error_message = "Expected Azure Synapse Analytics Spark Pool (synsp) to be 'synspdev001', got '${output.names["synsp"]}'."
  }

  assert {
    condition     = output.names["synw"] == "synw-dev-001"
    error_message = "Expected Azure Synapse Analytics workspaces (synw) to be 'synw-dev-001', got '${output.names["synw"]}'."
  }

  assert {
    condition     = output.names["traf"] == "traf-dev-001"
    error_message = "Expected Traffic Manager profile (traf) to be 'traf-dev-001', got '${output.names["traf"]}'."
  }

  assert {
    condition     = output.names["trsl"] == "trsl-dev-001"
    error_message = "Expected Translator (trsl) to be 'trsl-dev-001', got '${output.names["trsl"]}'."
  }

  assert {
    condition     = output.names["ts"] == "ts-dev-001"
    error_message = "Expected Template specs name (ts) to be 'ts-dev-001', got '${output.names["ts"]}'."
  }

  assert {
    condition     = output.names["tsi"] == "tsi-dev-001"
    error_message = "Expected Time Series Insights environment (tsi) to be 'tsi-dev-001', got '${output.names["tsi"]}'."
  }

  assert {
    condition     = output.names["udr"] == "udr-dev-001"
    error_message = "Expected User defined route (UDR) (udr) to be 'udr-dev-001', got '${output.names["udr"]}'."
  }

  assert {
    condition     = output.names["vcn"] == "vcn-dev-001"
    error_message = "Expected VPN connection (vcn) to be 'vcn-dev-001', got '${output.names["vcn"]}'."
  }

  assert {
    condition     = output.names["vdag"] == "vdag-dev-001"
    error_message = "Expected Virtual desktop application group (vdag) to be 'vdag-dev-001', got '${output.names["vdag"]}'."
  }

  assert {
    condition     = output.names["vdpool"] == "vdpool-dev-001"
    error_message = "Expected Virtual desktop host pool (vdpool) to be 'vdpool-dev-001', got '${output.names["vdpool"]}'."
  }

  assert {
    condition     = output.names["vdscaling"] == "vdscaling-dev-001"
    error_message = "Expected Virtual desktop scaling plan (vdscaling) to be 'vdscaling-dev-001', got '${output.names["vdscaling"]}'."
  }

  assert {
    condition     = output.names["vdws"] == "vdws-dev-001"
    error_message = "Expected Virtual desktop workspace (vdws) to be 'vdws-dev-001', got '${output.names["vdws"]}'."
  }

  assert {
    condition     = output.names["vgw"] == "vgw-dev-001"
    error_message = "Expected Virtual network gateway (vgw) to be 'vgw-dev-001', got '${output.names["vgw"]}'."
  }

  assert {
    condition     = output.names["vhub"] == "vhub-dev-001"
    error_message = "Expected Virtual WAN Hub (vhub) to be 'vhub-dev-001', got '${output.names["vhub"]}'."
  }

  assert {
    condition     = output.names["vm"] == "vm-dev-001"
    error_message = "Expected Virtual Machine (vm) to be 'vm-dev-001', got '${output.names["vm"]}'."
  }

  assert {
    condition     = output.names["vmss"] == "vmss-dev-001"
    error_message = "Expected virtual machine scale set (vmss) to be 'vmss-dev-001', got '${output.names["vmss"]}'."
  }

  assert {
    condition     = output.names["vnet"] == "vnet-dev"
    error_message = "Expected Virtual Network (vnet) to be 'vnet-dev', got '${output.names["vnet"]}'."
  }

  assert {
    condition     = output.names["vnm"] == "vnm-dev-001"
    error_message = "Expected Virtual network manager (vnm) to be 'vnm-dev-001', got '${output.names["vnm"]}'."
  }

  assert {
    condition     = output.names["vpng"] == "vpng-dev-001"
    error_message = "Expected VPN Gateway (vpng) to be 'vpng-dev-001', got '${output.names["vpng"]}'."
  }

  assert {
    condition     = output.names["vst"] == "vst-dev-001"
    error_message = "Expected VPN site (vst) to be 'vst-dev-001', got '${output.names["vst"]}'."
  }

  assert {
    condition     = output.names["vwan"] == "vwan-dev-001"
    error_message = "Expected Virtual WAN (vwan) to be 'vwan-dev-001', got '${output.names["vwan"]}'."
  }

  assert {
    condition     = output.names["waf"] == "wafdev001"
    error_message = "Expected Web Application Firewall (WAF) policy (waf) to be 'wafdev001', got '${output.names["waf"]}'."
  }

  assert {
    condition     = output.names["wafrg"] == "wafrg-dev-001"
    error_message = "Expected Web Application Firewall (WAF) policy rule group (wafrg) to be 'wafrg-dev-001', got '${output.names["wafrg"]}'."
  }

  assert {
    condition     = output.names["wps"] == "wps-dev-001"
    error_message = "Expected WebPubSub (wps) to be 'wps-dev-001', got '${output.names["wps"]}'."
  }
}
