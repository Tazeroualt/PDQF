# Project Q Documentation (work in progress)

## **Setup**

- Python : Python 3.10.9, list of librairies and dependencies can be found in requirements.txt, notably pyspark.

## **1. Define & Design**

Les données sont utilisés dans plusieurs Use Case, ces use case se limitent actuellement au Produits et sous-produits d’Allianz tel que Automobile (Auto plus, Flotte Auto)….
Chaque Use Case dispose de définitions métiers, ces dernière nous permettent de séparer chaque use case en 4 dimensions :

- **Scope :** Time frame et limites du produit dans le temps et l’espace.
- **Métadonnée/Attribut :** Les Variables et autre métadonnées qui caractérisent les tables concernées
- **DQ Req :** Définit le standard qualité que la donnée doit satisfaire, soit les règles métiers qui doivent être vérifier.
- **Data Criticality :** ***TBD*** Définit le degré d’importance de la donnée, ce qui permet d’obtenir un taux de tolérance envers la qualité de cette donnée

## **2. Data Storage  & Access**

Les données sont obtenues depuis l’un des systèmes de l’entreprise (OLTP etc), puis stocker dans une Data Vault, les données sont des données brutes sous format tabulé, le framework n’intervient pas dans cette partie-là.

***TBD*** (Détails du code et de l'implémentation)

## **3. Data profiling**

Etape la plus importante, tous les calculs et analyse de donnée seront effectué dans cette partie, elle permet d’établir un profile de la donnée, profile qui deviendra la principale source des valeurs des indicateurs de qualité.

***TBD*** (Détails du code et de l'implémentation)

## **4. Metrics :**

- **Data fitness :** Data Quality x Data Accessibility
- **Data Accessibility :** ***TBD***
- **Data Quality :** Estimation de la qualité de notre basé sur le respect des 6 critères suivantes
  - **Completeness (Fill rate)** : Measures whether all the data necessary to meet the current and future business information demands is available/present. Answer questions: Is attribute filled in? Is any value inside a field? Fill rate can be expected under specific conditions.***TBD***
- **Uniqueness** : States that no entity/object exists more than once within a data set.***TBD***
- **Timeliness** : Refers to the indication of whether information is recorded and available to users as rapidly as required.***TBD***
- **Accuracy** : Refers to the degree to which data correctly describes the “real world” object, trusted source of truth, or event being described.***TBD***
- **Consistency** : Measures the absence of difference when comparing two or more representations within a data set and between data sets.***TBD***
- **Validity** :
  - **Business Validity** : Refers to whether data values are consistent with a defined domain of values (a set of valid values, a reference set, a range of values).***TBD***
  - **Technical Validity** : Refers to whether data is stored or can be converted into target format.***TBD***

## **6. Analysis & Mesure :**

Consiste en l'analyse des mesures obtenus et l'obtention d'insights les concernants. Obtenir des intérpretations quant au différentes valeurs obtenues par rapport à la qualité de la donnée.

## **7. Dashboard/UI :** ***TBD***
