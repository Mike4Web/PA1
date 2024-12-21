#import "supercharged-dhbw/2.1.0/acronym-lib.typ": *
#import "supercharged-dhbw/2.1.0/check-attributes.typ": *
#import "supercharged-dhbw/2.1.0/confidentiality-statement.typ": *
#import "supercharged-dhbw/2.1.0/declaration-of-authorship.typ": *
#import "supercharged-dhbw/2.1.0/gender-equality-notice.typ": *
#import "supercharged-dhbw/2.1.0/lib.typ": *
#import "supercharged-dhbw/2.1.0/titlepage.typ": *
#import "acronyms.typ": acronyms
#import "appendix.typ": appendix
#import "abstract.typ": abstract

#show: supercharged-dhbw.with(
  title: "Evaluierung und Umsetzung eines Frühwarnsystems von Lizenzverletzungen der SAP Cloud Produkte",
  short-title: "Benchmarks zur Verbesserug LLM-basierter",
  type-of-degree-specification: "Sales & Consulting",
  time-of-thesis: "29.07.2024 - 18.11.2024",
  authors: ((
    name: "Mike Lober", 
    student-id: "89007845", 
    course: "WWI23SCB",
    course-advisor: "Prof. Dr. Frank Koslowski", 
    course-of-studies: "Wirtschaftsinformatik", company: ((
      name: "SAP SE", 
      address: "Dietmar-Hopp-Allee 16", 
      city: "69190 Walldorf")
    )),
  ),
  acronyms: acronyms, // displays the acronyms defined in the acronyms dictionary
  at-university: false, // if true the company name on the title page and the confidentiality statement are hidden
  bibliography: bibliography("sources.bib"),
  appendix: appendix,
  abstract: abstract,
  date: datetime.today(),
  language: "de", // en, de
  supervisor: (
    company: (
      name: "Andreas Nicola",
      mail-address: "andreas.nicola@sap.com",
      phone-number: "+4915117195227"), 
    university: (
      name: "Andreas Grimm",
      mail-address: "andreas.grimm@merckgroup.com",
      phone-number: "T.B.A")
    ),
  
  university: "Duale Hochschule Baden-Württemberg",
  university-location: "Mannheim",
  bib-style: "ieee",
  // for more options check the package documentation (https://typst.app/universe/package/supercharged-dhbw)
)
= Einleitung
== Motivation und Problemstellung
Die Cloud-Produkte der SAP nehmen eine Schlüsselrolle in der digitalen Transformation von Geschäftsprozessen ein. Sie ermöglichen es Unternehmen, Daten effizient zu analysieren und fundierte Entscheidungen zu treffen. Mit dem wachsenden Erfolg und der steigenden Komplexität dieser Produkte werden jedoch auch die Anforderungen an präzise, strukturierte und aussagekräftige Berichte immer höher. Solche Berichte sind essenziell, da sie als Entscheidungsgrundlage für strategische und operative Maßnahmen in Unternehmen dienen.
Die Abteilung Cloud Reporting (CRP) der SAP sieht sich vor der Herausforderung, die bestehenden Datenmodelle und Reporting-Systeme den steigenden Ansprüchen der internen Stakeholder anzupassen. Um dies zu erreichen, müssen bestehende Schwachstellen frühzeitig erkannt werden und durch verlässliche sowie innovative Lösungen beseitigt werden.
Besonders im Bereich der Vertragsanalysen, bietet Cloud Reporting internen Nutzern Zugriff auf aggregierte Daten, welche für die Interaktion mit dem Kunden herangezogen werden. Eine der bereitgestellten Anwendungen ist die “License Compliance” welche Lizenz- und Nutzungsdaten gegenüberstellt.
Problembeschreibung: Die in dieser Anwendung (License Compliance) verwendeten Datenmodelle und Prozesse sind aktuell ineffizient und unzureichend strukturiert. Durch diesen Sachverhalt wird es den Endanwendern erschwert, Entscheidungen auf Basis der zur Verfügung gestellten Ergebnisse zeitnahe und priorisiert zu treffen. 

== Struktur der Arbeit
Im zweiten Kapitel wird die theoretische Grundlage der Arbeitsweise dargestellt, um ein umfassenderes Verständnis des Themas zu schaffen. Hierbei werden zunächst die Abteilung Cloud Reporting (CRP) sowie deren Schlüssel-Frameworks, das Generierungs- und das Collector-Framework, eingeführt. Anschließend wird das Global License and Compliance des Cloud Reportings als auch die wissenschaftliceh Methode der Anforderungsanalyse erklärt.
Das dritte Kapitel widmet sich der Beschreibung des Ist-Zustands der Arbeit. Es umfasst die Herkunft der für die Validierung benötigten Daten sowie eine Analyse der Kundenanforderungen.
Das vierte Kapitel behandelt die Umsetzung und Realisierung des praktischen Teils dieser Arbeit und erklärt zunächst das Konzept der technischen Lösung. 
Kapitel fünf evaluiert den Erfüllungsgrad der Anforderungen. Hierbei werden die zuvor definierten Kundenbedürfnisse mit dem Verhalten der jetzigen umgesätzen Lösungen verglichen.
Abgeschlossen wird die Arbeit im sechsten Kapitel mit einem Fazit der Ergebnisse und einer kritischen Reflexion. Darüber hinaus wird ein Ausblick auf potenzielle Erweiterungen und neue Nutzungsmöglichkeiten des Reporting-Tools gegeben.

