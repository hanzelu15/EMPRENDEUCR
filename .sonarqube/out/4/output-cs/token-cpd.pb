¯
oC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\src\Presentation\Pages\Chats\ChatPageBase.cs
	namespace 	
EmprendeUCR
 
. 
Presentation "
." #
Pages# (
.( )
Chats) .
{ 
public		 

class		 
ChatPageBase		 
:		 
ComponentBase		  -
{

 
} 
} Õ+
ŽC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\src\Presentation\Pages\PaymentInfos\Card\CardPaymentInfoEntrepreneurBase.cs
	namespace 	
EmprendeUCR
 
. 
Presentation "
." #
Pages# (
.( )
PaymentInfos) 5
{ 
public		 

class		 +
CardPaymentInfoEntrepreneurBase		 0
:		1 2
ComponentBase		3 @
{

 
	protected 
string 
Status 
=  !
null" &
;& '
	protected 
string 
DisabledCards &
=' (
null) -
;- .
	protected 
string 
ActiveCards $
=% &
null' +
;+ ,
private 
string 
IbanAccount "
=# $
$str% )
;) *
	protected 
IEnumerable 
< 
CardPaymentInfo -
>- . 
_cardPaymentInfoList/ C
;C D
	protected 
SfGrid 
< 
CardPaymentInfo (
>( )
CardPaymentInfoGrid* =
;= >
	protected 
bool  
AddCardDialogVisible +
=, -
false. 3
;3 4
	protected 
bool 
AddDisabled "
=# $
true% )
;) *
	protected 
bool %
ConfirmationDialogVisible 0
{1 2
get3 6
;6 7
set8 ;
;; <
}= >
=? @
falseA F
;F G
	protected 
bool !
PaymentMethodDisabled ,
=- .
false/ 4
;4 5
	protected 
int !
PaymentInfoIdToRemove +
=, -
-. /
$num/ 0
;0 1
	protected 
string 
	CardBrand "
=# $
null% )
;) *
	protected 
List 
< 
string 
> 

CardBrands )
=* +
new, /
List0 4
<4 5
string5 ;
>; <
(< =
)= >
;> ?
	protected 
string 
AddedCardIban &
{' (
get 
{ 
return 
IbanAccount "
;" #
} 
set 
{ 
IbanAccount 
= 
value #
;# $
if 
( 
value 
. 
Length  
==! #
$num$ &
&&' )
ValidateIbanAccount* =
(= >
)> ?
)? @
{ 
AddDisabled   
=    !
false  " '
;  ' (
}!! 
else"" 
{"" 
AddDisabled## 
=##  !
true##" &
;##& '
}$$ 
}%% 
}&& 	
	protected'' 
