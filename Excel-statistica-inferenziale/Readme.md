
<p align="center"> 
<i> Progetto didattico — Popolazione immaginaria "Luggnagg" <br> <sub> <img width="18" height="500" alt="image" src="https://github.com/user-attachments/assets/77743e51-083b-4733-8dda-4555ac289b88" /> 
Statistica Inferenziale con EXCEL </sub></i>
</p>



# Contesto e Obiettivo
La simulazione di dataset realistici è alla base dei processi data-driven. È uno strumento chiave sia per validare nuove ipotesi di business, sia per l'aggiornamento tecnico del personale. Il progetto ha l'obiettivo di creare un dataset realistico tramite Excel . Il dataset permette di sperimentare tecniche di analisi statistica, correlazione e regressione lineare, utili per l'apprendimendo dei concetti chiave della data analysis.


# Struttura del Progetto 
Il file principe è un foglio di calcolo con più schede, ognuna che va a trattare un argomento specifico nel processo di simulazione e analisi.

# 📌 Scheda 1  - Parameters 
I parametri sono stati definiti con distribuzione normale ( probabilità, media e deviazione standard), ciò utile per generare i dati dell'eta della popolazione: <br>


| VALORI | FORMULE |
| -------------- | -------------- |
| PROBABILITY - 0.45 |=CASUALE() |
| AVERAGE AGE - 56 | =MEDIA(Data!A1:A251) |
| STD_DEV(Deviazione standard) - 18.37|=DEV.ST.P(Data!A1:A251) |

# 📌 Scheda 2 — Data 
Sono state generate 250 età in una colonna , mentre la seconda colonna indica il gruppo di appartenenza ( da 1 a 4 ) assegnato sempre in modo casuale e indipendente da qualiasi parametro. Viene riportata anche una legenda con il relativo colore per riconoscere il gruppo.


| METRICA| VALORE |
| -------------- | -------------- |
| MINIMO |15 |
|MASSIMO |108 |

# 📌 Scheda 3 — Sample 
Si seleziona il sotto-campione della popolazione, ovvero il gruppo 2 ( 56 INDIVIDUI ) usando la funzione condizionale SE.
Include una pivot table alternativa per ottenere lo stesso risultato con i relativi conteggi delle età presenti nel sotto-capmpione.

| METRICA| VALORE |
| -------------- | -------------- |
| MINIMO |5 |
|MASSIMO |103 |

# 📌 Scheda 4 — Statistical Insight
Analisi statistica completa del sotto-campione del gruppo 2 formato da 56 individui :

| METRICA| VALORE |
| -------------- | -------------- |
| MEDIA POPULATION |56 |
|STD DEV POPULATION |18,37 |
|VAR POPULATION |337,42|
|MEDIA SAMPLE |54,07 |
|VAR SAMPLE |387,23|
|STD DEV SAMPLE |19,68 |
|ERRORE STANDARD|2,63|
|SAMPLE COUNT |56|
|CONFIDENCE RATE |0,95 |
|ALPHA|0,05 |
|Z-SCORE |1,96 |
|LOWER LIMIT |48,92|
|UPPER LIMIT |59,23|
|Z|-0,562 |
|TEST Z |0,54|

# Interpretazione:
Il p-value (0.54) è nettamente superiore ad α = 0.05. Non si rifiuta H₀: non emergono evidenze statisticamente significative che la media campionaria differisca dalla media della popolazione. In aggiunta ci sono altri commenti esplicativi sui risultati e la loro intepreazione statistica.


# 📌 Scheda 5 — (Un)correlated Variables
Test di correlazione tra le età del sotto-campione e due variabili casuali generate utilizzando la funzione casuale . Per la variabile "NUMBER OF CATS" , i valori sono stati generati con numeri interi compresi tra 0 e 2, simulando effettivamente la possibilità concreta di avere un animale domestico oppure no. Stesso discorso per  la variabile "AGE OF PATNER", i valori sono quindi stati ottenuti aggiungendo o sottraendo (-5,+5) rispetto all'età dell'individuo in modo tale da rendere credibile l'età del proprio patner :

| METRICA| VALORE ( PEARSON ) | INTERPRETAZIONE |
| -------------- | -------------- |-------------- |
| ETA INDIVIDUO VS N°GATTI |- 0,013 |Quasi nessuna correlazione lineare|
|ETA INDIVIDUO VS ETA DEL PATNER |+ 0,998 |Correlazione lineare positiva molto forte|

# 📌 Scheda 6 — Linear Regression
Attraverso la formula (= PREVISIONE LINERARE ) si va a stimare un'età di 82 anni per un ipotetico partecipante alla posizione 160 del censimento. E' stato calcolato l' R quadro per un'analisi di regressione lineare, ottenendo un risultato  pari a 0,03187 il che indica una correlazione molto debole, spiegando solo il 3,19% della variabilità dell'età, confermando che la posizione non è un indicatore affidabile. <br>
 
| CLASSIFICA | COSNIDERAZIONE |
| -------------- | -------------- |
|0,00-0,19 |MOLTO DEBOLE|
|0,20-0,39 |DEBOLE|
|0,40-0,59 |MODERATA|
|0.60-0,79 |FORTE |
|0,80-1,00 |MOLTO FORTE|



# 💡 Valore Aziendale
Il progetto realizzato è utile per una simulazione sicura, ovvero creazione di dati fittizi ma statisticamente coerenti per testare metodi analitici senza esporre dati reali e quindi sviluppare competenze per prendere decisioni basate su evidenze numeriche. 


# 🧠 Tecnologie e Competenze Utilizzate

Microsoft Excel — Foglio di calcolo multi-scheda 

Statistiche descrittive — Media, varianza, deviazione standard

Statistica inferenziale — Intervallo di confidenza, test Z, p-value

Analisi di correlazione — Coefficiente di Pearson

Regressione lineare — PREVISIONE.LINEARE, PENDENZA, INTERCETTA, R²

Distribuzione normale — NORMINV, RAND



## 📁 File del Progetto
Per scaricare il dataset o il file di analisi, accedi alla cartella `progetto finale.xlsx` , clicca su VIEW RAW oppure sull'icona della freccia verso il basso situata in alto a destra nella visualizzazione del file.



# 👤 Autore
Realizzato da: CLAUDIO OLIVIERO