== Abgrenzung der Arbeit
Diese Projektarbeit konzentriert sich auf die Erstellung eines Reports innerhalb des SAP-eigenen Reporting-Tools der CRP-Abteilung. Die eingesetzten Frameworks wurden intern von den Mitarbeitenden dieser Abteilung entwickelt und sind ausschließlich dort im Einsatz. (schau ob du es im Kapitel “Zielsetzung der Arbeit”, im Schlussteil unterbekommst, statt einem Abschlusssatz)
== Ziel und Gang
In einem vorgelagerten Schritt, wird mit den involvierten Teams die bestehende Infrastruktur und die Prozesse analysiert. Anschließend wird eine Anforderungsanalyse auf Basis der gewonnen Erkenntnisse durchgeführt, um eine Auswahl von realisierbaren Optimierungen zu treffen.
Diese Anpassung wird eine konsistente und verlässliche Datenbasis schaffen, die es ermöglicht, Vertrags- und Nutzungsdaten effizient zu analysieren. “Die” Einführung eines strukturierten Datenmodells verbessert nicht nur die Datenqualität, sondern erweitert auch die Analysemöglichkeiten erheblich. Ein besonderes Augenmerk liegt auf der Identifizierung möglicher Verbesserung im direkten Bezug auf den Kunden. (Vielleicht noch präzisieren und ergänzen / ACV) Durch die Priorisierung der, in der Anforderungsanalyse ermittelten Kriterien, soll in einem abschließenden Schritt eine Einordnung weiterer möglicher Optimierungen durch andere Kollegen des Cloud Reporting Teams erfolgen.

Die Zielsetzungen im Detail:
- Für die Analyse werden Interviews und Pair-Programming Sessions mit den betroffenen Teams durchgeführt. 
- Aufarbeitung und Auswertung der gesammelten Erkenntnisse aus den vorhergehenden “Schritten”
-	Umsetzung und Implementierung der möglichen Verbesserung in Anlehnung an die getroffene Priorisierung
-	Gegenüberstellung und Evaluierung der erzielten Ergebnisse
-	Erstellen eines Ausblicks über mögliche weitere ….
Die Anpassung einzelner, relevanter Anwendungsabschnitte, zur Beseitigung ermittelter Schwachstellen, soll wesentliches Ziel dieser Arbeit sein. (Satz spezifizieren)


= Theoretische Grundlagen
== Cloud Reporting (CRP)
Das Cloud Reporting (CRP) ist eine interne Reporting-Abteilung der SAP, die der Organisationstruktur des Customer Engagement Solutions Analytics (CESA) zugeordnet wird. Seit 2014 widmet sich diese Abteilung der Analyse und Verarbeitung von Nutzungsdaten aus SAP-Cloud-Produkten. Ursprünglich als Entwicklungsbereich für „Business by Design“ (ByD), SAPs erstes Cloud-Produkt, ins Leben gerufen, hat sich das CRP über die Jahre hinweg zu einem eigenständigen Werkzeug für Reporting und Datenanalysen entwickelt. Es spielt eine zentrale Rolle bei der Bereitstellung wichtiger Informationen über Kunden, ihre Systeme und die Nutzung der SAP-Cloud-Dienste.
Mit dem Ziel, wertvolle Erkenntnisse über Kunden und ihre Nutzung der Lösungen zu gewinnen, fokussiert sich das CRP auf die Sammlung, Verarbeitung und Auswertung von Daten. Diese betreffen unter anderem Kundenaufträge, Systemlandschaften sowie die Qualität von Cloud-Produkten – beispielsweise deren Verfügbarkeit, Performance und die Nutzung von Services. Grundlage für diese Analysen bilden Kollektoren, die Daten aus einer Vielzahl von Systemen aggregieren und zur weiteren Verarbeitung in Reporting-Systeme einspeisen. Dadurch kann das CRP nicht nur eine zentrale Datenbasis schaffen, sondern auch detaillierte Analysen bereitstellen.
Die Abteilung arbeitet nach agilen Methoden im Rahmen eines SCRUM-Teams und erfüllt Anforderungen ausschließlich auf Anfrage interner Stakeholder. Der Product Owner genehmigt und priorisiert die gewünschten Anpassungen, bevor das Team die Aufgaben eigenständig bearbeitet. Jede Kundenanfrage führt zu einem Endergebnis, das ein vollständiges Paket aus Datenbanklösungen, Netzwerksystemen und Benutzeroberflächen umfasst. Die generierten Berichte bestehen meist aus Dashboards oder strukturierten Listen, die eine klare und übersichtliche Darstellung der analysierten Daten ermöglichen. Im Gegensatz zur Echtzeitüberwachung wird im CRP der Fokus auf die Aggregation und Analyse von Daten gelegt, wobei der Bereitstellungszeitraum je nach Datenkomplexität von wenigen Minuten bis zu mehreren Tagen variieren kann. 
Durch die Bereitstellung von über 2500 Dashboards und Listen deckt das CRP alle SAP-Cloud-Produkte ab und unterstützt interne Kunden bei der Entscheidungsfindung. Ziel ist es, das wachsende Produktportfolio zu begleiten und sicherzustellen, dass alle Benutzer qualitätsgesicherte und nutzungsrelevante Daten erhalten.

=== Zweck vom Cloud Reporting
Das CRP erfüllt verschiedene Anforderungen seiner internen Konsumentengruppen, wobei der Schwerpunkt auf der Bereitstellung von qualitätsgesicherten Daten zur Unterstützung strategischer Entscheidungen liegt:
Produktentwickler: Nutzung von SAP-Cloud-Produkten zu analysieren und neue Features oder Verbesserungen gezielt umzusetzen.
Systembezogene Interessengruppen: Profitieren von Berichten zu Systemlandschaften, Performance und Verfügbarkeit, um die technische Infrastruktur weiterzuentwickeln und die Servicequalität zu gewährleisten.
Sales- und Customer-Engagement-Teams: Analysieren Vertragsdetails und Kundenkonsum, um Optimierungspotenziale in der Lizenznutzung aufzudecken und fundierte Gespräche mit Kunden zu führen.

Intere Validierungs- und Auditteams: Profitieren von den bereitgestellten Daten zur Sicherstellung von Compliance und Nachvollziehbarkeit von Geschäftsprozessen.

=== Datenschutz und Berechtigungen
Grundsätzlich hat jeder SAP-Mitarbeiter, der die Daten für seine tägliche Arbeit benötigt, Zugang zu CRP. Basisberechtigungen werden automatisch gewährt und benötigen keien weitere Prüfung. Weitergehende Rechte müssen gesondert beantragt und geprüft werden, um die Sicherheit sensibler Kundendaten zu garantieren. Zu diesen schützenswerten Daten gehören unter andrem Personenbezogene- und Vertragsdaten.
Vertragsdaten bilden sich (Vertragsdokumente und monetäre Werte, ACVs)

