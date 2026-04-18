
<p align="center"> 
<i> Progetto didattico — Disastri Aerei  <br> <sub> <img width="40" height="40" alt=<img width="100" height="100" alt="image" src="https://github.com/user-attachments/assets/28e47ba2-744d-40f5-98bc-a3a283f28c9c" />
Analisi Disastri Aerei 1919-2023 (IASS) con Python </sub></i>
</p>

# Contesto e Obiettivo
La neonata IASS (International Alliance for Safe Skies) ha incaricato l’analisi completa degli incidenti aerei avvenuti tra il 1919 e il 2023.L'obiettivo finale del progetto è trasformare questo ricco dataset storico di quasi 25.000 incidenti in una lettura chiara e intuitiva , capace quindi di evidenziare i possibili tred, aree geografiche critiche, gli operatori più sicuri e le caratteristiche dei velivoli che sono stati più coinvolti nei disastri.

# Struttura del Progetto
Il dataset contiene informazioni su :

* **Date dell’incidente:** Date di ogni areo coinvolto in un'incidente.
* **tipo di velivolo;** Caratteristica del velivolo.
* **codice di registrazione:** Identificativo velivolo.
* **operatore:** Operatore che ha gestito il velivolo.
* **numero di vittime:** Vittime coninvolte negli incidenti.
* **luogo dell’incidente:** Ubicazione del disastro.
* **nazione:** Nazionalità.
* **categoria ASN.** Categorie Aeromobili.

 Link al DATABASE 👉 **(https://proai-datasets.s3.eu-west-3.amazonaws.com/aviation-accidents.csv)**

# Domande Analitiche
Il progetto cerca di rispondere a domande del tipo :
- In quale nazione si sono verificati più incidenti?
- Gli incidenti sono più frequenti in alcuni giorni della settimana?
- Quali operatori risultano più sicuri?
- Quale tipo di velivolo ha causato più vittime?
- Come sono cambiati incidenti e vittime dopo l’11 settembre 2001?

È stato inoltre creato un **cartogramma mondiale** per visualizzare il numero di incidenti per nazione.

# Fasi del progetto
Prima dell’analisi, il dataset è stato pulito e standardizzato. <br>

`df_clean['operator'] = df_clean['operator'].astype(str).str.strip().str.lower()` <br>
`df_clean['location'] = df_clean['location'].astype(str).str.strip().str.lower()` <br>
`df_clean['country'] = df_clean['country'].astype(str).str.strip().str.lower()`<br>

Successivamente le  principali operazioni eseguite sono state:
- normalizzazione di testi come `operator`, `location` e `country`;
- sostituzione dei valori mancanti o anomali con `NaN`;
- parsing della colonna `date` in formato data;
- estrazione dell’anno;
- conversione della colonna `fatalities` in formato numerico.


**Alcuni passaggi(non codice completo) delle operazioni elencate precedentemente:**<br>
`missing_tokens = ['?', 'unknown', 'unk', 'unk.', 'date unk.', 'n/a', '-', 'none', '', "unknown country"]`<br>
`df_clean[cols] = df_clean[cols].replace(missing_tokens, np.nan)`<br>
`df_clean['date_parsed'] = pd.to_datetime(df_clean['date'], errors='coerce', dayfirst=True)`<br>
`df_clean['fatalities'] = df_clean['fatalities'].astype(str).str.strip().str.lower()`<br>
`missing_tokens_fatalities = ['?', 'unknown', 'unk', 'n/a', '-', '', 'none']`<br>

# Insight Principali calcolati

### Paesi con più incidenti :
L’analisi mostra che gli USA sono nettamente il paese con il maggior numero di incidenti, seguiti da Russia, Regno Unito, Canada e India.

### Incidenti per giorno della settimana
Gli incidenti sembrano concentrarsi leggermente di più verso la fine della settimana, con il venerdì come giorno più frequente nel dataset analizzato.

### Operatori più sicuri
Gli operatori con il minor numero medio di vittime per incidente, considerando solo quelli con almeno 10 eventi, risultano tra i più affidabili dal punto di vista statistico.Un appunto da considerare è che sicuramente sono presenti operatori nati negli ultimi anni, quindi non presenti nelle date iniziali del dataset.

### Tipi di velivolo con più morti
Alcuni modelli storici, in particolare il *Douglas C-47*, emergono come i più coinvolti in incidenti con alto numero di vittime. Il velivolo in questione era usato come trasporto militare bimotore, basato sul civile DC-3, ampiamente utilizzato durante la Seconda Guerra Mondiale.

### Evoluzione dopo l’11 settembre
Dal 2001 in poi si osserva una dinamica temporale utile per leggere l’evoluzione del fenomeno, sia in termini di incidenti sia di vittime annuali.

# Visualizzazioni Realizzate

- **Paesi con più incidenti aerei (Top 20)**
- **Incidenti aerei per giorno della settimana**
- **Operatori più sicuri**
- **Tipi di velivolo con più morti totali**
- **Incidenti e vittime annuali dopo l’11 settembre 2001**
- **Top 20 incidenti con più vittime**
- **Cartogramma mondiale 1919–2023**

# 💡 Valore Aziendale

L'insieme delle visualizzazioni permette di leggere il fenomeno degli incidenti aerei su più aspetti, tra i quali quello geografico,temporale,operativo e tecnico.
Il progetto in questione mostra come un dataset storico possa essere trasformato in un visualizzazione, narazzione analitica utile per inviduare pattern,aree critiche e possibili riflessioni di approfondimento.

# 🧠 Tecnologie e Competenze Utilizzate
- Python, linguaggio di programmazione .
- Pandas, libreria principale per la manipolazione dei dati.
- Numpy, libreria per il calcolo scientifico.
- Matplotlib, standard visualizzazione dei dati, permette di creare grafici.
- Geopandas, È un'estensione di Pandas specifica per i dati geografici.
- Google Colab, ambiente di sviluppo, piattaforma cloud gratuita basata sui Notebook Jupyter , permette quindi di eseguire il nostro codice Python.

## 📁 File del Progetto
Per visionare il progetto su Notebook Google Colab: [Clicca QUI](https://colab.research.google.com/drive/1ftaYy3EFg4pIgHt19HVkYbLKlEtnoKmS?usp=sharing).<BR>
Oppure vai nella cartella    e clicca su






























