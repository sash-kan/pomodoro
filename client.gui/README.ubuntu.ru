timer-applet_2.x.patch
  универсальный патч (подходит для версий 2.0.x и 2.1.x).
  пример для ubuntu:
  $ cd /usr/src
  $ apt-src install timer-applet
  $ cd /usr/src/timer-applet-<версия>/
  $ cat /путь/к/timer-applet_2.x.patch | patch -p1
  $ fakeroot debian/rules binary
  пакет готов и лежит в /usr/src/
  установить:
  $ sudo dpkg -i /usr/src/timer-applet_<версия>.deb