Monetäre Details werden im weiteren Verlauf der Arbeit wichtig und dienen der Argumentation warum die Implementierung machst  neue Hierarchy , Kundenlevel  Sortieren der Kunden nach ACV was vorher nicht möglich war 

=== Frameworks
Die Entwicklung neuer Anwendungen ist in der Regel ein komplexer und zeitintensiver Prozess, da alle erforderlichen Komponenten individuell entworfen und implementiert werden müssen – selbst dann, wenn bereits ähnliche Anwendungen existieren. So erfordert beispielsweise die Entwicklung eines ERP-Systems die separate Erstellung einer Benutzeroberfläche, einer Datenbankverbindung, der dazugehörigen Logik sowie geeigneter Sicherheitsmaßnahmen.
Um diese Herausforderung zu adressieren und die Effizienz für alle Entwickler, unabhängig von deren Erfahrung, zu steigern, bietet sich der Einsatz von Frameworks an. Ein Framework stellt eine standardisierte Lösung für häufig auftretende Probleme in unterschiedlichen Kontexten bereit. Es dient als Grundlage, auf der spezifische Anforderungen durch Anpassungen und Erweiterungen umgesetzt werden können .
Dadurch entsteht eine modulare und wiederverwendbare Architektur, die die spezifischen Anforderungen einer Anwendung abstrahiert und auf Basis kombinierter, allgemeiner Anforderungen eine flexible Lösung bereitstellt.

== Datenmodellierung
Die Modellierung und Organisation von Daten, auch bekannt als „Datenmodellierung“, stellt einen zentralen Aspekt der Wirtschaftsinformatik dar. Damit Daten effizient verarbeitet werden können, müssen sie in einer logischen und strukturierten Form vorliegen.  auf Usage und Order Daten beziehen 
+	Um Vertragsdaten und Nutzungsdaten brauchen eine vernüftige Datenmodellierung
+	Datenmedellierung und Datenqualität: einmalig, eindeutig, nicht redudand, fehlerferi

=== Daten
Daten sind ein wichtiger Bestandteil und spielen dort eine große Rolle, da sie die Grundlage für Entscheidungen und Prozesse sind. So auch am folgenden Beispiel unserer Sales Abteilung.  
Entscheidungen und prozesse werden auf Grundlage von Daten geführt. Beispiel: Sales Kollegen die richtige Daten für Sales Gespräche brauchen
Daten sind definiert als Zeichen, die einer Syntax folgen [Vgl. 3, Seite 1]. 
Daten werden durch interpretation zu Informationen
Weiter werden diese Informationen, mit der Fähigkeit diese zu nutzen, zu Wissen [Vgl. 3, Seite 2]. 

=== Modelle
Modelle stellen die unter Umständen äußerst komplexe Realität vereinfacht dar. So wird bei- spielsweise ein Objekt, System oder Phänomen heruntergebrochen, um dessen Zusammenhän- ge zu verstehen und im Folgenden zu analysieren. Außerdem helfen sie dabei, die wichtigsten Punkte eines solchen komplexen Themas zusammenzufassen und zu veranschaulichen [Vgl. 3, Seite 3]. 
In der Wirtschaft werden beispielsweise ökonomische Modelle verwendet, um das Verhalten von Märkten, Investitionen und Konsumverhalten zu analysieren. So werden unter anderem Angebot- und Nachfragekurven verwendet, um Preis- und Mengenänderungen in einem Markt vorherzusagen. 

=== Datenmodelle
(( Spezifizieren, wir werden in der Arbeit Tabellen- und Klassendiagramme verwenden))
In einem Datenmodell werden die beiden obigen Konzepte für die Strukturierung von Daten kombiniert. So werden entsprechende Daten in einem Modell dargestellt, um darauf aufbauend eine Anwendung zu entwickeln. 
Dieser Prozess ist vergleichbar mit einem Schaltplan als Basis für ein elektronisches Gerät in der Physik. Der hohe initiale Aufwand wird im späteren Verlauf der Entwicklung einer Anwendung oder eines Systems durch eine Reduktion im Entwicklungs- oder Integrationssaufwand wieder ausgeglichen [Vgl. 3, Seite 4]. 
Ein sehr gutes Datenmodell sorgt so für eine ausgesprochene Transparenz, indem die Zu- sammenhänge zwischen den Daten klar dargestellt werden und somit der Aufbau und die allgemeine Struktur der Anwendung oder des Systems deutlich werden. Dadurch kann sich ein Entwicklerteam fest an einem Datenmodell orientieren und muss nicht grundlegend alles während des Implementierungsprozesses neu durchdenken. Auch im Falle einer Integration müssen die Beziehungen der Daten nicht mehr neu analysiert werden, sondern können dem Datenmodell direkt entnommen werden [Vgl. 3, Seite 5]. 

== GLAC und License Compliance
Das GLAC Framework (Global Adoption Insights and License Compliance) ist ein essenzielles Werkzeug innerhalb der SAP zur Unterstützung des Bereichs Lizenz-Compliance und zur Sicherstellung einer korrekten Lizenznutzung durch die Kunden. (was ist korrekte Lizenz Nutzung: keine Nutzung, Übernutzung…) Dieses Framework ermöglicht es, die Nutzung von SAP-Produkten mit den vertraglich vereinbarten Berechtigungen der Kunden zu vergleichen, um potenzielle Lücken in der Lizenz-Compliance zu identifizieren und zu schließen. (siehe Klammer oben)

1. Ziel und Mission des GLAC Frameworks
Die Mission des GLAC Frameworks ist es, Kunden dabei zu unterstützen, die Lizenz-Compliance zu erreichen und aufrechtzuerhalten, während gleichzeitig ein Schutz vor Umsatzverlusten für die SAP gewährleistet wird. Als vertrauenswürdiger Partner der Kunden zielt GLAC darauf ab:

