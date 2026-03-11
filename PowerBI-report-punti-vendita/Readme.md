# Power BI - Gestione Vendite TechMarket S.p.A.

## 📋 Descrizione
Report interattivo per **TechMarket S.p.A.** (catena distribuzione elettronica Italia). Analisi completa vendite punti vendita 2014 con gestione resi e dashboard multi-pagina.

## 🎯 Obiettivo Aziendale
Monitorare performance negozi, prodotti, promozioni e vendite nette (escluse resi) per decision-maker.

## 🏢 Contesto
**TechMarket S.p.A.** - principale catena elettronica Italia. Necessità di reportistica avanzata su dati vendite multi-negozio.

## 📊 Dataset Utilizzato
Dati Vendite (cartella DATI):
✓ Vendite mensili vari negozi 2014
✓ Sconti, unità vendute, prezzi

Dati Aggiuntivi (DATI NEGOZI):
✓ Informazioni negozi
✓ Catalogo prodotti
✓ Province italiane

Dati Resi:
✓ Gestione resi per calcolo vendite nette

text

## 🔧 Fasi Implementazione

### 1. **Caricamento Dati**
- Import multi-file (Power Query)
- Merge tabelle per Prezzo Unitario + Descrizione Prodotto

### 2. **Trasformazioni**
- Calcolo Prezzo Unitario = Vendita / Quantità
- Unione negozi + vendite + prodotti
- Gestione resi per vendite nette

### 3. **Report Multi-Pagina**
📊 Pagina 1: Vendite per Mese

Vendite totali (sconti inclusi)

Unità vendute + Prezzo

Trend mensile

📊 Pagina 2: Unità Vendute per Città

Performance per città

Confronto multi-regione

📊 Pagina 3: Dettaglio Prodotto

Performance ogni Prodotto_ID

Top performing + flopping

📊 Pagina 4: Informazioni Negozi

Panoramica completa punti vendita

Vendite vs target per negozio

📊 Pagina 5: Vendite Nette (Resi)

Gen/Feb 2014: vendite escluse resi

Performance nette negozi


### 4. **Navigabilità**
- Pulsanti interattivi pagina-pagina
- Segnalibri rapidi
- Filtri dinamici (mese, città, prodotto, negozio)

## 🛠️ Tecnologie Power BI
✅ Power Query (Merge, trasformazioni)
✅ Data Modeling (relazioni multiple)
✅ DAX (calcoli prezzo unitario, vendite nette)
✅ Dashboard interattive multi-pagina
✅ Bookmarks + pulsanti navigazione

## 📁 File del Progetto
- `prog finale.pbix` - report Power BI completo

## 📈 Risultati Chiave
✅ Report completo 5 pagine interattive
✅ Vendite nette calcolate (resi esclusi)
✅ Dashboard navigabili per manager
✅ Analisi 2014: trend mensili, top città, top prodotti
✅ Performance negozio per negozio

## 🎯 Valore Aggiunto TechMarket
✅ Decisioni strategiche data-driven
✅ Ottimizzazione promozioni/sconti
✅ Monitoraggio real-time punti vendita
✅ Gestione resi → vendite nette accurate
✅ Interfaccia user-friendly per non-tecnici
