# iohsite
## Die Seite der Isle of Hope Corporation im MMO Star Citizen

Dies ist das Repository unserer in [Middleman](https://middlemanapp.com/) erstellten Homepage.

Middleman ist ein in Ruby geschriebenes Tool, um statische Webseiten (im Gegensatz zu Systemen wie Wordpress)
zu generieren.

Um es benutzen zu können, braucht man Linux und Ruby. Um damit in diesem Rahmen arbeiten zu
können (eingecheckt auf Github), benötigt man außer ein wenig Wissen über Middleman auch noch etwas Erfahrung mit der
Versionsverwaltung [git](http://www.martin.cc/linux/git-primer).

Wer schon ein bestehendes Linux-System hat, kann den folgenden Schritt überspringen.

Wer dazu über eine bestehende Ruby-Umgebung verfügt, kann den danach folgenden Schritt
ebenfalls überspringen.

### Linux-Subsystem auf Windows einrichten (ab Windows 10 Creators Update)

Die Einrichtung des Subsystems wird [dort](https://www.computerwoche.de/a/windows-10-subsystem-fuer-linux-wsl-einrichten,3277816) oder
[dort](https://msdn.microsoft.com/de-de/commandline/wsl/install_guide) beschrieben.

Am Ende sollte man die **Bash-Shell** als Punkt in seinem Windows-Startmenü finden.

Das Subsystem ist eigentlich ein Ubuntu-Linux, weswegen man es auch mit `apt-get update && apt-get dist-upgrade` auf den neuesten
Stand bringen kann. Weitere Informationen finden sich im [Ubuntu-Wiki](https://wiki.ubuntuusers.de/Startseite/).

### Ruby-Umgebung installieren (in einer Bash-Shell)

Notwendige Linux-Pakete als Admin installieren:

`sudo apt-get install -y build-essential git libreadline-dev libssl-dev zlib1g-dev nodejs`

rbenv ist ein cleveres Werkzeug, um Ruby-Installation zu managen.
Ich benutze es gerne, um Ruby im Verzeichnis des Benutzers einzurichten.
So gibt es keine Zusammenstöße mit systemweit installieren Versionen.

Installieren:

`git clone git://github.com/sstephenson/rbenv.git ~/.rbenv`

`git clone git://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build`

Zum Pfad hinzufügen:

`echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bash_profile`

`echo 'eval "$(rbenv init -)"' >> ~/.bash_profile`

Shell mit erweitertem Pfad starten:

`exec $SHELL -l`

Nun können wir rbenv benutzen, um Ruby zu installieren:

Verfügbare Versionen anzeigen:

`rbenv install --list`

Üblicherweise kann die neueste Version installiert werden (aktuell 2.4.1):

`rbenv install 2.4.1`

Verknüpfungen von rbenv aktualisieren (notwendig, damit die Magie von rbenv funktioniert):

`rbenv rehash`

Unsere Version verfügbar machen:

`rbenv global 2.4.1`

Überprüfen:

`ruby -v`

Standardwerkzeug zur Bibliotheksverwaltung in Ruby installieren:

`gem install bundler`

### Loslegen mit iohsite (in einer Bash-Shell)

Dieses Repository clonen:

`git clone https://github.com/sabotrax/iohsite.git`

Benötigte Ruby-Bibliotheken (hier Gem genannt) installieren:

`bundle install`

Middleman starten:

`bundle exec middleman --bind-address=0.0.0.0`

Ab hier kann man sich an die [Dokumentation](https://middlemanapp.com/basics/directory-structure/) von Middleman halten.
