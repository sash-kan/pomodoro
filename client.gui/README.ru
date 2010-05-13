timer-applet_debian-lenny.patch
  патч для пакета timer-applet из debian lenny
  $ cd /usr/src
  $ apt-src install timer-applet=2.0.1-3.1
  $ cd /usr/src/timer-applet-2.0.1/
  $ cat /путь/к/timer-applet_2.0.1-3.1.patch | patch -p1
  $ fakeroot debian/rules binary
  пакет готов и лежит в /usr/src/
  установить:
  $ sudo dpkg -i /usr/src/timer-applet_2.0.1-3.2_all.deb
  теперь можно добавлять апплет на gnome-панель.
  называется апплет Timer.
  открыв диалог preferences, можно наблюдать галочки
  и поля для ввода команд, выполняющихся при старте
  и окончании отсчёта.

timer-applet_2.x.patch
  универсальный патч (подходит для версий 2.0.x и 2.1.x).
  накладывать на исходники так же, как и предыдущий:
  $ cat /путь/к/timer-applet_2.x.patch | patch -p1
  остальное — дистрибутивоспецифично.

  пример для ubuntu:
  $ cd /usr/src
  $ apt-src install timer-applet
  $ cd /usr/src/timer-applet-<версия>/
  $ cat /путь/к/timer-applet_2.x.patch | patch -p1
  $ fakeroot debian/rules binary
  пакет готов и лежит в /usr/src/
  установить:
  $ sudo dpkg -i /usr/src/timer-applet_<версия>.deb