Proaktiv Lizenzlücken zu vermeiden, indem es eine Balance zwischen gekauften und genutzten Lizenzen herstellt.
Potenzielle Risiken und Compliance-Probleme frühzeitig zu erkennen und durch präventive Beratung zu lösen.
Die intellektuellen Eigentumsrechte der SAP zu schützen, indem eine faire und transparente Nutzung der bereitgestellten Software sichergestellt wird.
Das Framework bildet somit eine Grundlage, um strategische Diskussionen über die Lizenzierung und Vertragsgestaltung zu ermöglichen, insbesondere in Fällen von Übernutzung oder nicht ausgeschöpften Lizenzkapazitäten.

2. Struktur und Definition der GLAC-Metriken
Die Grundlage des GLAC Frameworks bilden sogenannte GLAC-Metriken. Diese Metriken gruppieren mehrere SKUs (Stock Keeping Units, also Materialien), die einem Kunden verkauft wurden, und definieren die Berechtigungen für die Nutzung eines bestimmten Produkts. Jede Metrik ist an spezifische Bedingungen geknüpft, die die Nutzung und Berechtigungen festlegen, beispielsweise die Anzahl der Benutzer oder die Zugriffskapazitäten in einem bestimmten Zeitraum.

Ein Beispiel für eine GLAC-Metrik wäre eine Berechtigung für „Analytics Cloud BI Public Edition - Users“, bei der die Anzahl der nutzbaren Benutzer eines BI-Dienstes definiert wird. Die Berechnungen berücksichtigen alle relevanten Bestellpositionen und die jeweilige berechnete Menge, die einem Kunden zusteht.

Die Metriken werden in Zusammenarbeit zwischen dem GLAC-Team und den jeweiligen Produktverantwortlichen entwickelt. Jede Änderung der Metrik wird dokumentiert, sodass eine nachvollziehbare Historie gewährleistet ist.

3. Berechnungsprozess der Lizenz-Compliance
Der Berechnungsprozess zur Überprüfung der Lizenz-Compliance erfolgt auf der Basis von Entitlements (den Kunden zustehenden Berechtigungen) und Consumption (der tatsächlichen Nutzung). Der Prozess ist speziell darauf ausgelegt, Lücken in der Lizenznutzung zu erkennen.

Die Berechnungen erfolgen täglich und basieren auf einem Datenbestand, der kontinuierlich aktualisiert wird. Dabei wird jeder Kunde und jede Metrik für ein definiertes Berichtsdatum analysiert. Dieses Datum repräsentiert den Moment, zu dem die vertraglichen Bedingungen überprüft werden. So wird eine historische Übersicht der Lizenz-Compliance geschaffen, die auch Rückschlüsse auf potenzielle Risiken bei Verlängerungen oder Vertragsanpassungen ermöglicht.

Eine Besonderheit des GLAC Frameworks ist, dass die Berechnung auf einer aggregierten Ebene erfolgt, die sich auf den Business Partner und die jeweilige Metrik konzentriert. Eine detaillierte Drill-Down-Analyse auf SKU- oder Materialebene ist nicht möglich, da die Berechnungen die Gesamtheit der vertraglich zugesicherten Daten und deren Nutzung reflektieren.

4. Datenquellen und Aktualität
Die Datenbasis des GLAC Frameworks setzt sich aus zwei Hauptquellen zusammen: den vertraglichen Berechtigungen (Entitlements), die aus dem SAP-CRM-System stammen, und den Nutzungsdaten (Consumption), die aus verschiedenen Kunden- und internen Systemen aggregiert werden. Während die Entitlement-Daten durch tägliche Synchronisation relativ aktuell sind, kann die Aktualität der Nutzungsdaten variieren.

Dies liegt daran, dass die Nutzungsdaten aus unterschiedlichen Kanälen stammen, die unterschiedlich häufig aktualisiert werden. Beispielsweise werden einige Metriken nur einmal monatlich in den Kundensystemen erfasst, da sie besonders rechenintensiv sind. Auch die Anzahl der Systeme in der Datenverarbeitungskette beeinflusst die Dauer, bis neue Nutzungsdaten zur Verfügung stehen.

5. Einschränkungen und Abgrenzungen
Das GLAC Framework konzentriert sich ausschließlich auf die subscription-basierte Nutzung von SAP-Produkten. Dies bedeutet, dass kommerzielle Modelle, die rein nutzungsbasiert sind, wie etwa „Pay-as-you-go“ (PAYG) oder „Cloud Enterprise Agreements“ (CPEA), nicht direkt in den Compliance-Berechnungen berücksichtigt werden. Diese Modelle folgen anderen Regeln, bei denen Übernutzungen automatisch abgerechnet werden, sodass keine klassischen Compliance-Lücken entstehen.

Darüber hinaus gibt es Einschränkungen bei der Granularität der Daten. Da die Berechnungen auf aggregierten Zahlen basieren, können detaillierte Analysen einzelner Produkte oder Verbrauchseinheiten (z. B. eines bestimmten Tenants) nicht durchgeführt werden. Für eine funktionale Analyse der Nutzung wird daher auf andere Werkzeuge wie den Usage Analyzer verwiesen.

6. Bedeutung für die Lizenz-Compliance
Das GLAC Framework hat eine strategische Bedeutung für die Lizenzverwaltung innerhalb der SAP und für deren Kunden. Es schafft Transparenz über die Nutzung von Softwareprodukten und hilft, Risiken durch Übernutzung zu minimieren. Gleichzeitig bildet es die Grundlage für Verhandlungen über Vertragsanpassungen und Lizenzverlängerungen.

Durch die automatisierten Berechnungen und die tägliche Aktualisierung der Daten ist es möglich, zeitnah auf Veränderungen im Nutzungsverhalten der Kunden zu reagieren. So können potenzielle Lücken in der Compliance frühzeitig erkannt und durch gezielte Maßnahmen geschlossen werden. Dies schützt nicht nur die Interessen der SAP, sondern bietet auch den Kunden einen klaren Mehrwert, indem sie ihre Lizenznutzung optimieren und Risiken minimieren können.

