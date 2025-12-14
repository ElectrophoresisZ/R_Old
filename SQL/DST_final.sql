-- MySQL dump 10.13  Distrib 8.0.43, for Win64 (x86_64)
--
-- Host: localhost    Database: disease
-- ------------------------------------------------------
-- Server version	8.0.43

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `confusion_matrix`
--

DROP TABLE IF EXISTS `confusion_matrix`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `confusion_matrix` (
  `conf_ID` int NOT NULL AUTO_INCREMENT,
  `dataset_ID` int DEFAULT '0',
  `model_type` varchar(45) DEFAULT 'model_type',
  `sensitivity` double DEFAULT '0',
  `specificity` double DEFAULT '0',
  `pos_pred_value` double DEFAULT '0',
  `neg_pred_value` double DEFAULT '0',
  `precisions` double DEFAULT '0',
  `recall` double DEFAULT '0',
  `balanced_accuracy` double DEFAULT '0',
  PRIMARY KEY (`conf_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `confusion_matrix`
--

LOCK TABLES `confusion_matrix` WRITE;
/*!40000 ALTER TABLE `confusion_matrix` DISABLE KEYS */;
INSERT INTO `confusion_matrix` VALUES (1,1,'Elastic net',0.92,0.71,0.76,0.89,0.76,0.91,0.81),(2,2,'Elastic net',0.7,0.78,0.78,0.7,0.78,0.7,0.74),(3,3,'Elastic net',0.63,0.77,0.63,0.77,0.63,0.63,0.69),(4,4,'Elastic net',0.75,1,1,0.63,1,0.75,0.88),(5,5,'Elastic net',0.83,0.91,0.83,0.91,0.83,0.83,0.87);
/*!40000 ALTER TABLE `confusion_matrix` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dataset`
--

DROP TABLE IF EXISTS `dataset`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dataset` (
  `dataset_ID` int NOT NULL AUTO_INCREMENT,
  `disease_ID` int DEFAULT '0',
  `GEO_ID` varchar(45) DEFAULT 'GEO_ID',
  `dataset_name` varchar(100) DEFAULT 'dataset_name',
  `sample_description` varchar(100) DEFAULT 'sample_description',
  `data_type` varchar(100) DEFAULT 'data_type',
  `file_format` varchar(45) DEFAULT 'file_format',
  `website_link` varchar(100) DEFAULT 'website_link',
  PRIMARY KEY (`dataset_ID`),
  UNIQUE KEY `dataset_ID_UNIQUE` (`dataset_ID`),
  KEY `fk_dataset_disease` (`disease_ID`),
  CONSTRAINT `fk_dataset_disease` FOREIGN KEY (`disease_ID`) REFERENCES `disease` (`disease_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dataset`
--

LOCK TABLES `dataset` WRITE;
/*!40000 ALTER TABLE `dataset` DISABLE KEYS */;
INSERT INTO `dataset` VALUES (1,1,'GSE132903','Transcriptome changes in the Alzheimer\'s middle temporal gyrus: importance of RNA metabolism and mit','compare RNA expression of middle temporal gyrus between Alzheimer’s Disease (AD = 97) and non-dement','Bulk RNA-seq','XLSX/TXT','https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE132903'),(2,2,'GSE219278','Divergent impacts of C9orf72 repeat expansion on neurons and glia in ALS and FTD (bulk RNA-seq)','RNA sequencing of three major brain cell populations (neurons, oligodendrocytes, and other glia) fro','Bulk RNA-seq','TSV','https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE219278'),(3,3,'GSE68719','mRNA-Seq expression and MS3 proteomics profiling of human post-mortem BA9 brain tissue for Parkinson',' mRNA-Seq of 29 PD and 44 neurologically normal controls.','Bulk RNA-seq','TXT','https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE68719'),(4,4,'GSE64810','mRNA-Seq Expression profiling of human post-mortem BA9 brain tissue for \r\nHuntington\'s Disease and n','20 Huntington\'s Disease and 49 neurologically normal control samples from post-mortem human subjects','Bulk RNA-seq','TXT','https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE64810'),(5,5,'GSE255602','Stem cell derived spinal cord chips reproduce disease biomarkers\r\n in sporadic ALS patients [bulk RN','Comparitive gene expression of cells from control (44) and ALS patients (27).','Bulk RNA-seq','CSV','https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE255602'),(6,4,'GSE33000','Gene expression profiles of human prefrontal cortex brain tissues','624 individual DLPFC samples were profiled against a common DLPFC pool constructed from the same set','Bulk RNA-seq','TXT','https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE33000'),(7,1,'GSE159699','An integrated multi-omics approach identifies epigenetic alterations associated with Alzheimer’s dis','RNA-seq in postmortal lateral temporal lobe of Alzheimer\'s disease affected brains (12) and control ','Bulk RNA-seq','TXT','https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE159699'),(8,2,'GSE13162','Expression data from postmortem human brain samples with and without FTLD-U','Postmortem brain samples were isolated from normal controls (17) and FTLD-U patients (39).','Bulk RNA-seq','CEL','https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE13162'),(9,3,'GSE282494','The Parkinson’s disease associated LRRK2-G2019S variant restricts serine metabolism leading to micro','Bulk RNAseq from iPSC-derived microglia of 4 Healthy and 4 PD patients carrying mutations in the LRR','Bulk RNA-seq','TXT','https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE282494'),(10,3,'GSE8397','Expression profiling of the Parkinsonian Brain','Post mortem brain tissue samples from Parkinson\'s disease (24) and control cases (15) were prepared ','Bulk RNA-seq','CEL','https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE8397'),(11,3,'GSE136666','Transcriptomic profiling of substantia nigra and putamen in Parkinson’s disease','RNA sequencing of substantia nigra and putamen samples from Parkinson\'s disease patients (8) and con','Bulk RNA-seq','TXT','https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE136666'),(12,3,'GSE135036','Hemispheric asymmetry in the human brain and in Parkinson’s disease is linked to divergent epigeneti','We used RNA-sequencing to perform a transcriptional analysis in the prefrontal cortex of hemisphere ','Bulk RNA-seq','TXT','https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE135036'),(13,1,'GSE125583','RNA Expression in fusiform gyrus of AD and Control subjects','RNA from fusiform gyrus of Alzheimer\'s or Neurologically Normal post-mortem tissue.','Bulk RNA-seq','TSV','https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE125583'),(14,1,'GSE125050','Alzheimer\'s gene expression by cell type - SFG','RNA from purified cell types from AD and control post-mortem frozen superior frontal gyrus of AD and','Bulk RNA-seq','TSV','https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE125050'),(15,2,'GSE116622','Unexpected similarities between C9ORF72 and sporadic forms of ALS/FTD suggest a common disease mecha','Differential splicing analysis of Amyotrophic Lateral Sclerosis (ALS) and Control samples','Bulk RNA-seq','TXT','https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE116622'),(16,4,'GSE152058','Cell Type-Specific Transcriptomics Reveals that Mutant Huntingtin Leads to Mitochondrial RNA Release','Cell type-specific profiling of human HD and HD mouse model striatal and corticostriatal cell types.','Bulk RNA-seq','TSV','https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE152058'),(17,5,'GSE124439','Postmortem Cortex Samples Identify Distinct Molecular Subtypes of ALS: Retrotransposon Activation, O','RNA-seq analysis of ALS patient samples and individuals without neurological disorders','Bulk RNA-seq','TXT','https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE124439'),(18,5,'GSE153960','Truncated stathmin-2 is a marker of TDP-43 pathology in frontotemporal dementia','Differential STMN2 gene expression (processed count data) and splicing analyses of Amyotrophic Later','Bulk RNA-seq','TXT','https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE153960'),(19,1,'GSE288856','Clonal CD8+ T Cells Populate the Leptomeninges and Coordinate with Immune Cells in Human Degenerativ','scRNA/TCR sequencing of CD45+ cells isolated from human postmortem leptomeninges and brain','single-cell RNA-seq','CSV/MTX/TSV','https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE288856'),(20,1,'GSE308007','Spatial and single cell transcriptomics in the human Entorhinal Cortex across diverse risk of Alzhei','31 neurotypical adult brain donors carrying either E2 or E4 APOE alleles from both African and Europ','single-cell RNA-seq','MTX/TSV','https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE308007'),(21,2,'GSE250280','Opposing role of phagocytic receptors MERTK and AXL in Progranulin deficient FTD','Droplet-based single nuclear RNA sequencing from superior frontal gyrus from 7 patients with GRN+/- ','single-cell RNA-seq','MTX/TSV','https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE250280'),(22,2,'GSE264012','Characterising day 90 human C9ORF72-ALS/FTD cerebral organoids at single cell level','iPSC derive cerebral organoids: 3 ALS/FTD and 3 Ctrl cell line','single-cell RNA-seq','MTX/TSV','https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE264012'),(23,3,'GSE281535','BrainSTEM: A multi-resolution fetal brain atlas to assess the fidelity of human midbrain cultures','Single-cell time course RNA seq of midbrain organoids, from day 20 to day 60 in culture.','single-cell RNA-seq','MTX/TSV','https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE281535'),(24,3,'GSE289241','Differential memory enrichment of cytotoxic CD4 T cells in Parkinson’s disease patients reactive to ','CD4+ effector memory T cells in donors with Parkinsons\'s disease (PD resonsive to alpha-synuclein (P','single-cell RNA-seq','MTX/TSV','https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE289241'),(25,4,'GSE233387','sFANS enriched snRNAseq profiling of deep layer cortical cell types from human control and Huntingto','	Nuclei from neuronal cell populations from the deep layers of cortex (layers 5 and 6) were isolated','single-cell RNA-seq','MTX/TSV','https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE233387'),(26,4,'GSE271852','Mutant Huntingtin impairs neurodevelopment in human brain organoids through CHCHD2-mediated neuromet','3 HD and 3 WT regionalized midbrain organoid','single-cell RNA-seq','MTX/TSV','https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSM8403739'),(27,5,'GSE288856','Clonal CD8+ T Cells Populate the Leptomeninges and Coordinate with Immune Cells in Human Degenerativ','scRNA/TCR sequencing of CD45+ cells isolated from human postmortem leptomeninges and brain','single-cell RNA-seq','CSV/MTX/TSV','https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE288856');
/*!40000 ALTER TABLE `dataset` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `disease`
--

DROP TABLE IF EXISTS `disease`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `disease` (
  `disease_ID` int NOT NULL AUTO_INCREMENT,
  `disease_name` varchar(45) NOT NULL DEFAULT 'sick',
  `disease_abbr` varchar(45) NOT NULL DEFAULT 'sick',
  `disease_description` varchar(150) NOT NULL DEFAULT 'sick',
  PRIMARY KEY (`disease_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `disease`
--

LOCK TABLES `disease` WRITE;
/*!40000 ALTER TABLE `disease` DISABLE KEYS */;
INSERT INTO `disease` VALUES (1,'Alzheimer\'s disease','AD','A progressive neurodegenerative disease that affects memory and cognitive functions'),(2,'Frontotemporal dementia','FTD','A group of disorders that affect the frontal and temporal lobes of the brain, causing personality changes'),(3,'Parkinson\'s disease','PD','A neurodegenerative disorder affecting movement, often causing tremors and stiffness'),(4,'Huntington\'s disease','HD','An inherited disorder that causes the progressive breakdown of nerve cells in the brain'),(5,'Amyotrophic lateral sclerosis','ALS','A progressive nervous system disease that affects nerve cells in the brain and spinal cord');
/*!40000 ALTER TABLE `disease` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `interaction`
--

DROP TABLE IF EXISTS `interaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `interaction` (
  `interaction_ID` int NOT NULL AUTO_INCREMENT,
  `secretory_protein_ID` int DEFAULT '0',
  `receptor_ID` int DEFAULT '0',
  `disease_ID` varchar(45) DEFAULT '0',
  `functions` varchar(150) DEFAULT 'functions',
  PRIMARY KEY (`interaction_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `interaction`
--

LOCK TABLES `interaction` WRITE;
/*!40000 ALTER TABLE `interaction` DISABLE KEYS */;
INSERT INTO `interaction` VALUES (1,1,1,'1','Inhibits vesicular release, suppresses excitatory synaptic transmission, enhances short-term facilitation, and stabilizes associative memory'),(2,1,2,'1','Acts as a positive allosteric modulator of CaSR, activates cPLA2/PGE2 signaling pathway, induces synaptic spine damage, \nimpairs synapse formation, an'),(3,3,3,'1','Promotes Aβ clearance, maintains synaptic integrity, and regulates brain lipid metabolism'),(4,13,4,'1','Suppresses neuroinflammation, promotes Aβ phagocytic clearance, and regulates tau phosphorylation'),(5,2,5,'1','Activates microglia via DAP12/SYK pathway, enhances phagocytosis, promotes Aβ clearance, and suppresses neuroinflammation'),(6,3,5,'1','Activates microglia via DAP12/SYK pathway, enhances phagocytosis, promotes Aβ clearance, and suppresses neuroinflammation'),(7,5,6,'1','Regulates lysosomal function, suppresses neuroinflammation, and maintains neuronal survival'),(8,2,7,'1','Binds to PRPC to mediate synaptic toxicity, inhibit long-term potentiation (LTP), and impair cognition'),(9,6,8,'1','Inhibits Aβ-induced neuronal apoptosis, regulates tau phosphorylation, and modulates axonal transport'),(10,7,9,'3','α-Synuclein–LAG3 axis mediates neuronal uptake and propagation of pathological α-synuclein.'),(11,7,10,'3','α-Synuclein–TLR2 signaling triggers microglial activation and neuroinflammation.'),(12,7,7,'3','α-Synuclein–PrP^C interaction facilitates neurotoxic signaling and synaptic dysfunction.'),(13,8,12,'3','GDNF–GFRα1 + RET complex promotes neuronal survival and axonal maintenance.'),(14,9,13,'3','Neurturin–GFRα2 + RET complex enhances neuron survival and differentiation.'),(15,10,14,'3','BDNF–TrkB axis promotes synaptic plasticity, neuronal survival, and neurogenesis.'),(16,10,15,'3','BDNF–p75NTR signaling can modulate apoptosis and synaptic pruning.'),(17,11,4,'3','CX3CL1–CX3CR1 axis regulates microglial activation and neuron–microglia communication.'),(18,12,17,'3','TNF-α–TNFR1 signaling induces neuroinflammation, apoptosis, and cytokine production.'),(19,12,18,'3','TNF-α–TNFR2 signaling mediates neuroprotection and anti-inflammatory responses.'),(20,13,19,'3','IL-1β–IL-1R1 axis drives neuroinflammatory responses and glial activation.'),(21,14,20,'3','CCL2–CCR2 axis recruits monocytes and microglia to sites of neuroinflammation.'),(22,15,21,'3','IGF-1–IGF-1R signaling promotes neuronal growth, survival, and synaptic plasticity.'),(23,16,22,'3','VEGF–VEGFR1 signaling regulates angiogenesis, endothelial survival, and inflammation modulation.'),(24,16,22,'3','VEGF–VEGFR2 signaling drives endothelial proliferation, vascular remodeling, and neuroprotection.'),(25,17,0,'2','Progranulin (PGRN) promotes neuronal survival, regulates inflammation, and modulates lysosomal function.'),(26,18,0,'2','VGF regulates neurotrophic signaling, energy homeostasis, and synaptic plasticity (receptor not clearly defined).'),(27,19,26,'2','Neuronal Pentraxin 2 (NPTX2)–NPTXR axis mediates synaptic regulation and plasticity.'),(28,20,24,'2','CHI3L1 / YKL-40–IL-13Rα2 axis modulates inflammatory signaling and glial activation.'),(29,21,0,'2','Neurofilament light chain (NEFL) serves as a structural marker released during neuronal injury.'),(30,14,20,'2','CCL2–CCR2 axis recruits monocytes and microglia to sites of neuroinflammation.'),(31,23,16,'2','CXCL10–CXCR3 axis drives neuroinflammatory immune recruitment.'),(32,24,11,'2','TREM2–DAP12 signaling regulates microglial activation, phagocytosis, and neuroprotection; soluble TREM2 (sTREM2) modulates inflammation.'),(33,25,0,'2','GFAP acts as a structural cytoskeletal protein in astrocytes and maintains glial integrity.'),(34,5,6,'5','Sortilin-mediated progranulin uptake regulates lysosomal function and TDP-43 pathology'),(35,16,25,'5','VEGF–VEGFR2 signaling supports motor neuron survival'),(36,23,16,'5','CXCL10–CXCR3 axis drives neuroinflammatory immune recruitment'),(37,14,20,'5','CCL2–CCR2 signaling recruits peripheral monocytes to ALS spinal cord'),(38,12,17,'5','TNFα–TNFR1 signaling promotes inflammatory neurotoxicity'),(39,26,29,'5','IL-6–IL6R signaling contributes to chronic neuroinflammation'),(40,22,30,'5','Semaphorin 3A–NRP1 induces motor axon retraction and NMJ loss'),(41,8,31,'5','GDNF–GFRα1/RET promotes motor neuron survival'),(42,10,14,'4','Cortical BDNF–TrkB signaling loss causes striatal neuron degeneration'),(43,26,29,'4','IL-6–IL6R signaling mediates neuroinflammation in HD brain'),(44,12,17,'4','TNFα–TNFR1 signaling promotes neuronal dysfunction'),(45,14,20,'4','CCL2–CCR2 signaling enhances immune cell recruitment'),(46,8,31,'4','GDNF–GFRα1/RET supports survival of striatal medium spiny neurons'),(47,15,21,'4','IGF1–IGF1R activates PI3K–Akt neuroprotective signaling'),(48,4,28,'4','TGF-β signaling modulates glial activation and disease progression'),(49,2,27,'4','FGF2–FGFR1 signaling supports neuronal plasticity and survival'),(50,16,25,'4','VEGF–VEGFR2 signaling contributes to vascular and neuronal support');
/*!40000 ALTER TABLE `interaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `potential_protein`
--

DROP TABLE IF EXISTS `potential_protein`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `potential_protein` (
  `potential_ID` int NOT NULL AUTO_INCREMENT,
  `gene_symbol` varchar(45) DEFAULT 'gene_symbol',
  `disease_ID` int DEFAULT '0',
  `protein_type` varchar(45) DEFAULT 'protein_type',
  `functions` varchar(150) DEFAULT 'functions',
  `express_cell_type` varchar(100) DEFAULT 'express_cell_type',
  `sources` varchar(45) DEFAULT 'sources',
  PRIMARY KEY (`potential_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `potential_protein`
--

LOCK TABLES `potential_protein` WRITE;
/*!40000 ALTER TABLE `potential_protein` DISABLE KEYS */;
INSERT INTO `potential_protein` VALUES (1,'IGFBP5',1,'secretory protein','regulates IGF-mediated cellular processes including proliferation, differentiation, and apoptosis in a cell-type specific manner;acts as a major media','fibroblasts, osteoblasts, chondrocytes, epithelial cells','GSE132903'),(2,'CLEC5A',1,'receptor','Positively related to immune infiltration; acts as a pattern recognition receptor involved in neuroinflammation and progression','microglia, myeloid cells','GSE132903'),(3,'ITGAX.1',1,'receptor','Phagocytosis and cell adhesion; marker for Disease-Associated Microglia (DAM) involved in plaque clearance','microglia (specifically DAM subset)','GSE132903'),(4,'ADCYAP1',5,'secretory protein','Neuroprotection, stress response, and regulation of neurotransmission','motor neurons','GSE255602'),(5,'FOLH1',5,'secretory protein','Hydrolysis of NAAG (neuropeptide) to glutamate; involved in excitotoxicity (Glutamate carboxypeptidase II)','astrocytes, Schwann cells','GSE255602'),(6,'CNGA3',5,'receptor','Cyclic nucleotide-gated ion channel activity; visual signal transduction','photoreceptors of cones','GSE255602'),(7,'PCDHGB4',5,'receptor','Calcium-dependent cell adhesion; involved in establishment of neuronal connections','neurons','GSE255602'),(8,'NR5A2',5,'receptor','Transcriptional regulation; maintenance of stem cell pluripotency and neurogenesis','neural stem cells','GSE255602'),(9,'CD247',5,'receptor','T-cell receptor signaling; couples antigen recognition to intracellular signal transduction','T cells','GSE255602'),(10,'GPR17',2,'receptor','Sensor of brain damage; regulates oligodendrocyte differentiation and myelination  (remyelination failure)','oligodendrocyte precursor cells ','GSE219278'),(11,'KLB',2,'receptor','Co-receptor for FGF19/FGF21; regulates energy metabolism and bile acid synthesis','epithelial cells from hepatic adipose tissue','GSE219278'),(12,'AMH',4,'secretory protein','Regulation of reproductive tissue development (TGF-beta family)','sertoli cells, granulosa cells','GSE64810'),(13,'PLA2G5',4,'secretory protein','Hydrolysis of phospholipids to release fatty acids; involved in inflammation; altered phospholipid profiles/metabolism in HD brain','secreted extracellularly','GSE64810'),(14,'ALB',4,'secretory protein','Albumin; regulation of osmotic pressure and transport of molecules in blood; major antioxidant and transport protein; metabolic biomarker in HD','hepatocytes','GSE64810'),(15,'OR1F1',4,'receptor','Olfactory receptor activity; G-protein coupled receptor signaling; olfactory dysfunction is an early sign of HD','olfactory sensory neurons','GSE64810'),(16,'VSIG8',4,'receptor','Cell adhesion; potential role as an immune checkpoint or VISTA receptor; V-set and immunoglobulin domain-containing','immune cells, epithelial cells','GSE64810'),(17,'NICOL1',4,'receptor','Regulation of cell ontogeny; interacts with NELL2; involved in cellular stress/nucleolar function; linked to mutant Huntingtin toxicity','nucleus (wide expression)','GSE64810'),(18,'ADAMTS2',3,'secretory protein','Metalloproteinase; processing of procollagen to collagen; involved in ECM remodeling and potential neuroinflammation','fibroblasts, various tissues','GSE68719'),(19,'WISP1',3,'secretory protein','Wnt signaling pathway regulation; blocks neurodegeneration via PI3K/Akt/mitochondrial signaling; promotes cell survival and fibrosis','neurons, glia, fibroblasts','GSE68719'),(20,'APOA1',3,'secretory protein','Cholesterol transport (component of HDL); anti-inflammatory properties','hepatocytes, intestine','GSE68719'),(21,'C1QL4',3,'secretory protein','Regulation of synapse maintenance and complement activation','neurons, immune cells','GSE68719'),(22,'LILRA4',3,'receptor','Immune receptor on pDCs; Negative regulation of innate immune response; inhibits interferon production','plasmacytoid dendritic cells','GSE68719');
/*!40000 ALTER TABLE `potential_protein` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `receptor`
--

DROP TABLE IF EXISTS `receptor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `receptor` (
  `receptor_ID` int NOT NULL AUTO_INCREMENT,
  `gene_symbol` varchar(45) DEFAULT 'gene_symbol',
  `receptor_name` varchar(100) DEFAULT 'receptor_name',
  `receptor_type` varchar(100) DEFAULT 'receptor_type',
  `express_cell_type` varchar(100) DEFAULT 'express_cell_type',
  PRIMARY KEY (`receptor_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `receptor`
--

LOCK TABLES `receptor` WRITE;
/*!40000 ALTER TABLE `receptor` DISABLE KEYS */;
INSERT INTO `receptor` VALUES (1,'GABBR1','Gamma-aminobutyric acid type B receptor subunit 1 (GABABR1a)','G protein-coupled receptor (GPCR)','Neurons'),(2,'CASR','Extracellular calcium-sensing receptor (CaSR)','G protein-coupled receptor (GPCR)','Hippocampal neurons and cortical astrocytes'),(3,'LRP1','Low-density lipoprotein receptor-related protein 1 (LRP1)','Endocytic/scavenger receptor','Neurons, astrocytes, cerebrovascular endothelial cells and pericytes'),(4,'CX3CR1','CX3C chemokine receptor 1 (CX3CR1)','G protein-coupled receptor (GPCR)','Microglia, macrophages, monocytes, some neurons'),(5,'TREM2','Triggering receptor expressed on myeloid cells 2 (TREM2)','Immunoglobulin superfamily receptor','Microglia'),(6,'SORT1','Sortilin (SORT)','Endocytic sorting receptor','Neurons, microglia, astrocytes'),(7,'PRNP','Cellular prion protein (PrP(C))','GPI-anchored cell surface protein','Neurons, astrocytes, microglia, endothelial cells'),(8,'UNC5C','Unc-5 homolog C (UNC5C)','Dependence receptor','Neurons, microglia'),(9,'LAG3','Lymphocyte activation gene-3','Immune checkpoint receptor','T cells, NK cells, dendritic cells'),(10,'TLR2','Toll-like receptor 2','Pattern recognition receptor','Macrophages, microglia, dendritic cells, astrocytes'),(11,'GFRA1 + RET','GDNF family receptor alpha-1 + Rearranged during transfection receptor tyrosine kinase','GPI-anchored co-receptor + Receptor tyrosine kinase','Neurons'),(12,'GFRA2 + RET','GDNF family receptor alpha-2 + Rearranged during transfection receptor tyrosine kinase','GPI-anchored co-receptor + Receptor tyrosine kinase','Neurons'),(13,'NTRK2','Tropomyosin receptor kinase B','Receptor tyrosine kinase','Neurons, astrocytes, some oligodendrocytes'),(14,'NGFR','p75 neurotrophin receptor','Neurotrophin receptor','Neurons, Schwann cells, oligodendrocyte precursors'),(15,'TNFRSF1A','Tumor necrosis factor receptor 1','TNF receptor','Endothelial cells, neurons, astrocytes, immune cells'),(16,'TNFRSF1B','Tumor necrosis factor receptor 2','TNF receptor','T cells, endothelial cells, neurons, astrocytes'),(17,'IL1R1','Interleukin-1 receptor type 1','Cytokine receptor','Endothelial cells, neurons, astrocytes, immune cells'),(18,'CCR2','C-C chemokine receptor type 2','G-protein-coupled receptor','Monocytes, macrophages, microglia, dendritic cells'),(19,'IGF1R','Insulin-like growth factor 1 receptor','Receptor tyrosine kinase','Neurons, astrocytes, oligodendrocytes, hepatocytes, muscle cells'),(20,'FLT1','Fms-like tyrosine kinase 1','Receptor tyrosine kinase','Endothelial cells, macrophages, neurons, astrocytes'),(21,'KDR ','Kinase insert domain receptor','Receptor tyrosine kinase','Endothelial cells, neurons, astrocytes'),(22,'KDR','VEGFR2 (Flk1)','Receptor tyrosine kinase','Endothelial cells, neurons'),(23,'IL6R','Interleukin-6 receptor','Cytokine receptor','Neurons, glia'),(24,'NRP1','Neuropilin-1','Semaphorin co-receptor','Motor neurons'),(25,'GFRA1 / RET','GFRalpha1 / RET','GPI co-receptor + RTK','Motor / striatal neurons'),(26,'TGFBR2','TGF-   receptor II','Ser/Thr kinase receptor','Glia, neurons'),(27,'FGFR1','FGFR1','Receptor tyrosine kinase','Neurons, glia'),(28,'NPTXR','Neuronal pentraxin receptor','Transmembrane neuronal receptor','Neurons (especially excitatory neurons)'),(29,'IL13RA2','Interleukin-13 receptor alpha-2','Cytokine receptor (decoy receptor)','Astrocytes, glioma cells, some immune cells'),(30,'CXCR3','C-X-C chemokine receptor type 3','G-protein-coupled receptor (chemokine receptor)','T cells, NK cells, microglia, some neurons'),(31,'TYROBP','DNAX activation protein 12 (DAP12)','ITAM-containing adaptor protein (immune receptor co-receptor)','Microglia, macrophages, NK cells, dendritic cells');
/*!40000 ALTER TABLE `receptor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ref_list`
--

DROP TABLE IF EXISTS `ref_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ref_list` (
  `reference_ID` int NOT NULL AUTO_INCREMENT,
  `interaction_ID` int DEFAULT '1',
  `PMID` varchar(45) DEFAULT 'PMID',
  `article_title` varchar(45) DEFAULT 'article_title',
  PRIMARY KEY (`reference_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ref_list`
--

LOCK TABLES `ref_list` WRITE;
/*!40000 ALTER TABLE `ref_list` DISABLE KEYS */;
INSERT INTO `ref_list` VALUES (1,1,'30630900','Secreted amyloid-β precursor protein function'),(2,2,'32670047','Calcium-Sensing Receptor Mediates β-Amyloid-I'),(3,3,'28948494','Endothelial LRP1 - A Potential Target for the'),(4,4,'25209291','Opposing effects of membrane-anchored CX3CL1 '),(5,5,'27477018','TREM2 Binds to Apolipoproteins, Including APO'),(6,6,'27477018','TREM2 Binds to Apolipoproteins, Including APO'),(7,7,'21092856','Sortilin-mediated endocytosis determines leve'),(8,8,'22820466','Alzheimer amyloid-β oligomer bound to postsyn'),(9,9,'33863723','Netrin-1 receptor UNC5C cleavage by active δ-'),(18,18,'27708076','Pathological α-synuclein transmission initiat'),(19,19,'27708076','Pathological α-synuclein transmission initiat'),(20,20,'27708076','Pathological α-synuclein transmission initiat'),(21,21,'20347960','Expression of GDNF receptors GFRalpha1 and RE'),(22,22,'20970382','Gene delivery of AAV2-neurturin for Parkinson'),(23,23,'38752280','BDNF/TrkB activators in Parkinson\'s disease: '),(24,24,'38752280','BDNF/TrkB activators in Parkinson\'s disease: '),(25,25,'32445958','Fractalkine (CX3CL1) signaling and neuroinfla'),(26,26,'8015728','Tumor necrosis factor-alpha (TNF-alpha) incre'),(27,27,'8015728','Tumor necrosis factor-alpha (TNF-alpha) incre'),(28,28,'18304357','Neuroinflammation mediated by IL-1beta increa'),(29,29,'30761072','Association of Two Polymorphisms in CCL2 With'),(30,30,'32046737','Is insulin-like growth factor-1 involved in P'),(31,31,'28473940','Insights into the Mechanisms Involved in Prot'),(32,32,'28473940','Insights into the Mechanisms Involved in Prot'),(33,33,'26021560','Inflammatory molecules in Frontotemporal Deme'),(34,34,'31019994','Novel CSF biomarkers in genetic frontotempora'),(35,35,'36989373','The neuronal pentraxin Nptx2 regulates comple'),(36,36,'30291183','CSF sAPPβ, YKL-40, and NfL along the ALS-FTD '),(37,37,'35275542','Neurofilament Light Chain Levels in Frontotem'),(38,38,'40305176','Immunological Fluid Biomarkers in Frontotempo'),(39,39,'30193769','Inflammatory markers of CHMP2B-mediated front'),(40,40,'38821351','Microglia and TREM2'),(41,41,'40075459','Comprehensive cross-sectional and longitudina'),(42,42,'21092856','Sortilin-mediated endocytosis determines leve'),(43,43,'17215390','Vascular endothelial growth factor overexpres'),(44,44,'20381883','CSF chemokine alterations related to the clin'),(45,45,'22194613','Human DNA helicase B (HDHB) binds to replicat'),(46,46,'22965852','Chronic treatment with anti-bipolar drugs cau'),(47,47,'21995905','Expression of mRNA for adenosine A(1), A(2a),'),(48,48,'24918638','Semaphorin 3A signaling through neuropilin-1 '),(49,49,'15871682','GDNF delivery using human neural progenitor c'),(50,50,'12622250','Effects of hydroxypropyl-beta-cyclodextrin on'),(51,51,'21995905','Expression of mRNA for adenosine A(1), A(2a),'),(52,52,'31076648','Inhibition of tumour necrosis factor alpha in'),(53,53,'25266150','Plasma inflammatory biomarkers for Huntington'),(54,54,'16751280','Viral delivery of glial cell line-derived neu'),(55,55,'41029914','Application of Neurotrophic Factors as a Ther'),(56,56,'20082658','Early defect of transforming growth factor β1'),(57,57,'16326808','FGF-2 promotes neurogenesis and neuroprotecti'),(58,58,'17215390','Vascular endothelial growth factor overexpres');
/*!40000 ALTER TABLE `ref_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `secretory_protein`
--

DROP TABLE IF EXISTS `secretory_protein`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `secretory_protein` (
  `secretory_protein_ID` int NOT NULL AUTO_INCREMENT,
  `gene_symbol` varchar(45) DEFAULT 'gene_symbol',
  `protein_name` varchar(100) DEFAULT 'protein_name',
  `express_cell_type` varchar(100) DEFAULT 'express_cell_type',
  PRIMARY KEY (`secretory_protein_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `secretory_protein`
--

LOCK TABLES `secretory_protein` WRITE;
/*!40000 ALTER TABLE `secretory_protein` DISABLE KEYS */;
INSERT INTO `secretory_protein` VALUES (1,'APP','soluble amyloid-β precursor protein (sAPP)','Neurons, especially synaptic terminals'),(2,'APOE','Apolipoprotein E (ApoE)','Astrocytes, microglia, neurons'),(3,'GRN','Progranulin (PGRN)','Neurons, microglia'),(4,'NTN1','Netrin-1 (NTN1)','Neurons, endothelial cells'),(5,'SNCA','Alpha-synuclein','Neurons, astrocytes, oligodendrocytes'),(6,'GDNF','Glial cell line-derived neurotrophic factor','Neurons, astrocytes, Schwann cells, skeletal muscle cells'),(7,'NRTN','Neurturin','Neurons, glial cells, smooth muscle cells'),(8,'BDNF','Brain-derived neurotrophic factor','Neurons, astrocytes, microglia'),(9,'CX3CL1','Fractalkine (CX3CL1)','Neurons, endothelial cells, smooth muscle cells'),(10,'TNF','Tumor necrosis factor-alpha (TNF-α)','Macrophages, microglia, T cells, NK cells, astrocytes'),(11,'IL1B','Interleukin-1β (IL-1β)','Macrophages, microglia, dendritic cells, monocytes'),(12,'CCL2','Monocyte chemoattractant protein-1 (MCP-1 / CCL2)','Macrophages, microglia, astrocytes, endothelial cells, fibroblasts'),(13,'IGF1','Insulin-like growth factor-1','Liver hepatocytes, neurons, astrocytes, skeletal muscle cells'),(14,'VEGFA','Vascular endothelial growth factor-A','Endothelial cells, macrophages, astrocytes, fibroblasts, smooth muscle cells'),(15,'PGRN','Progranulin','Microglia, neurons, astrocytes'),(16,'VGF','VGF nerve growth factor-inducible protein','Neurons, astrocytes'),(17,'NPTX2','Neuronal pentraxin-2 ','Neurons (especially excitatory neurons), interneurons'),(18,'CHI3L1','Chitinase-3-like protein 1 (YKL-40)','Astrocytes, microglia'),(19,'NEFL','Neurofilament light chain','Neurons'),(20,'CXCL10','Interferon gamma-induced protein 10','Astrocytes, microglia, neurons, endothelial cells'),(21,'TREM2','Triggering receptor expressed on myeloid cells 2','Microglia'),(22,'GFAP','Glial fibrillary acidic protein','Astrocytes'),(23,'IL6','Interleukin-6','Microglia, astrocytes'),(24,'SEMA3A','Semaphorin 3A','Schwann cells'),(25,'TGFB1','Transforming growth factor beta 1','Astrocytes, microglia'),(26,'FGF2','Fibroblast growth factor 2','Astrocytes');
/*!40000 ALTER TABLE `secretory_protein` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-12-14 15:51:52
