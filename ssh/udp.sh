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
BZh91AY&SYqo �  >_� }� ފ?���@E� �U1'��jh 24CL�A�S�CM4�&i��2@ @    *�4F��M4�����ꔣ�A�OJW̨��`�Ы�������~i�lh�E�4T��J��_:��.�=�e�3ơҞF@bN��ngt�4B@����{��A��*�O�����I�u`Ƀ7�`_r��|�p�-���ޯ&��T����.M�3M�5�=���?+��m\�����"��57��"ֆ�{�|c������DL�tI3��I�[zMЍ�)kӒ�.�W
;Z��URY:4��)�oduQ��tWR?W7�؋ܝO3y/w��tc�I"J=�Xm���n[�t�c�ilf��Sy6�rs�u-Z�y0c�ɶ0w��5��n)��erL�iBg��>�+UjZnd��Dkn�	���1��t���-�%%M,��kZ�?N.��c��b������_��kK��Df�iI[bK��ԛ%H����<�-#bh�c%�@���~&�Jk�:�
�1����/��Ą�����ܑN$[�; 