7. Fazit
Das GLAC Framework ist ein integraler Bestandteil des Lizenzmanagements bei der SAP. Mit seiner Fähigkeit, die Nutzung und Berechtigungen der Kunden systematisch zu analysieren, leistet es einen wesentlichen Beitrag zur Sicherstellung der Lizenz-Compliance und zum Schutz des geistigen Eigentums der SAP. Gleichzeitig ermöglicht es den Kunden, ihre Lizenzstrategie zu optimieren und eine faire Nutzung der SAP-Produkte zu gewährleisten.

= Wissenschaftiche Methodik
== Auswahl und Erklärung der Methodik
In der vorliegenden Projektarbeit wird die Methode der Anforderungsanalyse verwendet. 
Bei der Anforderungsanalyse handelt es sich um eine Methode, welche dafür verwendet werden kann, um die unter Umständen nur vagen Wünsche und Bedürfnisse eines Kunden oder Sta- keholders in handfeste Anforderungen für die spätere Entwicklung zu transformieren #cite(<Agile_objektorientierte_Anforderungsanalyse>, supplement: "S.1")
 . Sie ist ein grundlegender Bestandteil eines jeden Entwicklungsprozesses und stellt je nach Ausführlichkeit einen entsprechend genauen Rahmen für die darauffolgende Entwicklung der definierten Anwendung zur Verfügung. 
Die Systemanforderungen lassen sich in funktionale und nicht-funktionale Anforderungen un- terteilen. Hierbei beziehen sich die nicht-funktionalen Anforderungen auf die Qualität eines Systems in Bezug auf Funktionalität, Performanz und Effizienz, Kompatibilität, Benutzbarkeit, Zuverlässigkeit, Sicherheit, Wartbarkeit und Übertragbarkeit [Vgl. 10, Seite 106]. 
Auf der anderen Seite legen die funktionalen Anforderungen das benötigte Verhalten oder Ergebnis eines Systems fest, das für die Erfüllung der Aufgabenstellung der Kunden oder Stakeholder notwendig ist [Vgl. 10, Seite 120]. 
Um eine volle Abdeckung aller Anforderungen zu gewährleisten, müssen sowohl die funktiona- len als auch die nicht-funktionalen Anforderungen berücksichtigt werden. Nur dann wird eine Anwendung sowohl benutzerfreundlich als auch funktional. 
Für eine vollständige Anforderungsanalyse sind insgesamt sechs Schritte notwendig. 

#figure(caption:
[Schritte der Anforderungsanalyse (Eigene Darstellung)], image(width: 11cm,
"assets/Schritte der Anforderungsanalyse.png"
))
<Schritte_der_Anforderungsanalyse>

Als erstes werden die Anforderungen der Kunden und Stakeholder ermittelt. Dies kann entwe- der durch ein direktes Gespräch oder über ein offizielles Dokument passieren [Vgl. 10, Seite 27]. Am Beispiel der agilen Softwareentwicklung mit Scrum werden funktionale Anforderungen von einer Epic/Story, die von einem Kunden oder Stakeholder stammt, über einen Requirements Engineer und anschließend über den Product Owner als Backlog Item für das Scrum-Team festgelegt [Vgl. 10, Seite 136]. 
Dann wird auf Basis dessen ein Dokument erstellt, indem alle vagen Anforderungen formell festgehalten werden. Diese werden außerdem immer in einem dynamischen Prozess spezifiziert und erweitert [Vgl. 10, Seite 81 f.]. Eine weitere Option ist die Dokumentation mithilfe ei- nes Modells, beispielsweise eines Klassendiagramms, um verschiedene Klassen mitsamt deren Attributen und Methoden darzustellen. In diesem Beispiel können die Struktur und die Bezie- hungen zwischen den Klassen deutlich übersichtlicher als in einer reinen textlichen Darstellung abgebildet werden [Vgl. 10, Seite 101]. 
Im nächsten Schritt werden vorhandenen Anforderungen geprüft, verifiziert und validiert [Vgl. 10, Seite 177]. Dieser Prozess funktioniert am besten in enger Zusammenarbeit mit dem 

Entwicklerteam, da so alle ersten Fragen noch vor dem Beginn der Implementierung geklärt werden können. Außerdem kann die Möglichkeit der Umsetzung dieser Anforderungen be- stätigt werden, sodass deswegen im späteren Verlauf der Entwicklung keine Schwierigkeiten mehr auftreten. Eventuelle Lücken und Fehler können hier direkt geschlossen und ausgebes- sert werden. Am Beispiel der agilen Softwareentwicklung mit Scrum findet die Prüfung der Anforderungen beim Product Backlog Refinement statt [Vgl. 10, Seite 178]. 
Als Nächstes werden die vorhandenen Anforderungen an verschiedenen Kriterien priorisiert, wodurch eine Reihenfolge entsteht, nach welcher die Anforderungen bei der Entwicklung im- plementiert werden [Vgl. 10, Seite 205]. Hierbei sind beispielsweise grundlegende Systemfunk- tionalitäten deutlich wichtiger als die Integration von Plugins für die Einbindung von sozialen Medien. Weitere Kriterien könnten auch die Dringlichkeit, das Nutzen-Kosten-Verhältnis oder der durch die Konkurrenz ausgelöste Druck sein [Vgl. 10, Seite 206]. 
Bei der Konsolidierung geht es darum, Widersprüche in den Anforderungen zu identifizieren und aufzulösen [Vgl. 10, Seite 233]. So wird sichergestellt, dass Inkonsistenzen und Konflikte in den Anforderungen der Beteiligten beseitigt werden, sowie dass alle ein korrektes und einheitliches Verständnis der Anforderungen haben [Vgl. 10, Seite 235]. 
Der letzte Schritt besteht in der Verwaltung und Änderung aller bereits vorhandenen Anfor- derungen. Hierbei geht es um das kontinuierliche Austauschen und Aktualisieren von Anforde- rungen, wenn sich diese über die Zeit der Entwicklung hin ändern, sodass die Dokumentation immer aktuell und korrekt bleibt [Vgl. 10, Seite 255]. 

