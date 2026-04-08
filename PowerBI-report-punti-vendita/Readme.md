
<p align="center"> 
<i> Progetto Business Intelligence — TechMarket S.p.A. <br> <sub> <img width="18" height="500" alt="image" <img width="100" height="100" alt="image" src="https://github.com/user-attachments/assets/f99759f9-9d60-4c90-ab92-a3c0804b155f" />
Gestione delle Vendite per Punti vendita Con POWER BI </sub></i>
</p>

# Contesto e obiettivo
TechMarket S.p.A. è una delle principali catene italiane di distribuzione al dettaglio di prodotti elettronici, con punti vendita distribuiti in tutto il Paese.
Il progetto nasce dall'esigenza di aggregare e visualizzare grandi volumi di dati provenienti da ogni punto vendita, fornendo ai decision-maker report completi, interattivi e navigabili in modo intuitivo in modo tale da monitorare tutte le varie performance.

# Struttura del progetto 
Il report è composto da 6 pagine interattive, navigabili tramite pulsanti dedicati presenti in ogni schermata.

# 📌 Pagina 1 ( Vendite per mese )
Visualizza le vendite aggregate per mese con i relativi fatturati lordi e netti e la scontistica totale. Presenti anche le metriche di unità vendute con il proprio massimo e il proprio minimo.<br>
Visualizzazioni presenti:

Tabella pivot: Mese / Unità Vendute / Prezzo Unitario / % Sconto / Fatturato Lordo / Fatturato Netto

Grafico a barre doppie: Fatturato Lordo vs Fatturato Netto per mese

Segnalibri disponibili: COMPLETO · SCONTO · max&min

# 📌 Pagina 2 ( Unità vendute per città )
Analisi geografica delle vendite per città e regione, con mappa interattiva. <br>
Visualizzazioni presenti:

Tabella Città / Unità Vendute

Tabella Regione / Unità Vendute / Fatturato Netto

Mappa geografica interattiva con grafico a torta per città

Grafico a barre: Unità Vendute per Città

Grafico a barre: Unità Vendute per Area (Centro / Nord / Sud / Isole)

Filtri disponibili: Città · Segnalibri: MAPS · GRAFICI · COMPLETO

# 📌 Pagina 3 ( Prodotti )
Analisi di tutti i prodotti disponibili con relativi prezzi unitari, fatturati lordi e netti , importo scontistica e incidenza scontistica su di essi.<br>
Visualizzazioni presenti:

Tabella: Prodotto / Prezzo Unitario / Unità Vendute / Fatturato Lordo / Sconto / Fatturato Netto / IncidenzaSconto (con formattazione condizionale per colori)

Grafico a linee: Incidenza Sconto per Mese (andamento % mensile)

Filtri disponibili: Descrizione Prodotto · Segnalibri: COMPLETO · INC.SCONTO · NO FILTRO

# 📌 Pagina 4 ( Negozi )
Panoramica completa delle performance per punto vendita, con dati su responsabili e fatturato. <br>

Visualizzazioni presenti:

Tabella: Città / Indirizzo / Fatturato Lordo / Sconto / Fatturato Netto / Unità Vendute

Grafico a barre orizzontali: Fatturato Netto per Responsabile

Grafico a torta: distribuzione unità vendute per città

Tabella: Top prodotti per unità vendute

Filtri disponibili: Città · Segnalibri: COMPLETO · CITTÀ

# 📌 Pagina 5 ( Gestione dei resi )
Pagina dedicata all'analisi dei resi per calcolare le vendite nette reali nei mesi di gennaio e febbraio. <br>
Visualizzazioni presenti:

Tabella mensile: Importo Resi / Fatturato Lordo / Fatturato Finale

Tabella prodotti: Descrizione / ImportoResi / Fatturato Lordo / Fatturato Netto / Fatturato Finale

Grafico a barre: Unità Rese per Prodotto (top: Pc A321 72JMB 20GB+250 con 390 resi)

Grafico a barre: Unità Rese per Città (Roma: 759 resi, prima in classifica)

Segnalibri disponibili: COMPLETO · CITTÀ

# 📌 Pagina 6 ( Extra )
Pagina avanzata con visualizzazione ad albero gerarchico (Decomposition Tree) per analisi multi-dimensionale delle unità vendute. La struttura dell'albero e' composta da tre livelli nei quali vengono considerate le somme delle unità vendute nelle rispettive regioni di appartenzenza e in tutti i periodi. Grazie ai filtri presenti , e' possibile andare a fare delle ricerche più dettagliate. <br>

Struttura dell'albero:

Livello 1: Somma Unità Vendute totali 

Livello 2: Mese (filtro attivo: Ottobre)

Livello 3: Regione di appartenenza

Segnalibri disponibili: COMPLETO · ALBERO

# Fasi di sviluppo 

Si parte con la prima fase, ovvero il caricamento dei relativi file ( VAENDITE MENSILI, ANAGRAFICHE NEGOZI, PRODOTTI , PROVICE ITALIANE ). Completato il caricamento si prodece con la trasformazione dei dati in Power Query effettuando i vari MERGE DI QUERY per unire le tabelle e ottenere i prezzi unitari co la descrizione del prodotto per ogni Prodotto_id. Si passa alla normalizzazione delle colonne, pulizia dei dati, e creazione di colonne calcolare ( es. Fatturaro lordo, Fatturato netto, Incidenza Sconto ).Nella fase successiva si passa alla Modellazione dei dati con DAX per creare le seguenti misure : <br>

Fatturato Lordo = SUMX(Vendite, [Unità Vendute] * [Prezzo Unitario])

Importo Sconto = SUMX(Vendite, [Fatturato Lordo] * [%Sconto])

Fatturato Netto = [Fatturato Lordo] - [Importo Sconto]

IncidenzaSconto = DIVIDE([Importo Sconto], [Fatturato Lordo])

Fatturato Finale = [Fatturato Netto] - [Importo Resi]

Per finire , creazione Report, composta da 6 pagine interattive con filtri, segnalibri e navifazione tra pagine

# 💡 Valore aggiunto per TechMarket 
Decisioni basate sui dati, ottimizzazione promozioni, monitoraggio punti vendita, gestione dei resi, e accessibilità


# 🧠 Tecnologie utilizzate
Power BI Desktop — creazione del report interattivo

Power Query (M) — trasformazione e merge dei dati

DAX — misure calcolate e KPI

Azure Maps — visualizzazione geografica

Decomposition Tree — analisi gerarchica avanzata



## 📁 File del Progetto
- `prog finale.pbix` - report Power BI completo


