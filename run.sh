#!/bin/bash
function get_distro() {
    if [[ -f /etc/os-release ]]
    then
        source /etc/os-release
        echo $ID
    else
        uname
    fi
}
case $(get_distro) in
    raspbian)
        echo This is Raspbian
        ;;
    fedora)
        sudo dnf -y remove abrt f33-backgrounds-gnome nm-connection-editor mozilla-filesystem chrome-gnome-shell quota* nmap-ncat virtualbox-guest-additions spice-vdagent nfs-utils teamd tcpdump sgpio ImageMagick* adcli libreoffice* lvm2 qemu-guest-agent hyperv* gnome-classic* baobab *kkc* *zhuyin* *pinyin* *evince* *yelp* ModemManager fedora-bookmarks fedora-chromium-config fedora-workstation-backgrounds gnome-tour gnome-themes-extra gnome-shell-extension-background-logo gnome-screenshot gnome-remote-desktop gnome-font-viewer gnome-calculator gnome-backgrounds NetworkManager-pptp-gnome NetworkManager-ssh-gnome NetworkManager-openconnect-gnome NetworkManager-openvpn-gnome NetworkManager-vpnc-gnome podman*  *libvirt* open-vm* *speech* sos totem gnome-characters firefox eog openssh-server dmidecode xorg-x11-drv-vmware xorg-x11-drv-amdgpu yajl words ibus-hangui vino openh264 twolame-libs realmd rsync net-snmp-libs net-tools traceroute mtr geolite2* gnome-boxes gnome-disk-utility gedit gnome-calendar cheese gnome-contacts rythmbox gnome-screenshot gnome-maps gnome-weather gnome-logs ibus-typing-booster *m17n* gnome-clocks gnome-color-manager mlocate cyrus-sasl-plain cyrus-sasl-gssapi sssd* gnome-user* dos2unix kpartx rng-tools ppp* ntfs* xfs* tracker* thermald *perl* gnome-shell-extension-apps-menu gnome-shell-extension-horizontal-workspaces gnome-shell-extension-launch-new-instance gnome-shell-extension-places-menu gnome-shell-extension-window-list file-roller* sane* simple-scan *hangul* 
        ;;
    ubuntu)
        sudo apt remove --purge gnome-mahjongg gnome-mines gnome-sudoku aisleriot thunderbird* rhythmbox* deja-dup libreoffice* totem cheese transmission* usb-creator* shotwell* remmina* gnome-todo gnome-shell-extension-ubuntu-dock pidgin hexchat simple-scan eog gimp -y
        ;;
    debian)
        echo This is debian
        ;;
esac