= Ist-Zustand 
== Datenherkunft und Framework
Das bestehende Reporting-Tool im Rahmen des GLAC Frameworks nutzt Nutzungsdaten sowie Vertrags- und Kundendaten, um Analysen zur Lizenz-Compliance durchzuführen. Diese Datenquellen sind essenziell für die Bewertung der tatsächlichen Nutzung von SAP-Produkten im Vergleich zu den vertraglichen Berechtigungen der Kunden.
Nutzungsdaten liefern Informationen zur tatsächlichen Verwendung von SAP-Services durch die Kunden. Die Daten werden aus verschiedenen Quellsystemen aggregiert, die jedoch unterschiedliche Aktualisierungsfrequenzen aufweisen. Während einige Metriken nahezu in Echtzeit bereitgestellt werden, (Bereitstellung der Daten kann in unterschudlichen Frequenzen erfolgen: echtzeit, wöchentlich, monatlich, Wann im Monat: Ende usw.),. 
(Diese Inkonsistenz führt dazu, dass potenzielle Lücken in der Lizenznutzung nicht immer rechtzeitig erkannt werden können.) Erst bei Zielsetzung oder Ist-Analyse verwenden
Vertrags- und Kundendaten umfassen die vertraglich vereinbarten Berechtigungen, die durch GLAC-Metriken strukturiert werden. Diese Metriken definieren, welche Ressourcen und in welchem Umfang diese einem Kunden zur Verfügung stehen. (umformulieren) Ergänzt werden diese Informationen durch Daten zur Kundenorganisation und den Geschäftspartnerstrukturen, die für die korrekte Zuordnung der Daten und die Erstellung aussagekräftiger Berichte unverzichtbar sind.
(Die im theorie Kapitel beschriebenen GLAC Metriken verknüpfen diese Nutzungsdaten mit den Vertragsinformationen
Architektur und Datenfluss:
Die Datenarchitektur des Frühwarnsystems umfasst mehrere Ebenen, die den Fluss der Daten von der Quelle bis zur Bereitstellung in Berichten und Dashboards strukturieren:
1.	Daten aus Quellsystemen wie CRM-Systemen, Kundensystemen oder Monitoring-Plattformen werden erfasst.
2.	Ein zentraler Aggregationsprozess fasst die Daten zusammen und bereitet sie für die Analyse im Reporting-Tool auf. (eigentliche License Compliance Berechnung)
3.	Prozess der Validerung zur Identifikation von Lizenzverlertzungen oder Auffälligkeit 
4.	Die aggregierten Daten werden in Dashboards oder strukturierten Berichten präsentiert, die den internen Stakeholdern zur Verfügung stehen.
(Ein Diagramm des Datenflusses verdeutlicht die Schwachstellen des Tools:)

Probleme an andere Stelle einordnen:
•	Frequenzprobleme: Nutzungsdaten verschiedener Quellen werden mit unterschiedlicher Geschwindigkeit bereitgestellt, was die Aktualität der Analysen beeinträchtigt.
•	Begrenzte Detailtiefe: Die hohe Aggregationsebene der Daten schränkt die Möglichkeit ein, detaillierte Analysen auf Ebene einzelner Produkte oder Tenants durchzuführen.
Diese Schwachstellen sind Haupthindernisse für eine umfassende und präzise Lizenz-Compliance-Analyse und müssen im bestehenden Tool optimiert werden.

== Analyse der Kudenanforderungen
(( Aufpassen, nur eine Bezeichnung für die Anforderungsgeber (GLAC, interne Kunden, Kunden… muss in der ganzen Arbeit berücksichtigt werden))
Die Ermittlung und Analyse der Kundenanforderungen erfolgt durch eine in Kapitel 2.4 beschriebenen Anforderungsanalyse/Methodik.
1.	Weg zur Beschaffung der Anforderungen beschreiben, geführte Interviews und Mails… Notizen einbringen / zeigen “..Die Ergebnisse der Anforderungsanalyse bilden die Grundlage für die Optimierungsmaßnahmen…. Und weiter..”
2.	Auflistung unserer Ergebnisse aus den Interviews und Mails (formulierung wie du möchtest):
Zusätzlich wurde eine detaillierte Untersuchung der bestehenden Datenarchitektur und des zugrunde liegenden Frameworks durchgeführt. Die Untersuchung beinhaltete Diagramme und Modelle der aktuellen Architektur, welche im weiteren Verlauf der Arbeit zum besseren Verständnis beitragen sollen.
Nach der Analyse wurden die Maßnahmen priorisiert, wobei der Schwerpunkt auf den kritischsten Schwachstellen lag.
Vereinfachtes Schaubild
Nicht alle potenziellen Optimierungen konnten im Rahmen des Projekts berücksichtigt werden. So wurde die … Themen stehen oben, oder werden noch mal umbenannt, genaue Fomulierung kannst du dann am Ende machen..
Oder das Ende
Ein Tenant representiert die Systeminstanz auf der die SAP-Software vom Kunden genutzt wird. (einhängen am Anfang der Anforderungen oder bei GLAC Grundlagen, wenn nur einmal verwendet, dann Tenant nicht nutzen)
(Die 8 Punkte der Interviews in bsp. 3 Kategorien ordnen  unterscheidung in funktionale und technische Anforderungen)
Die Anforderungen für dieses Projekt wurden durch geführte Interviews und den Austausch per E-Mail mit dem GLAC-Team ermittelt. Die Ergebnisse der Anforderungsanalyse bilden die Grundlage für die vorgeschlagenen Optimierungsmaßnahmen. Nachfolgend werden die identifizierten Findings und entsprechende Vorschläge zur Lösung aufgeführt:

#set par(leading: 1em, justify: false);
#figure(caption: "Anforderungen BTP - In Anlehnung an den Konfigurationsguide", table(
  columns: (auto,auto,auto,auto),
  inset: 10pt,
  align: left,
  table.header([*Anforderung*], [*Beschreibung*],[*Auswirkung*],[*Mögliche Lösung*]),
  text("Unzureichende Datengranularität"),
  text("Die Daten sind zu aggregiert, um Analysen auf Kundenebene durchzuführen. Es fehlen Details, um Kundenverhalten oder -nutzung präzise zu bewerten. Zeitliche Vergleiche und individuelle Analysen sind nicht möglich."),
  text("Wichtige Analysen von umsatzstarken Kunden mit hohem ACV können nicht priorisiert werden. Die Identifizierung von Kunden ohne Nutzung sind nicht möglich. Dies gestattet kein Einblick in die Beweggründe der Beendigung des Vertragsverhältnis."),
  text("Erweiterung des Datenmodells zur Erfassung granularer Daten auf Kunden- und Vertragsebene."),
  text(""),
  text(""),
  text(""),
  text(""),
  text(""),
))<btp-voraussetzungen>
#set par(leading: 1.5em, justify: false);