bool'' 
ValidateIbanAccount'' *
(''* +
)''+ ,
{''- .
return((  
_cardPaymentInfoList(( '
.((' (
Find((( ,
(((, -
cpi((- 0
=>((1 3
cpi((4 7
.((7 8
Account_Number((8 F
==((G I
IbanAccount((J U
)((U V
.((V W
Count((W \
(((\ ]
)((] ^
==((_ a
$num((b c
;((c d
})) 	
public** 
void** 
CardCommandClicked** &
(**& '!
CommandClickEventArgs**' <
<**< =
CardPaymentInfo**= L
>**L M
args**N R
)**R S
{++ 	
if,, 
(,, 
args,, 
.,, 
CommandColumn,, "
.,," #
Title,,# (
==,,) +
$str,,, 4
),,4 5
{-- 
}.. 
else// 
if// 
(// 
args// 
.// 
CommandColumn// '
.//' (
Title//( -
==//. 0
$str//1 ;
)//; <
{00 !
PaymentInfoIdToRemove11 %
=11& '
args11( ,
.11, -
RowData11- 4
.114 5
Payment_Info_ID115 D
;11D E"
ShowConfirmationDialog22 &
(22& '
)22' (
;22( )
}33 
}44 	
	protected55 
void55 !
ShowAddCardIbanDialog55 ,
(55, -
)55- .
{66 	 
AddCardDialogVisible77  
=77! "
true77# '
;77' (
}88 	
	protected99 
void99 "
CloseAddCardIbanDialog99 -
(99- .
)99. /
{:: 	
AddedCardIban;; 
=;; 
$str;;  
;;;  ! 
AddCardDialogVisible<<  
=<<! "
false<<# (
;<<( )
}== 	
	protected>> 
void>> "
ShowConfirmationDialog>> -
(>>- .
)>>. /
{?? 	%
ConfirmationDialogVisible@@ %
=@@& '
true@@( ,
;@@, -
}AA 	
	protectedBB 
voidBB #
CloseConfirmationDialogBB .
(BB. /
)BB/ 0
{CC 	!
PaymentInfoIdToRemoveDD !
=DD" #
-DD$ %
$numDD% &
;DD& '%
ConfirmationDialogVisibleEE %
=EE& '
falseEE( -
;EE- .
}FF 	
}GG 
}HH Ñ'
˜C:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\src\Presentation\Pages\PaymentInfos\SinpeIban\SinpeIbanPaymentInfoEntrepreneurBase.cs
	namespace 	
EmprendeUCR
 
. 
Presentation "
." #
Pages# (
.( )
PaymentInfos) 5
{ 
public		 

class		 0
$SinpeIbanPaymentInfoEntrepreneurBase		 5
:		6 7
ComponentBase		8 E
{

 
private 
string 
IbanAccount "
=# $
$str% )
;) *
	protected 
IEnumerable 
<  
SinpeIbanPaymentInfo 2
>2 3%
_sinpeIbanPaymentInfoList4 M
;M N
	protected 
SfGrid 
<  
SinpeIbanPaymentInfo -
>- .$
SinpeIbanPaymentInfoGrid/ G
;G H
	protected 
bool 
AddDisabled "
=# $
true% )
;) *
	protected 
bool %
AddSinpeIbanDialogVisible 0
=1 2
false3 8
;8 9
	protected 
bool %
ConfirmationDialogVisible 0
{1 2
get3 6
;6 7
set8 ;
;; <
}= >
=? @
falseA F
;F G
	protected 
const 
string 

SINPE_IBAN )
=* +
$str, 3
;3 4
	protected 
int !
PaymentInfoIdToRemove +
=, -
-. /
$num/ 0
;0 1
	protected 
bool !
PaymentMethodDisabled ,
=- .
false/ 4
;4 5
	protected 
string 
AddedSinpeIban '
{ 	
get 
{ 
return 
IbanAccount "
;" #
} 
set 
{ 
IbanAccount 
= 
value #
;# $
if 
( 
value 
. 
Length  
==! #
$num$ &
&&' )
ValidateIbanAccount* =
(= >
)> ?
)? @
{ 
AddDisabled 
=  !
false" '
;' (
}   
else!! 
{"" 
AddDisabled## 
=##  !
true##" &
;##& '
}$$ 
}%% 
}&& 	
	protected'' 
bool'' 
ValidateIbanAccount'' *
(''* +
)''+ ,
{(( 	
return)) %
_sinpeIbanPaymentInfoList)) ,
.)), -
Find))- 1
())1 2
spi))2 5
=>))6 8
spi))9 <
.))< =
Account_Number))= K
==))L N
IbanAccount))O Z
)))Z [
.))[ \
Count))\ a
())a b
)))b c
==))d f
$num))g h
;))h i
}** 	
public++ 
void++ #
SinpeIbanCommandClicked++ +
(+++ ,!
CommandClickEventArgs++, A
<++A B 
SinpeIbanPaymentInfo++B V
>++V W
args++X \
)++\ ]
{,, 	
if-- 
(-- 
args-- 
.-- 
CommandColumn-- "
.--" #
Title--# (
==--) +
$str--, 4
)--4 5
{.. 
}// 
else00 
if00 
(00 
args00 
.00 
CommandColumn00 '
.00' (
Title00( -
==00. 0
$str001 ;
)00; <
{11 !
PaymentInfoIdToRemove22 %
=22& '
args22( ,
.22, -
RowData22- 4
.224 5
Payment_Info_ID225 D
;22D E"
ShowConfirmationDialog33 &
(33& '
)33' (
;33( )
}44 
}55 	
	protected66 
void66 "
ShowAddSinpeIbanDialog66 -
(66- .
)66. /
{77 	%
AddSinpeIbanDialogVisible88 %
=88& '
true88( ,
;88, -
}99 	
	protected;; 
void;; #
CloseAddSinpeIbanDialog;; .
(;;. /
);;/ 0
{<< 	
AddedSinpeIban== 
=== 
$str== !
;==! "%
AddSinpeIbanDialogVisible>> %
=>>& '
false>>( -
;>>- .
}?? 	
	protected@@ 
void@@ "
ShowConfirmationDialog@@ -
(@@- .
)@@. /
{AA 	%
ConfirmationDialogVisibleBB %
=BB& '
trueBB( ,
;BB, -
}CC 	
	protectedDD 
voidDD #
CloseConfirmationDialogDD .
(DD. /
)DD/ 0
{EE 	!
PaymentInfoIdToRemoveFF !
=FF" #
-FF$ %
$numFF% &
;FF& '%
ConfirmationDialogVisibleGG %
=GG& '
falseGG( -
;GG- .
}HH 	
}II 
}JJ æ+
šC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\src\Presentation\Pages\PaymentInfos\SinpeMovil\SinpeMovilPaymentInfoEntrepreneurBase.cs
	namespace 	
EmprendeUCR
 
. 
Presentation "
." #
Pages# (
.( )
PaymentInfos) 5
{ 
public		 

class		 1
%SinpeMovilPaymentInfoEntrepreneurBase		 6
:		7 8
ComponentBase		9 F
{

 
private 
string 
Number 
= 
$str  "
;" #
	protected 
IEnumerable 
< !
SinpeMovilPaymentInfo 3
>3 4&
_sinpeMovilPaymentInfoList5 O
;O P
	protected 
SfGrid 
< !
SinpeMovilPaymentInfo .
>. /%
SinpeMovilPaymentInfoGrid0 I
;I J
	protected 
bool 
AddDisabled "
=# $
true% )
;) *
	protected 
bool ,
 AddSinpePhoneNumberDialogVisible 7
=8 9
false: ?
;? @
	protected 
bool %
ConfirmationDialogVisible 0
{1 2
get3 6
;6 7
set8 ;
;; <
}= >
=? @
falseA F
;F G
	protected 
const 
string 
SINPE_MOVIL *
=+ ,
$str- :
;: ;
	protected 
int !
PaymentInfoIdToRemove +
=, -
-. /
$num/ 0
;0 1
	protected 
bool !
PaymentMethodDisabled ,
=- .
false/ 4
;4 5
	protected 
string 
AddedNumber $
{ 	
get 
{ 
return 
Number 
; 
} 
set 
{ 
Number 
= 
value 
; 
if 
( 
value 
== 
null !
)! "
{ 
AddDisabled 
=  !
true" &
;& '
}   
else!! 
{"" 
if## 
(## 
value## 
.## 
Length## $
==##% '
$num##( )
&&##* ,
ValidatePhoneNumber##- @
(##@ A
)##A B
)##B C
{$$ 
AddDisabled%% #
=%%$ %
false%%& +
;%%+ ,
}&& 
else'' 
{(( 
AddDisabled)) #
=))$ %
true))& *
;))* +
}** 
}++ 
},, 
}-- 	
	protected.. 
