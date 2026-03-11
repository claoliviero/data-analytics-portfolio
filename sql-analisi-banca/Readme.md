# SQL - Analisi Clienti Banca (Feature Engineering)

## 📋 Descrizione
Progetto di **feature engineering** per Banking Intelligence. Creazione di una tabella denormalizzata con indicatori comportamentali per modelli di machine learning supervisionato.

## 🎯 Obiettivo
Sviluppare feature per prevedere comportamenti futuri dei clienti basandosi su dati transazionali e caratteristiche dei conti. La tabella finale aggrega dati per `id_cliente` con indicatori quantitativi e qualitativi.

## 💼 Contesto Aziendale
**Azienda:** Banking Intelligence  
**Obiettivo business:** 
- Predizione comportamento clienti
- Riduzione churn (tasso abbandono)
- Gestione rischio
- Personalizzazione offerte
- Prevenzione frodi

## 🗄️ Struttura Database
Database banking con tabelle:
- `cliente` - informazioni personali (età, ecc.)
- `conto` - conti posseduti
- `tipo_conto` - tipologie conti
- `tipo_transazione` - tipi di transazione
- `transazioni` - dettagli transazioni

## 📊 Indicatori Comportamentali Calcolati

### **Indicatori Base**
- Età cliente

### **Indicatori Transazioni**
✓ Numero transazioni in uscita (tutti conti)
✓ Numero transazioni in entrata (tutti conti)
✓ Importo totale transato in uscita
✓ Importo totale transato in entrata



### **Indicatori Conti**
✓ Numero totale conti posseduti
✓ Conti per tipologia (uno per tipo di conto)



### **Indicatori per Tipologia Conto**
Per OGNI tipo di conto:

Transazioni in uscita

Transazioni in entrata

Importo uscita

Importo entrata



## 🔧 Tecnologie Utilizzate
- **MySQL** - database management
- **SQL Avanzato** - JOIN multipli, aggregazioni complesse, CTE
- **Feature Engineering** per machine learning

## 📁 File del Progetto
- `progetto finale.sql` - query completa per creazione tabella feature

## 🎯 Valore Aggiunto
La tabella denormalizzata abilita:
✅ Predizione churn clienti
✅ Segmentazione rischio
✅ Personalizzazione offerte
✅ Rilevamento anomalie frodi
✅ Miglioramento customer satisfaction