Finding	Beschreibung	Auswirkung	Mögliche Lösung
Unzureichende Datengranularität	Die Daten sind zu aggregiert, um Analysen auf Kundenebene durchzuführen. Es fehlen Details, um Kundenverhalten oder -nutzung präzise zu bewerten. Zeitliche Vergleiche und individuelle Analysen sind nicht möglich.	Wichtige Analysen von umsatzstarken Kunden mit hohem ACV können nicht priorisiert werden. Die Identifizierung von Kunden ohne Nutzung sind nicht möglich. Dies gestattet kein Einblick in die Beweggründe der Beendigung des Vertragsverhältnis.	Erweiterung des Datenmodells zur Erfassung granularer Daten auf Kunden- und Vertragsebene.
Schwache Datenvisualisierung	Die derzeitigen Visualisierungsoptionen sind unzureichend und machen Muster, Anomalien oder Trends schwer erkennbar. Intuitive Darstellungen und Hinweise auf kritische Entwicklungen sind unzureichend.	Fehlende Dateninterpretationen führen zu Verzögerungen bei Entscheidungen und einem erhöhten Risiko von Fehleinschätzungen.	Entwicklung neuer Visualisierungen mit Warnmeldungen und anpassbaren Dashboards.
Mangel an Metadaten zur Datenverfügbarkeit	Informationen über die Bereitstellungszeitpunkte von Daten fehlen. Unterschiedliche Zeitpunkte der Datenlieferung zwischen Tenants erschweren die Analyse von Ausfällen und Unregelmäßigkeiten.	Die Nachvollziehbarkeit und Analyse von Datenlücken oder -fehlern wird stark eingeschränkt. Zudem fehlen Hinweise darauf, ob Abweichungen geplant oder ungeplant sind.	Einführung eines erweiterten Metadatenmodells.
Hybride Lizenzmodelle erschweren die Analyse	Hybride Lizenzmodelle (feste Laufzeiten + flexible Nutzungsverträge) begrenzen automatisch die Übernutzung. Dies erschwert die Auswertung und führt zu mehr Datenvolumen, das manuell geprüft werden muss.	Die Aussagekraft der Analysen ist eingeschränkt, da Kunden mit hybriden und sortenreinen Verträgen nicht getrennt werden können.	Kennzeichnung hybrider Modelle und Filteroptionen in Dashboards zur Vereinfachung der Analysen.
Tägliche Benachrichtigungen und Dashboards	Es fehlt ein System zur Bereitstellung und Übermittlung der gewonnen Daten des Evaluierungsframeworks für relevante Nutzergruppen.	Verzögerte Problemerkennung und eingeschränkte Handlungsfähigkeit führen zu erhöhten geschäftlichen Risiken.	Entwicklung eines Dashboards und eines Benachrichtigungssystems für tägliche Updates und Warnungen.
Priorisierung: Balkendiagramm von oben nach unten mit möglicher Aufwandseinschätzung (auf x-achse der Aufwand Verhätnis, keine Stunden, auf y-achse die Prio)

Diese Tabelle fasst die zentralen Anforderungen und Herausforderungen zusammen, die für die Optimierung des Datenmanagements und der Analyse entscheidend sind. Die vorgeschlagenen Lösungen dienen als Ausgangspunkt für die weitere Umsetzung.

