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
BZh91AY&SY��A� ������������������PF@�   @ `1>�>����o���л��F���u�}}�{枛�[��`k��*s����t(n�u���klͲ�����lTmL�Z��z�ۨ�k*�������UJ��{n��P�c{C;�P�5�l���Bh	�L�&M�h�U?Jy�A�Sj<�������H����	��4m�zz$�  i���   F� A4�y6���zOS@�  z�� ��44=F��� ��&�� �	�G�#i�(�OQ����   �@��m4 52��M�ʞLԍ�LѢh4   �4� �O�=L�13Q�ꟕ<���� ������� q_,ꊨ5T$�&�u��T(�&����1����pt抃����7��K�䯯��VS�O�V����Ä_��Lw @B�bT��w  ��-]�o�������2'}�~��#iL���0 bf��Tcg���[K/1;(�K�X��;��f���V�M��[�@V����!F��iAlxn�*Q5���x�uP��r"렰���f���[�x���ڌ�7���fD-���h�'W����.�o���X[�e��Z�I����m�Gm5=�j��0e���BܲP�]Ͻ�Sckq�
�ٲ�ˆ1gw�'�^�_{���WCG��Z���)�UL�SW�r��G/�ߓ�ԫH`6��]�y�4I�$���{qטO��ά����`�P�䭼>_a{�[�+6֩ʌ����1�*�
1P3ځ,n�3nf?���I}���ɟd�����%.REJ�;�9�=�ǡ;�]5��9d@��BGG�,��&,'����P �Vr0�"��61���J~�_6�,zL�߱[z�=?Q��S����I:� �;o�[O��+��RV���_
X�XD܈A��u�!��ӵT�f�O�%�w��\�.FYmV柟[�^.���_Xۡ�;N�:���c*��;E�:��8ٍӲ��dm��.r��(�3<.t�������I<�|�#q����z0U@�戚��Ԣ��P�e�zn{z��ջc�*%*��iZO5	���)䳁d��;�>z#���v(�*F~U����ۋ�,�n��0���2-��X^�X|����	�dљ�)�A���&l����w�.����e~Xq|�s�w-�_��Q�
鉬�Z�anV-ĠdC��"�OB�'8���`�N�Ճu�^bK�U`(W�x�	�������q����Ӂ�$P��e��� �+�zQ�A�H[����z�9��m�tN�[��8��o�>�->
g��N�6�J�؛��"KsM�;}ӛ����hKإ!�>��#�F,�*t#PB_� $3�D�&,����4+���5�ml�#h�ƝRm6�Li�XcfEgB��;%r��	
�ZҼ�����io��q{C�@�$;L� ���6 _��l�	D�8͡O�����Suc[5_���wj�R�O�u��5�"n~]�=_7WB�s�Ȑ�B��+�al��f��j�XV�U��335\Sj�	*���T2�\��u,��A:BŁ�ZD��NXUm�XsPŚ%J��5
�y�sO2�#K��d����4�J��õ���L����Z�D�bT䂅 �M�B��1�e�Tn;���"����x����F�maL�N��e��!#�y�&5H�H�JH�����U;���·�/ɱ~:5��-���˩��}�L�|���3i�g[,=ʑ��D1�׺{��fC����A\�S4���Ó��b���q�d�����$�6�B�zތ5Mɒ��N���s�+0A���n��G��M\-ׁ!������#��>�m�a����ئg5��40�;G.O���SL�;&3Տ�^��Փ\xz4H����ôf�m�5�S�	���``ɕҭ��8�����,҃���X[�3��6��z��Q޻�g����vD	E,�g�A>y�<�;DΨv0����k� �`Uz��U�>e8:#���o<�L�*�S<n�R;��#pT,R
��¶��OhyDL9��@�:i�G	cqM����<���=]��	c�!Y�o]:��ѿ�.��j�T��>	"�����.�����S��>ll%����m��w��-�
,,��1�W���A���%Y�d��=�e�%���,���E~���1R"��1n]��g7Go��.+a���r&y�*Q�����uU���	�WU�Xi88��&`fȂ>Ψ��~5�n7BVMW� Z�Zp;ɧ�ߖw2F�̻^�xc9����쟮�:߷�P���M1��r��p7.mq�Օv�r	�t!" S�V�`wz����UT��л%x�ߜ�dg�\�>iՎ�UH��l�ģ~���<�xV�0.�����]�/V! ��~��k�ϣ�sO,?Y�1e����b��ybgǚ
��>�m��mlF�W��S-�7R�\�;j��C��~��&�7�n�~3�Y��o�����QK,��(�a��`+���|bݶ����lQ\G~ʩ��¥L�s���D/+8�j���X�+	�]��. ��y��O�X��ǖ�5�B���^~��ʧ�:z��I�v�8e��W��q��2p��i	"���4�H�ǫ^�� gC�m���r��%2Jcb�z��`��~����Ϩ}���R�jT.ȍUP0��-?�����Gc�l��̪��^�^0.�{QAH�{�fX�z���ϐ*����>&�Qc$����B0�a���L�e��s��Op�s�F�s6�W'6kdv�8y��Sː�m�Z�K�x6���%�#ͤF���6�Y�8�h�cp�����^]n�j�~q��\�/X�'��y7�G�f��Nx:7� �M-)t*���\`HY�Y���H�BB�|]~烪=.]����N����}n�L�[�O�yFo�@���e�Z����8�	�s�C��C��]i�����6���%�@�r��<A���B�D�)���Ml tED�8Q�Q���`�d}�"~ۭ���_�z@o��&��,�$�AН�|б�I���S��"e.&곗�I��x��l�O�.�4R�\���+K�$��H�>���&�5w���m���_���u݂��*XR���F�Z���v�h��^v�J��Cs�
dq��{���.5�n�1�l��PHw���E�T�y�I���E��7�/|V o`�+�s�mC+-��s��%;�%O2ڴ��>FnV*򒈅:�
��w����[�Ң�Xw	XA��>�<qݳcMk��^Ot[���[����W�-1v]u�W�\���d/�O?�{�*�āp8e�������8��Pĩ�4�{J�Gm�ˈ��ƛ.�U٪ė{C����	ee�%�|O�j���:��D�C������������k���'}qƆA� �K�8T�H��	i�S����7-�E���Ab��0Wz�X�mu�d�u�x:]���:�� ?I<A�*��F(��1E���-Vd�_�/���mn�8Q�;�\Y��@gv��rU�FT����$����*P��m����H�L�Q�G�+I�V
���UY�It_[Jn,Oz���J��蚨*靱'iS���)��m�9�9&�a"��Pg�J�D��58�ˍ�;7J��!x[���uTu���`J@��@�(���/}:ʒg�u��k��������"�9�!H���S
 �$Z��|���kzġ�N_~�����ÿB8��3і���l�6�A`��Љ�J�=�~�hF,^�5�]l	GcD} �7[޳;�j;�k�^�Լ@�݆D�+
�a���Nlƣ��ffY�[�/�R���|���&A`,
y.��Q]�rA�b$�+��x���E~�LK����o�����(G���*q�bkj�7l���V����:�6�gn��r��ԯB$h�a��c~z�Z�w��˝�"������]��[����U�&��^���P�U�6�D�u���Jp���R�Sڭ��k>o��z�g�u�����\6b�S��o��C��@<;;���ZI��oi��&���Tu�>�ܫ�T��9�������x�8
�&V ��@ƻA	||5Ⴌ��6�k<'���p��7�������p�c4�����]V��%�l���`�M��-'���N�����0)�H?���K���|������	#�	�,G©]Y�`c�R�Py��I�^#����R���N'��X��I��ڢ�A�&�-�N�o��	��	#vm�g�q�Br�xPC>LgF�DO���zߑ����`wyF�kG�O����@�K��=-#��#(0��b��C���@���N�������L;m��N��>����#��q8�d�y���J���f�*��I��������􎳦��j�	��)*G��@���4z&���<�}»�24'�j�n\?������{��_��2�ҵ_`nFJ�����O
�Wo�}Drが��)7�%&QRt�2�����<�ĩ�/TA2g���A��Z�dBK_e�d�3��F�D����G�7�����x�p���	�؟I"à�����}l5��tȅ�?,�L�gH��\��	�.G\�RLZ�vl�Kk�2�|#�s&vgy��$ae�H9���Z�>#X�9Lz���"4j$k���<�Y�M1c=T}�P��8Ɨ���J�ڣ1��� ��O2��J�n��u�w@����F��0�wR���sw�B�%}���*�4.#]�ݤ�&o�T=<���u�+�A�X�M�A�9�w�ϖ�F�G�`lq���Vi��E�VM�w� ���g�&�Q��}�v�;�k.�<��!�_���-�85�1<�b���	u�O� �4'��!v
��@[�νM˧�K�6"p��(l��>�]���R�x���a+��,���TK
�Zf���۰Y��kV��P�� ��B���C�70�$B�%$TD��1������T�P�;%I�ǐ��U&M�4�y��Ȳ�4O"y 5�k��KM�Q�"ڗ`���}�:�bA�"��y� Ð��hkA)��.Mux��Hfr�[�XHP(-����(�����E�ԃ��E��#���E5ԓh�Y��>α �A0p� /$̞����zo?��Hh��|Ʀ�T�_�Ļ�	�� ��������,`��.���������R�~w\'����(\d��A{]F0#�٥u@���Ŗ����RR��������5j����&k��B 9�ѕ�2di�<����68�p�`&ʣ�ԵJ�(L��¸B�l�@�4�8�C|H�w��>���{�,iؑΒ���	X,�����u��(ywHƍ��;l	�>�@���aT@�(�ډ5[�O��/�"�b�1c��ҵü��WG!�<Q���������RDIB�J�E$0ӧ�޳]~�����s:O��;��|�|��噚��;,��I�{�ge!�:9�	����h���*�y�)�ژ"a���\(&�n��[���q�"��%u��0Lڦ��F��PSUE�K�Ql�<$G���ª���3I90�A/`��N�_@��]\�����uP��2"2k!rl�K��H�
��`<���Oa�3}��q6xKy�$�#��L�h{�;���S��6D����PDA1�;׊e���(P�a��ڽ#��jM	�7v�9��[*��g=AnV!��H���uP��4�X�p���&�,ah�p�-��~��yA/�!U`
@�m6����i]h���2m�&H�P�]t7msF�N�K����SF��M��U)h�.�{a�H��4 �U��6��m
M��=���yhi����-���`Tj�r�$�0w���
/E�&�e�1��jh���a�4� Ҭ���*و�0������PQ��M�u�J,�0ܸ��ʎ�HH&bC?~�/���+�nb%�ӓ��mI�P��A���f4D%��Ӹ�����k�$D�"'��8)�CY6Ӌ~&�?�BͪS��2��ը�����1 4�La`�ۂ�"@�r�s�q��J�V����o��$��q���Nɚ��Q[{	wq9�%̚~J��V�X U��Q?<%l�mC�n�H���r�>s�D?T��Xj,�����=w`ݖ;�W!�cxά�]0��j�th�
���R�v	� B��[ƶ�Z$e:Ek@������^�<�j�i�E/.
4d�16j9��bӋM�]�#j�w_+e�;p'"�B*�"��U��K���e5!�u�̒�#�&&J�L����NV
(D@����I�V��;��x|��1�*�<��C�"�`O��`����QQ�Җ.Zx[22�G'�733FϨ��&�(Bp$uD_� 4�Uw�h��2`Y\��ms�ʺ�G�_��2�.*��ʙ�>]zx�e�ܔ�'>�0�O���)K ��/�& �7x@@$�Oq���$��1q��>n��!}_��`)�GhX�@"`��G�x�@�'T�j�n4�$�d�"�H�Nh$�m"\�P[}ߜ&~��k=����������]�dD� �Ō��/!�[���S����O�ľ��o�7c�ϭN�c$&@�B��kZ�R�J�bsގr�5B,R�V�O�w)W8m�x��|B��sh��1o��a϶�{�22�%��Dk�m�Qo���z�"��R$CR����\ݰ��s��l'�5�JP,�
�;m�Xnz\*�~����;䄆�M늷DQ�7�9Iu�)� �s�ܑS	/q4K^�Wʑ%�>¥��-�7��{	��&��6�2lD�Q�a��@�C�@3�ܯ>���0 3�#=t�sd��rT"NѯK���o�%ʼj=;40���<7 �>݉b4OK-�
OKW�C��V��÷�8B���1^��� x"�E�U�X��AZ���[x�X54)<]X}]m��"d!�b^�)��J1#�`�ʹ�&Լ��Yn!Ur E���g=л&�ӱyg�n`ƛC�"�����"i�S��+HM�U��z���"��/{�ЭI�'/Ws��쁐F�'"Tv�*��f�k@��Â;��>��V'~��������~�(&s	��3_lمX�ԡ�&aVF
��A8�������әx�����6�i����f�=>����o{�UUUU�wk�b$LS�U�7h#��kT{�5j��'A�E�TP�PF@R@��U���tDDJ�A�CJh@qŭi�ΠZc����n,�ɀ��C]oT'+:F4����H�2�܀��Vq�VE�4�'�,'��33t#Y�P�O����z�(8�/�
�zg�)��*���]�z��ř]�P��fZ�80�㰘laNL��dIM�q�ІK$V]$��j#'�J��_��Ё�&Q�E�J��)HT�}ӑdR����``g0��[�Ѣ̺�e)t�~�F��=8��ScH�`�'vH�QT�ԕ¬�����9��G>�l/��S� I�z��KW��"���m^t��htV�_�b#`e���Z���8�؅c$�jV�Z��C]T��;�k!�� h���)![\ش[+p~�縅�Q�*f{mF�&@JRG�-`!�1��DO.���#c0�	������2����5��K(J��FB�w� r�Ǐb���CE��My>�T�J���(v�&۶�"�VVu ]bF�;vY�:i�4�mX���S A�6"�8��1u-EQ�-K0F_���r�+�	�-����A�2兡��y��OƤ7@�� "R����TD2.!�<�-��ғ!�Q��y�fu��Z�7�2j��*����P��Q!�+��	�f )2u��I����K[����.r_Z7DIV��¡E(F%��1CH�#�0�h�
A~�8�qJz68����wd�V�3����Y�P�}��aY٢�7=	|t���WB(�9�H�؈�D�`I(RdM�e'��lwNZ˯R@�fB��u���h55l�7+��Ѓ�
���a�L81@�E�a ������	��,�I
I#�(F���	З1��ۂ�ĕJjpR�2=q�m�5@�E>	.���R3H�U��ΤN)��p%}ű��!~��C6�1G�B`|�T/�� �kY^\"/ �2 �y� W�]Z��fP�=t^i��^H�l�*E9��bѦ;ڠ�A��0V荈���b
��ߧ�Z�d~^
#��JN`
�q]F��Ie;z7�bo%���* Z �o�Oz"W�r�i������\b\��6��Wab� 0�*}V*W	��\(��'��O$�PNQ[BEO"�60��������������������;A<�O�S�]m,��
/x��J �B�4�L�2�"d�P�,}Gr���-$�4ݛ*�Ō�UE㸼�/}gO߫/m��G��u�{�沐Vv�z]WUv'u)*	hU2�,>#d�������GV�����evhu��дg�M@��]��(���4�6�tXV
6���l��ՍY�B^� o��E#ת�0��A�Qz��Q�4��%�5q�Ѡ��N~mQP6M:kCUR,&M"*�.���Mښ3�@��F�"֖��SMTmb�Qd9��M�# �R2F��-�|�`�0) �Y��2�|�cAƯ�P�<��� B@���S/.�nLF��س�ek�Wk��[�F<Ꮷ�����yD��|��I߁��i������R��o��oI�Va~�M�;F��މ)��	2�Q��h�T'��!����gU��$���4�q��%PT�"�,�
��)�ϬL9����|\nU�(p!#l:&��ڏh>RP���͘��`�\!b)�&��(��/ড়�Y��TL�P��Xp��>�~��l���;�����)P��.PvN�����Փ�B����P��;)j�&��PK^�0'l��z��!Rٮ�2�I�Z���5o�߸�	� �cJ����Q8&�(Hm+��d͹��������y�����D�o�r �0/�/|�)J}X�k
�@��変�x$F�Ԍ�o�,M���q���n����)��f�OÓpœH���1�m�#�2��w�5�A�:3F���bCU5��/$1��	�"TQ(�%�m(7��
+��>�jϝbE�q�I���\�gO����1(t�8=�$r�E�R��`."�&J�e��:���Np�Qv���*�QT+��R����-ٹc�!$8o!��Ddc	}t�=X*X�9�R�ip�qMX���,jD��z#�`N��jbW<�z�F5q@𱯅`j8�hX�F���`�M�[����-l
��E��&w-���r%���@w" U� �0uaq�����5�繿g.%�g�w�國�i-J�H���K+��Vl��(ip���lB@;���)>N�'Z�lE�h|@�"�Uj�@%Cwj0Wi�&!�ir
X� *r��0�Su�PФ%izv�c��@�c-`H�*�9�.т�Kd�"� +��QP�,f_� �X�A1��"ҥvĕ%�.�	����$�K��q���R���BH"�3$�5=X�M�	iM�U(/4�樵� Ct+pR� yؾ�@Vf2��J_�K��
��q�6���}]c��i���%�!�Q�(\��HH�hcNk�t��jY�h�t[e/�����0(�O_L�6
����u��6��ET-F�(Z`��@]��F\Nc�x��N�Bz�!)�����I��њ��+�T7Íb���7�N��GK���'i0c0g(�6����FG�hk�IO�	�N�#����5�I��Vg콿�(`����N�'Q��nzJ�+К���% �ь�A��
�똠}���t8<\=I�!�U*�.4�ubd1�m���dmr�l_���#��m��mӬ��Jeƶ�%��6{�@������=S U��fj���	��G*+��b�z�<�T�Lj�Pn�l2 ��IlD��&<zgp�fv�q+5��ܛhl�bm�(��P��M�Za��%�����D=�U9s�j�Ak��*�M��3�i���VS.���A���Y���[q�lXUZCy@�Y���a���	�y�m̢�,��K�H���j�9c#M�tR���W�Lh��>E�
r'r҈���1[[1��~jV���d(j^����t�X�M���`"�{���N=��v�����h?�1DX(	�H<��QO/r��'Sև�k������yzk�N�:,�D�Nj����`�mC�g��O���-��4u���kjQ*�%Wំޛ[�&�uu��P�����-@+?9��?�=� ����æ�������+��Hf������R_� ���_���)�=z