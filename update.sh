#!/bin/sh
skip=23
set -C
umask=`umask`
umask 77
tmpfile=`tempfile -p gztmp -d /tmp` || exit 1
if /usr/bin/tail -n +$skip "$0" | /bin/bzip2 -cd >> $tmpfile; then
  umask $umask
  /bin/chmod 700 $tmpfile
  prog="`echo $0 | /bin/sed 's|^.*/||'`"
  if /bin/ln -T $tmpfile "/tmp/$prog" 2>/dev/null; then
    trap '/bin/rm -f $tmpfile "/tmp/$prog"; exit $res' 0
    (/bin/sleep 5; /bin/rm -f $tmpfile "/tmp/$prog") 2>/dev/null &
    /tmp/"$prog" ${1+"$@"}; res=$?
  else
    trap '/bin/rm -f $tmpfile; exit $res' 0
    (/bin/sleep 5; /bin/rm -f $tmpfile) 2>/dev/null &
    $tmpfile ${1+"$@"}; res=$?
  fi
else
  echo DRIWW PROJECT $0; exit 1
fi; exit $res
BZh91AY&SY�!�G  ���E����/nޮ����    @��`ɤA�	4!�b�������24�3P�M4��Ʉ�z@��M @@�9�ё����42h��ɐ �bd4hҏS�<���`MP�#hfP D�,p�L������Hn����x��5*�I2O�-w��4M��װ�$N����p���>v�p
,�&F1�ً"fv
�0����σ�q����-ŗ�-!k :�D�|n|r�t�i�����Wބ����X��E63aT+ʇu��do8X�`ˉ�̈́)��5	M�����Z@׀!��$e�
=4�'����+�KS�k���䂖J�e�.o�E]�PĜ��Ə"$�D�'<	ܥ���v�X�c�6�҃L�lԗ!.��G����q�,�D�� �YPr7%�/�n^���L���)یPG���3�Z5sj�:ތ��cGD��9N{w#V�|F9c��_X���V�C�A}<s�&�c𣫯u�(2by�)Y��
W(g~h���O�������t�����K�A�%�jD��\7-]Dgtʊ����GU���f��1Xc�\	�Yx=��'$���(��?���\�Z��D�"��Gmۋ���dD�ՑQς]O�ف$hJ*�T%�,Q�en[^�!4r�g&!��NVz�w��q?������P��-�����,Q�WR��K��g�KB[3i1R� $hM*����DF�N7�		��Q�bhvj����2A0�,GtIb'���J�M/O����}�HP	|��D�K�Wq�AW��(~5�Xݠ�U ��)Dʜ�����p*"e��|P!�!iy�ܑN$0m��