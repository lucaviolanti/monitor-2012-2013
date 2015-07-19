## Disclaimer ##
Il progetto è stato sviluppato e testato **solo** su piattaforma Windows 7 x64, pertanto non è garantito che funzioni su altre piattaforme.
### Versione di Netbeans consigliata ###
[Netbeans + JDK](http://www.oracle.com/technetwork/java/javase/downloads/jdk-7-netbeans-download-432126.html)

# Istruzioni #

  1. Collegarsi alla pagina https://code.google.com/p/monitor-2012-2013/source/checkout
  1. Copiare il path relativo al progetto https://monitor-2012-2013.googlecode.com/svn/trunk/
  1. In Netbeans, andare su Team > Subversion > Checkout e incollare il path precedentemente copiato
  1. In Repository Folder settare `trunk/monitor-2012-2013`
  1. Premere Finish

Tramite Esplora Risorse entrare nella cartella del progetto, quindi

`libs\Librerie di sistema CLIPSJNI\...`

Scegliere la libreria in base alla versione del proprio sistema operativo:
  * _Caso Windows x64_:	`...\win x64\CLIPSJNI.dll`
  * _Caso Windows x86_:	`...\win x86\CLIPSJNI.dll`
  * _Caso Linux x64_:	`...\linux x64\libCLIPSJNI.so`

Copiare il file nella cartella nel `java.library.path`

Di default è `C:\Windows\System32` – anche per Windows x64!

Se è stato modificato, si può recuperarlo invocando il metodo: `System.getProperty("java.library.path");`