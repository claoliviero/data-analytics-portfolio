# Python - Analisi Disastri Aerei 1919-2023 (IASS)

## 📋 Descrizione
Analisi completa ~25.000 incidenti aerei (1919-2023) per **IASS (International Alliance for Safe Skies)**. Exploratory Data Analysis con visualizzazioni e insights per sicurezza voli.

## 🎯 Obiettivo
Portare alla luce pattern e trend negli incidenti aerei per:
- Identificare nazioni/operatori a rischio
- Analizzare evoluzione sicurezza aerea
- Individuare velivoli più pericolosi
- Studiare impatto eventi storici (es. 11 Settembre)

## 🏢 Cliente
**IASS - International Alliance for Safe Skies** (organizzazione internazionale sicurezza aerea)

## 🗄️ Dataset
~25.000 incidenti aerei (1919-2023)

Variabili:
✓ date: data incidente
✓ type: tipo velivolo
✓ registration: codice registrazione
✓ operator: operatore del velivolo
✓ fatalities: numero morti
✓ location: luogo incidente
✓ country: nazione incidente
✓ cat: categoria incidente (ASN classification)

## 🔍 Analisi Svolte

### **1. Analisi Geografica**
📍 Nazione con più incidenti
📊 Distribuzione incidenti per continente
🗺️ Cartogramma mondiale (BONUS)

### **2. Analisi Temporale**
📅 Trend incidenti per decade (1919-2023)
📆 Giorni settimana più pericolosi
📈 Evoluzione post 11 Settembre 2001
🌊 Stagionalità incidenti (mesi)

### **3. Analisi Operatori**
✈️ Operatori più sicuri (meno incidenti)
⚠️ Operatori a rischio (più incidenti)
💀 Fatalità medie per operatore

### **4. Analisi Velivoli**
🛩️ Tipo velivolo con più morti totali
📊 Velivoli più coinvolti in incidenti
🔍 Correlazione tipo velivolo - categoria incidente

### **5. Analisi Fatalità**
💀 Morti totali per decade
📉 Trend tasso fatalità nel tempo
🔴 Incidenti più letali (top 10)

## 🛠️ Tecnologie Python
```python
✅ pandas - data manipulation
✅ matplotlib - visualizzazioni base
✅ seaborn - grafici statistici avanzati
✅ numpy - calcoli numerici
✅ geopandas - cartogramma mondiale (BONUS)
✅ plotly (opzionale) - grafici interattivi
📊 Visualizzazioni Create

📈 Line plot: trend incidenti nel tempo
📊 Bar chart: top 10 nazioni per incidenti
🗺️ Choropleth map: cartogramma mondiale
📊 Box plot: distribuzione fatalità per operatore
📈 Before/After: confronto pre/post 11 Settembre

📁 File del Progetto:
:link: https://colab.research.google.com/drive/1ftaYy3EFg4pIgHt19HVkYbLKlEtnoKmS?usp=sharing
