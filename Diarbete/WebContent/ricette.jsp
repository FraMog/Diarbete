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
    
    function goTo(x)
    {
    	localStorage.header1 = x.innerHTML;
    	localStorage.paragrafo = x.parentNode.nextSibling.nextSibling.nextSibling.nextSibling.innerHTML;
    	open("ricette/r1.jsp", "_self");
    }
    
    </script>
    
</head>
<body>
    <header>
        <%@ include file="jspIncluse/header.jsp" %>
    </header>
    <%@ include file="jspIncluse/menuNavigazionale.jsp" %>
      
        <section id="paginaRicette" class="container-fluid">
            <div class="row">
                <div class="col-md-12">
                    <div id="titoloRicette">
                        <ul class="breadcrumb">
                            <li><a href="home.jsp">Home</a>
                            </li>
                            <li><a href="#">Consigli</a>
                            </li>
                            <li class="active">Ricette</li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12"><a href="#"><h1 onclick="goTo(this)">Involtini di pollo e zucchine al profumo di menta</h1></a>
                    <br />
                    <p>Ingredienti: 8 fettine di pollo sottili (800 gr circa), 4 zucchine sottili + 6 normali (500 gr circa), 1 spicchio d'aglio, Parmigiano grattugiato, Olio di semi, Olio extra vergine, Sale, Pepe. Procedimento: Lavare accuratamente 4 zucchine e dividerle a meta' in senso orizzontale. Stendere le fettine su un tagliere, aggiungere parmigiano, sale, pepe ed arrotolare la fettina sulla meta' della zucchina, chiudendo ogni involtino con uno stuzzicadenti. Successivamente tagliare a cubetti le zucchine rimanenti e sminuzzare la menta. Versare mezzo bicchiere d'acqua in una padella ampia ed aggiungere le zucchine unite alla menta e ad uno spicchio d'aglio intero. Salare a piacere e far cuocere a fuoco basso per circa 5/10 minuti facendo attenzione a coprire la padella con un coperchio. Una volta che l'acqua sara' evaporata aggiungere gli involtini ed un cucchiaino di olio di semi e procedere con la cottura (sempre a fuoco lento) coprendo con il coperchio. Girare gli involtini di tanto in tanto per garantire una migliore cottura della carne.</p>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12"> <a href="#"><h1>Gamberetti al Cointreau flambe'</h1></a>
                    <br />
                    <p>Ingredienti: 800 gr di code di gambero sgusciate, 1 bicchiere di Cointreau, 1 spicchio di aglio, Erbe provenzali, Sale, Pepe, Olio di Semi, Olio Extra Vergine di Oliva. Procedimento: Lasciare riscaldare la padella per 1 minuto a fuoco medio, poi aggiungere le code di gambero, salare a piacere e versare un quarto di Cointreau. Inclinare la padella in modo che il liquore prenda fuoco, lasciando fiammeggiare fino a che non si spegnera' da solo. Ripetere il passaggio fino ad esaurire il Cointreau. Osservare che al termine della cottura si sia formata una "cremina"; aggiungere quindi le erbe di Provenza e il pepe a piacere con un cucchiaino di olio extra vergine di oliva. Servite su un letto di crudites a piacere.</p>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12"> <a href="#"><h1>Involtini di melanzane con cuore morbido di speck</h1></a>
                    <br />
                    <p>Ingredienti: 2 melanzane lunghe, 2 etti di speck, Scaglie di parmigiano, Pangrattato, Olio extravergine, Olio di semi, Sale, Pepe, Acqua, Cavolo Bianco. Procedimento: Pelare le melanzane eliminando la pelle, tagliarle per lungo in tante fettine sottili (non piu' spesse di 0,5 cm). Prendere una padella, versare un dito di acqua e aggiungere le fettine di melanzane facendole andare a fuoco medio per 3/5 minuti (sbollentarle). Questo servira' ad ammorbidire le melanzane per poter creare gli involtini. Nel frattempo riempire una ciotola con del pangrattato (quanto basta), aggiungere 2 cucchiaini di olio extra vergine di oliva e salate a piacere (senza esagerare perche' lo speck contribuira' a dare gusto al piatto). Mescolate con i polpastrelli fino a rendere il pangrattato granuloso in modo omogeneo, stando attenti a non lasciare grumi di olio. Una volta che le fettine saranno pronte, impanatele nel composto appena preparato, e aggiungere una fettina di speck su ogni melanzana ponendo nel cuore una scaglia di grana. Avvolgere l'involtino arrotolando la melanzana su se stessa e chiuderlo con uno stuzzicadenti. Ripetere il passaggio per ogni fettina. Quando saranno tutti pronti versare un cucchiaio di olio di semi in una padella antiaderente e far cuocere a fuoco medio gli involtini stando attenti che la cottura venga dorata. Nel caso l'olio dovesse asciugarsi completamente, aggiungere un altro cucchiaino. Quando il tutto sara' pronto servite il piatto su un letto di cavolo bianco tagliato alla julienne. Spolverare con pepe a piacere.</p>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12"> <a href="#"><h1>Spaghetti con acciughe sotto sale al profumo di arancia</h1></a>
                    <br />
                    <p>Ingredienti: 240 g di spaghetti, 6 acciughe conservate nel sale, mezzo peperone rosso e mezzo verde, 1 spicchio di aglio, 20 g di pane raffermo, semi di finocchio selvatico, scorza grattugiate di 1 arancia, 5 cucchiai di olio extravergine di oliva, sale. Procedimento: Lavate le acciughe sotto l'acqua corrente affinche' perdano il sale di conservazione, quindi rimuovete la lisca e tenetele da parte. In un tegame abbastanza capiente per contenere anche la pasta, versate l'olio, l'aglio tritato finemente e i peperoni tagliati a cubetti. Fate soffrire fino a quando i peperoni saranno diventati teneri. A questo punto aggiungete le acciughe pulite e, con l'aiuto di una forchetta, scioglietele nell'olio caldo. In una pentola con acqua in ebollizione lessate gli spaghetti con poco sale. Scolateli e versateli nella padella con il condimento. Saltate per qualche minuto. Riscaldate sul fuoco una padellina antiaderente, versatevi il pane pestato con i semi di finocchietto e fate tostare per alcuni secondi. Distribuite la pasta nei piatti, cospargetela con il pane tostate e infine con un po' di scorza d'arancia.</p>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12"> <a href="#"><h1>Tonno con la cipollata</h1></a>
                    <br />
                    <p>Ingredienti: 6 fette di tonno fresco, 1 kg cipolle rosse, 150 ml aceto di vino bianco, 1/2 cucchiaino di zucchero, semola rimacinata di grano duro q.b., olio extravergine di oliva per friggere q.b., sale q.b. Procedimento: Affettare le cipolle finemente e stufarle in un'ampia padella con due bicchieri di acqua, due cucchiai di olio extravergine e due foglie di alloro utilizzando il coperchio. Terminare la cottura quando la cipolla sara' ben cotta e molto morbida, quindi far assorbire eventuale liquido rimasto e aggiustare di sale. Aggiungete alle cipolle l'aceto nel quale avrete fatto sciogliere lo zucchero facendo evaporare la parte alcolica. Infarinate le fette di tonno con la semola di grano duro, quindi friggerle in una padella con olio extravergine non troppo abbondante, e a fuoco medio, per due minuti per lato. Una volta cotto, scolare il pesce dall'olio in eccesso e salare, quindi trasferirlo in un piatto da portata. Coprite le fette di pesce con la cipollata e lasciare riposare fino a completo raffreddamento. Servite a temperatura ambiente.</p>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12"> <a href="#"><h1>Scottata di tonno in crosta di sesamo</h1></a>
                    <br />
                    <p>Ingredienti: 3 fette di tonno a filetto (alte circa 2 cm), Sesamo q.b., Sale, Olio di semi, 1 spicchio d'aglio, Olio di extravergine di oliva, Prezzemolo, Crema balsamica (poca), Pepe nero. Procedimento: Ricoprire le fettine di tonno con i il sesamo versando i semi in un piatto e intingerlo in modo da ricoprirlo interamente. Salare a piacere prima della cottura. Prendere una padella antiaderente ampia, versare un cucchiaino di olio di semi e passarlo sulla padella con un tovagliolino. Schiacciare poi lo spicchio d'aglio e metterlo nella padella. Accendere il fuoco. Nel frattempo sminuzzare il prezzemolo. Lasciare scaldare la padella per 30 secondi, successivamente aggiungere il tonno e far scottare solo la superficie esterna delle fettine, facendo attenzione che il sesamo rimanga lievemente dorato. Una volta raggiunta la cottura spegnere il fuoco, aggiungere prezzemolo e pepe a piacere, condire con olio extra vergine e decorare con crema balsamica.</p>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12"> <a href="#"><h1>Polpette di ceci</h1></a>
                    <br />
                    <p>Ingredienti: 250 gr. di ceci secchi, 1 scalogno, 50 gr. di parmigiano, 4 cucchiai di olio extravergine d'oliva, Semi di sesamo q.b., Noce moscata q.b., Sale q.b. Procedimento: Mettete a bagno i ceci la notte prima di preparare le vostre polpette. Il giorno dopo, lessateli in acqua salata per almeno un paio d'ore, fino a che non risulteranno abbastanza morbidi. Una volta scolati, metteteli in una zuppiera e schiacciateli con una forchetta; aggiungetevi lo scalogno tritato e il parmigiano grattugiato, insaporite con un pizzico di sale e di noce moscata e mescolate il tutto con le mani fino a ottenere un composto pressoche' omogeneo; fatelo riposare per almeno venti minuti. Formate delle polpettine e rotolatele nei semi di sesamo finche' l'esterno non ne verra' completamente ricoperto; foderate una teglia con della carta da forno e disponetevi sopra le polpettine, irrorandole con l'olio extravergine. Infornate e cuocete per circa trenta minuti a 180C.</p>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12"> <a href="#"><h1>Coppette allo yogurt con mirtilli</h1></a>
                    <br />
                    <p>Ingredienti: 1 cucchiaino di dolcificante liquido, 250 g di mirtilli freschi, 450 g di yogurt greco magro, 1 cucchiaio di miele, 100 g di muesli, 2 cucchiaini di amido di mais, Acqua q.b. Procedimento: Preparate salsa ai mirtilli scaldando su una fiamma bassissima i mirtilli e un fondo d'acqua. Quando i mirtilli saranno parzialmente spappolati, filtrateli in modo da tenere da parte i frutti ancora integri. Rimettete il succo nel pentolino e addensatelo sulla fiamma bassissima con l'amido di mais (che dev'essere precedentemente sciolto in pochissima acqua), in modo da ottenere una crema piu' densa. Unite a essa nuovamente i mirtilli e mettete un fondo di questa salsa densa ai mirtilli in ognuna delle quattro coppette; riponetele in freezer per una ventina di minuti. Nel frattempo aggiungete mezzo cucchiaino di miele allo yogurt e mescolate affinche' si amalgamino; quando la salsa di mirtilli si sara' addensata, aggiungete la crema di yogurt col miele in ogni coppetta e concludete il vostro dessert aggiungendo il muesli croccante. Servite freddo.</p>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12"> <a href="#"><h1>Tortino con asparagi e ricotta</h1></a>
                    <br />
                    <p>Ingredienti: 500 g di asparagi, una cipolla, 200 g di ricotta di mucca, 10 g di parmigiano, 100 g di panna di soia, 1 uovo, olio, sale e pepe (q.b.). Procedimento: Taglia finemente lo scalogno e mettilo in padella a rosolare con l'olio. Quando e' dorato, unisci gli asparagi (precedentemente gia' lavati, puliti della parte piu' dura e poi tagliati a tocchetti). Nel frattempo versa in un contenitore a parte la ricotta di mucca, assieme a parmigiano, panna di soia e uovo e mescola il tutto per amalgamare bene (conserva a parte tre cucchiai di uovo sbattuto). Quando gli asparagi sono pronti uniscili al ripieno (se vuoi, trita in frullatore una meta' cosi' da dare un sapore piu' omogeneo al ripieno). Aggiungi sale e pepe. Stendi la pasta in un contenitore (con carta) da forno in modo da lasciarne dei bordi un po' in eccesso. Versa il ripieno e ricopri il tutto con la pasta dei bordi e con una nuova sfoglia sulla superficie. Utilizza l'uovo sbattuto messo da parte per pennellare la copertura del tortino. Metti in forno per 30 minuti a 180. Lascia raffreddare pochi minuti (ma non troppi) e il tortino e' pronto.</p>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12"> <h1><a href="#">Crema di riso e mandorle alla turca</a></h1>
                    <br />
                    <p>Ingredienti: 40 g di scaglie di mandorle, 1 limone, 2 cucchiai di farina di riso, 1 cucchiaino di maizena, 250 ml di latte fresco scremato, 1/2 cucchiaino di cannella in polvere, 1 cucchiaio di diet sucary liquido o altro dolcificante per diabetici a scelta, 250 g di ricotta fresca. Procedimento: Tostare le mandorle nel forno caldo a 160 per 5 minuti, farle raffreddare e sbriciolarle. Lavare, asciugare e sbucciare sottilmente il limone. Con una frusta stemperare la farina di riso e la maizena con poco latte e la cannella, portare a ebollizione il restante latte insieme al dolcificante prescelto e alla buccia di limone. Filtrare e unire gradualmente il latte caldo al composto di farina, amalgamare il tutto, travasare nella stessa pentola del latte e cuocere a fuoco basso fino ai primi cenni di ebollizione. Far raffreddare il composto e frullarlo con la ricotta fino a ottenere una soffice crema, riempire quattro coppette e servire cospargendo con le mandorle tritate e un altro pizzico di cannella.</p>
                </div>
            </div>
        </section>
      
        <footer class="row">
            <%@ include file="jspIncluse/footer.jsp" %>
        </footer>
        
</body>
</html>