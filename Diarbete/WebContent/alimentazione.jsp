<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html">
<meta name="viewport" content="width=device-width, shrink-to-fit=no, initial-scale=1" />
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="stile/stile.css">
<title>Ricette</title>
<script>
	function goTo(x) {
		localStorage.header1 = x.innerHTML;
		localStorage.paragrafo = x.parentNode.nextSibling.nextSibling.nextSibling.nextSibling.innerHTML;
		open("alimentazioni/a1.jsp", "_self");
	}
</script>
</head>
<body>
    <header>
        <%@ include file="jspIncluse/header.jsp"%>
    </header>
    <%@ include file="jspIncluse/menuNavigazionale.jsp"%>
    <section id="paginaRicette" class="container-fluid">
        <div class="row">
            <div class="col-md-12">
                <div id="titoloRicette">
                    <ul class="breadcrumb">
                        <li><a href="home.jsp">Home</a></li>
                        <li><a href="#">Consigli</a></li>
                        <li class="active">Ricette</li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
                <a href="#"><h1 onclick="goTo(this)">La "batata" per combattere il diabete</h1></a> <br />
                <p style="text-align: justify">Nella buccia di questo tubero dolce c'è una sostanza, il Cajapo, che sembra avere effetti benefici sia sulla riduzione del colesterolo che della glicemia. "La "batata" o patata dolce, nonché patata americana, è una radice tuberosa appartenente alla famiglia delle convolvulaceae, originaria dell'America del Sud ed è arrivata a noi tramite Cristofono Colombo. Non contiene solanina come le patate, appartenendo ad un'altra famiglia, anche se ne ricorda l'aspetto", spiega Serena Missori, specialista in Nutrizione, endocrinologia e diabetologia. "La "batata" - prosegue l'esperta -  contiene carboidrati, fibre (circa 3 gr), vitamina A, vitamina C, potassio, magnesio ferro e calcio, flavonoidi, antociani. In virtù dei costituenti si può dire a tutti gli effetti che ha potere antiossidante e anti-aging, ovvero anti-invecchiamento. Questo tubero ha ottenuto il punteggio più alto in una classifica sui vegetali più salutari grazie alla elevata concentrazione di principi attivi benefici anche nella buccia e può essere consumata anche cruda" - afferma Missori. "Uno studio clinico ha dimostrato che il Cajapo riduce la glicemia e l'insulino resistenza in pazienti affetti da diabete di tipo 2, dopo 5 mesi di assunzione giornaliera di 4 gr di Cajapo". Secondo l'esperta questo tubero "è un alimento molto utile per ottenere un effetto anti-aging e antiossidante, un miglior controllo glicemico, la riduzione di elevati valori di insulina". Rimangono comunque primari i consulti del proprio diabetologo sulle dosi e la frequenza. (Fonte: Il Messaggero)</p>
            </div>
        </div>
        <hr />
        <div class="row">
            <div class="col-md-12">
                <a href="#"><h1 onclick="goTo(this)">Ipertensione? In aiuto i cibi con omega-3</h1></a> <br />
                <p style="text-align: justify">Una dieta ricca di cibi che contengono omega-3, come il pesce o gli spinaci, aiuta a prevenire l'ipertensione. Lo conferma uno studio svizzero. Nelle persone che soffrono di pressione alta, la dieta, come l'attività fisica aerobica sono un importante supporto per tenere a bada i valori. Uno studio dell'università di Zurigo, presentato nel corso del meeting annuale dell'american heart association ha evidenziato i benefici di una dieta ricca di omega-3 sulla pressione del sangue nelle arterie. Verdure, oli vegetali e pesce emergono come pilastri di una dieta utile a tenere lontana l'ipertensione. La ricerca ha preso in considerazione circa 2000 soggetti con un'età compresa tra i 25 e i 41 anni. Tutti i partecipanti, all'inizio dell'esperimento, avevano condizioni di salute ottimali e un indice di massa corporea di 35 kgm2. Gli studiosi hanno deciso di suddividere le persone in 4 gruppi, a seconda della quantità di omega-3 circolante nel loro organismo. Nei soggetti con i valori più elevati di questi acidi grassi essenziali, secondo i risultati, sono stati evidenziati dei netti miglioramenti nella pressione sistolica o massima (4 mmhg in meno) e nella pressione diastolica o minima (2 mmhg). Questo significa, secondo gli studiosi, che una dieta ricca di cibi con omega-3 aiuta a diminuire la pressione del sangue nelle arterie, allontanando così l'ipertensione. (Fonte: quotidiano.net)</p>
            </div>
        </div>
        <hr />
        <div class="row">
            <div class="col-md-12">
                <a href="#"><h1 onclick="goTo(this)">Diabete gestazionale, alcuni consigli</h1></a> <br />
                <p style="text-align: justify">I parametri fondamentali da tenere in considerazione sono: la glicemia a digiuno e due ore dopo i pasti e lemoglobina glicata (il test che misura il valore glicemico medio degli ultimi due-tre mesi). I parametri diagnostici sono: glicemia > 95 mg/dl a digiuno; glicemia > 180 mg/dl dopo unora; glicemia > 153 mg/dl dopo due ore. Basta uno solo di questi valori alterato per parlare di diabete gestazionale.</p>
            </div>
        </div>
        <hr />
        <div class="row">
            <div class="col-md-12">
                <a href="#"><h1 onclick="goTo(this)">Tè e diabete</h1></a> <br />
                <p style="text-align: justify">Con larrivo dellautunno il tè caldo torna ad essere una delle bevande più amate, salutari e ricca di antiossidanti. Secondo questo studio che compare su "pubmed", il tè porterebbe un numero interessante di benefici, tra cui migliorare la sensibilità allinsulina. Oltre a questo, nello specifico i ricercatori hanno evidenziato che il tè può: mantenere una pressione sanguigna salutare; prevenire coaguli di sangue; ridurre il rischio di malattie cardiovascolari; ridurre il rischio di sviluppare il diabete di tipo 2; ridurre il rischio di sviluppare il cancro. Ma in che modo il tè aiuta i diabetici? Il tè, specialmente quello nero, oolong tè e il tè verde, contiene i polifenoli, molecole con una spiccata attività antibatterica e antiossidante, responsabili inoltre dellaumento dellattività insulinica. I ricercatori hanno inoltre sottolineato che, per trarre il massimo dalla bevanda e ottenere tutti gli effetti sopra citati, il tè va bevuto senza latte, variante sicuramente più comune in gran Bretagna che in Italia. Il tè può prevenire lo sviluppo del diabete? I polifenoli sono conosciuti in ambito scientifico soprattutto per le loro proprietà anti-ossidanti che possono aiutare contro infiammazioni e agenti cancerogeni. Inoltre, uno studio olandese del 2009 dimostra che bere tre tazze di tè (o caffè) al giorno può aiutare a ridurre il rischio di sviluppare il diabete di tipo 2 del 40%. Altri fattori da considerare per prevenire il diabete di tipo 2 includono: mangiare pochi cibi confezionati; mangiare verdure di stagione regolarmente; praticare attività fisica tutti i giorni; non fumare; consumare poco alcol. Il tè contiene anche piccoli micronutrienti chiamati flavonoidi, potenti antiossidanti che hanno delle funzionalità specifiche utili per garantire lottimale funzionamento di fegato, sistema immunitario e capillari. In particolare, la teina contiene un flavonoide che aiuta a mantenere stabile la pressione sanguigna e ad abbassare lo stress.</p>
            </div>
        </div>
        <hr />
        <div class="row">
            <div class="col-md-12">
                <a href="#"><h1 onclick="goTo(this)">Carboidrati: amici o nemici del diabete?</h1></a> <br />
                <p style="text-align: justify">Spesso si pensa, erroneamente, che i diabetici debbano eliminare dalla loro dieta i carboidrati. Niente di più sbagliato perché la situazione non sta affatto in questi termini. "I diabetici - spiega il dottor Alberto de Micheli, diabetologo e co-editor degli standard italiani per la cura del diabete - non devono eliminare dalla loro tavola i carboidrati complessi come pane o pasta che costituiscono una fonte essenziale di energia allinterno della nostra alimentazione. Il discorso è diverso, invece, per quanto concerne gli zuccheri semplici (dolci) che devono essere sempre assunti con moderazione, da diabetici e non". Allinterno della grande famiglia dei carboidrati complessi ci sono due sottogruppi: quella dei carboidrati raffinati, come il pane e il riso bianchi e la pasta normale che comunemente consumiamo e i carboidrati non raffinati. Appartengono a questo secondo sottogruppo pane, pasta e riso integrali. Se i cibi integrali sono di nostro gradimento, meglio optare per questi ultimi, che comunque non vanno ritenuti "obbligatori". I vantaggi sono numerosi. Prima di tutto, i cibi integrali sono ricchi di fibre, vitamine e sali minerali. E le fibre, si sa, agevolano il buon funzionamento dellintestino. Secondo alcuni studi scientifici, inoltre, i cibi integrali ridurrebbero il rischio di malattie cardiovascolari e di alcuni tipi di tumori. Ma non solo. "i cibi integrali - precisa de Micheli - hanno il vantaggio di rilasciare gli zuccheri nel sangue più lentamente rispetto ai prodotti raffinati. Ciò ha un impatto positivo sulla glicemia che tenderà a rimanere più stabile</p>
            </div>
        </div>
        <hr />
        <div class="row">
            <div class="col-md-12">
                <a href="#"><h1 onclick="goTo(this)">Il burro previene il diabete?</h1></a> <br />
                <p style="text-align: justify">Per anni è sempre stato bandito da qualsivoglia dieta, colpevole di innescare patologie cardiovascolari. Stiamo parlando del burro, la parte grassa del latte, un ingrediente che negli ultimi tempi sembra essere riconsiderato. Secondo una ricerca condotta dalla Friedman School of Nutrition Science&Policy della Tufts University (USA), il consumo è infatti solo debolmente associato alla mortalità, mentre non cè alcun legame con le malattie cardiovascolari ed è stato osservato anche un lieve effetto protettivo nei confronti del diabete, legato proprio alla presenza di grassi del latte. Unica precauzione: non abusarne. Lo studio, pubblicato su "plos one", ha coinvolto 635mila persone che sono state sottoposte a diversi test anche alimentari. In media, la quantità di burro consumata quotidianamente è risultata pari a un cucchiaio, circa 14 grammi. Durante il periodo di "follow up", nel quale cioè i partecipanti agli studi sono stati seguiti, i ricercatori hanno verificato 28.271 decessi, 9.783 casi di malattie cardiovascolari e 23.954 casi di insorgenza di diabete. Lo studio ha però riscontrato "piccole o insignificanti" correlazioni tra il consumo di burro, le malattie e la mortalità totale. Leffetto protettivo nei confronti del diabete, spiegano i ricercatori, potrebbe essere legato alla presenza di grassi del latte, ma devessere ulteriormente approfondito. "Sebbene chi mangia burro abbia uno stile di vita e unalimentazione peggiore, questo alimento sembra essere complessivamente neutrale" ha spiegato Laura Pimpin, autrice della ricerca. "Ciò suggerisce che può essere una via di mezzo tra scelte più salutari come lolio extravergine di oliva e peggiori come per esempio lo zucchero e lamido, contenuti nel pane bianco e nelle patate". Nonostante quindi linteressante scoperta, è consigliabile non esagerare con le dosi di burro nella propria dieta, preferendo comunque frutta, verdura e unadeguata attività fisica. (fonte: plos one)</p>
            </div>
        </div>
        <hr />
        <div class="row">
            <div class="col-md-12">
                <a href="#"><h1 onclick="goTo(this)">Yogurt e ricotta vs diabete di tipo 2</h1></a> <br />
                <p style="text-align: justify">Secondo i ricercatori dellUniversity of Cambridge, non tutti gli alimenti con grassi saturi aumenterebbero le possibilità di sviluppare il diabete, anzi, alcuni potrebbero proteggerci dalla malattia. Lo studio ha dimostrato che inserire nella propria dieta alimenti come lo yogurt, nella giusta quantità, può ridurre fino al 28% il rischio di contrarre il diabete 2. Ma le buone notizie per gli amanti dei latticini non finiscono qui; infatti è emerso dallo stesso studio che anche prodotti lattiero-caseari fermentati e a basso contenuto di grassi, come ad esempio la ricotta, possono ridurre il rischio del 24%. La ricerca si è basata sui dati del grande studio "EPIC-Norfolk", che ha coinvolto 30mila uomini e donne di Norfolk (Regno Unito) per un periodo di 11 anni.  Da qui sono state confrontate le diete giornaliere di 753 partecipanti che avevano sviluppato il diabete di tipo 2 con quelle di altre 3.500 persone in salute. A seguito delle analisi, la scoperta inaspettata: coloro che avevano consumato maggiormente yogurt e formaggi fermentati freschi e a basso contenuto di grassi avevano, rispetto ai non consumatori, un rischio di sviluppare diabete ridotto del 24% lungo il periodo di 11 anni. "Questa ricerca evidenzia che gli alimenti specifici possono avere un ruolo importante nella prevenzione del diabete di tipo 2 e sono rilevanti per i messaggi di salute pubblica", ha commentato la dott.ssa Nita Forouhi, del Medical Research Council (MRC) - Unità di Epidemiologia presso lUniversità di Cambridge.  Lo yogurt contiene calcio, magnesio, vitamina D e acidi grassi, di cui tutti con benefici sulla salute. (Fonte: The Guardian)</p>
            </div>
        </div>
        <hr />
        <div class="row">
            <div class="col-md-12">
                <a href="#"><h1 onclick="goTo(this)">Asparago pro diabete tipo 2</h1></a> <br />
                <p style="text-align: justify">Uno studio condotto da un gruppo di ricercatori delluniversità di Karachi (Pakistan) e pubblicato sul British Journal of Nutrition, dimostra come gli asparagi aiutino a controllare i livelli di zucchero nel sangue e facilitino la produzione di insulina: una buona notizia per chi è affetto da diabete di tipo 2. "Questo studio - spiegano i ricercatori - suggerisce che lestratto di asparagi esercita effetti anti-diabetici". La ricerca ha rivelato che, mentre il consumo di asparagi a piccole dosi è in grado di abbassare i livelli di zucchero nel sangue, se ampiamente consumato il vegetale stimola il pancreas nella produzione di insulina, entrando a far parte di quella gamma di alimenti che aiutano lorganismo nella regolazione del glucosio. I test sono stati effettuati su due gruppi di topi diabetici analizzati per 28 giorni, rispettivamente con lestratto di asparago e con un farmaco anti-diabete, il glibenclamide. Dopo aver esaminato i loro campioni di sangue, i ricercatori hanno osservato che lestratto di asparago aveva abbassato i livelli di glucosio nel sangue e stimolato la produzione di insulina. Questo studio ci regala una scoperta interessante, ciononostante lasparago non può essere considerato come una vegetale miracoloso, ma così come altri alimenti, se inserito nella nostra dieta può avere ricadute benefiche. Soprattutto in primavera, lasparago può quindi rientrare tra gli alimenti della dieta diabetica, anche grazie alla presenza di fibra, vitamina c, carotenoidi, vitamina b, sali minerali ed acido folico. (fonte: daily mail)</p>
            </div>
        </div>
        <hr />
        <div class="row">
            <div class="col-md-12">
                <a href="#"><h1 onclick="goTo(this)">Cosa dovrei mangiare a colazione?</h1></a> <br />
                <p style="text-align: justify">A tutte le età e in qualsiasi condizione fisio-patologica, consumare un pasto energetico al mattino e stare leggeri la sera è uno stile alimentare che favorisce un miglior controllo glicemico nel corso dellintera giornata e può aiutare a ridurre i rischi di complicanze diabetiche. La prima regola rimane sempre "mangiare entro due ore dal risveglio". Ecco alcuni esempi di colazione, perfetti per entrambi i tipi di diabete: yogurt greco 0% grassi o yogurt di soia + macedonia di frutta + mandorle; latte + muesli + frutti di bosco; tè o infuso + bresaola + mela; pane integrale di segale + ricotta o uovo + frutto; frullato preparato con latte di soia, crusca davena, riso o fiocchi davena, frutta a piacere. È importante quindi aumentare il consumo di fibre, diminuire lapporto di zucchero e sale, assumere più vitamine e minerali. Saltare la colazione al mattino porta a mangiare molto di più nel corso della giornata, con il rischio non solo di alzare i livelli glicemici, ma anche di eccedere col cibo e ingrassare. Una prima colazione nutriente permette invece di iniziare la giornata con vitalità e rende più facile controllare il peso, la glicemia, i livelli ormonali, fornendo allorganismo tutti i nutrienti di cui ha bisogno. Se al mattino andate di fretta e non avete tempo per fare colazione provate a preparare ciò che serve la sera prima o a consumare qualcosa mentre andate al lavoro. (fonte: The Independent)</p>
            </div>
        </div>
        <hr />
        <div class="row">
            <div class="col-md-12">
                <a href="#"><h1 onclick="goTo(this)">Legumi, utili alleati contro il diabete</h1></a> <br />
                <p style="text-align: justify">Fagioli, lenticchie, piselli, fave, ceci e compagnia sono molto versatili in cucina e rappresentano unottima fonte di proteine vegetali (che dovrebbero rappresentare circa due terzi di tutte le proteine introdotte). Inoltre, sono ricchi di fibre. Tutti i semi delle leguminose pur contenendo carboidrati sono consigliati poiché, avendo un basso indice glicemico, influenzano modicamente le concentrazioni di glucosio nel sangue. E quindi possono essere consumati senza troppi problemi anche dai diabetici. I legumi hanno mostrato di contrastare le brusche variazioni di glucosio ematico che sono tra le principali cause dei danni a lungo termine legati alla malattia diabetica. Assunti insieme con pasta, riso o patate fanno sì che la componente glucidica di questi ultimi sia assorbita lentamente e gradualmente, con una azione che prosegue anche durante le fasi di digiuno. In questo modo si evitano non soltanto impennate di glicemia subito dopo il pasto, ma anche eccessivi abbassamenti dei livelli glicemici tra un pasto e laltro, specie in chi soffre di diabete di tipo 1 e, pertanto, fa uso di insulina. Ma le loro proprietà salutari non finiscono qui. Se consumati abitualmente - gli esperti consigliano di metterli in tavola almeno tre volte la settimana - riducono anche il colesterolo e i trigliceridi circolanti, svolgendo quindi unazione protettiva su cuore e circolo.</p>
            </div>
        </div>
    </section>
    <footer class="row">
        <%@ include file="jspIncluse/footer.jsp"%>
    </footer>
</body>
</html>