bool.. 
ValidatePhoneNumber.. *
(..* +
)..+ ,
{// 	
if00 
(00 
Number00 
==00 
$str00 
)00 
{00 
return11 
false11 
;11 
}22 
return33 &
_sinpeMovilPaymentInfoList33 -
.33- .
Find33. 2
(332 3
spi333 6
=>337 9
spi33: =
.33= >
Phone_Number33> J
==33K M
int33N Q
.33Q R
Parse33R W
(33W X
Number33X ^
)33^ _
)33_ `
.33` a
Count33a f
(33f g
)33g h
==33i k
$num33l m
;33m n
}44 	
public55 
void55 $
SinpeMovilCommandClicked55 ,
(55, -!
CommandClickEventArgs55- B
<55B C!
SinpeMovilPaymentInfo55C X
>55X Y
args55Z ^
)55^ _
{66 	
if77 
(77 
args77 
.77 
CommandColumn77 "
.77" #
Title77# (
==77) +
$str77, 4
)774 5
{88 
}99 
else:: 
if:: 
(:: 
args:: 
.:: 
CommandColumn:: '
.::' (
Title::( -
==::. 0
$str::1 ;
)::; <
{;; !
PaymentInfoIdToRemove<< %
=<<& '
args<<( ,
.<<, -
RowData<<- 4
.<<4 5
Payment_Info_ID<<5 D
;<<D E"
ShowConfirmationDialog== &
(==& '
)==' (
;==( )
}>> 
}?? 	
	protected@@ 
void@@ )
ShowAddSinpePhoneNumberDialog@@ 4
(@@4 5
)@@5 6
{AA 	,
 AddSinpePhoneNumberDialogVisibleBB ,
=BB- .
trueBB/ 3
;BB3 4
}CC 	
	protectedDD 
voidDD *
CloseAddSinpePhoneNumberDialogDD 5
(DD5 6
)DD6 7
{EE 	
AddedNumberFF 
=FF 
$strFF 
;FF ,
 AddSinpePhoneNumberDialogVisibleGG ,
=GG- .
falseGG/ 4
;GG4 5
}HH 	
	protectedII 
voidII "
ShowConfirmationDialogII -
(II- .
)II. /
{JJ 	%
ConfirmationDialogVisibleKK %
=KK& '
trueKK( ,
;KK, -
}LL 	
	protectedMM 
voidMM #
CloseConfirmationDialogMM .
(MM. /
)MM/ 0
{NN 	!
PaymentInfoIdToRemoveOO !
=OO" #
-OO$ %
$numOO% &
;OO& '%
ConfirmationDialogVisiblePP %
=PP& '
falsePP( -
;PP- .
}QQ 	
}RR 
}SS 