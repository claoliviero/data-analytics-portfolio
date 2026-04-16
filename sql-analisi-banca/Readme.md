


<p align="center"> 
<i> Progetto SQL  — Analisi Clienti Banca <br> <sub> <img width="30" height="30" alt="image" src="https://github.com/user-attachments/assets/94d594d8-788e-40fd-86b4-22d2ac8145dd" />
Analisi clientela banca con creazione tabella denormalizzata per Feature Engineering con MYSQL  </sub></i>
</p>

# Contesto e Obiettivo
Banking Intelligence vuole costruire una base dati solida per addestrare un modello di machine learning supervisionato capace di prevedere comportamenti futuri dei clienti a partire dalle loro transazioni e dai conti posseduti.Quindi il progetto ha come obiettivo la creazione di una tabella denormalizzata per cliente per essere riutilizzata per analisi predittive e valutazioni di rischio.

# Struttura del Progetto
Il database di riferimento è costituito dalle seguenti tabelle:<br>

* **Cliente:** contiene informazioni personali sui clienti (ad esempio, età).
* **Conto:** contiene informazioni sui conti posseduti dai clienti.
* **Tipo_conto:** descrive le diverse tipologie di conti disponibili.
* **Tipo_transazione:** contiene i tipi di transazione che possono avvenire sui conti.
* **Transazioni:** contiene i dettagli delle transazioni effettuate dai clienti sui vari conti.

 Link al DATABASE 👉 (**https://drive.google.com/file/d/1l54AQ2xGgP-1X6AU8nF53IOCt83I_h88/view**)

# Indicatori Comportamentali Calcolati

 ###  Indicatori Comportamentali (Livello Cliente)
Tutti i KPI sono aggregati per `id_cliente` proprio per calcolare le seguenti metriche : 

#### 1. Indicatori di Base
- **Età:** Calcolata dalla data di nascita (`tabella_cliente`).

#### 2. KPI Transazionali (Globali)
- **Volume Operazioni:** Numero totale transazioni in **uscita** e in **entrata**.
- **Valore Totale:** Somma importi transati in **uscita** e in **entrata**.

#### 3. KPI Struttura Conti
- **Conti Totali:** Numero complessivo di rapporti attivi.
- **Dettaglio per Tipologia:** Conteggio conti suddiviso per categoria (es. CC, Risparmio, Deposito).

#### 4. KPI Transazionali per Tipologia Conto
*Per ogni tipologia di conto esistente, vengono calcolati:*
- **Uscita:** Numero operazioni e importo totale.
- **Entrata:** Numero operazioni e importo totale.

# 💡 Valore Aziendale
Il Progetto quindi permette di costruire feature utili per le varie diverse attività di business:
* **Predizione del comportamento dei clienti:** individuare pattern utili per prevedere acquisti, chiusure di conti o variazioni nei comportamenti finanziari.
* **Riduzione dei rischi** riconoscere i clienti a rischio abbandono e intervenire in anticipo.
* **Gestione del rischio:** segmentare la clientela in base ai comportamenti finanziari.
* **Personalizzazione delle offerte:** proporre prodotti coerenti con le abitudini dei singoli clienti.
* **Prevenzione delle frodi** rilevare anomalie nei movimenti e negli importi transati.

# 🧠 Tecnologie e Competenze Utilizzate
* **MYSQL** Database management.
* **Skills SQL** JOIN multipli,logica condizionale,raggruppamenti e funzioni di aggregazione.
* **Feature Engineering** per machine learning.

## 📁 File del Progetto
Per visionare il progetto vai nella cartella - `progetto finale.sql` dove sono presenti tutte le query complete.




