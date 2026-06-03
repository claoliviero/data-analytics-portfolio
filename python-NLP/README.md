<p align="center"> 
<i> Progetto didattico - Natural Language Processin(NLP)  <br> <sub> <img width="40" height="40" alt=<img width="100" height="100" alt="image" src="https://github.com/user-attachments/assets/28e47ba2-744d-40f5-98bc-a3a283f28c9c" /> Rilevamento delle Fake News con Python </sub></i>
</p>

## Contesto e Obiettivo

Il problema delle fake news è diventato una minaccia significativa nel mondo moderno, alimentato dalla crescente diffusione dei social media e dalla velocità con cui le informazioni possono viaggiare. Questo fenomeno ha portato a disinformazione diffusa e ha creato problemi nella società e nelle istituzioni, poichè veramente si fa fatica ad oggi a riconoscere un'informazione vera da un'informazione falsa.

Il **Governo degli Stati Uniti**, consapevole di questa sfida, ha incaricato l'analisi e lo sviluppo di un modello predittivo che fungerà da motore per un futuro plug-in per Chrome in grado di identificare se una notizia è falsa o veritiera. 

**obiettivo finale**: sviluppare un modello di Machine Learning basato sul Natural Language Processing (NLP) che possa rilevare le fake news con precisione, proteggendo gli utenti dalla disinformazione e fornendo un'indicazione in tempo reale sulla veridicità delle notizie.

## Struttura del Progetto e Dati

L'analisi è basata su due dataset contenenti migliaia di articoli:
* **Notizie Vere** (`True.csv`)
* **Notizie False** (`Fake.csv`)

I dati contengono informazioni fondamentali come il titolo dell'articolo, il testo completo, la tematica (subject) e la data di pubblicazione.
Link al al DATASET 👉 (https://proai-datasets.s3.eu-west-3.amazonaws.com/fake_news.zip)

## Domande Analitiche

Il progetto cerca di rispondere alle seguenti domande chiave di business e di analisi testuale:
* Le fake news sono più frequenti in una determinata categoria o argomento?
* I titoli delle fake news presentano dei pattern ricorrenti o differenze linguistiche rispetto a quelli delle notizie vere?
* Quali sono le metriche di performance che garantiscono l'affidabilità del modello prima del rilascio?

## Fasi del progetto

Prima dell'addestramento, i testi sono stati puliti e standardizzati applicando tecniche di NLP.
 Successivamente le principali operazioni eseguite sono state:

* Unione dei due dataset creando una variabile target (es. `1` per Fake, `0` per True).
* **Text Cleaning:** rimozione di punteggiatura, caratteri speciali, URL e conversione in minuscolo.
* **Stopwords Removal:** rimozione delle parole vuote che non aggiungono significato al testo.
* **Tokenization e Vectorization:** trasformazione del testo in formato numerico comprensibile dal modello (es. tramite *TF-IDF*).

Alcuni passaggi del codice delle operazioni elencate precedentemente:

```python

import re
import string

def clean_text(text):
  text = text.lower()
  text = re.sub(r'\[.*?\]', '', text)
  text = re.sub(r'https?://\S+|www\.\S+', '', text)
  text = re.sub(r'<.*?>+', '', text)
  text = re.sub(r'[%s]' % re.escape(string.punctuation), '', text)
  text = re.sub(r'\n', ' ', text)
return text`<br>

-------Successivamente è stato addestrato il modello di Machine Learning-------

from sklearn.model_selection import train_test_split

X = df["clean_text"]
y = df["label"]

X_train, X_test, y_train, y_test = train_test_split(
    X, y, test_size=0.2, random_state=45
)

X_train.shape, X_test.shape


from sklearn.feature_extraction.text import TfidfVectorizer
from sklearn.linear_model import LogisticRegression
from sklearn.pipeline import Pipeline

model = Pipeline([
    ("tfidf", TfidfVectorizer(stop_words="english", max_df=0.7)),
    ("clf", LogisticRegression(max_iter=1000))
])

model.fit(X_train, y_train)
```

## Insight principali calcolati
### Categorie più colpite dalle Fake News:<br>
L'analisi esplorativa ha mostrato che le notizie piu colpite dalle Fake News sono di carattere generico, ma anche quelle che riguardano la politica e le "left news", ovvero quelle che adottano una linea editoriale orientata a sinistra o progressista.

### Pattern nei Titoli:<br>
I titoli delle notizie false tendono a essere piu lunghe rispetto a quelle vere che sono piu' corte. Ciò è stato calcolato creando un grafico che contiene proprio la Distribuzione lunghezza del testo tra Fake e True. 

## Performance del Modello e Validazione
Il modello scelto per l'implementazione (Logistic Regression) ha ottenuto i seguenti risultati sul test set:

```python
Accuracy: 0.9835189309576837

Classification Report:
               precision    recall  f1-score   support

           0       0.98      0.98      0.98      4654
           1       0.98      0.98      0.98      4326

    accuracy                           0.98      8980
   macro avg       0.98      0.98      0.98      8980
weighted avg       0.98      0.98      0.98      8980

```

Il modello è stato infine esportato in formato .pkl (pickle) pronto per essere consegnato al team di Web Development per l'integrazione nel plug-in di Chrome.


# Visualizzazioni Realizzate

- **Distribuzione Fake vs True News**
- **Categorie più comuni nelle Fake News**
- **Distribuzione lunghezza testo: Fake vs True**
- **Confusion Matrix**

##### - Sono presenti immagini e visualizzazioni relative al progetto nella cartella Screenshots.

# 💡 Valore Aziendale
Il sistema di rilevamento delle fake news avrà un impatto significativo a livello sociale, garantendo: - Riduzione della disinformazione: aiutando gli utenti a identificare tempestivamente notizie non attendibili. - Miglioramento della fiducia nei media: fornendo strumenti tecnologici avanzati per contrastare il problema della disinformazione. - Supporto decisionale: utenti e istituzioni potranno prendere decisioni basate su informazioni più affidabili.

# 🧠 Tecnologie e Competenze Utilizzate

* **Python**: linguaggio di programmazione 
* **Pandas**: libreria principale per la manipolazione dei dati 
* **NumPy**: libreria utilizzata per il calcolo scientifico 
* **Scikit-Learn**: libreria per il Machine Learning, utilizzata per la vettorizzazione TF-IDF e l'addestramento del modello di classificazione.
* **NLTK**: libreria per il Natural Language Processing (NLP), fondamentale per la rimozione delle stopwords e la tokenizzazione del testo.
* **RegEx (re)**: modulo per le espressioni regolari, utilizzato per la pulizia avanzata dei testi e la rimozione di caratteri speciali o URL.
* **Pickle**: modulo utilizzato per la serializzazione e l'esportazione del modello finale in formato `.pkl`.
* **Google Colab**: ambiente di sviluppo, piattaforma cloud gratuita basata sui Notebook Jupyter , permette quindi di eseguire il nostro codice Python.

## 📁 File del Progetto
Per visionare il progetto su Notebook Google Colab: [Clicca QUI](https://colab.research.google.com/drive/1OXVzR_qvKPiim4Ov4oW5WMHDa91DMzVc?usp=sharing).<BR>

Oppure vai nella cartella `Progetto-NLP` e consulta l'intero codice. <br>
















