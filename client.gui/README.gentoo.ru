инструкция от fdkit

Ниже прилагается инструкция и ebuild
для дистрибутива linux gentoo
сначала добавляем overlay sunrise
так как именно в нем сидит timer-applet

# layman -a sunrise

# mkdir /var/lib/layman/sunrise/gnome-extra/timer-applet/files

# cp /путь/к/timer-applet_2.x.patch \
  /var/lib/layman/sunrise/gnome-extra/timer-applet/files/

# cp timer-applet-2.1.2.ebuild \
  /var/lib/layman/sunrise/gnome-extra/timer-applet

# cd  /var/lib/layman/sunrise/gnome-extra/timer-applet

# ebuild timer-applet-2.1.2.ebuild digest

# ebuild timer-applet-2.1.2.ebuild manifest

После этих манипуляций апплет можно устанавливать.

# emerge -av timer-applet

//Конструкция ебилда предполагает, что в системе установлен gnome//
