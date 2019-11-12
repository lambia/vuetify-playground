- per il momento i dataset sono all'interno dei component stessi, poi bisogna metterli in store il cui pointer viene passato dalle prop
- Spostare l'handle resize da helloworld ad app, con store+emit, in modo che sia accessibile a tutti
- v-app-bar si spacca il layout se usi shrink o expand
- v-app-bar usare shrink ed expand per le versioni di menu, e bg on-scroll va via



- Funzione over(value,default)
Se esistente prende il primo valore, altrimenti il secondo

a   b   R
0   0   0
1   0   1
0   1   0
1   1   1
-   0   0
-   1   1
1   -   1
0   -   0

Da usare per nav.vue (hover e idle)

- Nav/NavLink con gestione active
- NavLink larghezza fissa (quella del componente interno più largo)
- Crea component div vuoto che accetta template-inline e bg(video,img,color,parallax)