= Umsetzung und Realiserung
Einfach mal ideen die passiert sein könnten:
In diesem Kapitel wird die konkrete Umsetzung beschrieben, die im Rahmen der Projektarbeit durchgeführt wurde, um die Schwachstellen des bestehenden Reporting-Tools zu beheben. Dabei wurden die Anforderungen aus der vorherigen Analysephase gezielt adressiert.
4.1 Überarbeitung des Datenmodells
Ein zentrales Ziel der Umsetzung war die Anpassung des bestehenden Datenmodells. Dazu wurde ein neues Modell entwickelt, das die bisherige starre Struktur auflöst und eine detailliertere Granularität ermöglicht.
Konkret durchgeführte Maßnahmen:
•	Neugestaltung der Tabellenstruktur:
Ein Tabellendiagramm wurde erstellt, das die Verknüpfung zwischen Kunden, Produkten und Lizenzmetriken detailliert darstellt. Hierbei wurden zusätzliche Tabellen für Tenants, Nutzungsmetriken und flexible Lizenzmodelle hinzugefügt.
•	Integration neuer Attribute:
Um hybride Lizenzmodelle abzubilden, wurden neue Felder wie Nutzungsgrenzen, Vertragsarten und dynamische Berechtigungen in das Datenmodell aufgenommen. Diese Erweiterungen ermöglichen eine präzisere Lizenzprüfung und Analyse.
•	Anpassung der Aggregationslogik:
Die Aggregationsprozesse wurden so verändert, dass Daten nicht mehr ausschließlich auf hoher Ebene zusammengefasst werden. Stattdessen erfolgt die Aggregation jetzt auf Produkt- und Tenantebene, wodurch detaillierte Analysen möglich wurden.
4.2 Verbesserung der Datenaktualität
Ein wesentlicher Fokus lag auf der Vereinheitlichung der Aktualisierungsfrequenzen der verschiedenen Datenquellen. Dazu wurde ein neuer Synchronisationsprozess implementiert.
Umgesetzte Schritte:
•	Standardisierung der Datenlieferfrequenzen:
Für alle Quellsysteme wurden einheitliche Zeitpläne definiert, die tägliche, wöchentliche und monatliche Updates synchronisieren. Ein Monitoring-System wurde eingerichtet, um die Konsistenz der Datenflüsse sicherzustellen.
•	Implementierung eines zentralen Daten-Hubs:
Alle Datenquellen wurden über eine zentrale Aggregationspipeline konsolidiert. Diese Pipeline verarbeitet Echtzeitdaten und periodische Updates, priorisiert jedoch kritische Datenquellen für die Analyse.
•	Fehlerhandling und Überwachung:
Ein Logging- und Benachrichtigungssystem wurde eingerichtet, um bei Verzögerungen oder fehlenden Updates Warnungen auszugeben. Dadurch konnte die Datenaktualität signifikant verbessert werden.
4.3 Anpassung der Berichtsstruktur
Um detailliertere Einblicke auf Produkt- und Tenantebene zu ermöglichen, wurden die Berichts- und Dashboardstrukturen überarbeitet.
Konkret umgesetzte Änderungen:
•	Erweiterung der Berichtsformate:
Neue Berichtstypen wurden eingeführt, die Nutzungsdaten auf Ebene einzelner Produkte und Tenants darstellen. Insbesondere wurden Berichte für spezifische Lizenztypen und monetäre Kennzahlen wie den Annual Contract Value (ACV) entwickelt.
•	Verbesserung der Visualisierungen:
Dashboards wurden mit interaktiven Filtern und Drilldown-Funktionen ausgestattet, die den Nutzern erlauben, spezifische Datenbereiche detaillierter zu untersuchen. Neue Diagrammtypen, wie Heatmaps und Zeitreihendiagramme, wurden integriert, um Muster in der Lizenznutzung besser erkennbar zu machen.
•	Optimierung der Performance:
Durch die Neustrukturierung der Datenbanken und die Implementierung effizienter Query-Mechanismen wurde die Ladezeit der Berichte erheblich reduziert.
4.4 Validierung der Umsetzung
Nach der Implementierung wurden umfangreiche Tests durchgeführt, um sicherzustellen, dass die neuen Funktionen den Anforderungen entsprechen und die gewünschten Verbesserungen liefern.
Durchgeführte Tests:
•	Simulation mit Echtdaten:
Historische Daten aus verschiedenen Quellsystemen wurden verwendet, um die neuen Analysefunktionen zu testen. Dabei wurde die Konsistenz der Ergebnisse mit den alten Berichten verglichen.
•	Validierung der Granularität:
Die neuen Berichte wurden auf ihre Fähigkeit geprüft, detaillierte Informationen auf Tenant- und Produktebene bereitzustellen. Die Ergebnisse zeigten, dass die neue Struktur präzisere und detailliertere Auswertungen ermöglicht.
•	Feedback der Stakeholder:
Die entwickelten Berichte und Dashboards wurden intern vorgestellt und anhand von Nutzerfeedback weiter verfeinert. Besondere Aufmerksamkeit galt hierbei der Usability der Dashboards.
4.5 Ergebnisse der Umsetzung (Wahrscheinlich im späteren Kapitel)
Die umgesetzten Maßnahmen haben die Funktionalität und Genauigkeit des Reporting-Tools erheblich verbessert. Die wichtigsten Ergebnisse umfassen:
•	Verbessertes Datenmodell:
Die neue Struktur ermöglicht detaillierte Analysen auf Produkt- und Tenantebene sowie die Abbildung hybrider Lizenzmodelle.
•	Höhere Datenaktualität:
Durch die Standardisierung der Datenlieferfrequenzen und die Einführung eines zentralen Daten-Hubs konnte die Konsistenz und Verfügbarkeit der Daten sichergestellt werden.
•	Erweiterte Analysemöglichkeiten:
Die neuen Berichte und Dashboards bieten tiefere Einblicke und unterstützen strategische Entscheidungen durch präzisere und flexiblere Analysen.
Diese Optimierungen schaffen eine Grundlage für zukünftige Erweiterungen und gewährleisten, dass das Reporting-Tool auch für komplexe Anforderungen geeignet ist.

= Evaluierung der Ergebnisse

= Zusammenfassung
== Fazit
== Kritische Reflexion der Arbeit
== Ausblick

// #set par(leading: 1em, justify: false);
//   #figure(caption: "Abgeleitete Rahmenbedingungen zur Methodenwahl", table(
//     columns: (10em, auto),
//     inset: 8pt,
//     align: horizon,
//     table.header(
//       [*Anforderung*], [*Beschreibung*],
//     ),
//     [#align(left)[*geringe Komplexität*]],
//       [#align(left)[Durch wenig bis keine Vorerfahrung bei der Erhebung von Anforderungen in der #acr("SE") sollen die Methoden ohne Vorerfahrung anhand ihrer Beschreibung in diesem Abschnitt anwendbar sein]],
//     [#align(left)[*Low-Code Implementierung*]],
//       [#align(left)[Ermöglicht die Entwicklung von #acrpl("App") mit wenig bis keiner Vorerfahrung]],
//     [#align(left)[*feststehende Gruppe an Stakeholdern*]],
//       [#align(left)[Durch die feste Verankerung der Teammitglieder in ihrer Abteilung und den kleinen Teamgrößen im Bereich der #acr("TAC") werden die Methoden darauf angepasst.]],
//     [#align(left)[*Individualsoftware-Design*]],
//       [#align(left)[Durch die rein interne Nutzung des Tools ist die Lösung losgelöst von vorgeschriebenen Design-Guidelines der SAP]]
//   ))<RahmenbedingungenTabelle>
//   #set par(leading: 1.5em, justify: true);

//   (vgl. #cite(<sap2024rise>, form: "author"), #cite(<sap2024rise>, form: "year") ; 
//   vgl. #cite(<sap2024grow>, form: "author"), #cite(<sap2024grow>, form: "year") ;
//   vgl. #cite(<Lonnemann2022RISE>, form: "author"), #cite(<Lonnemann2022RISE>, form: "year"), S. 44f.)

// #figure(caption: "Aktivitäten und Ergebnisse des RE " + cite(<Ebert2022SystematischeRE>, form: "normal"), image("assets/REProcess.png"))<REProcess>