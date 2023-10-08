# base-conversion-algorithm
I created this MATLAB program during my University of Ferrara numerical computing course. It converts real numbers between bases 2-36, purely for educational purposes. Heavily inspired by our associate professor's published solution.

ENGLISH

---

## Description of Codes

This repository contains a series of MATLAB codes that allow you to perform number conversion between different bases. Below is a brief description of each file:

### 1. script.m

This main script enables the conversion of a real number from a base between 2 and 36 (inclusive) to another base within the same range. Users can input numbers containing letters since the initial base can be different from 10. The program treats these numbers as strings and converts them first to base 10 and then to the target base.

### 2. convReal.m

This file contains a supporting function for the main code. It handles the conversion of real numbers from one base to another, with checks for valid inputs and necessary manipulations when the starting base is not 10.

### 3. convIntFromBaseXto10.m

This function converts the integer part of a number from a base other than 10 to base 10. It is used within `convReal.m` when the starting base is not 10.

### 4. convFractFromBaseXto10.m

This function converts the fractional part of a number from a base other than 10 to base 10. This is also used within `convReal.m` when the starting base is not 10.

### 5. convFract.m

This function performs the conversion of the fractional part of a number from one base to another. It is used in `convReal.m` to handle fractional part conversion.

### 6. convInt.m

This file contains a function that performs the conversion of the integer part of a number from one base to another. It is used in `convReal.m` to handle integer part conversion.

### Usage Instructions

To use these codes, follow the instructions provided in the README files of each specific code. Ensure you adhere to the input requirements and follow the specific conventions described within the files.

### Contact

For questions or comments regarding these codes, feel free to contact me at [manuelconte615@gmail.com].

Thank you for using these codes!


ITALIANO

---

## Descrizione dei Codici

Questa repository contiene una serie di codici MATLAB che consentono di effettuare la conversione di numeri tra diverse basi. Di seguito è riportata una breve descrizione di ciascun file:

### 1. script.m

Questo script principale consente la conversione di un numero reale da una base compresa tra 2 e 36 (inclusa) a un'altra base all'interno della stessa gamma. Gli utenti possono inserire numeri contenenti lettere poiché la base iniziale può essere diversa da 10. Il programma tratta questi numeri come stringhe e li converte prima in base 10 e poi nella base di destinazione.

### 2. convReal.m

Questo file contiene una funzione di supporto per il codice principale. Gestisce la conversione di numeri reali da una base all'altra, con controlli per input validi e manipolazioni necessarie quando la base iniziale non è 10.

### 3. convIntFromBaseXto10.m

Questa funzione converte la parte intera di un numero da una base diversa da 10 in base 10. Viene utilizzata all'interno di `convReal.m` quando la base di partenza non è 10.

### 4. convFractFromBaseXto10.m

Questa funzione converte la parte frazionaria di un numero da una base diversa da 10 in base 10. Viene utilizzata anche all'interno di `convReal.m` quando la base di partenza non è 10.

### 5. convFract.m

Questo file contiene una funzione che esegue la conversione della parte frazionaria di un numero da una base all'altra. Viene utilizzata in `convReal.m` per gestire la conversione della parte frazionaria.

### 6. convInt.m

Questo file contiene una funzione che esegue la conversione della parte intera di un numero da una base all'altra. Viene utilizzata in `convReal.m` per gestire la conversione della parte intera.

### Istruzioni per l'Uso

Per utilizzare questi codici, seguire le istruzioni fornite nei file README di ciascun codice specifico. Assicurarsi di rispettare i requisiti di input e seguire le convenzioni specifiche descritte nei file.

### Contatti

Per domande o commenti relativi a questi codici, non esitate a contattarmi all'indirizzo [manuelconte615@gmail.com].

Grazie per l'utilizzo di questi codici!

---
