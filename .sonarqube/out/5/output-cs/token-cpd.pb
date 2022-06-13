Å
ÖC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\EmprendeUCR_WebApplication\Application\BillContext\IBillService.cs
	namespace		 	&
EmprendeUCR_WebApplication		
 $
.		$ %
Application		% 0
.		0 1
BillContext		1 <
{

 
	interface 
IBillService 
{ 
void 

createBill 
( 

IJSRuntime "
js# %
,% &
Order' ,
order- 2
,2 3
List4 8
<8 9
Tuple9 >
<> ?
int? B
,B C
ProductD K
>K L
>L M
productsN V
,V W
stringX ^
entrepreneurName_ o
,p q
stringr x

clientName	y É
)
É Ñ
;
Ñ Ö
byte 
[ 
] 
returnBillBytes 
( 

IJSRuntime )
js* ,
,, -
Order. 3
order4 9
,9 :
List; ?
<? @
Tuple@ E
<E F
intF I
,I J
ProductK R
>R S
>S T
productsU ]
,] ^
string_ e
entrepreneurNamef v
,v w
stringx ~

clientName	 â
)
â ä
;
ä ã
} 
} “
îC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\EmprendeUCR_WebApplication\Application\BillContext\Implementations\BillService.cs
	namespace

 	&
EmprendeUCR_WebApplication


 $
.

$ %
Application

% 0
.

0 1
BillContext

1 <
.

< =
Implementations

= L
{ 
public 

class 
BillService 
: 
IBillService +
{ 
private 
readonly 
IPdfCreation %
_pdfCreation& 2
;2 3
public 
BillService 
( 
IPdfCreation '
pdfCreation( 3
)3 4
{ 	
_pdfCreation 
= 
pdfCreation &
;& '
} 	
public 
void 

createBill 
( 

IJSRuntime )
js* ,
,, -
Order. 3
order4 9
,9 :
List; ?
<? @
Tuple@ E
<E F
intF I
,I J
ProductK R
>R S
>S T
productsU ]
,] ^
string_ e
entrepreneurNamef v
,v w
stringx ~

clientName	 â
)
â ä
{ 	
js 
. 
InvokeVoidAsync 
( 
$str -
,- .
$str  3
,3 4
Convert    '
.  ' (
ToBase64String  ( 6
(  6 7
_pdfCreation  7 C
.  C D
Generate  D L
(  L M
js  M O
,  O P
order  P U
,  U V
products  W _
,  _ `
entrepreneurName  a q
,  q r

clientName  s }
)  } ~
)  ~ 
)	   Ä
;
  Ä Å
}!! 	
public** 
byte** 
[** 
]** 
returnBillBytes** %
(**% &

IJSRuntime**& 0
js**1 3
,**3 4
Order**5 :
order**; @
,**@ A
List**B F
<**F G
Tuple**G L
<**L M
int**M P
,**P Q
Product**R Y
>**Y Z
>**Z [
products**\ d
,**d e
string**f l
entrepreneurName**m }
,**} ~
string	** Ö

clientName
**Ü ê
)
**ê ë
{++ 	
return,,
 
_pdfCreation,, 
.,, 
Generate,, &
(,,& '
js,,' )
,,,) *
order,,+ 0
,,,0 1
products,,2 :
,,,: ;
entrepreneurName,,< L
,,,L M

clientName,,N X
),,X Y
;,,Y Z
}-- 	
}.. 
}// √
ìC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\EmprendeUCR_WebApplication\Application\BillContext\Implementations\Extensions.cs
	namespace 	&
EmprendeUCR_WebApplication
 $
.$ %
Infrastructure% 3
.3 4
BillContext4 ?
.? @
Implementations@ O
{ 
public 

static 
class 

Extensions "
{ 
public 
static 
float 
ToDpi !
(! "
this" &
float' ,

centimeter- 7
)7 8
{ 	
var 
inch 
= 

centimeter !
/" #
$num$ (
;( )
return 
( 
float 
) 
( 
inch 
*  !
$num" $
)$ %
;% &
}		 	
}

 
} †
§C:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\EmprendeUCR_WebApplication\Application\NotificationContext\Implementations\NotificationService.cs
	namespace 	&
EmprendeUCR_WebApplication
 $
.$ %
Application% 0
.0 1
NotificationContext1 D
.D E
ImplementationsE T
{		 
public

 

class

 
NotificationService

 $
:

% & 
INotificationService

' ;
{ 
private 
readonly #
INotificationRepository 0#
_notificationRepository1 H
;H I
public 
NotificationService "
(" ##
INotificationRepository# :"
notificationRepository; Q
)Q R
{ 	#
_notificationRepository #
=$ %"
notificationRepository& <
;< =
} 	
public 
void 
EventsSubscriptions '
(' (
UserNotification( 8
UserNotification9 I
)I J
{ 	#
_notificationRepository #
.# $
EventsSubscriptions$ 7
(7 8
UserNotification8 H
)H I
;I J
}   	
public'' 
void'' 
GetNotifications'' $
(''$ %
UserNotification''% 5
UserNotification''6 F
)''F G
{(( 	#
_notificationRepository)) #
.))# $
GetNotifications))$ 4
())4 5
UserNotification))5 E
)))E F
;))F G
UserNotification** 
.** 
orderNotifications** /
(**/ 0
)**0 1
;**1 2
}++ 	
public22 
void22 $
GetNotificationsQuantity22 ,
(22, -
UserNotification22- =
UserNotification22> N
)22N O
{33 	#
_notificationRepository44 #
.44# $$
GetNotificationsQuantity44$ <
(44< =
UserNotification44= M
)44M N
;44N O
}55 	
public77 
int77 
GetProductsQuantity77 &
(77& '
UserNotification77' 7
UserNotification778 H
)77H I
{88 	
return99 #
_notificationRepository99 *
.99* +
GetProductsQuantity99+ >
(99> ?
UserNotification99? O
)99O P
;99P Q
}:: 	
publicBB 
voidBB 
UnsubscriptionBB "
(BB" #
UserNotificationBB# 3
UserNotificationBB4 D
)BBD E
{CC 	#
_notificationRepositoryDD #
.DD# $
UnsubscriptionDD$ 2
(DD2 3
UserNotificationDD3 C
)DDC D
;DDD E
}EE 	
}TT 
}UU ¶	
ïC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\EmprendeUCR_WebApplication\Application\NotificationContext\INotificationService.cs
	namespace 	&
EmprendeUCR_WebApplication
 $
.$ %
Application% 0
.0 1
NotificationContext1 D
{		 
	interface

  
INotificationService

 "
{ 
void 
EventsSubscriptions  
(  !
UserNotification! 1
UserNotification2 B
)B C
;C D
void 
GetNotifications 
( 
UserNotification .
UserNotification/ ?
)? @
;@ A
void   $
GetNotificationsQuantity   %
(  % &
UserNotification  & 6
UserNotification  7 G
)  G H
;  H I
void'' 
Unsubscription'' 
('' 
UserNotification'' ,
UserNotification''- =
)''= >
;''> ?
int)) 
GetProductsQuantity)) 
())  
UserNotification))  0
UserNotification))1 A
)))A B
;))B C
}** 
}++ àJ
ñC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\EmprendeUCR_WebApplication\Application\OrderContext\Implementations\OrderService.cs
	namespace		 	&
EmprendeUCR_WebApplication		
 $
.		$ %
Application		% 0
.		0 1
OrderContext		1 =
.		= >
Implementations		> M
{

 
public 

class 
OrderService 
: 
IOrderService  -
{ 
private 
readonly 
IOrderRepository )
_orderRepository* :
;: ;
private 
readonly 
IOfferRepository )
_offerRepositoy* 9
;9 :
public 
OrderService 
( 
IOrderRepository ,
orderRepository- <
,< =
IOfferRepository> N
offerRepositoryO ^
)_ `
{ 	
_orderRepository 
= 
orderRepository .
;. /
_offerRepositoy 
= 
offerRepository -
;- .
} 	
public   
async   
Task   
<   
List   
<   
Order   $
>  $ %
>  % &!
GetEntrepreneurOrders  ' <
(  < =
string  = C
email  D I
)  I J
{!! 	
return"" 
await"" 
_orderRepository"" )
."") *
GetByIdAsync""* 6
(""6 7
email""7 <
)""< =
;""= >
}## 	
public,, 
async,, 
Task,, 
<,, 
List,, 
<,, 
Order,, $
>,,$ %
>,,% &)
GetEntrepreneurAcceptedOrders,,' D
(,,D E
string,,E K
email,,L Q
),,Q R
{-- 	
return.. 
await.. 
_orderRepository.. )
...) *
GetAcceptedOrders..* ;
(..; <
email..< A
)..A B
;..B C
}// 	
public77 
async77 
Task77 
<77 
List77 
<77 
Order77 $
>77$ %
>77% &*
GetEntrepreneurFinalizedOrders77' E
(77E F
string77F L
email77M R
)77R S
{88 	
return99 
await99 
_orderRepository99 )
.99) *)
GetEntreprenurFinalizedOrders99* G
(99G H
email99H M
)99M N
;99N O
}:: 	
publicBB 
asyncBB 
TaskBB 
<BB 
ListBB 
<BB 
OrderBB $
>BB$ %
>BB% &
GetClientOrdersBB' 6
(BB6 7
stringBB7 =
emailBB> C
)BBC D
{CC 	
returnDD 
awaitDD 
_orderRepositoryDD )
.DD) * 
GetClientOrdersAsyncDD* >
(DD> ?
emailDD? D
)DDD E
;DDE F
}EE 	
publicMM 
ListMM 
<MM 
TupleMM 
<MM 
intMM 
,MM 
ProductMM &
>MM& '
>MM' (
GetProductsMM) 4
(MM4 5
OrderMM5 :
orderMM; @
)MM@ A
{NN 	
DateTimeOO 
	dateOrderOO 
=OO  
orderOO! &
.OO& '
DateAndHourCreationOO' :
;OO: ;
ListPP 
<PP 
OfferPP 
>PP 
offersPP 
=PP  
_offerRepositoyPP" 1
.PP1 2
getOffersToOrderPP2 B
(PPB C
	dateOrderPPC L
)PPL M
;PPM N
varQQ 
ordersQQ 
=QQ 
_orderRepositoryQQ )
.QQ) *
GetProductsAsyncQQ* :
(QQ: ;
orderQQ; @
)QQ@ A
;QQA B
foreachRR 
(RR 
varRR 
productRR  
inRR! #
ordersRR$ *
)RR* +
{SS 
productTT 
.TT 
Item2TT 
.TT 
getCurrentPriceTT -
(TT- .
offersTT. 4
)TT4 5
;TT5 6
}UU 
returnVV 
ordersVV 
;VV 
}WW 	
public__ 
async__ 
Task__ 
<__ 
List__ 
<__ 
Status__ %
>__% &
>__& '
GetOrderStatuses__( 8
(__8 9
)__9 :
{`` 	
returnaa 
awaitaa 
_orderRepositoryaa )
.aa) *
GetOrderStatusesaa* :
(aa: ;
)aa; <
;aa< =
}bb 	
publicii 
stringii 
getStatusColorii $
(ii$ %
stringii% +
statusii, 2
)ii2 3
{jj 	
returnkk 
_orderRepositorykk #
.kk# $
defineColorkk$ /
(kk/ 0
statuskk0 6
)kk6 7
;kk7 8
}ll 	
publicuu 
asyncuu 
Taskuu 
SetProductStatusesuu ,
(uu, -
Productuu- 4
productuu5 <
,uu< =
Listuu> B
<uuB C
StatusuuC I
>uuI J
statusesListuuK W
)uuW X
{vv 	
awaitww 
_orderRepositoryww "
.ww" #
SetProductStatusesww# 5
(ww5 6
productww6 =
,ww= >
statusesListww? K
)wwK L
;wwL M
}yy 	
public
ÅÅ 
async
ÅÅ 
Task
ÅÅ 
<
ÅÅ 
List
ÅÅ 
<
ÅÅ 
Order
ÅÅ $
>
ÅÅ$ %
>
ÅÅ% &

sendAnswer
ÅÅ& 0
(
ÅÅ0 1
DateTime
ÅÅ1 9!
dateAndHourCreation
ÅÅ: M
,
ÅÅM N
string
ÅÅO U
email
ÅÅV [
,
ÅÅ[ \
bool
ÅÅ] a
answer
ÅÅb h
,
ÅÅh i
List
ÅÅj n
<
ÅÅn o
Order
ÅÅo t
>
ÅÅt u
ordersToUpdateÅÅv Ñ
)ÅÅÑ Ö
{
ÇÇ 	
Order
ÉÉ 
orderToUpdate
ÉÉ 
=
ÉÉ  !
ordersToUpdate
ÉÉ" 0
.
ÉÉ0 1
FirstOrDefault
ÉÉ1 ?
(
ÉÉ? @
order
ÉÉ@ E
=>
ÉÉF H
order
ÉÉI N
.
ÉÉN O!
DateAndHourCreation
ÉÉO b
==
ÉÉc e!
dateAndHourCreation
ÉÉf y
&&
ÉÉz |
orderÉÉ} Ç
.ÉÉÇ É
ClientEmailÉÉÉ é
==ÉÉè ë
emailÉÉí ó
)ÉÉó ò
;ÉÉò ô
orderToUpdate
ÑÑ 
.
ÑÑ  
changeGlobalStatus
ÑÑ ,
(
ÑÑ, -
answer
ÑÑ- 3
?
ÑÑ4 5
$str
ÑÑ6 @
:
ÑÑA B
$str
ÑÑC N
)
ÑÑO P
;
ÑÑP Q
await
ÖÖ 
_orderRepository
ÖÖ "
.
ÖÖ" #
orderUpdate
ÖÖ# .
(
ÖÖ. /
orderToUpdate
ÖÖ/ <
)
ÖÖ< =
;
ÖÖ= >
ordersToUpdate
ÜÜ 
.
ÜÜ 
	RemoveAll
ÜÜ $
(
ÜÜ$ %
r
ÜÜ% &
=>
ÜÜ' )
r
ÜÜ* +
.
ÜÜ+ ,!
DateAndHourCreation
ÜÜ, ?
==
ÜÜ@ B!
dateAndHourCreation
ÜÜC V
&&
ÜÜW Y
r
ÜÜZ [
.
ÜÜ[ \
ClientEmail
ÜÜ\ g
==
ÜÜh j
email
ÜÜk p
)
ÜÜp q
;
ÜÜq r
return
áá 
ordersToUpdate
áá "
;
áá" #
}
àà 	
public
êê 
async
êê 
Task
êê 
<
êê 
string
êê  
>
êê  !!
getEntrepreneurName
êê" 5
(
êê5 6
string
êê6 <
email
êê= B
)
êêB C
{
ëë 	
return
íí 
await
íí 
_orderRepository
íí )
.
íí) * 
GetEntreprenurName
íí* <
(
íí< =
email
íí= B
)
ííB C
;
ííC D
}
ìì 	
public
õõ 
async
õõ 
Task
õõ 
updateOrderStatus
õõ +
(
õõ+ ,
Order
õõ, 1
order
õõ2 7
,
õõ7 8
string
õõ8 >
	newStatus
õõ? H
)
õõH I
{
õõJ K
order
úú 
.
úú  
ChangerOrderStatus
úú $
(
úú$ %
	newStatus
úú% .
)
úú. /
;
úú/ 0
await
ùù 
_orderRepository
ùù "
.
ùù" #
orderUpdate
ùù# .
(
ùù. /
order
ùù/ 4
)
ùù4 5
;
ùù5 6
}
ûû 	
public
¶¶ 
async
¶¶ 
Task
¶¶ !
updateProductStatus
¶¶ -
(
¶¶- .
Order
¶¶. 3
currentOrder
¶¶4 @
,
¶¶@ A
string
¶¶B H
productStatus
¶¶I V
,
¶¶V W
Product
¶¶X _
productToUpdate
¶¶` o
)
¶¶o p
{
¶¶q r
currentOrder
ßß 
.
ßß !
changeProductStatus
ßß ,
(
ßß, -
productStatus
ßß- :
,
ßß: ;
productToUpdate
ßß< K
.
ßßK L
CodeId
ßßL R
,
ßßR S
productToUpdate
ßßT c
.
ßßc d
EntrepreneurEmail
ßßd u
,
ßßv w
productToUpdateßßx á
.ßßá à

CategoryIdßßà í
)ßßí ì
;ßßì î
await
®® 
_orderRepository
®® "
.
®®" #
orderUpdate
®®# .
(
®®. /
currentOrder
®®/ ;
)
®®; <
;
®®< =
}
©© 	
}
™™ 
}´´ ‹
áC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\EmprendeUCR_WebApplication\Application\OrderContext\IOrderService.cs
	namespace 	&
EmprendeUCR_WebApplication
 $
.$ %
Application% 0
.0 1
OrderContext1 =
{		 
	interface 
IOrderService 
{ 
Task 
< 
List 
< 
Order 
> 
> !
GetEntrepreneurOrders 0
(0 1
string1 7
email8 =
)= >
;> ?
Task 
< 
List 
< 
Order 
> 
> )
GetEntrepreneurAcceptedOrders 8
(8 9
string9 ?
email@ E
)E F
;F G
Task 
< 
List 
< 
Order 
> 
> 
GetClientOrders *
(* +
string+ 1
email2 7
)7 8
;8 9
List 
< 
Tuple 
< 
int 
, 
Product 
>  
>  !
GetProducts" -
(- .
Order. 3
order4 9
)9 :
;: ;
Task 
< 
List 
< 
Status 
> 
> 
GetOrderStatuses ,
(, -
)- .
;. /
Task 
SetProductStatuses 
(  
Product  '
product( /
,/ 0
List1 5
<5 6
Status6 <
>< =
statusesList> J
)J K
;K L
Task 
< 
string 
> 
getEntrepreneurName )
() *
string* 0
email1 6
)6 7
;7 8
Task 
< 
List 
< 
Order 
> 
> 

sendAnswer %
(% &
DateTime& .
dateAndHourCreation/ B
,B C
stringD J
emailK P
,P Q
boolR V
answerW ]
,] ^
List^ b
<b c
Orderc h
>h i
orderToUpdatej w
)w x
;x y
Task 
updateOrderStatus 
( 
Order $
order% *
,* +
string+ 1
	newStatus2 ;
); <
;< =
Task 
updateProductStatus  
(  !
Order! &
currentOrder' 3
,3 4
string5 ;
productStatus< I
,I J
ProductK R
productToUpdateS b
)b c
;c d
public 
string 
getStatusColor $
($ %
string% +
status, 2
)2 3
;3 4
} 
} ü/
§C:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\EmprendeUCR_WebApplication\Application\ShoppingCartContext\Implementations\ShoppingCartService.cs
	namespace		 	&
EmprendeUCR_WebApplication		
 $
.		$ %
Application		% 0
.		0 1
ShoppingCartContext		1 D
.		D E
Implementations		E T
{

 
public 

class 
ShoppingCartService $
:% & 
IShoppingCartService' ;
{ 
private 
readonly #
IShoppingCartRepository 0#
_shoppingCartRepository1 H
;H I
private 
readonly 
IOfferRepository )
_offerRepositoy* 9
;9 :
public 
ShoppingCartService "
(" ##
IShoppingCartRepository# :"
shoppingCartRepository; Q
,Q R
IOfferRepositoryS c
offerRepositoryd s
)t u
{ 	#
_shoppingCartRepository #
=$ %"
shoppingCartRepository& <
;< =
_offerRepositoy 
= 
offerRepository -
;- .
} 	
public 
async 
Task &
DeleteLineFromShoppingCart 4
(4 5
ShoppingCart5 A
shoppingCartB N
,N O
ShopLineP X
shopLineY a
)a b
{ 	
shoppingCart 
. )
DeleteProductFromShoppingCart 6
(6 7
shopLine7 ?
)? @
;@ A
await #
_shoppingCartRepository )
.) *

DeleteLine* 4
(4 5
shopLine5 =
)= >
;> ?
await #
_shoppingCartRepository )
.) *
	SaveAsync* 3
(3 4
shoppingCart4 @
)@ A
;A B
}   	
public(( 
async(( 
Task(( 
<(( 
ShoppingCart(( &
?((& '
>((' (
GetByIdAsync(() 5
(((5 6
string((6 <
email((= B
)((B C
{)) 	
Task** 
<** 
ShoppingCart** 
?** 
>** 
shopping**  (
=**) *#
_shoppingCartRepository**, C
.**C D
GetByIdAsync**D P
(**P Q
email**Q V
)**V W
;**W X
List++ 
<++ 
Offer++ 
>++ 
offers++ 
=++  
await++! &
_offerRepositoy++' 6
.++6 7
getOffersToShop++7 F
(++F G
DateTime++G O
.++O P
Now++P S
.++S T
Date++T X
)++X Y
;++Y Z
var,, 
shop,, 
=,, 
await,, 
shopping,, %
;,,% &
foreach-- 
(-- 
var-- 
shopLine-- !
in--" $
shop--% )
.--) *
	ShopLines--* 3
)--3 4
{--5 6
shopLine.. 
... 
product..  
...  !
getCurrentPrice..! 0
(..0 1
offers..1 7
)..7 8
;..8 9
}// 
return00 
shop00 
;00 
}11 	
public99 
Task99 
<99 
List99 
<99 
Product_Photos99 '
>99' (
>99( )
LoadAllPhotos99* 7
(997 8
Product998 ?
product99@ G
)99G H
{:: 	
return;; #
_shoppingCartRepository;; *
.;;* +
	GetPhotos;;+ 4
(;;4 5
product;;5 <
);;< =
;;;= >
}<< 	
publicDD 
asyncDD 
TaskDD 
sendRequestDD %
(DD% &
ShoppingCartDD& 2
shopDD3 7
,DD7 8
stringDD9 ?
DetailsDD@ G
,DDG H
stringEE( .
DeliveryAddressEE/ >
,EE> ?
DateTimeEE@ H
DeliveryDateEEI U
,EEU V
stringFF, 2!
selectedPaymentMethodFF3 H
)FFH I
{GG 	
awaitHH #
_shoppingCartRepositoryHH )
.HH) *
SendRequestHH* 5
(HH5 6
shopHH6 :
,HH: ;
DetailsHH< C
,HHC D
DeliveryAddressHHE T
,HHT U
DeliveryDateHHV b
,HHb c!
selectedPaymentMethodHHd y
)HHy z
;HHz {
foreachII 
(II 
varII 
shopLineII !
inII" $
shopII% )
.II) *
	ShopLinesII* 3
)II3 4
{JJ 
awaitKK #
_shoppingCartRepositoryKK -
.KK- .

DeleteLineKK. 8
(KK8 9
shopLineKK9 A
)KKA B
;KKB C
}LL 
awaitMM #
_shoppingCartRepositoryMM )
.MM) *
	SaveAsyncMM* 3
(MM3 4
shopMM4 8
)MM8 9
;MM9 :
}PP 	
publicXX 
asyncXX 
TaskXX 
<XX 
	PagedListXX #
<XX# $
ShopLineXX$ ,
>XX, -
>XX- .
GetProductsXX/ :
(XX: ;
ShopParametersXX; I
productParametersXXJ [
,XX[ \
stringXX] c
emailXXd i
)XXi j
{YY 	
varZZ 
	_productsZZ 
=ZZ 
awaitZZ !#
_shoppingCartRepositoryZZ" 9
.ZZ9 :
GetByIdAsyncZZ: F
(ZZF G
emailZZG L
)ZZL M
;ZZM N
return[[ 
	PagedList[[ 
<[[ 
ShopLine[[ %
>[[% &
.\\ 
ToPagedList\\ 
(\\ 
	_products\\ &
.\\& '
	ShopLines\\' 0
,\\0 1
productParameters\\2 C
.\\C D

PageNumber\\D N
,\\N O
productParameters\\P a
.\\a b
PageSize\\b j
)\\j k
;\\k l
}]] 	
}__ 
}`` ‹
ïC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\EmprendeUCR_WebApplication\Application\ShoppingCartContext\IShoppingCartService.cs
	namespace		 	&
EmprendeUCR_WebApplication		
 $
.		$ %
Application		% 0
.		0 1
ShoppingCartContext		1 D
{

 
	interface  
IShoppingCartService "
{ 
Task 
< 
ShoppingCart 
? 
> 
GetByIdAsync (
(( )
string) /
email0 5
)5 6
;6 7
Task &
DeleteLineFromShoppingCart '
(' (
ShoppingCart( 4
shoppingCart5 A
,A B
ShopLineC K
shopLineL T
)T U
;U V
Task 
< 
List 
< 
Product_Photos !
>! "
>" #
LoadAllPhotos$ 1
(1 2
Product2 9
product: A
)A B
;B C
Task 
< 
	PagedList 
< 
ShopLine 
>  
>  !
GetProducts" -
(- .
ShopParameters. <
productParameters= N
,N O
stringP V
emailW \
)\ ]
;] ^
Task 
sendRequest 
( 
ShoppingCart %
shop& *
,* +
string, 2
Details3 :
,: ;
string "
DeliveryAddress# 2
,2 3
DateTime4 <
DeliveryDate= I
,I J
string  &!
selectedPaymentMethod' <
)< =
;= >
} 
} Ë\
{C:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\EmprendeUCR_WebApplication\Data\Contexts\SqlDbContext.cs
	namespace 	&
EmprendeUCR_WebApplication
 $
.$ %
Data% )
.) *
Contexts* 2
{ 
public 

class 
SqlServerDbContext #
:$ % 
ApplicationDbContext& :
{ 
public 
SqlServerDbContext !
(! "
DbContextOptions" 2
<2 3
SqlServerDbContext3 E
>E F
optionsG N
,N O
ILoggerP W
<W X
SqlServerDbContextX j
>j k
loggerl r
)r s
: 
base 
( 
options 
, 
logger !
)! "
{ 	
} 	
public 
DbSet 
< 
Category 
> 
Category '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
public 
DbSet 
< 
Product 
> 
Product %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
public 
DbSet 
< 
Province 
> 
Province '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
public 
DbSet 
< 
District 
> 
District '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
public 
DbSet 
< 
Canton 
> 
Canton #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 
DbSet 
< 
User 
> 
User 
{  !
get" %
;% &
set' *
;* +
}, -
public 
DbSet 
< 
Credentials  
>  !
Credentials" -
{. /
get0 3
;3 4
set5 8
;8 9
}: ;
public 
DbSet 
< 
Entrepreneur !
>! "
Entrepreneur# /
{0 1
get2 5
;5 6
set7 :
;: ;
}< =
public 
DbSet 
< 
Product_Service $
>$ %
Product_Service& 5
{6 7
get8 ;
;; <
set= @
;@ A
}B C
public 
DbSet 
< 
SinpePaymentMethod '
>' (
SinpePaymentMethod) ;
{< =
get> A
;A B
setC F
;F G
}H I
public 
DbSet 
< 
Card 
> 
Card 
{  !
get" %
;% &
set' *
;* +
}, -
public&& 
DbSet&& 
<&& 
Service&& 
>&& 
Service&& %
{&&& '
get&&( +
;&&+ ,
set&&- 0
;&&0 1
}&&2 3
public'' 
DbSet'' 
<'' 
BannedAccount'' "
>''" #
Banned_Account''$ 2
{''3 4
get''5 8
;''8 9
set'': =
;''= >
}''? @
public(( 
DbSet(( 
<(( 
Suggested_Category(( '
>((' (
Suggested_Category(() ;
{((< =
get((> A
;((A B
set((C F
;((F G
}((H I
public** 
DbSet** 
<** 
Offer** 
>** 
Offer** !
{**" #
get**$ '
;**' (
set**) ,
;**, -
}**. /
public++ 
DbSet++ 
<++ 
Is_Offer++ 
>++ 
Is_Offer++ '
{++( )
get++* -
;++- .
set++/ 2
;++2 3
}++4 5
public,, 
DbSet,, 
<,, 
ServicePandemic,, $
>,,$ %
ServicePandemic,,& 5
{,,6 7
get,,8 ;
;,,; <
set,,= @
;,,@ A
},,B C
public-- 
DbSet-- 
<-- 
Likes-- 
>-- 
Likes-- !
{--" #
get--$ '
;--' (
set--) ,
;--, -
}--. /
public.. 
DbSet.. 
<.. 
Client.. 
>.. 
Client.. #
{..$ %
get..& )
;..) *
set..+ .
;... /
}..0 1
public// 
DbSet// 
<// 
Members// 
>// 
Members// %
{//& '
get//( +
;//+ ,
set//- 0
;//0 1
}//2 3
public00 
DbSet00 
<00 
Email_Confirmation00 '
>00' (
Email_Confirmation00) ;
{00< =
get00> A
;00A B
set00C F
;00F G
}00H I
public11 
DbSet11 
<11 
Administrator11 "
>11" #
Administrator11$ 1
{112 3
get114 7
;117 8
set119 <
;11< =
}11> ?
public22 
DbSet22 
<22 
Shopping_Cart_Has22 &
>22& '
Shopping_Cart_Has22( 9
{22: ;
get22< ?
;22? @
set22A D
;22D E
}22F G
public33 
DbSet33 
<33 
Product_Photos33 #
>33# $
Product_Photos33% 3
{334 5
get336 9
;339 :
set33; >
;33> ?
}33@ A
public44 
DbSet44 
<44 
Service_Photos44 #
>44# $
Service_Photos44% 3
{444 5
get446 9
;449 :
set44; >
;44> ?
}44@ A
public55 
DbSet55 
<55 
HasSupplies55  
>55  !
HasSupplies55" -
{55. /
get550 3
;553 4
set555 8
;558 9
}55: ;
public66 
DbSet66 
<66 

Has_Status66 
>66  

Has_Status66! +
{66, -
get66. 1
;661 2
set663 6
;666 7
}668 9
public77 
DbSet77 
<77 
Status77 
>77 
Status77 #
{77$ %
get77& )
;77) *
set77+ .
;77. /
}770 1
public88 
DbSet88 
<88 
Personalized_Status88 (
>88( )
Personalized_Status88* =
{88> ?
get88@ C
;88C D
set88E H
;88H I
}88J K
public99 
DbSet99 
<99 
Report99 
>99 
Report99 #
{99$ %
get99& )
;99) *
set99+ .
;99. /
}990 1
public:: 
DbSet:: 
<:: 
Keywords:: 
>:: 
Keyword:: &
{::' (
get::) ,
;::, -
set::. 1
;::1 2
}::3 4
public;; 
DbSet;; 
<;; 
Has_Keyword;;  
>;;  !
Has_Keyword;;" -
{;;. /
get;;0 3
;;;3 4
set;;5 8
;;;8 9
};;: ;
public<< 
DbSet<< 
<<< 
Has_Keyword_Service<< (
><<( )
Has_Keyword_Service<<* =
{<<> ?
get<<@ C
;<<C D
set<<E H
;<<H I
}<<J K
public== 
DbSet== 
<== 
Phones== 
>== 
Phones== #
{==$ %
get==& )
;==) *
set==+ .
;==. /
}==0 1
public>> 
DbSet>> 
<>> 
Shopping_Cart>> "
>>>" #
Shopping_Cart>>$ 1
{>>2 3
get>>4 7
;>>7 8
set>>9 <
;>>< =
}>>> ?
public?? 
DbSet?? 
<?? 
Alliance?? 
>?? 
Alliance?? '
{??( )
get??* -
;??- .
set??/ 2
;??2 3
}??4 5
	protected@@ 
override@@ 
void@@ 
OnModelCreating@@  /
(@@/ 0
ModelBuilder@@0 <
modelBuilder@@= I
)@@I J
{AA 	
modelBuilderCC 
.CC 
EntityCC 
<CC  
Is_OfferCC  (
>CC( )
(CC) *
)CC* +
.DD 
HasKeyDD 
(DD 
oDD 
=>DD 
newDD  
{DD! "
oDD# $
.DD$ %
Offer_IDDD% -
,DD- .
oDD/ 0
.DD0 1
Code_IDDD1 8
,DD8 9
oDD: ;
.DD; <

User_EmailDD< F
,DDF G
oDDH I
.DDI J
Category_IDDDJ U
}DDV W
)DDW X
;DDX Y
varFF 
likesFF 
=FF 
modelBuilderFF $
.FF$ %
EntityFF% +
<FF+ ,
LikesFF, 1
>FF1 2
(FF2 3
)FF3 4
;FF4 5
likesGG 
.GG 
HasKeyGG 
(GG 
bGG 
=>GG 
newGG !
{GG" #
bGG# $
.GG$ %
Members_EmailGG% 2
,GG2 3
bGG4 5
.GG5 6
Category_IdGG6 A
}GGA B
)GGB C
;GGC D
varII 
shoppingCartHasII 
=II  !
modelBuilderII" .
.II. /
EntityII/ 5
<II5 6
Shopping_Cart_HasII6 G
>IIG H
(IIH I
)III J
;IIJ K
shoppingCartHasJJ 
.JJ 
HasKeyJJ "
(JJ" #
cJJ# $
=>JJ% '
newJJ( +
{JJ, -
cJJ. /
.JJ/ 0
EmailJJ0 5
,JJ5 6
cJJ7 8
.JJ8 9
Code_IDJJ9 @
,JJ@ A
cJJB C
.JJC D
Entrepreneur_EmailJJD V
,JJV W
cJJX Y
.JJY Z
Category_IDJJZ e
}JJf g
)JJg h
;JJh i
varLL 
has_KeywordLL 
=LL 
modelBuilderLL *
.LL* +
EntityLL+ 1
<LL1 2
Has_KeywordLL2 =
>LL= >
(LL> ?
)LL? @
;LL@ A
has_KeywordMM 
.MM 
HasKeyMM 
(MM 
hMM  
=>MM! #
newMM$ '
{MM( )
hMM* +
.MM+ ,

Keyword_IDMM, 6
,MM6 7
hMM8 9
.MM9 :

Product_IDMM: D
,MMD E
hMMF G
.MMG H
Product_Category_IDMMH [
,MM[ \
hMM] ^
.MM^ _&
Product_Entrepreneur_EmailMM_ y
}MMy z
)MMz {
;MM{ |
varOO 
has_Keyword_serviceOO #
=OO$ %
modelBuilderOO& 2
.OO2 3
EntityOO3 9
<OO9 :
Has_Keyword_ServiceOO: M
>OOM N
(OON O
)OOO P
;OOP Q
has_Keyword_servicePP 
.PP  
HasKeyPP  &
(PP& '
sPP' (
=>PP) +
newPP, /
{PP0 1
sPP2 3
.PP3 4

Keyword_IDPP4 >
,PP> ?
sPP@ A
.PPA B

Service_IDPPB L
,PPL M
sPPN O
.PPO P
Service_Category_IDPPP c
,PPc d
sPPe f
.PPf g'
Service_Entrepreneur_Email	PPg Å
}
PPÅ Ç
)
PPÇ É
;
PPÉ Ñ
}QQ 	
}SS 
}TT ñ3
ÉC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\EmprendeUCR_WebApplication\Data\Contexts\SqlDbContextPandemic.cs
	namespace 	&
EmprendeUCR_WebApplication
 $
.$ %
Data% )
.) *
Contexts* 2
{		 
public

 

class

  
SqlDbContextPandemic

 %
:

& '
	DbContext

( 1
{ 
public  
SqlDbContextPandemic "
(" #
DbContextOptions# 3
<3 4 
SqlDbContextPandemic4 H
>H I
optionsJ Q
)Q R
: 
base 
( 
options 
) 
{ 	
} 	
public 
DbSet 
< 
Product 
> 
Product %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
public 
DbSet 
< 
Province 
> 
Province '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
public 
DbSet 
< 
District 
> 
District '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
public 
DbSet 
< 
Canton 
> 
Canton #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 
DbSet 
< 
User 
> 
User 
{  !
get" %
;% &
set' *
;* +
}, -
public 
DbSet 
< 
Credentials  
>  !
Credentials" -
{. /
get0 3
;3 4
set5 8
;8 9
}: ;
public 
DbSet 
< 
Category 
> 
Category '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
public 
DbSet 
< 
Entrepreneur !
>! "
Entrepreneur# /
{0 1
get2 5
;5 6
set7 :
;: ;
}< =
public 
DbSet 
< 
Product_Service $
>$ %
Product_Service& 5
{6 7
get8 ;
;; <
set= @
;@ A
}B C
public 
DbSet 
< 
Likes 
> 
Likes !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
DbSet 
< 
Client 
> 
Client #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 
DbSet 
< 
Members 
> 
Members %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
public 
DbSet 
< 
Email_Confirmation '
>' (
Email_Confirmation) ;
{< =
get> A
;A B
setC F
;F G
}H I
public 
DbSet 
< 
Administrator "
>" #
Administrator$ 1
{2 3
get4 7
;7 8
set9 <
;< =
}> ?
public 
DbSet 
< 
Shopping_Cart_Has &
>& '
Shopping_Cart_Has( 9
{: ;
get< ?
;? @
setA D
;D E
}F G
public   
DbSet   
<   

Is_Able_To   
>    

Is_Able_To  ! +
{  , -
get  . 1
;  1 2
set  3 6
;  6 7
}  8 9
	protected"" 
override"" 
void"" 
OnModelCreating""  /
(""/ 0
ModelBuilder""0 <
modelBuilder""= I
)""I J
{## 	
modelBuilder%% 
.%% 
Entity%% 
<%%  
Is_Offer%%  (
>%%( )
(%%) *
)%%* +
.&& 
HasKey&& 
(&& 
o&& 
=>&& 
new&&  
{&&! "
o&&# $
.&&$ %
Offer_ID&&% -
,&&- .
o&&/ 0
.&&0 1
Code_ID&&1 8
,&&8 9
o&&: ;
.&&; <

User_Email&&< F
,&&F G
o&&H I
.&&I J
Category_ID&&J U
}&&V W
)&&W X
;&&X Y
modelBuilder(( 
.(( 
Entity(( 
<((  

Is_Able_To((  *
>((* +
(((+ ,
)((, -
.)) 
HasKey)) 
()) 
o)) 
=>)) 
new))  
{))! "
o))# $
.))$ %
Email))% *
,))* +
o)), -
.))- .
Permission_Id)). ;
,)); <
o))= >
.))> ?
Role_Id))? F
}))F G
)))G H
;))H I
var++ 
likes++ 
=++ 
modelBuilder++ $
.++$ %
Entity++% +
<+++ ,
Likes++, 1
>++1 2
(++2 3
)++3 4
;++4 5
likes,, 
.,, 
HasKey,, 
(,, 
b,, 
=>,, 
new,, !
{,," #
b,,$ %
.,,% &
Members_Email,,& 3
,,,3 4
b,,5 6
.,,6 7
Category_Id,,7 B
},,C D
),,D E
;,,E F
var.. 
shoppingCartHas.. 
=..  !
modelBuilder.." .
.... /
Entity../ 5
<..5 6
Shopping_Cart_Has..6 G
>..G H
(..H I
)..I J
;..J K
shoppingCartHas// 
.// 
HasKey// "
(//" #
c//# $
=>//% '
new//( +
{//, -
c//. /
./// 0
Email//0 5
,//5 6
c//7 8
.//8 9
Code_ID//9 @
,//@ A
c//B C
.//C D
Entrepreneur_Email//D V
,//V W
c//X Y
.//Y Z
Category_ID//Z e
}//f g
)//g h
;//h i
}00 	
}11 
}22 é
zC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\EmprendeUCR_WebApplication\Data\Context\AppDbContext.cs
	namespace 	&
EmprendeUCR_WebApplication
 $
.$ %
Data% )
.) *
Context* 1
{		 
public

 

class

 
AppDbContext

 
:

 
	DbContext

  )
{ 
public 
AppDbContext 
( 
DbContextOptions ,
<, -
AppDbContext- 9
>9 :
options; B
)B C
: 
base 
( 
options 
) 
{ 	
} 	
public 
DbSet 
< 
Product 
> 
Product %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
public 
DbSet 
< 
Entrepreneur !
>! "
Entrepreneur# /
{0 1
get2 5
;5 6
set7 :
;: ;
}< =
public 
DbSet 
< 
User 
> 
User 
{  !
get" %
;% &
set' *
;* +
}, -
public 
DbSet 
< 
Product_Service $
>$ %
Product_Service& 5
{6 7
get8 ;
;; <
set= @
;@ A
}B C
} 
} ¯
|C:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\EmprendeUCR_WebApplication\Data\Entities\Administrator.cs
	namespace 	&
EmprendeUCR_WebApplication
 $
.$ %
Data% )
.) *
Entities* 2
{		 
public

 

class

 
Administrator

 
{ 
[ 	
Key	 
] 
public 
string 

User_Email  
{! "
get# &
;& '
set( +
;+ ,
}- .
=/ 0
$str1 9
;9 :
} 
} ü
wC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\EmprendeUCR_WebApplication\Data\Entities\Alliance.cs
	namespace 	&
EmprendeUCR_WebApplication
 $
.$ %
Data% )
.) *
Entities* 2
{ 
public		 

class		 
Alliance		 
{

 
[ 	
Key	 
] 
public 
Int32 
Alliance_Id  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
string 

User_Email  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
string 
Ally_User_Email %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
public 
int 
Alliance_Status #
{$ %
get& )
;) *
set+ .
;. /
}0 1
} 
} ú
}C:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\EmprendeUCR_WebApplication\Data\Entities\Banned_Account.cs
	namespace 	&
EmprendeUCR_WebApplication
 $
.$ %
Data% )
.) *
Entities* 2
{		 
public

 
class

 
BannedAccount

 
{ 
[ 
Key 
] 
public 
string	 
	UserEmail 
{ 
get 
;  
set! $
;$ %
}& '
public 
DateTime	 
	BeginDate 
{ 
get !
;! "
set# &
;& '
}( )
public 
DateTime	 

FinishDate 
{ 
get "
;" #
set$ '
;' (
}) *
public 
int	 
Type 
{ 
get 
; 
set 
; 
} 
} 
} â
uC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\EmprendeUCR_WebApplication\Data\Entities\Canton.cs
	namespace 	&
EmprendeUCR_WebApplication
 $
.$ %
Data% )
.) *
Entities* 2
{ 
public		 

class		 
Canton		 
{

 
[ 
Key 	
]	 

public 
string 
Name 
{ 
get 
; 
set "
;" #
}$ %
[ 	
Required	 
] 
public 
string 
Province_Name #
{$ %
get& )
;) *
set+ .
;. /
}0 1
} 
} ·
sC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\EmprendeUCR_WebApplication\Data\Entities\Card.cs
	namespace 	&
EmprendeUCR_WebApplication
 $
.$ %
Data% )
.) *
Entities* 2
{		 
public

 

class

 
Card

 
{ 
[ 	
Key	 
] 
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
public 
bool 
Status 
{ 
get  
;  !
set" %
;% &
}' (
public 
string 
Brand 
{ 
get "
;" #
set$ '
;' (
}) *
} 
} ì
wC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\EmprendeUCR_WebApplication\Data\Entities\Category.cs
	namespace 	&
EmprendeUCR_WebApplication
 $
.$ %
Data% )
.) *
Entities* 2
{ 
public		 

class		 
Category		 
{

 
[ 	
Key	 
] 
public 
int 
Id 
{ 
get 
; 
set  
;  !
}" #
public 
string 
Title 
{ 
get !
;! "
set# &
;& '
}( )
public 
int 
? 
ParentId 
{ 
get "
;" #
set$ '
;' (
}) *
public 
string 
Description !
{" #
get$ '
;' (
set) ,
;, -
}. /
} 
}   ∫
uC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\EmprendeUCR_WebApplication\Data\Entities\Client.cs
	namespace		 	&
EmprendeUCR_WebApplication		
 $
.		$ %
Data		% )
.		) *
Entities		* 2
{

 
public 

class 
Client 
{ 
[ 	
Key	 
] 
public 
string	 

User_Email 
{ 
get  
;  !
set" %
;% &
}' (
} 
} ≈
ÑC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\EmprendeUCR_WebApplication\Data\Entities\ContextShop\PagedList.cs
	namespace 	&
EmprendeUCR_WebApplication
 $
.$ %
Data% )
.) *
Entities* 2
.2 3
ContextShop3 >
{ 
public		 

class		 
	PagedList		 
<		 
T		 
>		 
:		 
List		  $
<		$ %
T		% &
>		& '
{

 
public 

PagingData 

pagingData $
{% &
get' *
;* +
set, /
;/ 0
}1 2
public 
	PagedList 
( 
List 
< 
T 
>  
items! &
,& '
int( +
count, 1
,1 2
int3 6

pageNumber7 A
,A B
intC F
pageSizeG O
)O P
{ 	

pagingData 
= 
new 

PagingData '
{ 

TotalCount 
= 
count "
," #
PageSize 
= 
pageSize #
,# $
CurrentPage 
= 

pageNumber (
,( )

TotalPages 
= 
( 
int !
)! "
Math" &
.& '
Ceiling' .
(. /
count/ 4
/5 6
(7 8
double8 >
)> ?
pageSize? G
)G H
} 
; 
AddRange 
( 
items 
) 
; 
} 	
public 
static 
	PagedList 
<  
T  !
>! "
ToPagedList# .
(. /
IEnumerable/ :
<: ;
T; <
>< =
source> D
,D E
intF I

pageNumberJ T
,T U
intV Y
pageSizeZ b
)b c
{ 	
var 
count 
= 
source 
. 
Count $
($ %
)% &
;& '
var 
items 
= 
source 
. 
Skip 
( 
( 

pageNumber 
-  !
$num" #
)# $
*% &
pageSize' /
)/ 0
. 
Take 
( 
pageSize 
) 
. 
ToList $
($ %
)% &
;& '
return 
new 
	PagedList  
<  !
T! "
>" #
(# $
items$ )
,) *
count+ 0
,0 1

pageNumber2 <
,< =
pageSize> F
)F G
;G H
} 	
} 
}   «

ÖC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\EmprendeUCR_WebApplication\Data\Entities\ContextShop\PagingData.cs
	namespace 	&
EmprendeUCR_WebApplication
 $
.$ %
Data% )
.) *
Entities* 2
.2 3
ContextShop3 >
{ 
public 

class 

PagingData 
{		 
public

 
int

 
CurrentPage

 
{

  
get

! $
;

$ %
set

& )
;

) *
}

+ ,
public 
int 

TotalPages 
{ 
get  #
;# $
set% (
;( )
}* +
public 
int 
PageSize 
{ 
get !
;! "
set# &
;& '
}( )
public 
int 

TotalCount 
{ 
get  #
;# $
set% (
;( )
}* +
public 
bool 
HasPrevious 
=>  "
CurrentPage# .
>/ 0
$num1 2
;2 3
public 
bool 
HasNext 
=> 
CurrentPage *
<+ ,

TotalPages- 7
;7 8
} 
}  
ÖC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\EmprendeUCR_WebApplication\Data\Entities\ContextShop\PagingLink.cs
	namespace 	&
EmprendeUCR_WebApplication
 $
.$ %
Data% )
.) *
Entities* 2
.2 3
ContextShop3 >
{ 
public 

class 

PagingLink 
{		 
public

 
string

 
Text

 
{

 
get

  
;

  !
set

" %
;

% &
}

' (
public 
int 
Page 
{ 
get 
; 
set "
;" #
}$ %
public 
bool 
Enabled 
{ 
get !
;! "
set# &
;& '
}( )
public 
bool 
Active 
{ 
get  
;  !
set" %
;% &
}' (
public 

PagingLink 
( 
int 
page "
," #
bool$ (
enabled) 0
,0 1
string2 8
text9 =
)= >
{ 	
Page 
= 
page 
; 
Enabled 
= 
enabled 
; 
Text 
= 
text 
; 
} 	
} 
} †

âC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\EmprendeUCR_WebApplication\Data\Entities\ContextShop\ShopParameters.cs
	namespace 	&
EmprendeUCR_WebApplication
 $
.$ %
Data% )
.) *
Entities* 2
.2 3
ContextShop3 >
{ 
public 

class 
ShopParameters 
{		 
const

 
int

 
maxPageSize

 
=

 
$num

  "
;

" #
public 
int 

PageNumber 
{ 
get  #
;# $
set% (
;( )
}* +
=, -
$num. /
;/ 0
private 
int 
	_pageSize 
= 
$num  !
;! "
public 
int 
PageSize 
{ 	
get 
{ 
return 
	_pageSize  
;  !
} 
set 
{ 
	_pageSize 
= 
( 
value "
># $
maxPageSize% 0
)0 1
?2 3
maxPageSize4 ?
:@ A
valueB G
;G H
} 
} 	
} 
} ‡
zC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\EmprendeUCR_WebApplication\Data\Entities\Credentials.cs
	namespace 	&
EmprendeUCR_WebApplication
 $
.$ %
Data% )
.) *
Entities* 2
{ 
public		 

class		 
Credentials		 
{

 
[ 	
Key	 
] 
public 
string 

User_Email  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
string 
Password 
{  
get! $
;$ %
set& )
;) *
}+ ,
} 
} ‡
wC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\EmprendeUCR_WebApplication\Data\Entities\District.cs
	namespace 	&
EmprendeUCR_WebApplication
 $
.$ %
Data% )
.) *
Entities* 2
{ 
public		 

class		 
District		 
{

 
[ 
Key 	
]	 

public 
string 
Name 
{ 
get 
; 
set "
;" #
}$ %
[ 	
Required	 
] 
public 
string 
Province_Name  
{! "
get# &
;& '
set( +
;+ ,
}- .
[ 	
Required	 
] 
public 
string 
Canton_Name 
{  
get! $
;$ %
set& )
;) *
}+ ,
} 
} ÿ	
ÅC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\EmprendeUCR_WebApplication\Data\Entities\Email_Confirmation.cs
	namespace		 	&
EmprendeUCR_WebApplication		
 $
.		$ %
Data		% )
.		) *
Entities		* 2
{

 
public 

class 
Email_Confirmation #
{ 
[ 	
DatabaseGenerated	 
( #
DatabaseGeneratedOption 2
.2 3
Identity3 ;
); <
]< =
[ 	
Key	 
] 
public 
string 
Email 
{ 
get !
;! "
set# &
;& '
}( )
public 
string 
	Hash_Code 
{  !
get" %
;% &
set' *
;* +
}, -
public 
DateTime 
Creation_Date %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
public 
DateTime 
Expiration_Date '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
} 
} Ê
{C:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\EmprendeUCR_WebApplication\Data\Entities\Entrepreneur.cs
	namespace 	&
EmprendeUCR_WebApplication
 $
.$ %
Data% )
.) *
Entities* 2
{ 
public		 

class		 
Entrepreneur		 
{

 
[ 	
Key	 
] 
public 
string 

User_Email  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
string 
Presentation "
{# $
get% (
;( )
set* -
;- .
}/ 0
} 
} ◊
uC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\EmprendeUCR_WebApplication\Data\Entities\Global.cs
	namespace 	&
EmprendeUCR_WebApplication
 $
.$ %
Data% )
.) *
Entities* 2
{ 
public 

class 
Global 
{		 
public

 
static

 
string

 
ConnectionString

 -
{

. /
get

0 3
;

3 4
set

5 8
;

8 9
}

: ;
public 
static 
string 

DomainName '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
} 
} õ
zC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\EmprendeUCR_WebApplication\Data\Entities\HasSupplies.cs
	namespace 	&
EmprendeUCR_WebApplication
 $
.$ %
Data% )
.) *
Entities* 2
{ 
public		 

class		 
HasSupplies		 
{

 
public 
int 
Code_ID 
{ 
get  
;  !
set" %
;% &
}' (
public 
string 
Entrepreneur_Email (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
public 
int 
Category_ID 
{  
get! $
;$ %
set& )
;) *
}+ ,
[ 	
Key	 
] 
public 
int 

Supplie_ID 
{ 
get  #
;# $
set% (
;( )
}* +
} 
} Û
yC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\EmprendeUCR_WebApplication\Data\Entities\Is_Able_To.cs
	namespace 	&
EmprendeUCR_WebApplication
 $
.$ %
Data% )
.) *
Entities* 2
{ 
public		 

class		 

Is_Able_To		 
{

 
[ 	
Key	 
] 
public 
string 
Email 
{ 
get !
;! "
set# &
;& '
}( )
public 
int 
Role_Id 
{ 
get  
;  !
set" %
;% &
}' (
public 
int 
Permission_Id  
{! "
get# &
;& '
set( +
;+ ,
}- .
} 
} €
ÇC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\EmprendeUCR_WebApplication\Data\Entities\Keyword\Has_Keyword.cs
	namespace 	&
EmprendeUCR_WebApplication
 $
.$ %
Data% )
.) *
Entities* 2
.2 3
Keyword3 :
{ 
public		 

class		 
Has_Keyword		 
{

 
public 
int 

Product_ID 
{ 
get  #
;# $
set% (
;( )
}* +
public 
string &
Product_Entrepreneur_Email 0
{1 2
get3 6
;6 7
set8 ;
;; <
}= >
public 
int 
Product_Category_ID &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
[ 	
Key	 
] 
public 
int 

Keyword_ID 
{ 
get  #
;# $
set% (
;( )
}* +
} 
} Î
äC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\EmprendeUCR_WebApplication\Data\Entities\Keyword\Has_Keyword_Service.cs
	namespace 	&
EmprendeUCR_WebApplication
 $
.$ %
Data% )
.) *
Entities* 2
.2 3
Keyword3 :
{ 
public		 

class		 
Has_Keyword_Service		 $
{

 
public 
int 

Service_ID 
{ 
get  #
;# $
set% (
;( )
}* +
public 
string &
Service_Entrepreneur_Email 0
{1 2
get3 6
;6 7
set8 ;
;; <
}= >
public 
int 
Service_Category_ID &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
[ 	
Key	 
] 
public 
int 

Keyword_ID 
{ 
get  #
;# $
set% (
;( )
}* +
} 
} ˜
~C:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\EmprendeUCR_WebApplication\Data\Entities\Keyword\Keyword.cs
	namespace 	&
EmprendeUCR_WebApplication
 $
.$ %
Data% )
.) *
Entities* 2
.2 3
Keyword3 :
{ 
public		 

class		 
Keywords		 
{

 
[ 	
Key	 
] 
public 
int 
Id 
{ 
get 
; 
set  
;  !
}" #
public 
string 
Title 
{ 
get !
;! "
set# &
;& '
}( )
} 
} ã
tC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\EmprendeUCR_WebApplication\Data\Entities\Likes.cs
	namespace 	&
EmprendeUCR_WebApplication
 $
.$ %
Data% )
.) *
Entities* 2
{ 
public		 
class		 
Likes		 
{

 
[ 
Key 
] 
public 
string	 
Members_Email 
{ 
get  #
;# $
set% (
;( )
}* +
[ 
Required 
] 
public 
int	 
Category_Id 
{ 
get 
; 
set  #
;# $
}% &
} 
} ´
sC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\EmprendeUCR_WebApplication\Data\Entities\Mail.cs
	namespace 	&
EmprendeUCR_WebApplication
 $
.$ %
Data% )
.) *
Entities* 2
{ 
public 

class 
Mail 
{		 
public

 
string

 

FromMailId

  
{

! "
get

# &
;

& '
set

( +
;

+ ,
}

- .
=

/ 0
$str

1 I
;

I J
public 
string 
FromMailIdPassword (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
=7 8
$str9 F
;F G
public 
List 
< 
string 
> 
	ToMailIds %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
=4 5
new6 9
List: >
<> ?
string? E
>E F
(F G
)G H
;H I
public 
string 
Subject 
{ 
get  #
;# $
set% (
;( )
}* +
=, -
$str. 0
;0 1
public 
string 
Body 
{ 
get  
;  !
set" %
;% &
}' (
=) *
$str+ -
;- .
public 
bool 

IsBodyHtml 
{  
get! $
;$ %
set& )
;) *
}+ ,
=- .
true/ 3
;3 4
public 
List 
< 
string 
> 
Attachements (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
=7 8
new9 <
List= A
<A B
stringB H
>H I
(I J
)J K
;K L
} 
} √

vC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\EmprendeUCR_WebApplication\Data\Entities\Members.cs
	namespace 	&
EmprendeUCR_WebApplication
 $
.$ %
Data% )
.) *
Entities* 2
{		 
public

 
class

 
Members

 
{ 
[ 	
DatabaseGenerated	 
( #
DatabaseGeneratedOption 2
.2 3
Identity3 ;
); <
]< =
[ 	
Key	 
] 
public 
string	 

User_Email 
{ 
get  
;  !
set" %
;% &
}' (
public 
int 
Score 
{ 
get 
; 
set  #
;# $
}% &
public 
double 
Lat 
{ 
get 
;  
set! $
;$ %
}& '
public 
double 
Long 
{ 
get  
;  !
set" %
;% &
}' (
public 
string 
	Direction 
{  !
get" %
;% &
set' *
;* +
}, -
} 
} «
uC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\EmprendeUCR_WebApplication\Data\Entities\Phones.cs
	namespace 	&
EmprendeUCR_WebApplication
 $
.$ %
Data% )
.) *
Entities* 2
{ 
public		 

class		 
Phones		 
{

 
[ 	
Key	 
] 
public 
string 

User_Email  
{! "
get# &
;& '
set( +
;+ ,
}- .
[ 	
RegularExpression	 
( 
$str (
)( )
]) *
public 
string 
Phone_Number "
{# $
get% (
;( )
set* -
;- .
}/ 0
} 
} —
vC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\EmprendeUCR_WebApplication\Data\Entities\Product.cs
	namespace		 	&
EmprendeUCR_WebApplication		
 $
.		$ %
Data		% )
.		) *
Entities		* 2
{

 
public 

class 
Product 
{ 
[ 	
Key	 
] 
public 
int 
Code_ID 
{ 
get  
;  !
set" %
;% &
}' (
public 
string 
Entrepreneur_Email (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
[ 	
Required	 
] 
public 
int 
Category_ID 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
string 
Product_Name "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
string 
Product_Description )
{* +
get, /
;/ 0
set1 4
;4 5
}6 7
[ 	
Required	 
] 
public 
int 
Price 
{ 
get 
; 
set  #
;# $
}% &
} 
public 

class "
CreateValidatorProduct '
:( )
AbstractValidator* ;
<; <
Product< C
>C D
{ 
public "
CreateValidatorProduct %
(% &
)& '
{ 	
RuleFor 
( 
x 
=> 
x 
. 
Product_Name '
)' (
. 
NotEmpty 
( 
) 
. 
WithMessage '
(' (
$str( U
)U V
;V W
RuleFor   
(   
x   
=>   
x   
.   
Price    
)    !
.!! 
GreaterThan!! 
(!! 
$num!! 
)!! 
.!! 
WithMessage!! *
(!!* +
$str!!+ I
)!!I J
;!!J K
RuleFor"" 
("" 
x"" 
=>"" 
x"" 
."" 
Price""  
)""  !
.## 
NotEmpty## 
(## 
)## 
.## 
WithMessage## &
(##& '
$str##' G
)##G H
;##H I
RuleFor$$ 
($$ 
x$$ 
=>$$ 
x$$ 
.$$ 
Category_ID$$ &
)$$& '
.%% 
NotEmpty%% 
(%% 
)%% 
.%% 
WithMessage%% '
(%%' (
$str%%( H
)%%H I
;%%I J
}&& 	
}'' 
}(( É
}C:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\EmprendeUCR_WebApplication\Data\Entities\Product_Photos.cs
	namespace 	&
EmprendeUCR_WebApplication
 $
.$ %
Data% )
.) *
Entities* 2
{ 
public 

class 
Product_Photos 
{ 
[ 	
DatabaseGenerated	 
( #
DatabaseGeneratedOption 2
.2 3
Identity3 ;
); <
]< =
[ 	
Key	 
] 
public 
int 
Product_Photos_ID $
{% &
get' *
;* +
set, /
;/ 0
}1 2
public   
int   
Code_ID   
{   
get    
;    !
set  " %
;  % &
}  ' (
public!! 
string!! 
Entrepreneur_Email!! (
{!!) *
get!!+ .
;!!. /
set!!0 3
;!!3 4
}!!5 6
public"" 
int"" 
Category_ID"" 
{""  
get""! $
;""$ %
set""& )
;"") *
}""+ ,
public## 
byte## 
[## 
]## 
Photos## 
{## 
get## "
;##" #
set##$ '
;##' (
}##) *
}$$ 
}%% À	
~C:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\EmprendeUCR_WebApplication\Data\Entities\Product_Service.cs
	namespace 	&
EmprendeUCR_WebApplication
 $
.$ %
Data% )
.) *
Entities* 2
{		 
public

 

class

 
Product_Service

  
{ 
[ 	
DatabaseGenerated	 
( #
DatabaseGeneratedOption 2
.2 3
Identity3 ;
); <
]< =
[ 	
Key	 
] 
public 
int 
Code_ID 
{ 
get  
;  !
set" %
;% &
}' (
public 
string 
Entrepreneur_Email (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
public 
int 
Category_ID 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
Byte 
Availability  
{! "
get# &
;& '
set( +
;+ ,
}- .
} 
} Ω	
âC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\EmprendeUCR_WebApplication\Data\Entities\Product_Service\Has_Status.cs
	namespace 	&
EmprendeUCR_WebApplication
 $
.$ %
Data% )
.) *
Entities* 2
{		 
public

 

class

 

Has_Status

 
{ 
[ 	
Key	 
] 
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
public 
int 
Code_ID 
{ 
get  
;  !
set" %
;% &
}' (
public 
string 
Entrepreneur_Email (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
public 
int 
Category_ID 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
int 
Order 
{ 
get 
; 
set  #
;# $
}% &
} 
} π	
çC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\EmprendeUCR_WebApplication\Data\Entities\Product_Service\Offer\Is_Offer.cs
	namespace 	&
EmprendeUCR_WebApplication
 $
.$ %
Data% )
.) *
Entities* 2
{		 
public

 

class

 
Is_Offer

 
{ 
[ 	
Key	 
] 
public 
int 
Offer_ID 
{ 
get !
;! "
set# &
;& '
}( )
public 
int 
Code_ID 
{ 
get  
;  !
set" %
;% &
}' (
public 
string 

User_Email  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
int 
Category_ID 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
int 
Amount 
{ 
get 
;  
set! $
;$ %
}& '
} 
} ç!
äC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\EmprendeUCR_WebApplication\Data\Entities\Product_Service\Offer\Offer.cs
	namespace 	&
EmprendeUCR_WebApplication
 $
.$ %
Data% )
.) *
Entities* 2
{		 
public

 

class

 
Offer

 
{ 
[ 	
DatabaseGenerated	 
( #
DatabaseGeneratedOption 2
.2 3
Identity3 ;
); <
]< =
[ 	
Key	 
] 
public 
int 
Offer_ID 
{ 
get !
;! "
set# &
;& '
}( )
public 
DateTime 
Initial_Date $
{% &
get' *
;* +
set, /
;/ 0
}1 2
public 
DateTime 
Expire_Date #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 
string 
Offer_Description '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
[ 	
Required	 
] 
public 
int 
Discount 
{ 
get !
;! "
set# &
;& '
}( )
public 
bool 
isTypeOfferCombo $
($ %
List% )
<) *
Is_Offer* 2
>2 3
relatedIs_Offers4 D
)D E
{ 	
return 
relatedIs_Offers #
.# $
Count$ )
>* +
$num, -
;- .
} 	
public 
bool 
isValidDate 
(  
Offer  %
offer& +
)+ ,
{- .
if 
( 
offer 
. 
Initial_Date "
># $
Expire_Date% 0
||1 3
offer4 9
.9 :
Expire_Date: E
<=F H
DateTimeI Q
.Q R
TodayR W
)W X
{   
return"" 
false"" 
;"" 
}## 
return$$ 
true$$ 
;$$ 
}%% 	
public'' 
bool'' 
isValidDiscount'' #
(''# $
Offer''$ )
offer''* /
,''/ 0
List''1 5
<''5 6
Product''6 =
>''= >
relatedProducts''? N
,''N O
List''P T
<''T U
Service''U \
>''\ ]
relatedServices''^ m
)''m n
{(( 	
if** 
(** 
offer** 
.** 
Discount** 
<=** !
$num**" #
||**$ &
String**' -
.**- .
IsNullOrEmpty**. ;
(**; <
offer**< A
.**A B
Discount**B J
.**J K
ToString**K S
(**S T
)**T U
)**U V
)**V W
{++ 
return,, 
false,, 
;,, 
}-- 
int.. )
totalOfTheOfferOriginalAmount.. -
=... /
$num..0 1
;..1 2
foreach11 
(11 
var11 
product11  
in11! #
relatedProducts11$ 3
)113 4
{22 )
totalOfTheOfferOriginalAmount33 -
+=33. 0
product331 8
.338 9
Price339 >
;33> ?
}44 
foreach66 
(66 
var66 
service66  
in66! #
relatedServices66$ 3
)663 4
{77 )
totalOfTheOfferOriginalAmount88 -
+=88. 0
service881 8
.888 9
Price_per_hour889 G
;88G H
}99 
if;; 
(;; )
totalOfTheOfferOriginalAmount;; -
<;;. /
offer;;0 5
.;;5 6
Discount;;6 >
);;> ?
{<< 
return== 
false== 
;== 
}>> 
return@@ 
true@@ 
;@@ 
}AA 	
}BB 
}CC ≈
íC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\EmprendeUCR_WebApplication\Data\Entities\Product_Service\Personalized_Status.cs
	namespace 	&
EmprendeUCR_WebApplication
 $
.$ %
Data% )
.) *
Entities* 2
{		 
public

 

class

 
Personalized_Status

 $
{ 
[ 	
Key	 
] 
[ 	

ForeignKey	 
( 
$str 
) 
] 
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
} 
} 
éC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\EmprendeUCR_WebApplication\Data\Entities\Product_Service\Service\Service.cs
	namespace 	&
EmprendeUCR_WebApplication
 $
.$ %
Data% )
.) *
Entities* 2
{		 
public

 

class

 
Service

 
{ 
[ 	
Key	 
] 
public 
int 
Code_ID 
{ 
get  
;  !
set" %
;% &
}' (
public 
string 
Entrepreneur_Email (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
public 
int 
Category_ID 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
string 
Service_Name "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
string 
Service_Description )
{* +
get, /
;/ 0
set1 4
;4 5
}6 7
public 
int 
Price_per_hour !
{" #
get$ '
;' (
set) ,
;, -
}. /
} 
public 

class "
CreateValidatorService '
:( )
AbstractValidator* ;
<; <
Service< C
>C D
{ 
public "
CreateValidatorService %
(% &
)& '
{ 	
RuleFor 
( 
x 
=> 
x 
. 
Service_Name '
)' (
. 
NotEmpty 
( 
) 
. 
WithMessage '
(' (
$str( U
)U V
;V W
RuleFor 
( 
x 
=> 
x 
. 
Price_per_hour )
)) *
.  
GreaterThanOrEqualTo $
($ %
$num% &
)& '
.' (
WithMessage( 3
(3 4
$str4 Z
)Z [
;[ \
RuleFor 
( 
x 
=> 
x 
. 
Category_ID &
)& '
. 
NotEmpty 
( 
) 
. 
WithMessage '
(' (
$str( H
)H I
;I J
}   	
}!! 
}"" ú
ïC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\EmprendeUCR_WebApplication\Data\Entities\Product_Service\Service\Service_Photos.cs
	namespace 	&
EmprendeUCR_WebApplication
 $
.$ %
Data% )
.) *
Entities* 2
{		 
public

 

class

 
Service_Photos

 
{ 
[ 	
DatabaseGenerated	 
( #
DatabaseGeneratedOption 2
.2 3
Identity3 ;
); <
]< =
[ 	
Key	 
] 
public 
int 
Service_Photos_ID $
{% &
get' *
;* +
set, /
;/ 0
}1 2
public 
int 
Code_ID 
{ 
get  
;  !
set" %
;% &
}' (
public 
string 
Entrepreneur_Email (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
public 
int 
Category_ID 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
byte 
[ 
] 
Photos 
{ 
get "
;" #
set$ '
;' (
}) *
} 
} Ï
ÖC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\EmprendeUCR_WebApplication\Data\Entities\Product_Service\Status.cs
	namespace 	&
EmprendeUCR_WebApplication
 $
.$ %
Data% )
.) *
Entities* 2
{		 
public

 

class

 
Status

 
{ 
[ 	
Key	 
] 
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
public 
string 
Previous_State_Name )
{* +
get, /
;/ 0
set1 4
;4 5
}6 7
} 
} ∏
wC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\EmprendeUCR_WebApplication\Data\Entities\Province.cs
	namespace 	&
EmprendeUCR_WebApplication
 $
.$ %
Data% )
.) *
Entities* 2
{ 
public		 

class		 
Province		 
{

 
[ 	
Key	 
] 
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
} 
} ˇ
wC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\EmprendeUCR_WebApplication\Data\Entities\Registro.cs
	namespace 	&
EmprendeUCR_WebApplication
 $
.$ %
Data% )
.) *
Entities* 2
{		 
public

 

class

 
Registro

 
{ 
[ 	
Display	 
( 
Name 
= 
$str ,
), -
]- .
[ 	
Required	 
( 
ErrorMessage 
=  
$str! E
)E F
]F G
[ 	
EmailAddress	 
( 
ErrorMessage "
=# $
$str% B
)B C
]C D
public 
string 
Email 
{ 
get !
;! "
set# &
;& '
}( )
[ 	
Required	 
( 
ErrorMessage 
=  
$str! 7
)7 8
]8 9
[ 	
StringLength	 
( 
$num 
, 
ErrorMessage '
=( )
$str* f
,f g
MinimumLengthh u
=v w
$numx y
)y z
]z {
[ 	
DataType	 
( 
DataType 
. 
Password #
)# $
]$ %
public 
string 
Password 
{  
get! $
;$ %
set& )
;) *
}+ ,
[ 	
Required	 
( 
ErrorMessage 
=  
$str! G
)G H
]H I
[ 	
DataType	 
( 
DataType 
. 
Password #
)# $
]$ %
[ 	
Compare	 
( 
$str 
) 
] 
public 
string 
ConfirmPassword %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
} 
} Ó

~C:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\EmprendeUCR_WebApplication\Data\Entities\ServicePandemic.cs
	namespace 	&
EmprendeUCR_WebApplication
 $
.$ %
Data% )
.) *
Entities* 2
{ 
public		 

class		 
ServicePandemic		  
{

 
[ 	
Key	 
] 
public 
int 
Code_ID 
{ 
get  
;  !
set" %
;% &
}' (
public 
string 
Entrepreneur_Email (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
public 
int 
Category_ID 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
string 
Service_Name "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
string 
Service_Description )
{* +
get, /
;/ 0
set1 4
;4 5
}6 7
public 
int 
Price_per_hour !
{" #
get$ '
;' (
set) ,
;, -
}. /
} 
} √
|C:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\EmprendeUCR_WebApplication\Data\Entities\Shopping_Cart.cs
	namespace 	&
EmprendeUCR_WebApplication
 $
.$ %
Data% )
.) *
Entities* 2
{ 
public		 

class		 
Shopping_Cart		 
{

 
[ 	
Key	 
] 
public 
string 
Email 
{ 
get !
;! "
set# &
;& '
}( )
} 
} À	
ÄC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\EmprendeUCR_WebApplication\Data\Entities\Shopping_Cart_Has.cs
	namespace 	&
EmprendeUCR_WebApplication
 $
.$ %
Data% )
.) *
Entities* 2
{		 
public

 

class

 
Shopping_Cart_Has

 "
{ 
[ 	
DatabaseGenerated	 
( #
DatabaseGeneratedOption 2
.2 3
Identity3 ;
); <
]< =
[ 	
Key	 
] 
public 
string 
Email 
{ 
get !
;! "
set# &
;& '
}( )
public 
int 
Code_ID 
{ 
get  
;  !
set" %
;% &
}' (
public 
string 
Entrepreneur_Email (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
public 
int 
Category_ID 
{  
get! $
;$ %
set& )
;) *
}+ ,
} 
} ¯
ÅC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\EmprendeUCR_WebApplication\Data\Entities\SinpePaymentMethod.cs
	namespace 	&
EmprendeUCR_WebApplication
 $
.$ %
Data% )
.) *
Entities* 2
{		 
public

 

class

 
SinpePaymentMethod

 #
{ 
[ 	
Key	 
] 
public 
int 
Phone_Number 
{  !
get" %
;% &
set' *
;* +
}, -
public 
string 
Entrepreneur_Email (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
} 
} ø	
ÅC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\EmprendeUCR_WebApplication\Data\Entities\Suggested_Category.cs
	namespace 	&
EmprendeUCR_WebApplication
 $
.$ %
Data% )
.) *
Entities* 2
{ 
public		 

class		 
Suggested_Category		 #
{

 
[ 	
Key	 
] 
public 
int 
ID 
{ 
get 
; 
set  
;  !
}" #
public 
string 
Title 
{ 
get !
;! "
set# &
;& '
}( )
public 
string 
Description !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
int 
? 
ParentID 
{ 
get "
;" #
set$ '
;' (
}) *
public## 
int## 
Status## 
{## 
get## 
;##  
set##! $
;##$ %
}##& '
}$$ 
}%% ‚
sC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\EmprendeUCR_WebApplication\Data\Entities\User.cs
	namespace 	&
EmprendeUCR_WebApplication
 $
.$ %
Data% )
.) *
Entities* 2
{		 
public

 
class

 
User

 
{ 
[ 
Key 
] 
[ 
Required 
] 
public 
string	 
Email 
{ 
get 
; 
set  
;  !
}" #
[ 
StringLength 
( 
$num 
) 
] 
public 
string	 
Name 
{ 
get 
; 
set 
;  
}! "
[ 
StringLength 
( 
$num 
) 
] 
public 
string	 
F_Last_Name 
{ 
get !
;! "
set# &
;& '
}( )
[ 
StringLength 
( 
$num 
) 
] 
public 
string	 
S_Last_Name 
{ 
get !
;! "
set# &
;& '
}( )
public 
byte	 
[ 
] 
Photo 
{ 
get 
; 
set  
;  !
}" #
public 
DateTime	 

Birth_Date 
{ 
get "
;" #
set$ '
;' (
}) *
=+ ,
DateTime- 5
.5 6
Now6 9
;9 :
public 
string	 
Province_Name 
{ 
get  #
;# $
set% (
;( )
}* +
=, -
$str. 0
;0 1
public 
string	 
Canton_Name 
{ 
get !
;! "
set# &
;& '
}( )
=* +
$str, .
;. /
public 
string	 
District_Name 
{ 
get  #
;# $
set% (
;( )
}* +
=, -
$str. 0
;0 1
public 
bool	 
Email_Confirmation  
{! "
get# &
;& '
set( +
;+ ,
}- .
=/ 0
false1 6
;6 7
} 
} Ÿ
ÉC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\EmprendeUCR_WebApplication\Data\Services\AdministratorService.cs
	namespace		 	&
EmprendeUCR_WebApplication		
 $
.		$ %
Data		% )
.		) *
Services		* 2
{

 
public 

class  
AdministratorService %
:% &
	PageModel& /
{ 
private 
readonly &
EmprendeUCR_WebApplication 3
.3 4
Data4 8
.8 9
Contexts9 A
.A B
SqlServerDbContextB T
_contextU ]
;] ^
public  
AdministratorService #
(# $&
EmprendeUCR_WebApplication$ >
.> ?
Data? C
.C D
ContextsD L
.L M
SqlServerDbContextM _
context` g
)g h
{ 	
_context 
= 
context 
; 
} 	
public 
void 
AddAdministrator $
($ %
Administrator% 2
administrator3 @
)@ A
{ 	
_context 
. 
Administrator "
." #
Add# &
(& '
administrator' 4
)4 5
;5 6
_context 
. 
SaveChanges  
(  !
)! "
;" #
} 	
public 
async 
Task 
< 
Administrator '
>' (
GetByEmailAsync) 8
(8 9
string9 ?
email@ E
)E F
{ 	
return 
await 
_context !
.! "
Administrator" /
./ 0
	FindAsync0 9
(9 :
email: ?
)? @
;@ A
} 	
public 
async 
Task 
< 
bool 
> 
UpdateAsync  +
(+ ,
Administrator, 9
admin: ?
)? @
{   	
_context!! 
.!! 
Administrator!! "
.!!" #
Update!!# )
(!!) *
admin!!* /
)!!/ 0
;!!0 1
await"" 
_context"" 
."" 
SaveChangesAsync"" +
(""+ ,
)"", -
;""- .
return## 
true## 
;## 
}$$ 	
}&& 
}'' ì)
êC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\EmprendeUCR_WebApplication\Data\Services\Alliance_Service\Alliance_Service.cs
	namespace 	&
EmprendeUCR_WebApplication
 $
.$ %
Data% )
.) *
Services* 2
{ 
public 

class 
Alliance_Service !
:! "
	PageModel# ,
{ 
private 
readonly &
EmprendeUCR_WebApplication 3
.3 4
Data4 8
.8 9
Contexts9 A
.A B
SqlServerDbContextB T
_contextU ]
;] ^
public 
Alliance_Service 
(  &
EmprendeUCR_WebApplication  :
.: ;
Data; ?
.? @
Contexts@ H
.H I
SqlServerDbContextI [
context\ c
)c d
{e f
_context 
= 
context 
; 
} 	
public 
async 
Task 
< 
IList 
<  
Alliance  (
>( )
>) *
GetAsync+ 3
(3 4
)4 5
{ 	
return 
await 
_context !
.! "
Alliance" *
.* +
ToListAsync+ 6
(6 7
)7 8
;8 9
} 	
public 
async 
Task 
< 
bool 
> &
InsertAllianceServiceAsync  :
(: ;
Alliance; C
allianceD L
)L M
{ 	
Alliance!! 
obj!! 
=!! 
alliance!! #
;!!# $
await"" 
_context"" 
."" 
Alliance"" #
.""# $
AddAsync""$ ,
("", -
obj""- 0
)""0 1
;""1 2
await## 
_context## 
.## 
SaveChangesAsync## +
(##+ ,
)##, -
;##- .
Console$$ 
.$$ 
	WriteLine$$ 
($$ 
obj$$ !
)$$! "
;$$" #
return%% 
true%% 
;%% 
}&& 	
public(( 
void(( 
delete_Alliace(( "
(((" #
Alliance((# +
alliance((, 4
)((4 5
{((6 7
_context)) 
.)) 
Alliance)) 
.)) 
Remove)) $
())$ %
alliance))% -
)))- .
;)). /
_context** 
.** 
SaveChanges**  
(**  !
)**! "
;**" #
}++ 	
public-- 
void-- 
updateAlliance-- "
(--" #
Alliance--# +
alliance--, 4
,--4 5
int--6 9

new_status--: D
)--D E
{.. 	
alliance// 
.// 
Alliance_Status// $
=//% &

new_status//' 1
;//1 2
_context00 
.00 
SaveChanges00  
(00  !
)00! "
;00" #
}11 	
public33 
List33 
<33 
Alliance33 
>33 +
getAlliancesByEntrepreneurEmail33 =
(33= >
string33> D
email33E J
)33J K
{44 	
return55 
_context55 
.55 
Alliance55 $
.55$ %
Where55% *
(55* +
otherEntrepreneur55+ <
=>55= ?
String55@ F
.55F G
Equals55G M
(55M N
otherEntrepreneur55N _
.55_ `

User_Email55` j
,55j k
email55l q
)55q r
||55s u
String55v |
.55| }
Equals	55} É
(
55É Ñ
otherEntrepreneur
55Ñ ï
.
55ï ñ
Ally_User_Email
55ñ •
,
55• ¶
email
55ß ¨
)
55¨ ≠
)
55≠ Æ
.
55Æ Ø
ToList
55Ø µ
(
55µ ∂
)
55∂ ∑
;
55∑ ∏
}66 	
public99 
List99 
<99 
Alliance99 
>99 4
(getAlliancesByEntrepreneurEmailAndStatus99 F
(99F G
string99G M
email99N S
,99S T
int99U X
status99Y _
)99_ `
{:: 	
return;; 
_context;; 
.;; 
Alliance;; $
.;;$ %
Where;;% *
(;;* +
otherEntrepreneur;;+ <
=>;;= ?
(;;@ A
String;;A G
.;;G H
Equals;;H N
(;;N O
otherEntrepreneur;;O `
.;;` a

User_Email;;a k
,;;k l
email;;m r
);;r s
||;;t v
String;;w }
.;;} ~
Equals	;;~ Ñ
(
;;Ñ Ö
otherEntrepreneur
;;Ö ñ
.
;;ñ ó
Ally_User_Email
;;ó ¶
,
;;¶ ß
email
;;® ≠
)
;;≠ Æ
)
;;Æ Ø
&&
;;∞ ≤
otherEntrepreneur
;;≥ ƒ
.
;;ƒ ≈
Alliance_Status
;;≈ ‘
==
;;’ ◊
status
;;ÿ ﬁ
)
;;ﬁ ﬂ
.
;;ﬂ ‡
ToList
;;‡ Ê
(
;;Ê Á
)
;;Á Ë
;
;;Ë È
}<< 	
}>> 
}?? ÷
ÑC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\EmprendeUCR_WebApplication\Data\Services\Banned_AccountService.cs
	namespace 	&
EmprendeUCR_WebApplication
 $
.$ %
Data% )
.) *
Services* 2
{ 
public 

class  
BannedAccountService %
:& '
	PageModel( 1
{ 
private 
readonly &
EmprendeUCR_WebApplication 3
.3 4
Data4 8
.8 9
Contexts9 A
.A B
SqlServerDbContextB T
_contextU ]
;] ^
public  
BannedAccountService #
(# $&
EmprendeUCR_WebApplication$ >
.> ?
Data? C
.C D
ContextsD L
.L M
SqlServerDbContextM _
context` g
)g h
{ 	
_context 
= 
context 
; 
} 	
public 
async 
Task 
< 
IList 
<  
BannedAccount  -
>- .
>. /
GetAsync0 8
(8 9
)9 :
{ 	
return 
await 
_context !
.! "
Banned_Account" 0
.0 1
ToListAsync1 <
(< =
)= >
;> ?
} 	
public 
void 
AddUser 
( 
BannedAccount )
Account* 1
)1 2
{ 	
_context 
. 
Banned_Account #
.# $
Add$ '
(' (
Account( /
)/ 0
;0 1
_context 
. 
SaveChanges !
(! "
)" #
;# $
}   	
public"" 
BannedAccount"" 
GetUserByEmail"" +
(""+ ,
string"", 2
email""3 8
)""8 9
{## 	
return$$
 
_context$$ 
.$$ 
Banned_Account$$ (
.$$( )
Find$$) -
($$- .
email$$. 3
)$$3 4
;$$4 5
}%% 	
}(( 
})) ¶
|C:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\EmprendeUCR_WebApplication\Data\Services\CantonService.cs
	namespace		 	&
EmprendeUCR_WebApplication		
 $
.		$ %
Data		% )
.		) *
Services		* 2
{

 
public 

class 
CantonService 
:  
	PageModel! *
{ 
private 
readonly &
EmprendeUCR_WebApplication 0
.0 1
Data1 5
.5 6
Contexts6 >
.> ?
SqlServerDbContext? Q
_contextR Z
;Z [
public 
CantonService 
( &
EmprendeUCR_WebApplication 4
.4 5
Data5 9
.9 :
Contexts: B
.B C
SqlServerDbContextC U
contextV ]
)] ^
{ 
_context 
= 
context 
; 
} 
public 
async 
Task 
< 
IList 
<  
Canton  &
>& '
>' (
GetAsync) 1
(1 2
)2 3
{ 	
return 
await 
_context !
.! "
Canton" (
.( )
ToListAsync) 4
(4 5
)5 6
;6 7
} 	
public 
IList 
< 
Canton 
> 
GetList !
(! "
string" (
province) 1
)1 2
{ 
return 
_context 
. 
Canton "
." #

FromSqlRaw# -
(- .
$str. M
+N O
provinceP X
+X Y
$strY ]
)] ^
.^ _
ToArray_ f
(f g
)g h
;h i
} 
} 
} ïG
åC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\EmprendeUCR_WebApplication\Data\Services\Categories\AddCategoryService.cs
	namespace 	&
EmprendeUCR_WebApplication
 $
.$ %
Data% )
.) *
Services* 2
.2 3

Categories3 =
{ 
public 

class 
AddCategoryService #
:$ %
	PageModel& /
{ 
public 
AddCategoryService !
(! "
Contexts" *
.* +
SqlServerDbContext+ =
context> E
)E F
{ 	
_context 
= 
context 
; 
CategoryService 
= 
new !
(! "
context" )
)) *
;* + 
ResetAddCategoryData  
(  !
)! "
;" #
} 
private 
readonly 
Contexts !
.! "
SqlServerDbContext" 4
_context5 =
;= >
private 
CategoryService 
CategoryService  /
;/ 0
private 

SfTreeGrid 
< 
Category #
># $
TreeGrid% -
;- .
private 
SfGrid 
< 
Category 
>  
Grid! %
;% &
private 
bool 
TitleDadNotValid %
;% &
private   
bool   
TitleNotValid   "
;  " #
private!! 
Category!! 
SelectedCategory!! )
;!!) *
public'' 
bool'' 
AddDialogVisible'' $
;''$ %
public(( 
string(( 
Title(( 
;(( 
public)) 
string)) 
ParentID)) 
;)) 
public** 
string** 
Description** !
;**! "
public++ 
bool++ 
AddCategoryDisabled++ '
;++' (
public33 
void33 !
OpenAddCategoryDialog33 )
(33) *
Category33* 2
category333 ;
)33; <
{44 	
SelectedCategory55 
=55 
category55 '
;55' (
this66 
.66 
AddDialogVisible66 !
=66" #
true66$ (
;66( )
}77 	
public@@ 
void@@ "
CloseAddCategoryDialog@@ *
(@@* +
)@@+ ,
{AA 	
thisBB 
.BB 
AddDialogVisibleBB !
=BB" #
falseBB$ )
;BB) * 
ResetAddCategoryDataCC  
(CC  !
)CC! "
;CC" #
}DD 	
publicLL 
voidLL 
ValidateTitleLL !
(LL! "
	MicrosoftLL" +
.LL+ ,

AspNetCoreLL, 6
.LL6 7

ComponentsLL7 A
.LLA B
ChangeEventArgsLLB Q
argsLLR V
)LLV W
{MM 	
TitleNotValidNN 
=NN 
trueNN  
;NN  !
TitleOO 
=OO 
(OO 
StringOO 
)OO 
argsOO  
.OO  !
ValueOO! &
;OO& '
ifPP 
(PP 
TitlePP 
.PP 
LengthPP 
>PP 
$numPP  
)PP  !
{QQ 
ifRR 
(RR 
CategoryServiceRR #
.RR# $
ValidateTitleRR$ 1
(RR1 2
TitleRR2 7
)RR7 8
==RR9 ;
trueRR< @
)RR@ A
{SS 
TitleNotValidTT !
=TT" #
falseTT$ )
;TT) *
}UU 
}VV 
AddCategoryDisabledWW 
=WW  !
TitleNotValidWW" /
||WW0 2
TitleDadNotValidWW3 C
;WWC D
}XX 	
publicZZ 
asyncZZ 
voidZZ 
AddCategoryZZ %
(ZZ% &

SfTreeGridZZ& 0
<ZZ0 1
CategoryZZ1 9
>ZZ9 :
mainZZ; ?
)ZZ? @
{[[ 	
this\\ 
.\\ 
TreeGrid\\ 
=\\ 
main\\  
;\\  !
this]] 
.]] 
AddDialogVisible]] !
=]]" #
false]]$ )
;]]) *
Category^^ 
Category^^ 
=^^ 
new^^  #
Category^^$ ,
(^^, -
)^^- .
;^^. /
Category`` 
.`` 
Title`` 
=`` 
Title`` "
;``" #
Categoryaa 
.aa 
Descriptionaa  
=aa! "
Descriptionaa# .
;aa. /
Consolebb 
.bb 
	WriteLinebb 
(bb 
ParentIDbb &
)bb& '
;bb' (
ifcc 
(cc 
ParentIDcc 
!=cc 
nullcc  
)cc  !
{dd 
Categoryee 
.ee 
ParentIdee !
=ee" #
intee$ '
.ee' (
Parseee( -
(ee- .
ParentIDee. 6
)ee6 7
;ee7 8
}ff 
awaitgg 
InsertCategoryAsyncgg %
(gg% &
Categorygg& .
)gg. /
;gg/ 0
varhh 
ParentIDIndexhh 
=hh 
TreeGridhh  (
.hh( )#
GetRowIndexByPrimaryKeyhh) @
(hh@ A
CategoryhhA I
.hhI J
ParentIdhhJ R
)hhR S
.hhS T
ResulthhT Z
;hhZ [
ifii 
(ii 
ParentIDIndexii 
<ii 
$numii  !
)ii! "
{jj 
awaitkk 
thiskk 
.kk 
TreeGridkk #
.kk# $
	AddRecordkk$ -
(kk- .
Categorykk. 6
,kk6 7
$numkk8 9
,kk9 :
RowPositionkk; F
.kkF G
TopkkG J
)kkJ K
;kkK L
}ll 
elsemm 
{nn 
awaitoo 
thisoo 
.oo 
TreeGridoo #
.oo# $
	AddRecordoo$ -
(oo- .
Categoryoo. 6
,oo6 7
ParentIDIndexoo8 E
,ooE F
RowPositionooG R
.ooR S
ChildooS X
)ooX Y
;ooY Z
}pp  
ResetAddCategoryDataqq  
(qq  !
)qq! "
;qq" #
}rr 	
publicss 
asyncss 
voidss 
AddCategoryGss &
(ss& '
)ss' (
{tt 	
thisuu 
.uu 
AddDialogVisibleuu !
=uu" #
falseuu$ )
;uu) *
Categoryvv 
Categoryvv 
=vv 
newvv  #
Categoryvv$ ,
(vv, -
)vv- .
;vv. /
Categoryxx 
.xx 
Titlexx 
=xx 
Titlexx "
;xx" #
Categoryyy 
.yy 
Descriptionyy  
=yy! "
Descriptionyy# .
;yy. /
Consolezz 
.zz 
	WriteLinezz 
(zz 
ParentIDzz &
)zz& '
;zz' (
if{{ 
({{ 
ParentID{{ 
!={{ 
null{{  
){{  !
{|| 
Category}} 
.}} 
ParentId}} !
=}}" #
int}}$ '
.}}' (
Parse}}( -
(}}- .
ParentID}}. 6
)}}6 7
;}}7 8
}~~ 
await 
InsertCategoryAsync %
(% &
Category& .
). /
;/ 0"
ResetAddCategoryData
ÄÄ  
(
ÄÄ  !
)
ÄÄ! "
;
ÄÄ" #
}
ÅÅ 	
public
ââ 
void
ââ "
ResetAddCategoryData
ââ (
(
ââ( )
)
ââ) *
{
ää 	
TitleDadNotValid
ãã 
=
ãã 
false
ãã $
;
ãã$ %
TitleNotValid
åå 
=
åå 
true
åå  
;
åå  !
Description
çç 
=
çç 
null
çç 
;
çç 
Title
éé 
=
éé 
null
éé 
;
éé 
ParentID
èè 
=
èè 
null
èè 
;
èè !
AddCategoryDisabled
êê 
=
êê  !
true
êê" &
;
êê& '
SelectedCategory
ëë 
=
ëë 
null
ëë #
;
ëë# $
}
íí 	
public
ôô 
async
ôô 
Task
ôô 
<
ôô 
bool
ôô 
>
ôô !
InsertCategoryAsync
ôô  3
(
ôô3 4
Category
ôô4 <
category
ôô= E
)
ôôE F
{
öö 	
await
õõ 
_context
õõ 
.
õõ 
Category
õõ #
.
õõ# $
AddAsync
õõ$ ,
(
õõ, -
category
õõ- 5
)
õõ5 6
;
õõ6 7
await
úú 
_context
úú 
.
úú 
SaveChangesAsync
úú +
(
úú+ ,
)
úú, -
;
úú- .
return
ùù 
true
ùù 
;
ùù 
}
ûû 	
}
°° 
}¢¢ Òn
âC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\EmprendeUCR_WebApplication\Data\Services\Categories\CategoryService.cs
	namespace

 	&
EmprendeUCR_WebApplication


 $
.

$ %
Data

% )
.

) *
Services

* 2
.

2 3

Categories

3 =
{ 
public 

class 
CategoryService  
:! "
	PageModel# ,
{ 
private 
readonly 
Contexts !
.! "
SqlServerDbContext" 4
_context5 =
;= >

SfTreeGrid 
< 
Category 
> 
TreeGrid %
;% &
public 
CategoryService 
( 
Contexts '
.' (
SqlServerDbContext( :
context; B
)B C
{ 	
_context 
= 
context 
; 
} 	
public 
async 
Task 
< 
IList 
<  
Category  (
>( )
>) *
GetAsync+ 3
(3 4
)4 5
{ 	
return 
await 
_context !
.! "
Category" *
.* +
ToListAsync+ 6
(6 7
)7 8
;8 9
} 	
public%% 
bool%% 
ValidateTitle%% !
(%%! "
String%%" (
title%%) .
)%%. /
{&& 	
if'' 
('' 
_context'' 
.'' 
Category'' !
.''! "
Where''" '
(''' (
c''( )
=>''* ,
c''- .
.''. /
Title''/ 4
.''4 5
Equals''5 ;
(''; <
title''< A
)''A B
)''B C
.''C D
Count''D I
(''I J
)''J K
==''L N
$num''O P
)''P Q
{(( 
return)) 
true)) 
;)) 
}** 
return++ 
false++ 
;++ 
},, 	
public.. 
bool.. 
ValidateDescription.. '
(..' (
String..( .
description../ :
)..: ;
{// 	
if00 
(00 
_context00 
.00 
Category00 !
.00! "
Where00" '
(00' (
c00( )
=>00* ,
c00- .
.00. /
Description00/ :
.00: ;
Equals00; A
(00A B
description00B M
)00M N
)00N O
.00O P
Count00P U
(00U V
)00V W
==00X Z
$num00[ \
)00\ ]
{11 
return22 
true22 
;22 
}33 
return44 
false44 
;44 
}55 	
public;; 
async;; 
Task;; 
ChangeParent;; &
(;;& '
int;;' *
Id;;+ -
,;;- .
int;;/ 2
ParentId;;3 ;
);;; <
{<< 	
Category== 
source== 
=== 
await== #
_context==$ ,
.==, -
Category==- 5
.==5 6
	FindAsync==6 ?
(==? @
Id==@ B
)==B C
;==C D
source>> 
.>> 
ParentId>> 
=>> 
ParentId>> &
;>>& '
if?? 
(?? 
ParentId?? 
==?? 
-?? 
$num?? 
)?? 
{@@ 
sourceAA 
.AA 
ParentIdAA 
=AA  !
nullAA" &
;AA& '
}BB 
_contextCC 
.CC 
CategoryCC 
.CC 
UpdateCC $
(CC$ %
sourceCC% +
)CC+ ,
;CC, -
awaitDD 
_contextDD 
.DD 
SaveChangesAsyncDD +
(DD+ ,
)DD, -
;DD- .
}EE 	
publicLL 
intLL 
getParentIdLL 
(LL 
StringLL %
TitleDadLL& .
)LL. /
{MM 	
CategoryNN 
parentCategoryNN #
=NN$ %
_contextNN& .
.NN. /
CategoryNN/ 7
.NN7 8
WhereNN8 =
(NN= >
cNN> ?
=>NN@ B
cNNC D
.NND E
ParentIdNNE M
.NNM N
EqualsNNN T
(NNT U
TitleDadNNU ]
)NN] ^
)NN^ _
.NN_ `
FirstNN` e
(NNe f
)NNf g
;NNg h
returnOO 
parentCategoryOO !
.OO! "
IdOO" $
;OO$ %
}PP 	
publicWW 
CategoryWW 
getCategoryWW #
(WW# $
intWW$ '
IdWW( *
)WW* +
{XX 	
returnYY 
_contextYY 
.YY 
CategoryYY $
.YY$ %
FindYY% )
(YY) *
IdYY* ,
)YY, -
;YY- .
}ZZ 	
public\\ 
async\\ 
Task\\ 
<\\ 
IList\\ 
<\\  
Product\\  '
>\\' (
>\\( )&
GetProductsByCategoryAsync\\* D
(\\D E
string\\E K
email\\L Q
,\\Q R
int\\S V
category_id\\W b
)\\b c
{]] 	
return^^ 
await^^ 
_context^^ !
.^^! "
Product^^" )
.^^) *
Where^^* /
(^^/ 0
product^^0 7
=>^^8 :
String^^; A
.^^A B
Equals^^B H
(^^H I
product^^I P
.^^P Q
Entrepreneur_Email^^Q c
,^^c d
email^^e j
)^^j k
&&^^l n
product^^o v
.^^v w
Category_ID	^^w Ç
==
^^É Ö
category_id
^^Ü ë
)
^^ë í
.
^^í ì
ToListAsync
^^ì û
(
^^û ü
)
^^ü †
;
^^† °
}`` 	
publiccc 
asynccc 
Taskcc 
<cc 
IListcc 
<cc  
Categorycc  (
>cc( )
>cc) *$
getAllCategoryBySuppliescc+ C
(ccC D
ListccD H
<ccH I
ProductccI P
>ccP Q
productccR Y
,ccY Z
Listcc[ _
<cc_ `
HasSuppliescc` k
>cck l
my_suppliesccm x
)ccx y
{ccz {
Listee 
<ee 
Categoryee 
>ee 

categoriesee %
=ee& '
newee( +
Listee, 0
<ee0 1
Categoryee1 9
>ee9 :
(ee: ;
)ee; <
;ee< =
foreachff 
(ff 
varff 
prodff 
inff  
productff! (
)ff( )
{ff* +
boolgg 
valid_Productgg "
=gg# $
my_suppliesgg% 0
.gg0 1
FindAllgg1 8
(gg8 9
cgg9 :
=>gg; =
cgg> ?
.gg? @

Supplie_IDgg@ J
==ggK M
prodggN R
.ggR S
Category_IDggS ^
)gg^ _
.gg_ `
Countgg` e
(gge f
)ggf g
>ggh i
$numggj k
;ggk l
ifhh 
(hh 
valid_Producthh !
)hh! "
{hh# $
varii 
catii 
=ii 
getCategoryii )
(ii) *
prodii* .
.ii. /
Category_IDii/ :
)ii: ;
;ii; <
ifkk 
(kk 
!kk 

categorieskk #
.kk# $
Containskk$ ,
(kk, -
catkk- 0
)kk0 1
)kk1 2
{kk3 4

categoriesll "
.ll" #
Addll# &
(ll& '
catll' *
)ll* +
;ll+ ,
}mm 
}pp 
}ss 
returnuu 

categoriesuu 
;uu 
}xx 	
public 
bool 
isChildNode 
(  
int  #
Id$ &
)& '
{
ÄÄ 	
bool
ÅÅ 
isChild
ÅÅ 
=
ÅÅ 
false
ÅÅ  
;
ÅÅ  !
if
ÇÇ 
(
ÇÇ 
_context
ÇÇ 
.
ÇÇ 
Category
ÇÇ !
.
ÇÇ! "
Where
ÇÇ" '
(
ÇÇ' (
c
ÇÇ( )
=>
ÇÇ* ,
c
ÇÇ- .
.
ÇÇ. /
ParentId
ÇÇ/ 7
.
ÇÇ7 8
Equals
ÇÇ8 >
(
ÇÇ> ?
Id
ÇÇ? A
)
ÇÇA B
)
ÇÇB C
.
ÇÇC D
Count
ÇÇD I
(
ÇÇI J
)
ÇÇJ K
==
ÇÇL N
$num
ÇÇO P
)
ÇÇP Q
{
ÉÉ 
isChild
ÑÑ 
=
ÑÑ 
true
ÑÑ 
;
ÑÑ 
}
ÖÖ 
return
ÜÜ 
isChild
ÜÜ 
;
ÜÜ 
}
áá 	
public
èè 
async
èè 
void
èè 
Rowdrop
èè !
(
èè! "

Syncfusion
èè" ,
.
èè, -
Blazor
èè- 3
.
èè3 4
Grids
èè4 9
.
èè9 :
RowDragEventArgs
èè: J
<
èèJ K
Category
èèK S
>
èèS T
args
èèU Y
,
èèY Z

SfTreeGrid
èè[ e
<
èèe f
Category
èèf n
>
èèn o
main
èèp t
)
èèt u
{
êê 	
this
ëë 
.
ëë 
TreeGrid
ëë 
=
ëë 
main
ëë  
;
ëë  !
var
íí 
position
íí 
=
íí 
args
íí 
.
íí  
Target
íí  &
.
íí& '
ID
íí' )
;
íí) *
if
ìì 
(
ìì 
position
ìì 
==
ìì 
$str
ìì *
)
ìì* +
{
îî 
var
ïï 
CurrentViewData
ïï #
=
ïï$ %
this
ïï& *
.
ïï* +
TreeGrid
ïï+ 3
.
ïï3 4#
GetCurrentViewRecords
ïï4 I
(
ïïI J
)
ïïJ K
;
ïïK L
var
ññ 
TargetCategory
ññ "
=
ññ# $
CurrentViewData
ññ% 4
.
ññ4 5
	ElementAt
ññ5 >
(
ññ> ?
(
ññ? @
int
ññ@ C
)
ññC D
args
ññD H
.
ññH I
	DropIndex
ññI R
)
ññR S
;
ññS T
var
óó 
SourceCategory
óó "
=
óó# $
CurrentViewData
óó% 4
.
óó4 5
	ElementAt
óó5 >
(
óó> ?
(
óó? @
int
óó@ C
)
óóC D
args
óóD H
.
óóH I
	FromIndex
óóI R
)
óóR S
;
óóS T
await
òò 
ChangeParent
òò "
(
òò" #
SourceCategory
òò# 1
.
òò1 2
Id
òò2 4
,
òò4 5
TargetCategory
òò6 D
.
òòD E
Id
òòE G
)
òòG H
;
òòH I
}
ôô 
else
öö 
{
õõ 
if
úú 
(
úú 
position
úú 
==
úú 
$str
úú  ,
)
úú, -
{
ùù 
var
ûû 
CurrentViewData
ûû '
=
ûû( )
this
ûû* .
.
ûû. /
TreeGrid
ûû/ 7
.
ûû7 8#
GetCurrentViewRecords
ûû8 M
(
ûûM N
)
ûûN O
;
ûûO P
var
üü 
SourceCategory
üü &
=
üü' (
CurrentViewData
üü) 8
.
üü8 9
	ElementAt
üü9 B
(
üüB C
(
üüC D
int
üüD G
)
üüG H
args
üüH L
.
üüL M
	FromIndex
üüM V
)
üüV W
;
üüW X
await
†† 
ChangeParent
†† &
(
††& '
SourceCategory
††' 5
.
††5 6
Id
††6 8
,
††8 9
-
††: ;
$num
††; <
)
††< =
;
††= >
}
°° 
else
¢¢ 
{
££ 
args
§§ 
.
§§ 
Cancel
§§ 
=
§§  !
true
§§" &
;
§§& '
}
•• 
}
¶¶ 
}
ßß 	
public
®® 
string
®® 
GetTitleById
®® "
(
®®" #
int
®®# &
?
®®& '
id
®®( *
)
®®* +
{
©© 	
string
™™ 
title
™™ 
=
™™ 
$str
™™ 
;
™™ 
if
´´ 
(
´´ 
id
´´ 
!=
´´ 
null
´´ 
)
´´ 
{
¨¨ 
title
≠≠ 
=
≠≠ 
_context
≠≠ 
.
≠≠  
Category
≠≠  (
.
≠≠( )
Find
≠≠) -
(
≠≠- .
id
≠≠. 0
)
≠≠0 1
.
≠≠1 2
Title
≠≠2 7
;
≠≠7 8
}
ÆÆ 
return
ØØ 
title
ØØ 
;
ØØ 
}
∞∞ 	
public
∑∑ 
IList
∑∑ 
<
∑∑ 
Category
∑∑ 
>
∑∑ 

getParents
∑∑ )
(
∑∑) *
)
∑∑* +
{
∏∏ 	
return
ππ 
_context
ππ 
.
ππ 
Category
ππ $
.
ππ$ %

FromSqlRaw
ππ% /
(
ππ/ 0
$str
ππ0 _
)
ππ_ `
.
ππ` a
ToArray
ππa h
(
ππh i
)
ππi j
;
ππj k
}
∫∫ 	
public
¡¡ 
IList
¡¡ 
<
¡¡ 
Category
¡¡ 
>
¡¡ 
getChildrenOf
¡¡ ,
(
¡¡, -
int
¡¡- 0
parentId
¡¡1 9
)
¡¡9 :
{
¬¬ 	
return
√√ 
_context
√√ 
.
√√ 
Category
√√ $
.
√√$ %

FromSqlRaw
√√% /
(
√√/ 0
$str
√√0 Z
+
√√[ \
parentId
√√] e
)
√√e f
.
√√f g
ToArray
√√g n
(
√√n o
)
√√o p
;
√√p q
}
ƒƒ 	
public
∆∆ 
string
∆∆ 
GetTitle
∆∆ 
(
∆∆ 
int
∆∆ "
id
∆∆# %
)
∆∆% &
{
∆∆& '
return
«« 
_context
«« 
.
«« 
Category
«« $
.
««$ %
Find
««% )
(
««) *
id
««* ,
)
««, -
.
««- .
Title
««. 3
;
««3 4
}
»» 	
}
…… 
}   ùD
èC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\EmprendeUCR_WebApplication\Data\Services\Categories\DeleteCategoryService.cs
	namespace 	&
EmprendeUCR_WebApplication
 $
.$ %
Data% )
.) *
Services* 2
.2 3

Categories3 =
{ 
public 

class !
DeleteCategoryService &
:' (
	PageModel) 2
{ 
private 
readonly 
Contexts !
.! "
SqlServerDbContext" 4
_context5 =
;= >

SfTreeGrid 
< 
Category 
> 
TreeGrid %
;% &
public !
DeleteCategoryService $
($ %
Contexts% -
.- .
SqlServerDbContext. @
contextA H
)H I
{ 	#
ResetRemoveCategoryData #
(# $
)$ %
;% &
_context 
= 
context 
; 
} 	"
Product_ServiceService 
p_s_service *
;* +
private 
bool 
deleted 
= 
false $
;$ %
private 
int 

SelectedId 
=  
-! "
$num" #
;# $
private 
Category 
SelectedCategory )
;) *
public%% 
bool%% 
deleteNotValid%% "
=%%# $
false%%% *
;%%* +
public&& 
string&& 
Title&& 
=&& 
null&& "
;&&" #
public'' 
bool'' 
RemoveDialogVisible'' '
;''' (
public(( 
bool(( %
RemoveToolbarItemDisabled(( -
;((- .
public.. 
double.. 
SelectedIndex.. #
;..# $
public// 
void// $
OpenRemoveCategoryDialog// ,
(//, -
Category//- 5
category//6 >
)//> ?
{00 	
this11 
.11 
SelectedCategory11 !
=11" #
category11$ ,
;11, -
this22 
.22 
RemoveDialogVisible22 $
=22% &
true22' +
;22+ ,
this33 
.33 

SelectedId33 
=33 
SelectedCategory33 .
.33. /
Id33/ 1
;331 2
this44 
.44 
Title44 
=44 
SelectedCategory44 )
.44) *
Title44* /
;44/ 0
}55 	
public66 
void66 %
CloseRemoveCategoryDialog66 -
(66- .
)66. /
{77 	
this88 
.88 
RemoveDialogVisible88 $
=88% &
false88' ,
;88, -#
ResetRemoveCategoryData99 #
(99# $
)99$ %
;99% &
}:: 	
public<< 
void<< #
ResetRemoveCategoryData<< +
(<<+ ,
)<<, -
{== 	
deleteNotValid>> 
=>> 
false>> "
;>>" #
deleted?? 
=?? 
false?? 
;?? %
RemoveToolbarItemDisabled@@ %
=@@& '
true@@( ,
;@@, -
TitleAA 
=AA 
nullAA 
;AA 

SelectedIdBB 
=BB 
-BB 
$numBB 
;BB 
}CC 	
publicEE 
asyncEE 
voidEE 
RemoveCategoryEE (
(EE( )

SfTreeGridEE) 3
<EE3 4
CategoryEE4 <
>EE< =
mainEE> B
)EEB C
{FF 	
thisGG 
.GG 
TreeGridGG 
=GG 
mainGG  
;GG  !
thisHH 
.HH 
RemoveDialogVisibleHH $
=HH% &
falseHH' ,
;HH, -
RemoveCategoryII 
(II 

SelectedIdII %
)II% &
;II& '
ifJJ 
(JJ 
!JJ 
deletedJJ 
)JJ 
{KK 
varLL 
SelectedIndexLL !
=LL" #
awaitLL$ )
TreeGridLL* 2
.LL2 3#
GetRowIndexByPrimaryKeyLL3 J
(LLJ K
SelectedCategoryLLK [
.LL[ \
IdLL\ ^
)LL^ _
;LL_ `
awaitMM 
TreeGridMM 
.MM 
DeleteRecordMM +
(MM+ ,
$strMM, 4
,MM4 5
SelectedCategoryMM6 F
)MMF G
;MMG H
}NN 
}OO 	
publicPP 
voidPP 
RemoveCategoryPP "
(PP" #
intPP# &
IdPP' )
)PP) *
{QQ 	#
RemoveCategoryRecursiveRR #
(RR# $
IdRR$ &
)RR& '
;RR' (
}TT 	
publicUU 
voidUU #
RemoveCategoryRecursiveUU +
(UU+ ,
intUU, /
IdUU0 2
)UU2 3
{VV 	
IListWW 
<WW 
CategoryWW 
>WW 

listChildsWW &
=WW' (
_contextWW( 0
.WW0 1
CategoryWW1 9
.WW9 :
WhereWW: ?
(WW? @
cWW@ A
=>WWB D
cWWE F
.WWF G
ParentIdWWG O
.WWO P
EqualsWWP V
(WWV W
IdWWW Y
)WWY Z
)WWZ [
.WW[ \
ToListWW\ b
(WWb c
)WWc d
;WWd e
foreachXX 
(XX 
CategoryXX 
categoryXX %
inXX& (

listChildsXX) 3
)XX3 4
{YY 
ifZZ 
(ZZ (
AnyProductsServicesAssociateZZ 0
(ZZ0 1
categoryZZ1 9
.ZZ9 :
IdZZ: <
)ZZ< =
&&ZZ> @
(ZZA B
!ZZB C
deletedZZC J
)ZZJ K
)ZZK L
{[[ #
RemoveCategoryRecursive\\ +
(\\+ ,
category\\, 4
.\\4 5
Id\\5 7
)\\7 8
;\\8 9
}]] 
else^^ 
{__ 
deleted`` 
=`` 
true`` "
;``" #
}aa 
}bb 
ifcc 
(cc 
!cc (
AnyProductsServicesAssociatecc -
(cc- .
Idcc. 0
)cc0 1
)cc1 2
{dd 
deletedee 
=ee 
trueee 
;ee 
}ff 
ifgg 
(gg 
!gg 
deletedgg 
)gg 
{hh 
Categoryii 
CategoryToRemoveii )
=ii* +
_contextii, 4
.ii4 5
Categoryii5 =
.ii= >
Findii> B
(iiB C
IdiiC E
)iiE F
;iiF G
_contextjj 
.jj 
Categoryjj !
.jj! "
Removejj" (
(jj( )
CategoryToRemovejj) 9
)jj9 :
;jj: ;
_contextkk 
.kk 
SaveChangeskk $
(kk$ %
)kk% &
;kk& '
TreeGridll 
.ll 
DeleteRecordll %
(ll% &
Titlell& +
,ll+ ,
SelectedCategoryll- =
)ll= >
;ll> ?
}mm 
ifnn 
(nn 
deletednn 
)nn 
{oo 
deleteNotValidpp 
=pp  
truepp! %
;pp% &
}qq 
}ss 	
publictt 
booltt (
AnyProductsServicesAssociatett 0
(tt0 1
inttt1 4

categoryIdtt5 ?
)tt? @
{uu 	
boolvv 
anyvv 
=vv 
truevv 
;vv 
varww 
productsww 
=ww 
_contextww #
.ww# $
Product_Serviceww$ 3
.ww3 4
Whereww4 9
(ww9 :
pww: ;
=>ww< >
pww? @
.ww@ A
Category_IDwwA L
.wwL M
EqualswwM S
(wwS T

categoryIdwwT ^
)ww^ _
)ww_ `
.ww` a
ToListwwa g
(wwg h
)wwh i
.wwi j
Lengthwwj p
(wwp q
)wwq r
;wwr s
Consolexx 
.xx 
	WriteLinexx 
(xx 
$strxx 4
)xx4 5
;xx5 6
Consoleyy 
.yy 
	WriteLineyy 
(yy 
productsyy &
)yy& '
;yy' (
ifzz 
(zz 
productszz 
!=zz 
$numzz 
)zz 
{{{ 
any|| 
=|| 
false|| 
;|| 
}}} 
return~~ 
any~~ 
;~~ 
} 	
}
ÄÄ 
}ÅÅ öc
çC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\EmprendeUCR_WebApplication\Data\Services\Categories\EditCategoryService.cs
	namespace 	&
EmprendeUCR_WebApplication
 $
.$ %
Data% )
.) *
Services* 2
.2 3

Categories3 =
{ 
public 

class 
EditCategoryService $
:% &
	PageModel' 0
{ 
private 
readonly 
Contexts !
.! "
SqlServerDbContext" 4
_context5 =
;= >
CategoryService 
CategoryService '
;' (

SfTreeGrid 
< 
Category 
> 
TreeGrid %
;% &
public 
EditCategoryService "
(" #
Contexts# +
.+ ,
SqlServerDbContext, >
context? F
)F G
{ 	
CategoryService 
= 
new !
(! "
context" )
)) *
;* +
_context 
= 
context 
; !
ResetEditCategoryData !
(! "
)" #
;# $
} 	
private 
bool  
EditTitleDadNotValid )
;) *
private 
bool 
EditTitleNotValid &
;& '
private 
bool #
EditDescriptionNotValid ,
;, -
private 
double 
EditCategoryIndex (
;( )
private   
int   

SelectedId   
;   
private!! 
Category!! 
SelectedCategory!! )
;!!) *
public&& 
bool&&  
EditCategoryDisabled&& (
;&&( )
public'' 
bool'' 
EditDialogVisible'' %
;''% &
public(( 
bool(( #
EditToolbarItemDisabled(( +
;((+ ,
public)) 
string)) 
EditDescription)) %
;))% &
public** 
string** 
	EditTitle** 
;**  
public++ 
string++ 
EditTitleDad++ "
;++" #
public33 
void33 "
OpenEditCategoryDialog33 *
(33* +
Category33+ 3
category334 <
)33< =
{44 	
SelectedCategory55 
=55 
category55 '
;55' (
	EditTitle66 
=66 
SelectedCategory66 (
.66( )
Title66) .
;66. /
EditDescription77 
=77 
SelectedCategory77 .
.77. /
Description77/ :
;77: ;
this88 
.88 
EditDialogVisible88 "
=88# $
true88% )
;88) *
}99 	
publicAA 
voidAA #
CloseEditCategoryDialogAA +
(AA+ ,
)AA, -
{BB 	
thisCC 
.CC 
EditDialogVisibleCC "
=CC# $
falseCC% *
;CC* +!
ResetEditCategoryDataDD !
(DD! "
)DD" #
;DD# $
}EE 	
publicMM 
asyncMM 
voidMM 
EditCategoryMM &
(MM& '

SfTreeGridMM' 1
<MM1 2
CategoryMM2 :
>MM: ;
mainMM< @
)MM@ A
{NN 	
thisOO 
.OO 
TreeGridOO 
=OO 
mainOO  
;OO  !
thisPP 
.PP 
EditDialogVisiblePP "
=PP# $
falsePP% *
;PP* +
EditCategoryNameQQ 
(QQ 
SelectedCategoryQQ -
.QQ- .
IdQQ. 0
,QQ0 1
	EditTitleQQ2 ;
)QQ; <
;QQ< =#
EditCategoryDescriptionRR #
(RR# $
SelectedCategoryRR$ 4
.RR4 5
IdRR5 7
,RR7 8
EditDescriptionRR9 H
)RRH I
;RRI J
intSS 
idParentSS 
=SS 
getIDbyTitleSS '
(SS' (
EditTitleDadSS( 4
)SS4 5
;SS5 6
varTT 
categoryEditTT 
=TT 
_contextTT '
.TT' (
CategoryTT( 0
.TT0 1
FindTT1 5
(TT5 6
SelectedCategoryTT6 F
.TTF G
IdTTG I
)TTI J
;TTJ K
ifUU 
(UU 
idParentUU 
!=UU 
-UU 
$numUU 
)UU 
{VV 
categoryEditWW 
.WW 
ParentIdWW %
=WW& '
idParentWW( 0
;WW0 1
}XX 
elseYY 
{ZZ 
categoryEdit[[ 
.[[ 
ParentId[[ %
=[[& '
null[[( ,
;[[, -
}\\ 
var]] 
index]] 
=]] 
await]] 
TreeGrid]] &
.]]& '#
GetRowIndexByPrimaryKey]]' >
(]]> ?
categoryEdit]]? K
.]]K L
Id]]L N
)]]N O
;]]O P
await^^ 
TreeGrid^^ 
.^^ 
	UpdateRow^^ $
(^^$ %
index^^% *
,^^* +
categoryEdit^^, 8
)^^8 9
;^^9 :
_context__ 
.__ 
Category__ 
.__ 
Update__ $
(__$ %
categoryEdit__% 1
)__1 2
;__2 3
await`` 
_context`` 
.`` 
SaveChangesAsync`` +
(``+ ,
)``, -
;``- .
}bb 	
privatedd 
intdd 
getIDbyTitledd  
(dd  !
stringdd! '
titledd( -
)dd- .
{ee 	
intff 
idff 
=ff 
-ff 
$numff 
;ff 
ifgg 
(gg 
titlegg 
!=gg 
$strgg 
)gg 
{hh 
idii 
=ii 
_contextii 
.ii 
Categoryii &
.ii& '
FirstOrDefaultii' 5
(ii5 6
cii6 7
=>ii8 :
cii; <
.ii< =
Titleii= B
.iiB C
EqualsiiC I
(iiI J
titleiiJ O
)iiO P
)iiP Q
.iiQ R
IdiiR T
;iiT U
}jj 
returnkk 
idkk 
;kk 
}ll 	
publicss 
voidss 
ValidateEditTitless %
(ss% &
	Microsoftss& /
.ss/ 0

AspNetCoress0 :
.ss: ;

Componentsss; E
.ssE F
ChangeEventArgsssF U
argsssV Z
)ssZ [
{tt 	
EditTitleNotValiduu 
=uu 
trueuu  $
;uu$ %
	EditTitlevv 
=vv 
(vv 
Stringvv 
)vv  
argsvv  $
.vv$ %
Valuevv% *
;vv* +
ifww 
(ww 
SelectedCategoryww  
.ww  !
Titleww! &
!=ww' )
	EditTitleww* 3
)ww3 4
{xx 
ifzz 
(zz 
	EditTitlezz 
.zz 
Lengthzz $
>zz% &
$numzz' (
)zz( )
{{{ 
if|| 
(|| 
CategoryService|| '
.||' (
ValidateTitle||( 5
(||5 6
	EditTitle||6 ?
)||? @
==||A C
true||D H
)||H I
{}} 
EditTitleNotValid~~ )
=~~* +
false~~, 1
;~~1 2
} 
}
ÅÅ 
}
ÇÇ 
else
ÉÉ 
{
ÑÑ 
EditTitleNotValid
ÖÖ !
=
ÖÖ" #
false
ÖÖ$ )
;
ÖÖ) *
}
ÜÜ "
EditCategoryDisabled
áá  
=
áá! "
EditTitleNotValid
áá# 4
||
áá5 7"
EditTitleDadNotValid
áá8 L
||
ááM O%
EditDescriptionNotValid
ááP g
;
áág h
}
àà 	
public
ââ 
void
ââ "
ValidateEditCategory
ââ (
(
ââ( )
	Microsoft
ââ) 2
.
ââ2 3

AspNetCore
ââ3 =
.
ââ= >

Components
ââ> H
.
ââH I
ChangeEventArgs
ââI X
args
ââY ]
)
ââ] ^
{
ää 	%
EditDescriptionNotValid
ãã #
=
ãã$ %
true
ãã& *
;
ãã* +
EditDescription
åå 
=
åå 
(
åå 
String
åå %
)
åå% &
args
åå& *
.
åå* +
Value
åå+ 0
;
åå0 1
if
çç 
(
çç 
SelectedCategory
çç  
.
çç  !
Title
çç! &
==
çç' )
	EditTitle
çç* 3
)
çç3 4
{
éé %
EditDescriptionNotValid
èè '
=
èè( )
false
èè* /
;
èè/ 0
}
êê 
EditTitleNotValid
ëë 
=
ëë 
false
ëë  %
;
ëë% &"
EditCategoryDisabled
íí  
=
íí! "
EditTitleNotValid
íí# 4
||
íí5 7"
EditTitleDadNotValid
íí8 L
||
ííM O%
EditDescriptionNotValid
ííP g
;
ííg h
}
ìì 	
public
õõ 
void
õõ "
ValidateEditTitleDad
õõ (
(
õõ( )
	Microsoft
õõ) 2
.
õõ2 3

AspNetCore
õõ3 =
.
õõ= >

Components
õõ> H
.
õõH I
ChangeEventArgs
õõI X
args
õõY ]
)
õõ] ^
{
úú 	"
EditTitleDadNotValid
ùù  
=
ùù! "
false
ùù# (
;
ùù( )
EditTitleDad
ûû 
=
ûû 
(
ûû 
String
ûû "
)
ûû" #
args
ûû# '
.
ûû' (
Value
ûû( -
;
ûû- .
if
üü 
(
üü 
EditTitleDad
üü 
.
üü 
Length
üü #
>
üü$ %
$num
üü& '
)
üü' (
{
†† 
if
°° 
(
°° 
CategoryService
°° #
.
°°# $
ValidateTitle
°°$ 1
(
°°1 2
EditTitleDad
°°2 >
)
°°> ?
==
°°@ B
true
°°C G
)
°°G H
{
¢¢ "
EditTitleDadNotValid
££ (
=
££) *
true
££+ /
;
££/ 0
}
§§ 
}
•• "
EditCategoryDisabled
¶¶  
=
¶¶! "
EditTitleNotValid
¶¶# 4
||
¶¶5 7"
EditTitleDadNotValid
¶¶8 L
||
¶¶M O%
EditDescriptionNotValid
¶¶P g
;
¶¶g h
}
ßß 	
private
ØØ 
void
ØØ #
ResetEditCategoryData
ØØ *
(
ØØ* +
)
ØØ+ ,
{
∞∞ 	"
EditTitleDadNotValid
±±  
=
±±! "
false
±±# (
;
±±( )
EditTitleNotValid
≤≤ 
=
≤≤ 
false
≤≤  %
;
≤≤% &%
EditDescriptionNotValid
≥≥ #
=
≥≥$ %
false
≥≥& +
;
≥≥+ ,
EditDescription
¥¥ 
=
¥¥ 
null
¥¥ "
;
¥¥" #
	EditTitle
µµ 
=
µµ 
null
µµ 
;
µµ 
EditTitleDad
∂∂ 
=
∂∂ 
null
∂∂ 
;
∂∂  "
EditCategoryDisabled
∑∑  
=
∑∑! "
true
∑∑# '
;
∑∑' (
EditDialogVisible
∏∏ 
=
∏∏ 
false
∏∏  %
;
∏∏% &%
EditToolbarItemDisabled
ππ #
=
ππ$ %
true
ππ& *
;
ππ* +
}
∫∫ 	
private
¿¿ 
void
¿¿ 
EditCategoryName
¿¿ %
(
¿¿% &
int
¿¿& )
id
¿¿* ,
,
¿¿, -
string
¿¿. 4
newTitle
¿¿5 =
)
¿¿= >
{
¡¡ 	
Category
¬¬ 
category
¬¬ 
=
¬¬ 
_context
¬¬  (
.
¬¬( )
Category
¬¬) 1
.
¬¬1 2
Find
¬¬2 6
(
¬¬6 7
id
¬¬7 9
)
¬¬9 :
;
¬¬: ;
category
√√ 
.
√√ 
Title
√√ 
=
√√ 
newTitle
√√ %
;
√√% &
}
ƒƒ 	
private
∆∆ 
void
∆∆ %
EditCategoryDescription
∆∆ ,
(
∆∆, -
int
∆∆- 0
id
∆∆1 3
,
∆∆3 4
string
∆∆5 ;
newDescription
∆∆< J
)
∆∆J K
{
«« 	
Category
»» 
category
»» 
=
»» 
_context
»»  (
.
»»( )
Category
»») 1
.
»»1 2
Find
»»2 6
(
»»6 7
id
»»7 9
)
»»9 :
;
»»: ;
category
…… 
.
…… 
Description
……  
=
……! "
newDescription
……# 1
;
……1 2
}
   	
}
ÃÃ 
}ÕÕ È>
íC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\EmprendeUCR_WebApplication\Data\Services\Categories\SuggestedCategoryService.cs
	namespace

 	&
EmprendeUCR_WebApplication


 $
.

$ %
Data

% )
.

) *
Services

* 2
.

2 3

Categories

3 =
{ 
public 

class $
SuggestedCategoryService )
:* +
	PageModel, 5
{ 
public $
SuggestedCategoryService '
(' (
Contexts( 0
.0 1
SqlServerDbContext1 C
contextD K
)K L
{ 	
_context 
= 
context 
; 
CategoryService 
= 
new !
(! "
context" )
)) *
;* + 
ResetAddCategoryData  
(  !
)! "
;" #
} 	
private 
readonly 
Contexts !
.! "
SqlServerDbContext" 4
_context5 =
;= >
private 
CategoryService 
CategoryService  /
;/ 0
private 
bool 
TitleDadNotValid %
;% &
private 
bool 
TitleNotValid "
;" #
private 
Suggested_Category "
SelectedCategory# 3
;3 4
public$$ 
bool$$ 
AddDialogVisible$$ $
;$$$ %
public%% 
string%% 
Title%% 
;%% 
public&& 
string&& 
ParentID&& 
;&& 
public'' 
string'' 
Description'' !
;''! "
public(( 
bool(( 
AddCategoryDisabled(( '
;((' (
public00 
void00 !
OpenAddCategoryDialog00 )
(00) *
Suggested_Category00* <
category00= E
)00E F
{11 	
SelectedCategory22 
=22 
category22 '
;22' (
this33 
.33 
AddDialogVisible33 !
=33" #
true33$ (
;33( )
}44 	
public== 
void== "
CloseAddCategoryDialog== *
(==* +
)==+ ,
{>> 	
this?? 
.?? 
AddDialogVisible?? !
=??" #
false??$ )
;??) * 
ResetAddCategoryData@@  
(@@  !
)@@! "
;@@" #
}AA 	
publicII 
voidII 
ValidateTitleII !
(II! "
	MicrosoftII" +
.II+ ,

AspNetCoreII, 6
.II6 7

ComponentsII7 A
.IIA B
ChangeEventArgsIIB Q
argsIIR V
)IIV W
{JJ 	
TitleNotValidKK 
=KK 
trueKK  
;KK  !
TitleLL 
=LL 
(LL 
StringLL 
)LL 
argsLL  
.LL  !
ValueLL! &
;LL& '
ifMM 
(MM 
TitleMM 
.MM 
LengthMM 
>MM 
$numMM  
)MM  !
{NN 
ifOO 
(OO 
CategoryServiceOO #
.OO# $
ValidateTitleOO$ 1
(OO1 2
TitleOO2 7
)OO7 8
==OO9 ;
trueOO< @
)OO@ A
{PP 
TitleNotValidQQ !
=QQ" #
falseQQ$ )
;QQ) *
}RR 
}SS 
AddCategoryDisabledTT 
=TT  !
TitleNotValidTT" /
||TT0 2
TitleDadNotValidTT3 C
;TTC D
}UU 	
public__ 
async__ 
void__  
AddSuggestedCategory__ .
(__. /
)__/ 0
{`` 	
thisaa 
.aa 
AddDialogVisibleaa !
=aa" #
falseaa$ )
;aa) *
Suggested_Categorybb 
Categorybb '
=bb( )
newbb* -
Suggested_Categorybb. @
(bb@ A
)bbA B
;bbB C
Categorydd 
.dd 
Titledd 
=dd 
Titledd "
;dd" #
Categoryee 
.ee 
Descriptionee  
=ee! "
Descriptionee# .
;ee. /
Consoleff 
.ff 
	WriteLineff 
(ff 
ParentIDff &
)ff& '
;ff' (
ifgg 
(gg 
ParentIDgg 
!=gg 
nullgg  
)gg  !
{hh 
Categoryii 
.ii 
ParentIDii !
=ii" #
intii$ '
.ii' (
Parseii( -
(ii- .
ParentIDii. 6
)ii6 7
;ii7 8
}jj 
awaitkk (
InsertSuggestedCategoryAsynckk .
(kk. /
Categorykk/ 7
)kk7 8
;kk8 9 
ResetAddCategoryDatamm  
(mm  !
)mm! "
;mm" #
}nn 	
publicoo 
voidoo 
deleteSuggestedoo #
(oo# $
Suggested_Categoryoo$ 6
	suggestedoo7 @
)oo@ A
{pp 	
Suggested_Categoryqq 
CategoryToRemoveqq /
=qq0 1
_contextqq2 :
.qq: ;
Suggested_Categoryqq; M
.qqM N
FindqqN R
(qqR S
	suggestedqqS \
.qq\ ]
IDqq] _
)qq_ `
;qq` a
_contextrr 
.rr 
Suggested_Categoryrr '
.rr' (
Removerr( .
(rr. /
CategoryToRemoverr/ ?
)rr? @
;rr@ A
_contextss 
.ss 
SaveChangesss  
(ss  !
)ss! "
;ss" #
}tt 	
public{{ 
void{{  
ResetAddCategoryData{{ (
({{( )
){{) *
{|| 	
TitleDadNotValid}} 
=}} 
false}} $
;}}$ %
TitleNotValid~~ 
=~~ 
true~~  
;~~  !
Description 
= 
null 
; 
Title
ÄÄ 
=
ÄÄ 
null
ÄÄ 
;
ÄÄ 
ParentID
ÅÅ 
=
ÅÅ 
null
ÅÅ 
;
ÅÅ !
AddCategoryDisabled
ÇÇ 
=
ÇÇ  !
true
ÇÇ" &
;
ÇÇ& '
SelectedCategory
ÉÉ 
=
ÉÉ 
null
ÉÉ #
;
ÉÉ# $
}
ÑÑ 	
public
ãã 
async
ãã 
Task
ãã 
<
ãã 
bool
ãã 
>
ãã *
InsertSuggestedCategoryAsync
ãã  <
(
ãã< = 
Suggested_Category
ãã= O
category
ããP X
)
ããX Y
{
åå 	
await
çç 
_context
çç 
.
çç  
Suggested_Category
çç -
.
çç- .
AddAsync
çç. 6
(
çç6 7
category
çç7 ?
)
çç? @
;
çç@ A
await
éé 
_context
éé 
.
éé 
SaveChangesAsync
éé +
(
éé+ ,
)
éé, -
;
éé- .
return
èè 
true
èè 
;
èè 
}
êê 	
public
ëë 
async
ëë 
Task
ëë 
<
ëë 
IList
ëë 
<
ëë   
Suggested_Category
ëë  2
>
ëë2 3
>
ëë3 4
GetAsync
ëë5 =
(
ëë= >
)
ëë> ?
{
íí 	
return
ìì 
await
ìì 
_context
ìì !
.
ìì! " 
Suggested_Category
ìì" 4
.
ìì4 5
ToListAsync
ìì5 @
(
ìì@ A
)
ììA B
;
ììB C
}
îî 	
public
ïï  
Suggested_Category
ïï !
getSuggestedById
ïï" 2
(
ïï2 3
int
ïï3 6
Id
ïï7 9
)
ïï9 :
{
ññ 	
return
óó 
_context
óó 
.
óó  
Suggested_Category
óó .
.
óó. /
Find
óó/ 3
(
óó3 4
Id
óó4 6
)
óó6 7
;
óó7 8
}
òò 	
}
öö 
}õõ ¬
|C:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\EmprendeUCR_WebApplication\Data\Services\ClientService.cs
	namespace 	&
EmprendeUCR_WebApplication
 $
.$ %
Data% )
.) *
Services* 2
{ 
public 

class 
ClientService 
:  
	PageModel! *
{ 
private 
readonly &
EmprendeUCR_WebApplication 3
.3 4
Data4 8
.8 9
Contexts9 A
.A B
SqlServerDbContextB T
_contextU ]
;] ^
public 
ClientService 
( &
EmprendeUCR_WebApplication 7
.7 8
Data8 <
.< =
Contexts= E
.E F
SqlServerDbContextF X
contextY `
)` a
{ 	
_context 
= 
context 
; 
} 	
public 
async 
Task 
< 
IList 
<  
Client  &
>& '
>' (
GetAsync) 1
(1 2
)2 3
{ 	
return 
await 
_context !
.! "
Client" (
.( )
ToListAsync) 4
(4 5
)5 6
;6 7
} 	
public 
void 
	AddClient 
( 
Client $
client% +
)+ ,
{ 	
_context 
. 
Client 
. 
Add 
(  
client  &
)& '
;' (
_context   
.   
SaveChanges    
(    !
)  ! "
;  " #
}!! 	
public## 
async## 
Task## 
<## 
Client##  
>##  !
GetByEmailAsync##" 1
(##1 2
string##2 8
email##9 >
)##> ?
{$$ 	
return%% 
(%% 
await%% 
_context%% "
.%%" #
Client%%# )
.%%) *
	FindAsync%%* 3
(%%3 4
email%%4 9
)%%9 :
)%%: ;
;%%; <
}&& 	
public(( 
async(( 
Task(( 
<(( 
bool(( 
>(( 
Update((  &
(((& '
Client((' -
client((. 4
)((4 5
{)) 	
_context** 
.** 
Client** 
.** 
Update** "
(**" #
client**# )
)**) *
;*** +
await++ 
_context++ 
.++ 
SaveChangesAsync++ +
(+++ ,
)++, -
;++- .
return,, 
true,, 
;,, 
}-- 	
}.. 
}// ∏)
ÅC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\EmprendeUCR_WebApplication\Data\Services\CredentialsService.cs
	namespace

 	&
EmprendeUCR_WebApplication


 $
.

$ %
Data

% )
.

) *
Services

* 2
{ 
public 

class 
CredentialsService #
:$ %
	PageModel& /
{ 
private 
readonly &
EmprendeUCR_WebApplication 3
.3 4
Data4 8
.8 9
Contexts9 A
.A B
SqlServerDbContextB T
_contextU ]
;] ^
public 
static 
string 
key  
=! "
$str# 7
;7 8
public 
CredentialsService !
(! "&
EmprendeUCR_WebApplication" <
.< =
Data= A
.A B
ContextsB J
.J K
SqlServerDbContextK ]
context^ e
)e f
{ 	
_context 
= 
context 
; 
} 	
public 
async 
Task 
< 
IList 
<  
Credentials  +
>+ ,
>, -
GetAsync. 6
(6 7
)7 8
{ 	
return 
await 
_context !
.! "
Credentials" -
.- .
ToListAsync. 9
(9 :
): ;
;; <
} 	
public 
void 
AddCredentials "
(" #
Credentials# .
credentials/ :
): ;
{ 	
_context 
. 
Credentials  
.  !
Add! $
($ %
credentials% 0
)0 1
;1 2
_context 
. 
SaveChanges  
(  !
)! "
;" #
}   	
public"" 
void"" 
updateCredentials"" %
(""% &
Credentials""& 1
_credentials""2 >
)""> ?
{## 	
Credentials$$ 
credentials$$ #
=$$$ %
_context$$& .
.$$. /
Credentials$$/ :
.$$: ;
FirstOrDefault$$; I
($$I J
c$$J K
=>$$L N
c$$O P
.$$P Q

User_Email$$Q [
.$$[ \
Equals$$\ b
($$b c
_credentials$$c o
.$$o p

User_Email$$p z
)$$z {
)$${ |
;$$| }
if%% 
(%% 
credentials%% 
!=%% 
null%% #
)%%# $
{&& 
credentials'' 
.'' 

User_Email'' &
=''' (
_credentials'') 5
.''5 6

User_Email''6 @
;''@ A
credentials(( 
.(( 
Password(( $
=((% &
_credentials((' 3
.((3 4
Password((4 <
;((< =
_context)) 
.)) 
Update)) 
())  
credentials))  +
)))+ ,
;)), -
_context** 
.** 
SaveChanges** $
(**$ %
)**% &
;**& '
},, 
}-- 	
public// 
Credentials// 
getCredentials// )
(//) *
string//* 0
email//1 6
)//6 7
{//8 9
Credentials00 
getCredentials00 &
=00' (
null00) -
;00- .
Credentials11 
credentials11 #
=11$ %
_context11& .
.11. /
Credentials11/ :
.11: ;
FirstOrDefault11; I
(11I J
c11J K
=>11L N
c11O P
.11P Q

User_Email11Q [
.11[ \
Equals11\ b
(11b c
email11c h
)11h i
)11i j
;11j k
if22 
(22 
credentials22 
!=22 
null22 !
)22! "
{22# $
getCredentials33 
=33  
credentials33! ,
;33, -
}44 
return55 
getCredentials55 !
;55! "
}66 	
public88 
async88 
Task88 
<88 
string88  
>88  !
GetPasswordAsync88" 2
(882 3
string883 9
Email88: ?
)88? @
{99 	
Credentials:: 
credentials:: #
=::$ %
await::& +
_context::, 4
.::4 5
Credentials::5 @
.::@ A
FirstOrDefaultAsync::A T
(::T U
c::U V
=>::W Y
c::Z [
.::[ \

User_Email::\ f
.::f g
Equals::g m
(::m n
Email::n s
)::s t
)::t u
;::u v
if;; 
(;; 
credentials;; 
==;; 
null;; #
);;# $
{<< 
return>> 
$str>> 
;>> 
}?? 
else@@ 
{AA 
returnBB 
credentialsBB "
.BB" #
PasswordBB# +
.BB+ ,
ToStringBB, 4
(BB4 5
)BB5 6
;BB6 7
}CC 
}DD 	
}EE 
}FF ∞
~C:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\EmprendeUCR_WebApplication\Data\Services\DistrictService.cs
	namespace		 	&
EmprendeUCR_WebApplication		
 $
.		$ %
Data		% )
.		) *
Services		* 2
{

 
public 

class 
DistrictService  
:! "
	PageModel# ,
{ 
private 
readonly &
EmprendeUCR_WebApplication 0
.0 1
Data1 5
.5 6
Contexts6 >
.> ?
SqlServerDbContext? Q
_contextR Z
;Z [
public 
DistrictService 
( &
EmprendeUCR_WebApplication 6
.6 7
Data7 ;
.; <
Contexts< D
.D E
SqlServerDbContextE W
contextX _
)_ `
{ 
_context 
= 
context 
; 
} 
public 
async 
Task 
< 
IList 
< 
District %
>% &
>& '
GetAsync( 0
(0 1
)1 2
{ 
return 
await 
_context 
. 
District $
.$ %
ToListAsync% 0
(0 1
)1 2
;2 3
} 
public 
IList 
< 
District 
> 
GetList &
(& '
string' -
canton. 4
)4 5
{ 	
return 
_context 
. 
District $
.$ %

FromSqlRaw% /
(/ 0
$str0 O
+P Q
cantonR X
+Y Z
$strZ ^
)^ _
._ `
ToArray` g
(g h
)h i
;i j
} 	
} 
} ‹+
àC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\EmprendeUCR_WebApplication\Data\Services\Email_ConfirmationService.cs
	namespace 	&
EmprendeUCR_WebApplication
 $
.$ %
Data% )
.) *
Services* 2
{ 
public 

class %
Email_ConfirmationService *
:+ ,
	PageModel- 6
{ 
private 
readonly &
EmprendeUCR_WebApplication 3
.3 4
Data4 8
.8 9
Contexts9 A
.A B
SqlServerDbContextB T
_contextU ]
;] ^
public %
Email_ConfirmationService (
(( )&
EmprendeUCR_WebApplication) C
.C D
DataD H
.H I
ContextsI Q
.Q R
SqlServerDbContextR d
contexte l
)l m
{ 	
_context 
= 
context 
; 
} 	
public 
IList 
< 
Email_Confirmation '
>' (!
getEmailConfirmations) >
(> ?
)? @
{ 	
return 
_context 
. 
Email_Confirmation .
.. /
ToList/ 5
(5 6
)6 7
;7 8
} 	
public 
void  
addEmailConfirmation (
(( )
Email_Confirmation) ;
confirmation< H
)H I
{   	
_context!! 
.!! 
Email_Confirmation!! '
.!!' (
Add!!( +
(!!+ ,
confirmation!!, 8
)!!8 9
;!!9 :
_context"" 
."" 
SaveChanges""  
(""  !
)""! "
;""" #
}## 	
public%% 
void%% #
updateEmailConfirmation%% +
(%%+ ,
Email_Confirmation%%, >
confirmation%%? K
)%%K L
{&& 	
Email_Confirmation'' 
email_confirmation'' 1
=''2 3
_context''4 <
.''< =
Email_Confirmation''= O
.''O P
FirstOrDefault''P ^
(''^ _
c''_ `
=>''a c
c''d e
.''e f
Email''f k
.''k l
Equals''l r
(''r s
confirmation''s 
.	'' Ä
Email
''Ä Ö
)
''Ö Ü
)
''Ü á
;
''á à
if(( 
((( 
email_confirmation(( "
!=((# %
null((& *
)((* +
{)) 
email_confirmation** "
.**" #
Email**# (
=**) *
confirmation**+ 7
.**7 8
Email**8 =
;**= >
email_confirmation++ "
.++" #
	Hash_Code++# ,
=++- .
confirmation++/ ;
.++; <
	Hash_Code++< E
;++E F
email_confirmation,, "
.,," #
Creation_Date,,# 0
=,,1 2
confirmation,,3 ?
.,,? @
Creation_Date,,@ M
;,,M N
email_confirmation-- "
.--" #
Expiration_Date--# 2
=--3 4
confirmation--5 A
.--A B
Expiration_Date--B Q
;--Q R
_context.. 
... 
Update.. 
(..  
email_confirmation..  2
)..2 3
;..3 4
_context// 
.// 
SaveChanges// $
(//$ %
)//% &
;//& '
}00 
}11 	
public33 
Email_Confirmation33 ! 
getEmailConfirmation33" 6
(336 7
string337 =
	hash_code33> G
)33G H
{44 	
Email_Confirmation55 
email_confirmation55 1
=552 3
_context554 <
.55< =
Email_Confirmation55= O
.55O P
FirstOrDefault55P ^
(55^ _
c55_ `
=>55a c
c55d e
.55e f
	Hash_Code55f o
.55o p
Equals55p v
(55v w
	hash_code	55w Ä
)
55Ä Å
)
55Å Ç
;
55Ç É
return66 
email_confirmation66 %
;66% &
}77 	
public99 
Email_Confirmation99 !%
getEmailConfirmationEmail99" ;
(99; <
string99< B
email99C H
)99H I
{:: 	
Email_Confirmation;; 
email_confirmation;; 1
=;;2 3
_context;;4 <
.;;< =
Email_Confirmation;;= O
.;;O P
FirstOrDefault;;P ^
(;;^ _
c;;_ `
=>;;a c
c;;d e
.;;e f
Email;;f k
.;;k l
Equals;;l r
(;;r s
email;;s x
);;x y
);;y z
;;;z {
return<< 
email_confirmation<< %
;<<% &
}== 	
public@@ 
bool@@  
verifyExpirationDate@@ (
(@@( )
Email_Confirmation@@) ;
email@@< A
)@@A B
{AA 	
boolBB 
verifyBB 
=BB 
falseBB 
;BB  
DateTimeCC 
fechaCC 
=CC 
DateTimeCC %
.CC% &
NowCC& )
;CC) *
ifDD 
(DD 
emailDD 
.DD 
Expiration_DateDD %
<DD& '
fechaDD( -
)DD- .
{EE 
verifyFF 
=FF 
trueFF 
;FF 
}GG 
returnHH 
verifyHH 
;HH 
}II 	
}JJ 
}KK ˇE
|C:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\EmprendeUCR_WebApplication\Data\Services\EncrypService.cs
	namespace 	&
EmprendeUCR_WebApplication
 $
.$ %
Data% )
.) *
Services* 2
{ 
public 

class 
EncrypService 
{		 
byte

 
[

 
]

 
Key

 
=

 
{

 
$num

 
,

 
$num

 
,

 
$num

 "
,

" #
$num

$ &
,

& '
$num

( +
,

+ ,
$num

- /
,

/ 0
$num

1 3
,

3 4
$num

5 8
,

8 9
$num

: =
,

= >
$num

? B
,

B C
$num

D F
,

F G
$num

H J
,

J K
$num

L N
,

N O
$num

P R
,

R S
$num

T W
,

W X
$num

Y [
,

[ \
$num

] _
,

_ `
$num

a d
,

d e
$num

f i
,

i j
$num

k n
,

n o
$num

p r
,

r s
$num

t w
,

w x
$num

y |
,

| }
$num	

~ Å
,


Å Ç
$num


É Ö
,


Ö Ü
$num


á â
,


â ä
$num


ã é
,


é è
$num


ê í
,


í ì
$num


î ó
,


ó ò
$num


ô ú
,


ú ù
$num


û °
,


° ¢
$num


£ ¶
}


ß ®
;


® ©
byte 
[ 
] 
IV 
= 
{ 
$num 
, 
$num 
, 
$num "
," #
$num$ '
,' (
$num) ,
,, -
$num. 0
,0 1
$num2 5
,5 6
$num7 :
,: ;
$num< >
,> ?
$num@ C
,C D
$numE H
,H I
$numJ L
,L M
$numN Q
,Q R
$numS V
,V W
$numX Z
,Z [
$num\ _
}` a
;a b
public 
string 
	hashEmail 
(  
string  &
email' ,
), -
{ 	
string 
	hashEmail 
= 
$str !
;! "
if 
( 
string 
. 
IsNullOrEmpty $
($ %
email% *
)* +
)+ ,
{ 
	hashEmail 
= 
$str 
; 
} 
else 
{ 
string 
salt 
= 
getSalt %
(% &
)& '
;' (
var 
passwordBytes !
=" #
Encoding$ ,
., -
UTF8- 1
.1 2
GetBytes2 :
(: ;
salt; ?
+@ A
emailB G
)G H
;H I
	hashEmail 
= 
Convert #
.# $
ToBase64String$ 2
(2 3
passwordBytes3 @
)@ A
;A B
} 
return 
	hashEmail 
; 
} 	
public 
string 
getSalt 
( 
) 
{  !
var 
chars 
= 
$str X
;X Y
var 
stringChars 
= 
new !
char" &
[& '
$num' )
]) *
;* +
var 
random 
= 
new 
Random #
(# $
)$ %
;% &
for   
(   
int   
i   
=   
$num   
;   
i   
<   
stringChars    +
.  + ,
Length  , 2
;  2 3
i  4 5
++  5 7
)  7 8
{!! 
stringChars"" 
["" 
i"" 
]"" 
=""  
chars""! &
[""& '
random""' -
.""- .
Next"". 2
(""2 3
chars""3 8
.""8 9
Length""9 ?
)""? @
]""@ A
;""A B
}## 
string$$ 
finalString$$ 
=$$  
new$$! $
String$$% +
($$+ ,
stringChars$$, 7
)$$7 8
;$$8 9
return%% 
finalString%% 
;%% 
}&& 	
public(( 
string(( 
encryptPassword(( %
(((% &
string((& ,
password((- 5
)((5 6
{((7 8
string)) 
encriptPassword)) "
=))# $
$str))% '
;))' (
if++ 
(++ 
!++ 
string++ 
.++ 
IsNullOrEmpty++ %
(++% &
password++& .
)++. /
)++/ 0
{,, 
byte-- 
[-- 
]-- 
encrypt-- 
=--  $
encryptStringToBytes_Aes--! 9
(--9 :
password--: B
,--B C
Key--D G
,--G H
IV--I K
)--K L
;--L M
encriptPassword.. 
=..  !
Convert.." )
...) *
ToBase64String..* 8
(..8 9
encrypt..9 @
)..@ A
;..A B
}// 
return00 
encriptPassword00 "
;00" #
}11 	
public33 
static33 
byte33 
[33 
]33 $
encryptStringToBytes_Aes33 5
(335 6
string336 <
password33= E
,33E F
byte33G K
[33K L
]33L M
Key33N Q
,33Q R
byte33S W
[33W X
]33X Y
IV33Z \
)33\ ]
{44 	
if55 
(55 
password55 
==55 
null55  
||55! #
password55$ ,
.55, -
Length55- 3
<=554 6
$num557 8
)558 9
throw66 
new66 !
ArgumentNullException66 /
(66/ 0
$str660 :
)66: ;
;66; <
if77 
(77 
Key77 
==77 
null77 
||77 
Key77 "
.77" #
Length77# )
<=77* ,
$num77- .
)77. /
throw88 
new88 !
ArgumentNullException88 /
(88/ 0
$str880 5
)885 6
;886 7
if99 
(99 
IV99 
==99 
null99 
||99 
IV99  
.99  !
Length99! '
<=99( *
$num99+ ,
)99, -
throw:: 
new:: !
ArgumentNullException:: /
(::/ 0
$str::0 4
)::4 5
;::5 6
byte;; 
[;; 
];; 
	encrypted;; 
;;; 
using== 
(== 
Aes== 
aesAlg== 
=== 
Aes==  #
.==# $
Create==$ *
(==* +
)==+ ,
)==, -
{>> 
aesAlg?? 
.?? 
Key?? 
=?? 
Key??  
;??  !
aesAlg@@ 
.@@ 
IV@@ 
=@@ 
IV@@ 
;@@ 
ICryptoTransformBB  
	encryptorBB! *
=BB+ ,
aesAlgBB- 3
.BB3 4
CreateEncryptorBB4 C
(BBC D
aesAlgBBD J
.BBJ K
KeyBBK N
,BBN O
aesAlgBBP V
.BBV W
IVBBW Y
)BBY Z
;BBZ [
usingDD 
(DD 
MemoryStreamDD #
	msEncryptDD$ -
=DD. /
newDD0 3
MemoryStreamDD4 @
(DD@ A
)DDA B
)DDB C
{EE 
usingFF 
(FF 
CryptoStreamFF '
	csEncryptFF( 1
=FF2 3
newFF4 7
CryptoStreamFF8 D
(FFD E
	msEncryptFFE N
,FFN O
	encryptorFFP Y
,FFY Z
CryptoStreamModeFF[ k
.FFk l
WriteFFl q
)FFq r
)FFr s
{GG 
usingHH 
(HH 
StreamWriterHH +
	swEncryptHH, 5
=HH6 7
newHH8 ;
StreamWriterHH< H
(HHH I
	csEncryptHHI R
)HHR S
)HHS T
{II 
	swEncryptJJ %
.JJ% &
WriteJJ& +
(JJ+ ,
passwordJJ, 4
)JJ4 5
;JJ5 6
}KK 
	encryptedLL !
=LL" #
	msEncryptLL$ -
.LL- .
ToArrayLL. 5
(LL5 6
)LL6 7
;LL7 8
}MM 
}NN 
}OO 
returnPP 
	encryptedPP 
;PP 
}QQ 	
}RR 
}SS ø0
ÇC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\EmprendeUCR_WebApplication\Data\Services\EntrepreneurService.cs
	namespace		 	&
EmprendeUCR_WebApplication		
 $
.		$ %
Data		% )
.		) *
Services		* 2
{

 
public 

class 
EntrepreneurService $
:% &
	PageModel' 0
{ 
private 
readonly &
EmprendeUCR_WebApplication 3
.3 4
Data4 8
.8 9
Contexts9 A
.A B
SqlServerDbContextB T
_contextU ]
;] ^
public 
EntrepreneurService "
(" #&
EmprendeUCR_WebApplication# =
.= >
Data> B
.B C
ContextsC K
.K L
SqlServerDbContextL ^
context_ f
)f g
{ 	
_context 
= 
context 
; 
} 	
public 
async 
Task 
< 
IList 
<  
Entrepreneur  ,
>, -
>- .
GetAsync/ 7
(7 8
)8 9
{ 	
return 
await 
_context !
.! "
Entrepreneur" .
.. /
ToListAsync/ :
(: ;
); <
;< =
} 	
public 
async 
Task 
< 
bool 
> #
InsertEntrepreneurAsync  7
(7 8
Entrepreneur8 D
entrepreneurE Q
)Q R
{ 	
await 
_context 
. 
Entrepreneur '
.' (
AddAsync( 0
(0 1
entrepreneur1 =
)= >
;> ?
await 
_context 
. 
SaveChangesAsync +
(+ ,
), -
;- .
return 
true 
; 
} 	
public   
void   
UpdateEntrepreneur   &
(  & '
Entrepreneur  ' 3
entrepreneur  4 @
)  @ A
{!! 	
_context"" 
."" 
Entrepreneur"" !
.""! "
Update""" (
(""( )
entrepreneur"") 5
)""5 6
;""6 7
_context## 
.## 
SaveChanges##  
(##  !
)##! "
;##" #
}$$ 	
public&& 
async&& 
Task&& 
<&& 
bool&& 
>&& #
UpdateEntrepreneurAsync&&  7
(&&7 8
Entrepreneur&&8 D
entrepreneur&&E Q
)&&Q R
{'' 	
_context(( 
.(( 
Entrepreneur(( !
.((! "
Update((" (
(((( )
entrepreneur(() 5
)((5 6
;((6 7
await)) 
_context)) 
.)) 
SaveChangesAsync)) +
())+ ,
))), -
;))- .
return** 
true** 
;** 
}++ 	
public-- 
async-- 
Task-- 
<-- 
bool-- 
>-- #
DeleteEntrepreneurAsync--  7
(--7 8
Entrepreneur--8 D
entrepreneur--E Q
)--Q R
{.. 	
_context// 
.// 
Entrepreneur// !
.//! "
Remove//" (
(//( )
entrepreneur//) 5
)//5 6
;//6 7
await00 
_context00 
.00 
SaveChangesAsync00 +
(00+ ,
)00, -
;00- .
return11 
true11 
;11 
}22 	
public44 
async44 
Task44 
<44 
Entrepreneur44 &
>44& ' 
GetEntrepreneurAsync44( <
(44< =
string44= C
email44D I
)44I J
{55 	
Entrepreneur66 
entrepreneur66 %
=66& '
await66( -
_context66. 6
.666 7
Entrepreneur667 C
.66C D
FirstOrDefaultAsync66D W
(66W X
c66X Y
=>66Z \
c66] ^
.66^ _

User_Email66_ i
.66i j
Equals66j p
(66p q
email66q v
)66v w
)66w x
;66x y
return77 
entrepreneur77 
;77  
}88 	
public:: 
Entrepreneur:: 
GetEntrepreneur:: +
(::+ ,
string::, 2
email::3 8
)::8 9
{;; 	
return<< 
_context<< 
.<< 
Entrepreneur<< (
.<<( )
Find<<) -
(<<- .
email<<. 3
)<<3 4
;<<4 5
}== 	
public@@ 
async@@ 
Task@@ 
<@@ 
List@@ 
<@@ 
Entrepreneur@@ +
>@@+ ,
>@@, -$
GetAllEntrepreneursAsync@@. F
(@@F G
)@@G H
{AA 	
returnBB 
awaitBB 
_contextBB !
.BB! "
EntrepreneurBB" .
.BB. /
ToListAsyncBB/ :
(BB: ;
)BB; <
;BB< =
}CC 	
publicEE 
voidEE 
AddEntrepreneurEE #
(EE# $
EntrepreneurEE$ 0
entrepreneurEE1 =
)EE= >
{FF 	
_contextGG 
.GG 
EntrepreneurGG !
.GG! "
AddGG" %
(GG% &
entrepreneurGG& 2
)GG2 3
;GG3 4
_contextHH 
.HH 
SaveChangesHH  
(HH  !
)HH! "
;HH" #
}II 	
publicKK 
asyncKK 
TaskKK 
<KK 
EntrepreneurKK &
>KK& '
GetByEmailAsyncKK' 6
(KK6 7
stringKK7 =
emailKK> C
)KKC D
{LL 	
returnMM 
(MM 
awaitMM 
_contextMM "
.MM" #
EntrepreneurMM# /
.MM/ 0
	FindAsyncMM0 9
(MM9 :
emailMM: ?
)MM? @
)MM@ A
;MMA B
}NN 	
}OO 
}PP Ö)
ÅC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\EmprendeUCR_WebApplication\Data\Services\HasSuppliesService.cs
	namespace 	&
EmprendeUCR_WebApplication
 $
.$ %
Data% )
.) *
Services* 2
{ 
public 

class 
HasSuppliesService #
:# $
	PageModel$ -
{ 
private 
readonly &
EmprendeUCR_WebApplication 3
.3 4
Data4 8
.8 9
Contexts9 A
.A B
SqlServerDbContextB T
_contextU ]
;] ^
public 
HasSuppliesService !
(! "&
EmprendeUCR_WebApplication" <
.< =
Data= A
.A B
ContextsB J
.J K
SqlServerDbContextK ]
context^ e
)e f
{ 	
_context 
= 
context 
; 
} 	
public 
async 
Task 
< 
IList 
<  
HasSupplies  +
>+ ,
>, -
GetAsync. 6
(6 7
)7 8
{ 	
return 
await 
_context !
.! "
HasSupplies" -
.- .
ToListAsync. 9
(9 :
): ;
;; <
} 	
public 
async 
Task 
< 
bool 
> #
InsertHasSuppliesrAsync  7
(7 8
HasSupplies8 C
supplyD J
)J K
{ 	
await 
_context 
. 
HasSupplies &
.& '
AddAsync' /
(/ 0
supply0 6
)6 7
;7 8
await 
_context 
. 
SaveChangesAsync +
(+ ,
), -
;- .
return 
true 
; 
} 	
public 
async 
Task 
< 
bool 
> "
InsertListOfHasSupplie  6
(6 7
IList7 <
<< =
HasSupplies= H
>H I
HasSuppliesListJ Y
,Y Z
intZ ]
Code_ID^ e
,e f
int   
Category_ID   
,   
string   
Entrepreneur_Email   1
)  2 3
{!! 	
try"" 
{## 
foreach$$ 
($$ 
var$$ 
supply$$ #
in$$$ &
HasSuppliesList$$' 6
)$$6 7
{%% 
supply&& 
.&& 
Category_ID&& &
=&&' (
Category_ID&&) 4
;&&4 5
supply'' 
.'' 
Entrepreneur_Email'' -
=''. /
Entrepreneur_Email''0 B
;''B C
supply(( 
.(( 
Code_ID(( "
=((# $
Code_ID((% ,
;((, -
await)) #
InsertHasSuppliesrAsync)) 1
())1 2
supply))2 8
)))8 9
;))9 :
}** 
await++ 
_context++ 
.++ 
SaveChangesAsync++ /
(++/ 0
)++0 1
;++1 2
},, 
catch-- 
(-- %
InvalidOperationException-- ,
)--, -
{.. 
}00 
return22 
true22 
;22 
}33 	
public44 
async44 
Task44 
<44 
List44 
<44 
HasSupplies44 *
>44* +
>44+ ,"
GetAllHasSuppliesAsync44- C
(44C D
)44D E
{55 	
return66 
await66 
_context66 !
.66! "
HasSupplies66" -
.66- .
ToListAsync66. 9
(669 :
)66: ;
;66; <
}77 	
public99 
List99 
<99 
HasSupplies99 
>99  
loadSuppliesByID99! 1
(991 2
int992 5
Code_ID996 =
)99= >
{:: 	
return;; 
_context;; 
.;; 
HasSupplies;; '
.;;' (
Where;;( -
(;;- .
p;;. /
=>;;0 2
p;;3 4
.;;4 5
Code_ID;;5 <
==;;= ?
Code_ID;;@ G
);;G H
.;;H I
ToList;;I O
(;;O P
);;P Q
;;;Q R
}<< 	
public>> 
async>> 
Task>> 
<>> 
List>> 
<>> 
HasSupplies>> *
>>>* +
>>>+ ,.
"GetAllHasSuppliesEntrepreneurAsync>>- O
(>>O P
string>>P V
entrepreneurEmail>>W h
)>>h i
{?? 	
return@@ 
await@@ 
_context@@ !
.@@! "
HasSupplies@@" -
.@@- .
Where@@. 3
(@@3 4
h@@4 5
=>@@6 8
h@@9 :
.@@: ;
Entrepreneur_Email@@; M
==@@N P
entrepreneurEmail@@Q b
)@@b c
.@@c d
ToListAsync@@d o
(@@o p
)@@p q
;@@q r
}AA 	
}CC 
}DD ˝3
ÄC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\EmprendeUCR_WebApplication\Data\Services\Has_StatusService.cs
	namespace

 	&
EmprendeUCR_WebApplication


 $
.

$ %
Data

% )
.

) *
Services

* 2
{ 
public 

class 
Has_StatusService "
{ 
private 
readonly &
EmprendeUCR_WebApplication 3
.3 4
Data4 8
.8 9
Contexts9 A
.A B
SqlServerDbContextB T
_contextU ]
;] ^
public 
Has_StatusService  
(  !&
EmprendeUCR_WebApplication! ;
.; <
Data< @
.@ A
ContextsA I
.I J
SqlServerDbContextJ \
context] d
)d e
{ 	
_context 
= 
context 
; 
} 	
public 
async 
Task 
< 
IList 
<  

Has_Status  *
>* +
>+ ,
GetAsync- 5
(5 6
)6 7
{ 	
return 
await 
_context !
.! "

Has_Status" ,
., -
ToListAsync- 8
(8 9
)9 :
;: ;
} 	
public 
async 
Task 
< 
bool 
> !
InsertHas_StatusAsync  5
(5 6

Has_Status6 @
statusA G
)G H
{ 	
await 
_context 
. 

Has_Status %
.% &
AddAsync& .
(. /
status/ 5
)5 6
;6 7
await 
_context 
. 
SaveChangesAsync +
(+ ,
), -
;- .
return 
true 
; 
} 	
public 
async 
Task 
< 
bool 
> "
InsertListOfHas_Status  6
(6 7
IList7 <
<< =

Has_Status= G
>G H
Has_Status_ListI X
)X Y
{ 	
try   
{!! 
for"" 
("" 
int"" 
i"" 
="" 
$num"" 
;"" 
i""  !
<""" #
Has_Status_List""$ 3
.""3 4
Count""4 9
(""9 :
)"": ;
;""; <
i""= >
++""> @
)""@ A
{## 
var$$ 

has_status$$ "
=$$# $
Has_Status_List$$% 4
.$$4 5
	ElementAt$$5 >
($$> ?
i$$? @
)$$@ A
;$$A B
var&& 
statusExists&& $
=&&% &
_context&&' /
.&&/ 0
Status&&0 6
.&&6 7
Exists&&7 =
(&&= >
pred&&> B
:&&B C
s&&D E
=>&&F H
s&&I J
.&&J K
Name&&K O
==&&P R

has_status&&S ]
.&&] ^
Name&&^ b
)&&b c
;&&c d
if'' 
('' 
!'' 
statusExists'' %
)''% &
{(( 
var)) 
status)) "
=))# $
new))% (
Status))) /
())/ 0
)))0 1
;))1 2
status** 
.** 
Name** #
=**$ %

has_status**& 0
.**0 1
Name**1 5
;**5 6
status++ 
.++ 
Previous_State_Name++ 2
=++3 4
null++5 9
;++9 :
await,, 
_context,, &
.,,& '
Status,,' -
.,,- .
AddAsync,,. 6
(,,6 7
status,,7 =
),,= >
;,,> ?
await-- 
_context-- &
.--& '
SaveChangesAsync--' 7
(--7 8
)--8 9
;--9 :
}.. 
var// $
personalizedStatusExists// 0
=//1 2
_context//3 ;
.//; <
Personalized_Status//< O
.//O P
Exists//P V
(//V W
s//W X
=>//Y [
s//\ ]
.//] ^
Name//^ b
==//c e

has_status//f p
.//p q
Name//q u
)//u v
;//v w
if00 
(00 
!00 $
personalizedStatusExists00 1
)001 2
{11 
var22 
personalizedStatus22 .
=22/ 0
new221 4
Personalized_Status225 H
(22H I
)22I J
;22J K
personalizedStatus33 *
.33* +
Name33+ /
=330 1

has_status332 <
.33< =
Name33= A
;33A B
await44 
_context44 &
.44& '
Personalized_Status44' :
.44: ;
AddAsync44; C
(44C D
personalizedStatus44D V
)44V W
;44W X
await55 
_context55 &
.55& '
SaveChangesAsync55' 7
(557 8
)558 9
;559 :
}66 
await88 !
InsertHas_StatusAsync88 /
(88/ 0

has_status880 :
)88: ;
;88; <
}99 
await:: 
_context:: 
.:: 
SaveChangesAsync:: /
(::/ 0
)::0 1
;::1 2
};; 
catch<< 
(<< %
InvalidOperationException<< ,
)<<, -
{== 
}?? 
returnAA 
trueAA 
;AA 
}BB 	
publicCC 
asyncCC 
TaskCC 
<CC 
ListCC 
<CC 

Has_StatusCC )
>CC) *
>CC* +!
GetAllHas_StatusAsyncCC, A
(CCA B
)CCB C
{DD 	
returnFF 
awaitFF 
_contextFF !
.FF! "

Has_StatusFF" ,
.FF, -
ToListAsyncFF- 8
(FF8 9
)FF9 :
;FF: ;
}GG 	
publicII 
ListII 
<II 

Has_StatusII 
>II 
loadStatusesByIDII  0
(II0 1
intII1 4
Code_IDII5 <
)II< =
{JJ 	
returnKK 
_contextKK 
.KK 

Has_StatusKK &
.KK& '
WhereKK' ,
(KK, -
pKK- .
=>KK/ 1
pKK2 3
.KK3 4
Code_IDKK4 ;
==KK< >
Code_IDKK? F
)KKF G
.KKG H
ToListKKH N
(KKN O
)KKO P
;KKP Q
}LL 	
}MM 
}NN ˝
àC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\EmprendeUCR_WebApplication\Data\Services\Keyword\AddKeywordService.cs
	namespace

 	&
EmprendeUCR_WebApplication


 $
.

$ %
Data

% )
.

) *
Services

* 2
.

2 3
Keyword

3 :
{ 
public 

class 
AddKeywordService "
:# $
	PageModel% .
{ 
private 
readonly 
Contexts !
.! "
SqlServerDbContext" 4
_context5 =
;= >
public 
AddKeywordService  
(  !
Contexts! )
.) *
SqlServerDbContext* <
context= D
)D E
{ 	
_context 
= 
context 
; 
} 	
} 
} Ê
àC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\EmprendeUCR_WebApplication\Data\Services\Keyword\HasKeywordService.cs
	namespace 	&
EmprendeUCR_WebApplication
 $
.$ %
Data% )
.) *
Services* 2
.2 3
Keyword3 :
{ 
public 

class 
HasKeywordService "
{ 
private 
readonly 
Contexts !
.! "
SqlServerDbContext" 4
_context5 =
;= >
public 
HasKeywordService  
(  !
Contexts! )
.) *
SqlServerDbContext* <
context= D
)D E
{ 	
_context 
= 
context 
; 
} 	
public 
async 
Task 
< 
IList 
<  
Has_Keyword  +
>+ ,
>, -
GetAsync. 6
(6 7
)7 8
{ 	
return 
await 
_context !
.! "
Has_Keyword" -
.- .
ToListAsync. 9
(9 :
): ;
;; <
} 	
public 
List 
< 
string 
>  
GetKeywordsByProduct 0
(0 1
Product1 8
product9 @
)@ A
{ 	
List 
< 
string 
> 
keywordsTitles '
=( )
new* -
(- .
). /
;/ 0
List 
< 
Has_Keyword 
> 
has_Keywords *
=+ ,
_context- 5
.5 6
Has_Keyword6 A
.A B
WhereB G
(G H
hkH J
=>K M
hkN P
.P Q

Product_IDQ [
==\ ^
product_ f
.f g
Code_IDg n
)n o
.o p
ToListp v
(v w
)w x
;x y
if 
( 
has_Keywords 
. 
Count "
(" #
)# $
>% &
$num' (
)( )
{ 
KeywordService 
keywordService -
=. /
new0 3
KeywordService4 B
(B C
_contextC K
)K L
;L M
foreach 
( 
var 
has_Keyword (
in) +
has_Keywords, 8
)8 9
{   
keywordsTitles!! "
.!!" #
Add!!# &
(!!& '
keywordService!!' 5
.!!5 6
GetKeywordTitleById!!6 I
(!!I J
has_Keyword!!J U
.!!U V

Keyword_ID!!V `
)!!` a
)!!a b
;!!b c
}"" 
}## 
return$$ 
keywordsTitles$$ !
;$$! "
}%% 	
}&& 
}'' §
èC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\EmprendeUCR_WebApplication\Data\Services\Keyword\HasKeywordServiceService.cs
	namespace 	&
EmprendeUCR_WebApplication
 $
.$ %
Data% )
.) *
Services* 2
.2 3
Keyword3 :
{ 
public 

class $
HasKeywordServiceService )
{ 
private 
readonly 
Contexts !
.! "
SqlServerDbContext" 4
_context5 =
;= >
public $
HasKeywordServiceService '
(' (
Contexts( 0
.0 1
SqlServerDbContext1 C
contextD K
)K L
{ 	
_context 
= 
context 
; 
} 	
public 
async 
Task 
< 
IList 
<  
Has_Keyword_Service  3
>3 4
>4 5
GetAsync6 >
(> ?
)? @
{ 	
return 
await 
_context !
.! "
Has_Keyword_Service" 5
.5 6
ToListAsync6 A
(A B
)B C
;C D
} 	
public 
List 
< 
string 
>  
GetKeywordsByService 0
(0 1
Service1 8
service9 @
)@ A
{ 	
List 
< 
string 
> 
keywordsTitles '
=( )
new* -
(- .
). /
;/ 0
List 
< 
Has_Keyword_Service $
>$ %
has_Keywords& 2
=3 4
_context5 =
.= >
Has_Keyword_Service> Q
.Q R
WhereR W
(W X
hkX Z
=>[ ]
hk^ `
.` a

Service_IDa k
==l n
serviceo v
.v w
Code_IDw ~
)~ 
.	 Ä
ToList
Ä Ü
(
Ü á
)
á à
;
à â
if 
( 
has_Keywords 
. 
Count "
(" #
)# $
>% &
$num' (
)( )
{ 
KeywordService 
keywordService -
=. /
new0 3
KeywordService4 B
(B C
_contextC K
)K L
;L M
foreach 
( 
var 
has_Keyword (
in) +
has_Keywords, 8
)8 9
{   
keywordsTitles!! "
.!!" #
Add!!# &
(!!& '
keywordService!!' 5
.!!5 6
GetKeywordTitleById!!6 I
(!!I J
has_Keyword!!J U
.!!U V

Keyword_ID!!V `
)!!` a
)!!a b
;!!b c
}"" 
}## 
return$$ 
keywordsTitles$$ !
;$$! "
}%% 	
}&& 
}'' Ü:
ÖC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\EmprendeUCR_WebApplication\Data\Services\Keyword\KeywordService.cs
	namespace 	&
EmprendeUCR_WebApplication
 $
.$ %
Data% )
.) *
Services* 2
.2 3
Keyword3 :
{ 
public 

class 
KeywordService 
:  !
	PageModel" +
{ 
private 
List 
< 
string 
> 
keywordNames )
;) *
public 
string 
Title 
; 
public 
int 
Id 
; 
private 
readonly 
Contexts !
.! "
SqlServerDbContext" 4
_context5 =
;= >
public 
KeywordService 
( 
Contexts &
.& '
SqlServerDbContext' 9
context: A
)A B
{ 	
keywordNames 
= 
new 
( 
)  
;  !
_context 
= 
context 
; 
} 	
public 
async 
Task 
< 
IList 
<  
Keywords  (
>( )
>) *
GetAsync+ 3
(3 4
)4 5
{ 	
return 
await 
_context !
.! "
Keyword" )
.) *
ToListAsync* 5
(5 6
)6 7
;7 8
}   	
public"" 
Keywords"" 

getKeyword"" "
(""" #
string""# )
title""* /
)""/ 0
{## 	
return$$ 
_context$$ 
.$$ 
Keyword$$ #
.$$# $
Find$$$ (
($$( )
title$$) .
)$$. /
;$$/ 0
}%% 	
public'' 
string'' 
?'' 
GetKeywordTitleById'' *
(''* +
int''+ .
Id''/ 1
)''1 2
{(( 	
string)) 
title)) 
=)) 
null)) 
;))  
Keywords** 
keywords** 
=** 
_context**  (
.**( )
Keyword**) 0
.**0 1
Find**1 5
(**5 6
Id**6 8
)**8 9
;**9 :
if++ 
(++ 
keywords++ 
!=++ 
null++  
)++  !
title,, 
=,, 
keywords,,  
.,,  !
Title,,! &
;,,& '
return-- 
title-- 
;-- 
}.. 	
public// 
async// 
Task// 
<// 
int// 
>// 
addKeyWordToProduct// 2
(//2 3
int//3 6
	productID//7 @
,//@ A
string//B H
entrepreneurEmail//I Z
,//Z [
int//\ _

categoryID//` j
)//j k
{00 	
for11 
(11 
int11 
i11 
=11 
$num11 
;11 
i11 
<11 
keywordNames11 (
.11( )
Length11) /
(11/ 0
)110 1
;113 4
i115 6
++116 8
)118 9
{22 
var33 
keyword33 
=33 
_context33 &
.33& '
Keyword33' .
.33. /
FirstOrDefault33/ =
(33= >
k33> ?
=>33@ B
k33C D
.33D E
Title33E J
.33J K
Equals33K Q
(33Q R
keywordNames33R ^
[33^ _
i33_ `
]33` a
)33a b
)33b c
;33c d
if44 
(44 
keyword44 
!=44 
null44 #
)44# $
{55 
Has_Keyword66 
has_Keyword66  +
=66, -
new66. 1
(661 2
)662 3
;663 4
has_Keyword77 
.77  

Keyword_ID77  *
=77+ ,
keyword77- 4
.774 5
Id775 7
;777 8
has_Keyword88 
.88  
Product_Category_ID88  3
=884 5

categoryID886 @
;88@ A
has_Keyword99 
.99  &
Product_Entrepreneur_Email99  :
=99; <
entrepreneurEmail99= N
;99N O
has_Keyword:: 
.::  

Product_ID::  *
=::+ ,
	productID::- 6
;::6 7
await;; 
_context;; "
.;;" #
Has_Keyword;;# .
.;;. /
AddAsync;;/ 7
(;;7 8
has_Keyword;;8 C
);;C D
;;;D E
await<< 
_context<< "
.<<" #
SaveChangesAsync<<# 3
(<<3 4
)<<4 5
;<<5 6
}== 
}>> 
keywordNames?? 
.?? 
Clear?? 
(?? 
)??  
;??  !
return@@ 
$num@@ 
;@@ 
}AA 	
publicCC 
voidCC 
	addToListCC 
(CC 
stringCC $
keywordNameCC% 0
)CC0 1
{DD 	
ifEE 
(EE 
keywordNameEE 
!=EE 
nullEE #
)EE# $
{FF 
keywordNamesGG 
.GG 
AddGG  
(GG  !
keywordNameGG! ,
)GG, -
;GG- .
}HH 
}II 	
publicKK 
asyncKK 
TaskKK 
<KK 
boolKK 
>KK 
InsertKeywordKK  -
(KK- .
stringKK. 4
keywordNameKK5 @
)KK@ A
{LL 	
ifMM 
(MM 
keywordNameMM 
==MM 
nullMM #
)MM# $
{NN 
returnOO 
falseOO 
;OO 
}PP 
elseQQ 
{RR 
ifSS 
(SS 
keywordNameSS 
!=SS  "
$strSS# %
)SS% &
{TT 
varUU 
existsUU 
=UU  
_contextUU! )
.UU) *
KeywordUU* 1
.UU1 2
WhereUU2 7
(UU7 8
kUU8 9
=>UU: <
kUU= >
.UU> ?
TitleUU? D
.UUD E
EqualsUUE K
(UUK L
keywordNameUUL W
)UUW X
)UUX Y
;UUY Z
ifVV 
(VV 
existsVV 
.VV 
ToListVV %
(VV% &
)VV& '
.VV' (
LengthVV( .
(VV. /
)VV/ 0
==VV1 3
$numVV4 5
)VV5 6
{WW 
KeywordsXX  
keywordXX! (
=XX) *
newXX+ .
(XX. /
)XX/ 0
;XX0 1
keywordYY 
.YY  
TitleYY  %
=YY& '
keywordNameYY( 3
;YY3 4
awaitZZ 
_contextZZ &
.ZZ& '
KeywordZZ' .
.ZZ. /
AddAsyncZZ/ 7
(ZZ7 8
keywordZZ8 ?
)ZZ? @
;ZZ@ A
await[[ 
_context[[ &
.[[& '
SaveChangesAsync[[' 7
([[7 8
)[[8 9
;[[9 :
return\\ 
true\\ #
;\\# $
}]] 
}^^ 
}__ 
return`` 
false`` 
;`` 
}aa 	
}bb 
}cc ‹4
åC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\EmprendeUCR_WebApplication\Data\Services\Keyword\KeywordServiceService.cs
	namespace 	&
EmprendeUCR_WebApplication
 $
.$ %
Data% )
.) *
Services* 2
.2 3
Keyword3 :
{ 
public 

class !
KeywordServiceService &
:' (
	PageModel) 2
{ 
public 
string 
Title 
; 
public 
int 
Id 
; 
private 
List 
< 
string 
> 
keywordNames )
;) *
private 
readonly 
Contexts !
.! "
SqlServerDbContext" 4
_context5 =
;= >
public !
KeywordServiceService $
($ %
Contexts% -
.- .
SqlServerDbContext. @
contextA H
)H I
{ 	
keywordNames 
= 
new 
( 
)  
;  !
_context 
= 
context 
; 
} 	
public 
async 
Task 
< 
IList 
<  
Keywords  (
>( )
>) *
GetAsync+ 3
(3 4
)4 5
{ 	
return 
await 
_context !
.! "
Keyword" )
.) *
ToListAsync* 5
(5 6
)6 7
;7 8
} 	
public!! 
Keywords!! 
getKeywordService!! )
(!!) *
string!!* 0
title!!1 6
)!!6 7
{"" 	
return## 
_context## 
.## 
Keyword## #
.### $
Find##$ (
(##( )
title##) .
)##. /
;##/ 0
}$$ 	
public&& 
async&& 
Task&& 
<&& 
int&& 
>&& 
addKeyWordToService&& 2
(&&2 3
int&&3 6
	serviceID&&7 @
,&&@ A
string&&B H
entrepreneurEmail&&I Z
,&&Z [
int&&\ _

categoryID&&` j
)&&j k
{'' 	
for(( 
((( 
int(( 
i(( 
=(( 
$num(( 
;(( 
i(( 
<(( 
keywordNames((  ,
.((, -
Length((- 3
(((3 4
)((4 5
;((5 6
i((7 8
++((8 :
)((: ;
{)) 
var** 
keyword** 
=** 
_context** &
.**& '
Keyword**' .
.**. /
FirstOrDefault**/ =
(**= >
k**> ?
=>**@ B
k**C D
.**D E
Title**E J
.**J K
Equals**K Q
(**Q R
keywordNames**R ^
[**^ _
i**_ `
]**` a
)**a b
)**b c
;**c d
if++ 
(++ 
keyword++ 
!=++ 
null++ #
)++# $
{,, 
Has_Keyword_Service-- '
has_Keyword--( 3
=--4 5
new--6 9
(--9 :
)--: ;
;--; <
has_Keyword.. 
...  

Keyword_ID..  *
=..+ ,
keyword..- 4
...4 5
Id..5 7
;..7 8
has_Keyword// 
.//  
Service_Category_ID//  3
=//4 5

categoryID//6 @
;//@ A
has_Keyword00 
.00  &
Service_Entrepreneur_Email00  :
=00; <
entrepreneurEmail00= N
;00N O
has_Keyword11 
.11  

Service_ID11  *
=11+ ,
	serviceID11- 6
;116 7
await22 
_context22 "
.22" #
Has_Keyword_Service22# 6
.226 7
AddAsync227 ?
(22? @
has_Keyword22@ K
)22K L
;22L M
await33 
_context33 "
.33" #
SaveChangesAsync33# 3
(333 4
)334 5
;335 6
}44 
}55 
keywordNames66 
.66 
Clear66 
(66 
)66  
;66  !
return77 
$num77 
;77 
}88 	
public:: 
void:: 
addToListService:: $
(::$ %
string::% +
keywordName::, 7
)::7 8
{;; 	
if<< 
(<< 
keywordName<< 
!=<< 
null<< #
)<<# $
{== 
keywordNames>> 
.>> 
Add>>  
(>>  !
keywordName>>! ,
)>>, -
;>>- .
}?? 
}@@ 	
publicBB 
asyncBB 
TaskBB 
<BB 
boolBB 
>BB  
InsertKeywordServiceBB  4
(BB4 5
stringBB5 ;
keywordNameBB< G
)BBG H
{CC 	
ifDD 
(DD 
keywordNameDD 
==DD 
nullDD #
)DD# $
{EE 
returnFF 
falseFF 
;FF 
}GG 
elseHH 
{II 
ifJJ 
(JJ 
keywordNameJJ 
!=JJ  "
$strJJ# %
)JJ% &
{KK 
varLL 
existsLL 
=LL  
_contextLL! )
.LL) *
KeywordLL* 1
.LL1 2
WhereLL2 7
(LL7 8
kLL8 9
=>LL: <
kLL= >
.LL> ?
TitleLL? D
.LLD E
EqualsLLE K
(LLK L
keywordNameLLL W
)LLW X
)LLX Y
;LLY Z
ifMM 
(MM 
existsMM 
.MM 
ToListMM %
(MM% &
)MM& '
.MM' (
LengthMM( .
(MM. /
)MM/ 0
==MM1 3
$numMM4 5
)MM5 6
{NN 
KeywordsOO  
keywordOO! (
=OO) *
newOO+ .
(OO. /
)OO/ 0
;OO0 1
keywordPP 
.PP  
TitlePP  %
=PP& '
keywordNamePP( 3
;PP3 4
awaitQQ 
_contextQQ &
.QQ& '
KeywordQQ' .
.QQ. /
AddAsyncQQ/ 7
(QQ7 8
keywordQQ8 ?
)QQ? @
;QQ@ A
awaitRR 
_contextRR &
.RR& '
SaveChangesAsyncRR' 7
(RR7 8
)RR8 9
;RR9 :
returnSS 
trueSS #
;SS# $
}TT 
}UU 
}VV 
returnWW 
falseWW 
;WW 
}XX 	
}ZZ 
}[[ ∞

âC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\EmprendeUCR_WebApplication\Data\Services\Keyword\ShowKeywordService.cs
	namespace 	&
EmprendeUCR_WebApplication
 $
.$ %
Data% )
.) *
Services* 2
.2 3
Keyword3 :
{ 
public 

class 
ShowKeywordService #
:$ %
	PageModel& /
{ 
private 
readonly 
Contexts !
.! "
SqlServerDbContext" 4
_context5 =
;= >
public 
ShowKeywordService !
(! "
Contexts" *
.* +
SqlServerDbContext+ =
context> E
)E F
{ 	
_context 
= 
context 
; 
} 	
public 
async 
Task 
< 
List 
< 
Keywords '
>' (
>( )
GetAllkeywordsAsync* =
(= >
)> ?
{ 	
return 
await 
_context !
.! "
Keyword" )
.) *
ToListAsync* 5
(5 6
)6 7
;7 8
} 	
} 
} ∏
{C:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\EmprendeUCR_WebApplication\Data\Services\LikesService.cs
	namespace		 	&
EmprendeUCR_WebApplication		
 $
.		$ %
Data		% )
.		) *
Services		* 2
{

 
public 
class 
LikesService 
: 
	PageModel &
{ 
private 	
readonly
 &
EmprendeUCR_WebApplication -
.- .
Data. 2
.2 3
Contexts3 ;
.; <
SqlServerDbContext< N
_contextO W
;W X
public 
LikesService	 
( &
EmprendeUCR_WebApplication 0
.0 1
Data1 5
.5 6
Contexts6 >
.> ?
SqlServerDbContext? Q
contextR Y
)Y Z
{ 
_context 
= 
context 
; 
} 
public 
async	 
Task 
< 
IList 
< 
Likes 
>  
>  !
GetAsync" *
(* +
)+ ,
{ 	
return 
await 
_context !
.! "
Likes" '
.' (
ToListAsync( 3
(3 4
)4 5
;5 6
} 	
public 
void	 
AddLikes 
( 
Likes 
likes "
)" #
{ 
_context 
. 
Likes 
. 
Add 
( 
likes 
) 
; 
_context 
. 
SaveChanges 
( 
) 
; 
} 
public 
void 
RemoveLikes 
(  
Likes  %
likes& +
)+ ,
{   	
_context!! 
.!! 
Likes!! 
.!! 
Remove!! !
(!!! "
likes!!" '
)!!' (
;!!( )
_context"" 
."" 
SaveChanges""  
(""  !
)""! "
;""" #
}## 	
public%% 
async%%	 
Task%% 
<%% 
IList%% 
<%% 
Likes%% 
>%%  
>%%  !
GetByEmailAsync%%" 1
(%%1 2
string%%2 8
email%%9 >
)%%> ?
{&& 
return'' 	
await''
 
_context'' 
.'' 
Likes'' 
.'' 
Where'' $
(''$ %
c''% &
=>''' )
String''* 0
.''0 1
Equals''1 7
(''7 8
c''8 9
.''9 :
Members_Email'': G
,''G H
email''I N
)''N O
)''O P
.''P Q
ToListAsync''Q \
(''\ ]
)''] ^
;''^ _
}(( 
})) 
}** Ë
{C:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\EmprendeUCR_WebApplication\Data\Services\LoginService.cs
	namespace		 	&
EmprendeUCR_WebApplication		
 $
.		$ %
Data		% )
.		) *
Services		* 2
{

 
public 

class 
LoginService 
: 
	PageModel  )
{ 
private 
readonly &
EmprendeUCR_WebApplication 3
.3 4
Data4 8
.8 9
Contexts9 A
.A B
SqlServerDbContextB T
_contextU ]
;] ^
public 
LoginService 
( &
EmprendeUCR_WebApplication 6
.6 7
Data7 ;
.; <
Contexts< D
.D E
SqlServerDbContextE W
contextX _
)_ `
{ 	
_context 
= 
context 
; 
} 	
public 
bool 

VerifyUser 
( 
string %
email& +
,+ ,
int- 0
tipo1 5
)5 6
{ 	
bool 
res 
= 
false 
; 
switch 
( 
tipo 
) 
{ 
case 
$num 
: 
if 
( 
_context  
.  !
Client! '
.' (
Find( ,
(, -
email- 2
)2 3
!=4 6
null7 ;
); <
{ 
res 
= 
true "
;" #
} 
break 
; 
case   
$num   
:   
if!! 
(!! 
_context!!  
.!!  !
Entrepreneur!!! -
.!!- .
Find!!. 2
(!!2 3
email!!3 8
)!!8 9
!=!!: <
null!!= A
)!!A B
{"" 
res## 
=## 
true## "
;##" #
}$$ 
break%% 
;%% 
case'' 
$num'' 
:'' 
if(( 
((( 
_context((  
.((  !
Administrator((! .
.((. /
Find((/ 3
(((3 4
email((4 9
)((9 :
!=((; =
null((> B
)((B C
{)) 
res** 
=** 
true** "
;**" #
}++ 
break,, 
;,, 
}.. 
return// 
res// 
;// 
}00 	
}11 
}22 ™<
zC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\EmprendeUCR_WebApplication\Data\Services\MailService.cs
	namespace 	&
EmprendeUCR_WebApplication
 $
.$ %
Data% )
.) *
Services* 2
{ 
public 

class 
MailService 
{ 
public 
string 
getMailBody !
(! "
string" (
	hash_mail) 2
,2 3
int4 7
	type_user8 A
)A B
{ 	
string 
url 
= 
$str 
; 
string 
result 
= 
$str 
; 
if 
( 
	type_user 
== 
$num 
) 
{ 
Console 
. 
	WriteLine !
(! "
	type_user" +
)+ ,
;, -
url 
= 
Global 
. 

DomainName '
+( )
$str* C
+D E
	hash_mailF O
+P Q
$strR `
;` a
result 
= 
string 
.  
Format  &
(& '
$str"' -
+"". /
$char""0 3
+""4 5
url""6 9
+"": ;
$char""< ?
+""@ A
$str### @
,##@ A
url##B E
,##E F
	hash_mail##G P
)##P Q
;##Q R
}$$ 
if%% 
(%% 
	type_user%% 
==%% 
$num%% 
)%% 
{&& 
Console'' 
.'' 
	WriteLine'' !
(''! "
	type_user''" +
)''+ ,
;'', -
url(( 
=(( 
Global(( 
.(( 

DomainName(( '
+((( )
$str((* C
+((D E
	hash_mail((F O
+((P Q
$str((R f
;((f g
result** 
=** 
string** 
.**  
Format**  &
(**& '
$str*-' -
+--. /
$char--0 3
+--4 5
url--6 9
+--: ;
$char--< ?
+--@ A
$str..# @
,..@ A
url..B E
,..E F
	hash_mail..G P
)..P Q
;..Q R
}// 
if00 
(00 
	type_user00 
==00 
$num00 
)00 
{11 
Console22 
.22 
	WriteLine22 !
(22! "
	type_user22" +
)22+ ,
;22, -
url33 
=33 
Global33 
.33 

DomainName33 '
+33( )
$str33* C
+33D E
	hash_mail33F O
+33P Q
$str33R g
;33g h
result55 
=55 
string55 
.55  
Format55  &
(55& '
$str58' -
+88. /
$char880 3
+884 5
url886 9
+88: ;
$char88< ?
+88@ A
$str99# @
,99@ A
url99B E
,99E F
	hash_mail99G P
)99P Q
;99Q R
}:: 
return<< 
result<< 
;<< 
}>> 	
publicEE 
stringEE 
getNewPasswordMailEE (
(EE( )
stringEE) /
	hash_mailEE0 9
)EE9 :
{FF 	
stringGG 
urlGG 
=GG 
$strGG 
;GG 
stringHH 
resultHH 
=HH 
$strHH 
;HH 
urlJJ 
=JJ 
GlobalJJ 
.JJ 

DomainNameJJ #
+JJ$ %
$strJJ& :
+JJ; <
	hash_mailJJ= F
;JJF G
resultLL 
=LL 
stringLL 
.LL 
FormatLL "
(LL" #
$strLP# )
+PP* +
$charPP, /
+PP0 1
urlPP2 5
+PP6 7
$charPP8 ;
+PP< =
$strQQ  @
,QQ@ A
urlQQB E
,QQE F
	hash_mailQQG P
)QQP Q
;QQQ R
returnTT 
resultTT 
;TT 
}UU 	
public\\ 
async\\ 
Task\\ 
<\\ 
string\\  
>\\  !
SendMail\\" *
(\\* +
Mail\\+ /
	mailClass\\0 9
)\\9 :
{]] 	
try^^ 
{__ 
using`` 
(`` 
MailMessage`` "
mail``# '
=``( )
new``* -
MailMessage``. 9
(``9 :
)``: ;
)``; <
{``= >
mailaa 
.aa 
Fromaa 
=aa 
newaa  #
MailAddressaa$ /
(aa/ 0
	mailClassaa0 9
.aa9 :

FromMailIdaa: D
)aaD E
;aaE F
Consolebb 
.bb 
	WriteLinebb %
(bb% &
mailbb& *
.bb* +
Frombb+ /
)bb/ 0
;bb0 1
	mailClasscc 
.cc 
	ToMailIdscc '
.cc' (
ForEachcc( /
(cc/ 0
xcc0 1
=>cc2 4
{dd 
Consoleee 
.ee  
	WriteLineee  )
(ee) *
xee* +
)ee+ ,
;ee, -
mailff 
.ff 
Toff 
.ff  
Addff  #
(ff# $
xff$ %
)ff% &
;ff& '
}gg 
)gg 
;gg 
mailii 
.ii 
Bodyii 
=ii 
	mailClassii  )
.ii) *
Bodyii* .
;ii. /
Consolejj 
.jj 
	WriteLinejj %
(jj% &
mailjj& *
.jj* +
Subjectjj+ 2
)jj2 3
;jj3 4
mailkk 
.kk 
Subjectkk  
=kk! "
	mailClasskk# ,
.kk, -
Subjectkk- 4
;kk4 5
mailll 
.ll 

IsBodyHtmlll #
=ll$ %
	mailClassll& /
.ll/ 0

IsBodyHtmlll0 :
;ll: ;
	mailClassnn 
.nn 
Attachementsnn *
.nn* +
ForEachnn+ 2
(nn2 3
xnn3 4
=>nn5 7
{oo 
mailpp 
.pp 
Attachmentspp (
.pp( )
Addpp) ,
(pp, -
newpp- 0

Attachmentpp1 ;
(pp; <
xpp< =
)pp= >
)pp> ?
;pp? @
}qq 
)qq 
;qq 
usingss 
(ss 

SmtpClientss %
smtpss& *
=ss+ ,
newss- 0

SmtpClientss1 ;
(ss< =
$strss= M
,ssM N
$numssO R
)ssR S
)ssS T
{tt 
smtpuu 
.uu 
Credentialsuu (
=uu) *
newuu+ .
Systemuu/ 5
.uu5 6
Netuu6 9
.uu9 :
NetworkCredentialuu: K
(uuK L
	mailClassuuL U
.uuU V

FromMailIduuV `
,uu` a
	mailClassuub k
.uuk l
FromMailIdPassworduul ~
)uu~ 
;	uu Ä
smtpvv 
.vv 
	EnableSslvv &
=vv' (
truevv) -
;vv- .
awaitww 
smtpww "
.ww" #
SendMailAsyncww# 0
(ww0 1
mailww1 5
)ww5 6
;ww6 7
returnxx 
$strxx 0
;xx0 1
}yy 
}zz 
}{{ 
catch|| 
(|| 
	Exception|| 
ex|| 
)||  
{}} 
return~~ 
ex~~ 
.~~ 
Message~~ !
;~~! "
} 
}
ÄÄ 	
}
ÅÅ 
}ÇÇ ¢
}C:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\EmprendeUCR_WebApplication\Data\Services\MembersService.cs
	namespace		 	&
EmprendeUCR_WebApplication		
 $
.		$ %
Data		% )
.		) *
Services		* 2
{

 
public 

class 
MembersService 
:  !
	PageModel" +
{ 
private 
readonly &
EmprendeUCR_WebApplication 0
.0 1
Data1 5
.5 6
Contexts6 >
.> ?
SqlServerDbContext? Q
_contextR Z
;Z [
public 
MembersService 
( &
EmprendeUCR_WebApplication 5
.5 6
Data6 :
.: ;
Contexts; C
.C D
SqlServerDbContextD V
contextW ^
)^ _
{ 
_context 
= 
context 
; 
} 
public 
async 
Task 
< 
IList 
<  
Members  '
>' (
>( )
GetAsync* 2
(2 3
)3 4
{ 	
return 
await 
_context !
.! "
Members" )
.) *
ToListAsync* 5
(5 6
)6 7
;7 8
} 	
public 
void 

AddMembers 
( 
Members &
members' .
). /
{ 	
_context 
. 
Members 
. 
Add  
(  !
members! (
)( )
;) *
_context 
. 
SaveChanges  
(  !
)! "
;" #
} 	
public 
async 
Task 
< 
Members !
>! "
GetByEmailAsync# 2
(2 3
string3 9
email: ?
)? @
{   	
var!! 
a!! 
=!! 
(!! 
await!! 
_context!! #
.!!# $
Members!!$ +
.!!+ ,
	FindAsync!!, 5
(!!5 6
email!!6 ;
)!!; <
)!!< =
;!!= >
return"" 
a"" 
;"" 
}## 	
public%% 
async%% 
Task%% 
<%% 
bool%% 
>%% 
UpdateAsync%%  +
(%%+ ,
Members%%, 3
member%%4 :
)%%: ;
{&& 	
_context'' 
.'' 
Members'' 
.'' 
Update'' $
(''$ %
member''% +
)''+ ,
;'', -
await(( 
_context(( 
.(( 
SaveChangesAsync(( +
(((+ ,
)((, -
;((- .
return)) 
true)) 
;)) 
}** 	
},, 
}-- Á
|C:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\EmprendeUCR_WebApplication\Data\Services\PhonesService.cs
	namespace

 	&
EmprendeUCR_WebApplication


 $
.

$ %
Data

% )
.

) *
Services

* 2
{ 
public 

class 
PhonesService 
{ 
private 
readonly &
EmprendeUCR_WebApplication 3
.3 4
Data4 8
.8 9
Contexts9 A
.A B
SqlServerDbContextB T
_contextU ]
;] ^
public 
PhonesService 
( &
EmprendeUCR_WebApplication 7
.7 8
Data8 <
.< =
Contexts= E
.E F
SqlServerDbContextF X
contextY `
)` a
{ 	
_context 
= 
context 
; 
} 	
public 
void 
addPhone 
( 
Phones #
phones$ *
)* +
{ 	
_context 
. 
Phones 
. 
Add 
(  
phones  &
)& '
;' (
_context 
. 
SaveChanges  
(  !
)! "
;" #
} 	
public 
async 
Task 
< 
Phones  
>  !
getByEmailAsync" 1
(1 2
string2 8
email9 >
)> ?
{ 	
return 
await 
_context !
.! "
Phones" (
.( )
	FindAsync) 2
(2 3
email3 8
)8 9
;9 :
} 	
public   
Phones   
GetPhoneByEmail   %
(  % &
string  & ,
email  - 2
)  2 3
{!! 	
return"" 
_context"" 
."" 
Phones"" "
.""" #
FirstOrDefault""# 1
(""1 2
c""2 3
=>""4 6
c""7 8
.""8 9

User_Email""9 C
.""C D
Equals""D J
(""J K
email""K P
)""P Q
)""Q R
;""R S
}## 	
public%% 
void%% 
UpdatePhone%% 
(%%  
string%%  &
email%%' ,
,%%, -
string%%. 4
phone%%5 :
)%%: ;
{&& 	
Phones'' 
	UserPhone'' 
='' 
_context'' '
.''' (
Phones''( .
.''. /
FirstOrDefault''/ =
(''= >
c''> ?
=>''@ B
c''C D
.''D E

User_Email''E O
.''O P
Equals''P V
(''V W
email''W \
)''\ ]
)''] ^
;''^ _
if(( 
((( 
	UserPhone(( 
!=(( 
null((  
)((  !
{)) 
	UserPhone** 
.** 
Phone_Number** &
=**' (
phone**) .
;**. /
_context++ 
.++ 
Phones++ 
.++  
Update++  &
(++& '
	UserPhone++' 0
)++0 1
;++1 2
_context,, 
.,, 
SaveChanges,, $
(,,$ %
),,% &
;,,& '
}-- 
}.. 	
}// 
}00 õ6
ÖC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\EmprendeUCR_WebApplication\Data\Services\ProductServicePandemic.cs
	namespace

 	&
EmprendeUCR_WebApplication


 $
.

$ %
Data

% )
.

) *
Services

* 2
{ 
public 

class "
ProductServicePandemic '
:( )
	PageModel* 3
{ 
private 
readonly &
EmprendeUCR_WebApplication 3
.3 4
Data4 8
.8 9
Contexts9 A
.A B 
SqlDbContextPandemicB V
_contextW _
;_ `
public "
ProductServicePandemic %
(% &&
EmprendeUCR_WebApplication& @
.@ A
DataA E
.E F
ContextsF N
.N O 
SqlDbContextPandemicO c
contextd k
)k l
{ 	
_context 
= 
context 
; 
} 	
public 
async 
Task 
< 
IList 
<  
Product  '
>' (
>( )
GetAsync* 2
(2 3
)3 4
{ 	
return 
await 
_context !
.! "
Product" )
.) *
ToListAsync* 5
(5 6
)6 7
;7 8
} 	
public 
async 
Task 
< 
bool 
> 
InsertProductAsync  2
(2 3
Product3 :
product; B
)B C
{ 	
await 
_context 
. 
Product "
." #
AddAsync# +
(+ ,
product, 3
)3 4
;4 5
await 
_context 
. 
SaveChangesAsync +
(+ ,
), -
;- .
return 
true 
; 
} 	
public## 
async## 
Task## 
<## 
bool## 
>## 
UpdateProductAsync##  2
(##2 3
Product##3 :
product##; B
)##B C
{$$ 	
_context%% 
.%% 
Product%% 
.%% 
Update%% #
(%%# $
product%%$ +
)%%+ ,
;%%, -
await&& 
_context&& 
.&& 
SaveChangesAsync&& +
(&&+ ,
)&&, -
;&&- .
return'' 
true'' 
;'' 
}(( 	
public,, 
async,, 
Task,, 
<,, 
bool,, 
>,, 
DeleteProductAsync,,  2
(,,2 3
Product,,3 :
product,,; B
),,B C
{-- 	
_context.. 
... 
Product.. 
... 
Remove.. #
(..# $
product..$ +
)..+ ,
;.., -
await// 
_context// 
.// 
SaveChangesAsync// +
(//+ ,
)//, -
;//- .
return00 
true00 
;00 
}11 	
public55 
async55 
Task55 
<55 
Product55 !
>55! "
GetProductAsync55# 2
(552 3
int553 6
Id557 9
)559 :
{66 	
Product77 
product77 
=77 
await77 #
_context77$ ,
.77, -
Product77- 4
.774 5
FirstOrDefaultAsync775 H
(77H I
c77I J
=>77K M
c77N O
.77O P
Code_ID77P W
.77W X
Equals77X ^
(77^ _
Id77_ a
)77a b
)77b c
;77c d
return88 
product88 
;88 
}99 	
public<< 
async<< 
Task<< 
<<< 
List<< 
<<< 
Product<< &
><<& '
><<' (
GetAllProductsAsync<<) <
(<<< =
)<<= >
{== 	
return>> 
await>> 
_context>> !
.>>! "
Product>>" )
.>>) *
ToListAsync>>* 5
(>>5 6
)>>6 7
;>>7 8
}?? 	
publicAA 
asyncAA 
TaskAA 
<AA 
IListAA 
<AA  
ProductAA  '
>AA' (
>AA( )(
GetProductsEntrepreneurAsyncAA* F
(AAF G
stringAAG M
emailAAN S
)AAS T
{BB 	
returnCC 
awaitCC 
_contextCC !
.CC! "
ProductCC" )
.CC) *
WhereCC* /
(CC/ 0
cCC0 1
=>CC2 4
StringCC5 ;
.CC; <
EqualsCC< B
(CCB C
cCCC D
.CCD E
Entrepreneur_EmailCCE W
,CCW X
emailCCY ^
)CC^ _
)CC_ `
.CC` a
ToListAsyncCCa l
(CCl m
)CCm n
;CCn o
}EE 	
publicGG 
asyncGG 
TaskGG 
<GG 
IEnumerableGG %
<GG% &
ProductGG& -
>GG- .
>GG. /
GetProductsGG0 ;
(GG; <
)GG< =
{HH 	
returnJJ 
awaitJJ 
_contextJJ !
.JJ! "
ProductJJ" )
.JJ) *
SelectJJ* 0
(JJ0 1
productJJ1 8
=>JJ9 ;
newJJ< ?
ProductJJ@ G
{JJH I
Code_IDJJJ Q
=JJR S
productJJT [
.JJ[ \
Code_IDJJ\ c
,JJc d
Product_NameJJe q
=JJr s
productJJt {
.JJ{ |
Product_Name	JJ| à
,
JJà â
Price
JJä è
=
JJê ë
product
JJí ô
.
JJô ö
Price
JJö ü
}
JJ† °
)
JJ° ¢
.
JJ¢ £
ToListAsync
JJ£ Æ
(
JJÆ Ø
)
JJØ ∞
;
JJ∞ ±
}LL 	
publicNN 
intNN 
GetProductsQuantityNN &
(NN& '
)NN' (
{OO 	
returnXX 
_contextXX 
.XX 
ProductXX #
.XX# $
CountXX$ )
(XX) *
)XX* +
;XX+ ,
}ZZ 	
public\\ 
IList\\ 
<\\ 

Is_Able_To\\ 
>\\  
getUserPermissions\\! 3
(\\3 4
string\\4 :
email\\; @
)\\@ A
{]] 	
return^^ 
_context^^ 
.^^ 

Is_Able_To^^ &
.^^& '
Filter^^' -
(^^- .
o^^. /
=>^^0 2
o^^3 4
.^^4 5
Email^^5 :
.^^: ;
Equals^^; A
(^^A B
email^^B G
)^^G H
)^^H I
.^^I J
ToArray^^J Q
(^^Q R
)^^R S
;^^S T
}__ 	
}`` 
}aa »
ÑC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\EmprendeUCR_WebApplication\Data\Services\Product_PhotosService.cs
	namespace 	&
EmprendeUCR_WebApplication
 $
.$ %
Data% )
.) *
Services* 2
{ 
public 

class !
Product_PhotosService &
{ 
private 
readonly &
EmprendeUCR_WebApplication 3
.3 4
Data4 8
.8 9
Contexts9 A
.A B
SqlServerDbContextB T
_contextU ]
;] ^
public !
Product_PhotosService $
($ %&
EmprendeUCR_WebApplication% ?
.? @
Data@ D
.D E
ContextsE M
.M N
SqlServerDbContextN `
contexta h
)h i
{ 	
_context 
= 
context 
; 
} 	
public 
bool 
savePhotoToDb !
(" #
Product_Photos# 1
p_p2 5
)5 6
{ 	
_context 
. 
Product_Photos #
.# $
Add$ '
(' (
p_p( +
)+ ,
;, -
_context 
. 
SaveChanges  
(  !
)! "
;" #
return 
true 
; 
} 	
public 
List 
< 
Product_Photos "
>" #
loadAllPhotos$ 1
(1 2
)2 3
{ 	
return 
_context 
. 
Product_Photos *
.* +
ToList+ 1
(1 2
)2 3
;3 4
} 	
public!! 
List!! 
<!! 
Product_Photos!! "
>!!" #
loadPhotosByID!!$ 2
(!!2 3
int!!3 6
Code_ID!!7 >
)!!> ?
{"" 	
return## 
_context## 
.## 
Product_Photos## *
.##* +
Where##+ 0
(##0 1
p##1 2
=>##3 5
p##6 7
.##7 8
Code_ID##8 ?
==##@ B
Code_ID##C J
)##J K
.##K L
ToList##L R
(##R S
)##S T
;##T U
}$$ 	
public&& 
string&& 
convertImageDisplay&& )
(&&) *
byte&&* .
[&&. /
]&&/ 0
image&&1 6
)&&6 7
{'' 	
if(( 
((( 
image(( 
!=(( 
null(( 
)(( 
{)) 
var** 
base64** 
=** 
Convert** $
.**$ %
ToBase64String**% 3
(**3 4
image**4 9
)**9 :
;**: ;
var++ 
fs++ 
=++ 
string++ 
.++  
Format++  &
(++& '
$str++' B
,++B C
base64++D J
)++J K
;++K L
return,, 
fs,, 
;,, 
}-- 
return.. 
$str.. 
;.. 
}// 	
public11 
Product_Photos11 
loadProductPhoto11 .
(11. /
int11/ 2
	productID113 <
)11< =
{22 	
return33 
_context33 
.33 
Product_Photos33 *
.33* +
FirstOrDefault33+ 9
(339 :
photo33: ?
=>33@ B
String33C I
.33I J
Equals33J P
(33P Q
photo33Q V
.33V W
Code_ID33W ^
,33^ _
	productID33` i
)33i j
)33j k
;33k l
}44 	
}66 
}77 ÑG
îC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\EmprendeUCR_WebApplication\Data\Services\Product_Service\Offer\Is_OfferService.cs
	namespace		 	&
EmprendeUCR_WebApplication		
 $
.		$ %
Data		% )
.		) *
Services		* 2
{

 
public 

class 
Is_OfferService  
:! "
	PageModel# ,
{ 
private 
readonly &
EmprendeUCR_WebApplication 3
.3 4
Data4 8
.8 9
Contexts9 A
.A B
SqlServerDbContextB T
_contextU ]
;] ^
public 
Is_OfferService 
( &
EmprendeUCR_WebApplication 9
.9 :
Data: >
.> ?
Contexts? G
.G H
SqlServerDbContextH Z
context[ b
)b c
{ 	
_context 
= 
context 
; 
} 	
public 
async 
Task 
< 
IList 
<  
Is_Offer  (
>( )
>) *
GetAsync+ 3
(3 4
)4 5
{ 	
return 
await 
_context !
.! "
Is_Offer" *
.* +
ToListAsync+ 6
(6 7
)7 8
;8 9
} 	
public 
async 
Task 
< 
bool 
> 
InsertIs_OfferAsync  3
(3 4
Is_Offer4 <
offer= B
)B C
{ 	
await 
_context 
. 
Is_Offer #
.# $
AddAsync$ ,
(, -
offer- 2
)2 3
;3 4
await 
_context 
. 
SaveChangesAsync +
(+ ,
), -
;- .
return 
true 
; 
} 	
public   
async   
Task   
<   
bool   
>    
InsertListOfIs_Offer    4
(  4 5
IList  5 :
<  : ;
Is_Offer  ; C
>  C D
Is_offerList  E Q
)  Q R
{!! 	
try"" 
{## 
foreach$$ 
($$ 
var$$ 
offer$$ "
in$$# %
Is_offerList$$& 2
)$$2 3
{%% 
await&& 
InsertIs_OfferAsync&& ,
(&&, -
offer&&- 2
)&&2 3
;&&3 4
}'' 
await(( 
_context(( 
.(( 
SaveChangesAsync(( /
(((/ 0
)((0 1
;((1 2
})) 
catch** 
(** %
InvalidOperationException** +
)**+ ,
{++ 
}-- 
return// 
true// 
;// 
}00 	
public33 
async33 
Task33 
<33 
bool33 
>33 
UpdateIs_OfferAsync33  3
(333 4
Is_Offer334 <
offer33= B
)33B C
{44 	
_context66 
.66 
Is_Offer66 
.66 
Update66 $
(66$ %
offer66% *
)66* +
;66+ ,
await77 
_context77 
.77 
SaveChangesAsync77 +
(77+ ,
)77, -
;77- .
return88 
true88 
;88 
}99 	
public== 
async== 
Task== 
<== 
bool== 
>== 
DeleteIs_OfferAsync==  3
(==3 4
Is_Offer==4 <
offer=== B
)==B C
{>> 	
_context?? 
.?? 
Is_Offer?? 
.?? 
Remove?? $
(??$ %
offer??% *
)??* +
;??+ ,
await@@ 
_context@@ 
.@@ 
SaveChangesAsync@@ +
(@@+ ,
)@@, -
;@@- .
returnAA 
trueAA 
;AA 
}BB 	
publicDD 
asyncDD 
TaskDD 
<DD 
boolDD 
>DD -
!DeleteIs_OfferRelatedToOfferAsyncDD  A
(DDA B
ListDDB F
<DDF G
Is_OfferDDG O
>DDO P
relatedIsOffersDDQ `
)DD` a
{EE 	
foreachGG 
(GG 
varGG 
is_offerGG 
inGG  "
relatedIsOffersGG# 2
)GG2 3
{HH 
awaitII 
DeleteIs_OfferAsyncII )
(II) *
is_offerII* 2
)II2 3
;II3 4
}JJ 
returnKK 
trueKK 
;KK 
}LL 	
publicOO 
asyncOO 
TaskOO 
<OO 
Is_OfferOO "
>OO" #
GetIs_OfferAsyncOO$ 4
(OO4 5
intOO5 8
Is_Offer_IdOO9 D
)OOD E
{PP 	
Is_OfferQQ 
offerQQ 
=QQ 
awaitQQ "
_contextQQ# +
.QQ+ ,
Is_OfferQQ, 4
.QQ4 5
FirstOrDefaultAsyncQQ5 H
(QQH I
cQQI J
=>QQK M
cQQN O
.QQO P
Offer_IDQQP X
.QQX Y
EqualsQQY _
(QQ_ `
Is_Offer_IdQQ` k
)QQk l
)QQl m
;QQm n
returnSS 
offerSS 
;SS 
}TT 	
publicWW 
asyncWW 
TaskWW 
<WW 
ListWW 
<WW 
Is_OfferWW '
>WW' (
>WW( ) 
GetAllIs_OffersAsyncWW* >
(WW> ?
)WW? @
{XX 	
returnZZ 
awaitZZ 
_contextZZ !
.ZZ! "
Is_OfferZZ" *
.ZZ* +
ToListAsyncZZ+ 6
(ZZ6 7
)ZZ7 8
;ZZ8 9
}[[ 	
public]] 
async]] 
Task]] 
<]] 
Product]] !
>]]! ""
GetProductRelatedAsync]]# 9
(]]9 :
Is_Offer]]: B
is_offer]]C K
)]]K L
{^^ 	
return__ 
await__ 
_context__ !
.__! "
Product__" )
.__) *
FirstOrDefaultAsync__* =
(__= >
product__> E
=>__F H
String__I O
.__O P
Equals__P V
(__V W
product__W ^
.__^ _
Code_ID___ f
,__f g
is_offer__h p
.__p q
Code_ID__q x
)__x y
)__y z
;__z {
}`` 	
publicbb 
asyncbb 
Taskbb 
<bb 
Servicebb !
>bb! ""
GetServiceRelatedAsyncbb# 9
(bb9 :
Is_Offerbb: B
is_offerbbC K
)bbK L
{cc 	
returndd 
awaitdd 
_contextdd !
.dd! "
Servicedd" )
.dd) *
FirstOrDefaultAsyncdd* =
(dd= >
servicedd> E
=>ddF H
StringddI O
.ddO P
EqualsddP V
(ddV W
serviceddW ^
.dd^ _
Code_IDdd_ f
,ddf g
is_offerddh p
.ddp q
Code_IDddq x
)ddx y
)ddy z
;ddz {
}ee 	
publicgg 
Productgg 
GetProductRelatedgg (
(gg( )
Is_Offergg) 1
is_offergg2 :
)gg: ;
{hh 	
returnii 
_contextii 
.ii 
Productii #
.ii# $
FirstOrDefaultii$ 2
(ii2 3
productii3 :
=>ii; =
Stringii> D
.iiD E
EqualsiiE K
(iiK L
productiiL S
.iiS T
Code_IDiiT [
,ii[ \
is_offerii] e
.iie f
Code_IDiif m
)iim n
)iin o
;iio p
}jj 	
publicll 
Servicell 
GetServiceRelatedll (
(ll( )
Is_Offerll) 1
is_offerll2 :
)ll: ;
{mm 	
returnnn 
_contextnn 
.nn 
Servicenn #
.nn# $
FirstOrDefaultnn$ 2
(nn2 3
servicenn3 :
=>nn; =
Stringnn> D
.nnD E
EqualsnnE K
(nnK L
servicennL S
.nnS T
Code_IDnnT [
,nn[ \
is_offernn] e
.nne f
Code_IDnnf m
)nnm n
)nnn o
;nno p
}oo 	
publicrr 
Is_Offerrr 
GetIs_Offerrr #
(rr# $
intrr$ '
Is_Offer_Idrr( 3
)rr3 4
{ss 	
Is_Offertt 
offertt 
=tt 
_contexttt %
.tt% &
Is_Offertt& .
.tt. /
FirstOrDefaulttt/ =
(tt= >
ctt> ?
=>tt@ B
cttC D
.ttD E
Offer_IDttE M
.ttM N
EqualsttN T
(ttT U
Is_Offer_IdttU `
)tt` a
)tta b
;ttb c
returnvv 
offervv 
;vv 
}ww 	
}xx 
}zz ·U
ëC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\EmprendeUCR_WebApplication\Data\Services\Product_Service\Offer\OfferService.cs
	namespace		 	&
EmprendeUCR_WebApplication		
 $
.		$ %
Data		% )
.		) *
Services		* 2
{

 
public 

class 
OfferService 
: 
	PageModel  )
{ 
private 
readonly &
EmprendeUCR_WebApplication 3
.3 4
Data4 8
.8 9
Contexts9 A
.A B
SqlServerDbContextB T
_contextU ]
;] ^
public 
OfferService 
( &
EmprendeUCR_WebApplication 6
.6 7
Data7 ;
.; <
Contexts< D
.D E
SqlServerDbContextE W
contextX _
)_ `
{ 	
_context 
= 
context 
; 
} 	
public 
async 
Task 
< 
IList 
<  
Offer  %
>% &
>& '
GetAsync( 0
(0 1
)1 2
{ 	
return 
await 
_context !
.! "
Offer" '
.' (
ToListAsync( 3
(3 4
)4 5
;5 6
} 	
public 
async 
Task 
< 
int 
> 
InsertOfferAsync /
(/ 0
Offer0 5
offer6 ;
); <
{ 	
Offer 
obj 
= 
offer 
; 
await 
_context 
. 
Offer  
.  !
AddAsync! )
() *
obj* -
)- .
;. /
await 
_context 
. 
SaveChangesAsync +
(+ ,
), -
;- .
return 
obj 
. 
Offer_ID 
;  
} 	
public## 
async## 
Task## 
<## 
bool## 
>## 
UpdateOfferAsync##  0
(##0 1
Offer##1 6
offer##7 <
)##< =
{$$ 	
_context&& 
.&& 
Offer&& 
.&& 
Update&& !
(&&! "
offer&&" '
)&&' (
;&&( )
await'' 
_context'' 
.'' 
SaveChangesAsync'' +
(''+ ,
)'', -
;''- .
return(( 
true(( 
;(( 
})) 	
public-- 
async-- 
Task-- 
<-- 
bool-- 
>-- 
DeleteOfferAsync--  0
(--0 1
Offer--1 6
offer--7 <
)--< =
{.. 	
_context// 
.// 
Offer// 
.// 
Remove// !
(//! "
offer//" '
)//' (
;//( )
await00 
_context00 
.00 
SaveChangesAsync00 +
(00+ ,
)00, -
;00- .
return11 
true11 
;11 
}22 	
public66 
async66 
Task66 
<66 
Offer66 
>66  
GetOfferAsync66! .
(66. /
int66/ 2
Offer_Id663 ;
)66; <
{77 	
Offer99 
offer99 
=99 
await99 
_context99  (
.99( )
Offer99) .
.99. /
FirstOrDefaultAsync99/ B
(99B C
o99C D
=>99E G
o99H I
.99I J
Offer_ID99J R
.99R S
Equals99S Y
(99Y Z
Offer_Id99Z b
)99b c
)99c d
;99d e
return:: 
offer:: 
;:: 
}<< 	
public?? 
async?? 
Task?? 
<?? 
List?? 
<?? 
Offer?? $
>??$ %
>??% &
GetAllOffersAsync??' 8
(??8 9
)??9 :
{@@ 	
returnBB 
awaitBB 
_contextBB !
.BB! "
OfferBB" '
.BB' (
ToListAsyncBB( 3
(BB3 4
)BB4 5
;BB5 6
}CC 	
publicEE 
asyncEE 
TaskEE 
<EE 
ListEE 
<EE 
Is_OfferEE '
>EE' (
>EE( )(
GetAllIs_OfferRelatedToOfferEE* F
(EEF G
OfferEEG L
offerEEM R
)EER S
{FF 	
returnGG 
awaitGG 
_contextGG !
.GG! "
Is_OfferGG" *
.GG* +
WhereGG+ 0
(GG0 1
is_OfferGG1 9
=>GG: <
StringGG= C
.GGC D
EqualsGGD J
(GGJ K
offerGGK P
.GGP Q
Offer_IDGGQ Y
,GGY Z
is_OfferGG[ c
.GGc d
Offer_IDGGd l
)GGl m
)GGm n
.GGn o
ToListAsyncGGo z
(GGz {
)GG{ |
;GG| }
}HH 	
publicJJ 
ListJJ 
<JJ 
Is_OfferJJ 
>JJ 0
$GetAllIs_OfferRelatedToOfferNOTAsyncJJ B
(JJB C
OfferJJC H
offerJJI N
)JJN O
{KK 	
returnLL 
_contextLL 
.LL 
Is_OfferLL $
.LL$ %
WhereLL% *
(LL* +
is_OfferLL+ 3
=>LL4 6
StringLL7 =
.LL= >
EqualsLL> D
(LLD E
offerLLE J
.LLJ K
Offer_IDLLK S
,LLS T
is_OfferLLU ]
.LL] ^
Offer_IDLL^ f
)LLf g
)LLg h
.LLh i
ToListLLi o
(LLo p
)LLp q
;LLq r
}MM 	
publicOO 
ListOO 
<OO 
OfferOO 
>OO $
GetOfferFromEntrepreneurOO 3
(OO3 4
stringOO4 :
emailOO; @
)OO@ A
{PP 	
ListQQ 
<QQ 
OfferQQ 
>QQ 
relatedOffersQQ %
=QQ& '
newQQ( +
ListQQ, 0
<QQ0 1
OfferQQ1 6
>QQ6 7
(QQ7 8
)QQ8 9
;QQ9 :
varSS 
	is_offersSS 
=SS 
_contextSS $
.SS$ %
Is_OfferSS% -
.SS- .
WhereSS. 3
(SS3 4
cSS4 5
=>SS6 8
StringSS9 ?
.SS? @
EqualsSS@ F
(SSF G
cSSG H
.SSH I

User_EmailSSI S
,SSS T
emailSSU Z
)SSZ [
)SS[ \
.SS\ ]
ToListSS] c
(SSc d
)SSd e
;SSe f
foreachUU 
(UU 
varUU 
is_offerUU !
inUU" $
	is_offersUU% .
)UU. /
{VV 
varWW 
relatedOfferWW  
=WW! "
_contextWW# +
.WW+ ,
OfferWW, 1
.WW1 2
FirstOrDefaultWW2 @
(WW@ A
cWWA B
=>WWC E
StringWWF L
.WWL M
EqualsWWM S
(WWS T
cWWT U
.WWU V
Offer_IDWWV ^
,WW^ _
is_offerWW` h
.WWh i
Offer_IDWWi q
)WWq r
)WWr s
;WWs t
varXX 
alreadyAddedXX  
=XX! "
relatedOffersXX# 0
.XX0 1
FirstOrDefaultXX1 ?
(XX? @
cXX@ A
=>XXB D
StringXXE K
.XXK L
EqualsXXL R
(XXR S
cXXS T
.XXT U
Offer_IDXXU ]
,XX] ^
relatedOfferXX_ k
.XXk l
Offer_IDXXl t
)XXt u
)XXu v
;XXv w
ifYY 
(YY 
alreadyAddedYY  
isYY! #
nullYY$ (
)YY( )
{ZZ 
relatedOffers[[ !
.[[! "
Add[[" %
([[% &
relatedOffer[[& 2
)[[2 3
;[[3 4
}\\ 
}]] 
return^^ 
relatedOffers^^  
;^^  !
}__ 	
publicaa 
boolaa 
hasCommonOffersaa #
(aa# $
stringaa$ *
firstEntrepreneuraa+ <
,aa< =
stringaa> D
secondEntrepreneuraaE W
)aaW X
{bb 	
boolcc 
hasCommonOfferscc  
=cc! "
falsecc# (
;cc( )
Listee 
<ee 
Offeree 
>ee #
firstEntrepreneurOffersee /
=ee0 1$
GetOfferFromEntrepreneuree2 J
(eeJ K
firstEntrepreneureeK \
)ee\ ]
;ee] ^
Listff 
<ff 
Offerff 
>ff $
secondEntrepreneurOffersff 0
=ff1 2$
GetOfferFromEntrepreneurff3 K
(ffK L
secondEntrepreneurffL ^
)ff^ _
;ff_ `
Listgg 
<gg 
Is_Offergg 
>gg 
is_OffersIntoOffergg -
=gg. /
newgg0 3
Listgg4 8
<gg8 9
Is_Offergg9 A
>ggA B
(ggB C
)ggC D
;ggD E
foreachii 
(ii 
varii 
offerii 
inii !#
firstEntrepreneurOffersii" 9
)ii9 :
{jj 
is_OffersIntoOfferkk "
=kk# $0
$GetAllIs_OfferRelatedToOfferNOTAsynckk% I
(kkI J
offerkkJ O
)kkO P
;kkP Q
foreachll 
(ll 
varll 
is_offerll %
inll& (
is_OffersIntoOfferll) ;
)ll; <
{mm 
hasCommonOffersnn #
=nn$ %
is_offernn& .
.nn. /

User_Emailnn/ 9
==nn: <
secondEntrepreneurnn= O
;nnO P
ifpp 
(pp 
hasCommonOfferspp '
)pp' (
{qq 
returnrr 
truerr #
;rr# $
}ss 
}tt 
}uu 
foreachww 
(ww 
varww 
offerww 
inww !$
secondEntrepreneurOffersww" :
)ww: ;
{xx 
is_OffersIntoOfferyy "
=yy# $0
$GetAllIs_OfferRelatedToOfferNOTAsyncyy% I
(yyI J
offeryyJ O
)yyO P
;yyP Q
foreachzz 
(zz 
varzz 
is_offerzz %
inzz& (
is_OffersIntoOfferzz) ;
)zz; <
{{{ 
hasCommonOffers|| #
=||$ %
is_offer||& .
.||. /

User_Email||/ 9
==||: <
firstEntrepreneur||= N
;||N O
if~~ 
(~~ 
hasCommonOffers~~ '
)~~' (
{ 
return
ÄÄ 
true
ÄÄ #
;
ÄÄ# $
}
ÅÅ 
}
ÇÇ 
}
ÉÉ 
return
ÑÑ 
false
ÑÑ 
;
ÑÑ 
}
ÖÖ 	
}
ÜÜ 
}àà ó
ôC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\EmprendeUCR_WebApplication\Data\Services\Product_Service\Personalized_StatusService.cs
	namespace

 	&
EmprendeUCR_WebApplication


 $
.

$ %
Data

% )
.

) *
Services

* 2
{ 
public 

class &
Personalized_StatusService +
{ 
private 
readonly &
EmprendeUCR_WebApplication 3
.3 4
Data4 8
.8 9
Contexts9 A
.A B
SqlServerDbContextB T
_contextU ]
;] ^
public &
Personalized_StatusService )
() *&
EmprendeUCR_WebApplication* D
.D E
DataE I
.I J
ContextsJ R
.R S
SqlServerDbContextS e
contextf m
)m n
{ 	
_context 
= 
context 
; 
} 	
public 
async 
Task 
< 
IList 
<  
Personalized_Status  3
>3 4
>4 5
GetAsync6 >
(> ?
)? @
{ 	
return 
await 
_context !
.! "
Personalized_Status" 5
.5 6
ToListAsync6 A
(A B
)B C
;C D
} 	
public 
async 
Task 
< 
bool 
> 
InsertStatusAsync  1
(1 2
Personalized_Status2 E
statusF L
)L M
{ 	
await 
_context 
. 
Personalized_Status .
.. /
AddAsync/ 7
(7 8
status8 >
)> ?
;? @
await 
_context 
. 
SaveChangesAsync +
(+ ,
), -
;- .
return 
true 
; 
} 	
public 
async 
Task 
< 
bool 
> 
InsertListOfStatus  2
(2 3
IList3 8
<8 9
Personalized_Status9 L
>L M
status_ListN Y
)Y Z
{ 	
try   
{!! 
foreach"" 
("" 
var"" 
status"" #
in""$ &
status_List""' 2
)""2 3
{## 
await$$ 
InsertStatusAsync$$ +
($$+ ,
status$$, 2
)$$2 3
;$$3 4
}%% 
await&& 
_context&& 
.&& 
SaveChangesAsync&& /
(&&/ 0
)&&0 1
;&&1 2
}'' 
catch(( 
((( %
InvalidOperationException(( ,
)((, -
{)) 
}++ 
return-- 
true-- 
;-- 
}.. 	
public11 
async11 
Task11 
<11 
List11 
<11 
Personalized_Status11 2
>112 3
>113 4
GetAllStatusAsync115 F
(11F G
)11G H
{22 	
return33 
await33 
_context33 !
.33! "
Personalized_Status33" 5
.335 6
ToListAsync336 A
(33A B
)33B C
;33C D
}44 	
}55 
}66 ¯ñ
ïC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\EmprendeUCR_WebApplication\Data\Services\Product_Service\Product\ProductService.cs
	namespace 	&
EmprendeUCR_WebApplication
 $
.$ %
Data% )
.) *
Services* 2
{ 
public 

class 
ProductService 
:  !
	PageModel" +
{ 
private 
readonly &
EmprendeUCR_WebApplication 3
.3 4
Data4 8
.8 9
Contexts9 A
.A B
SqlServerDbContextB T
_contextU ]
;] ^
public 
ProductService 
( &
EmprendeUCR_WebApplication 8
.8 9
Data9 =
.= >
Contexts> F
.F G
SqlServerDbContextG Y
contextZ a
)a b
{ 	
_context 
= 
context 
; 
} 	
public 
async 
Task 
< 
IList 
<  
Product  '
>' (
>( )
GetAsync* 2
(2 3
)3 4
{ 	
return 
await 
_context !
.! "
Product" )
.) *
ToListAsync* 5
(5 6
)6 7
;7 8
} 	
public 
async 
Task 
< 
bool 
> 
InsertProductAsync  2
(2 3
Product3 :
product; B
)B C
{ 	
await 
_context 
. 
Product "
." #
AddAsync# +
(+ ,
product, 3
)3 4
;4 5
await 
_context 
. 
SaveChangesAsync +
(+ ,
), -
;- .
return 
true 
; 
}   	
public## 
async## 
Task## 
<## 
bool## 
>## )
InsertProductTransactionAsync##  =
(##= >
Product##> E
product##F M
)##M N
{$$ 	
bool%% 
answer%% 
=%% 
false%% 
;%%  
using'' 
var'' 
transaction'' !
=''" #
_context''$ ,
.'', -
Database''- 5
.''5 6
BeginTransaction''6 F
(''F G
System''G M
.''M N
Data''N R
.''R S
IsolationLevel''S a
.''a b
ReadCommitted''b o
)''o p
;''p q
try(( 
{)) 
if++ 
(++ 
(++ 
product++ 
.++ 
Price++ "
<++# $
$num++% &
)++& '
||++( *
(+++ ,
product++, 3
.++3 4
Category_ID++4 ?
<++@ A
$num++B C
)++C D
||++E G
(++H I
product++I P
.++P Q
Product_Name++Q ]
.++] ^
Length++^ d
(++d e
)++e f
<++g h
$num++i k
&&++l n
product++o v
.++v w
Product_Name	++w É
.
++É Ñ
Length
++Ñ ä
(
++ä ã
)
++ã å
>
++ç é
$num
++è ê
)
++ê ë
)
++ë í
{,, 
await-- 
transaction-- %
.--% &
RollbackAsync--& 3
(--3 4
)--4 5
;--5 6
}.. 
else// 
{00 
await11 
_context11 "
.11" #
Product11# *
.11* +
AddAsync11+ 3
(113 4
product114 ;
)11; <
;11< =
await22 
_context22 "
.22" #
SaveChangesAsync22# 3
(223 4
)224 5
;225 6
await33 
transaction33 %
.33% &
CommitAsync33& 1
(331 2
)332 3
;333 4
answer44 
=44 
true44 !
;44! "
}55 
}66 
catch77 
(77 
	Exception77 
e77 
)77 
{88 
await99 
transaction99 !
.99! "
RollbackAsync99" /
(99/ 0
)990 1
;991 2
}:: 
return;; 
answer;; 
;;; 
}>> 	
publicBB 
asyncBB 
TaskBB 
<BB 
boolBB 
>BB 
UpdateProductAsyncBB  2
(BB2 3
ProductBB3 :
productBB; B
)BBB C
{CC 	
_contextDD 
.DD 
ProductDD 
.DD 
UpdateDD #
(DD# $
productDD$ +
)DD+ ,
;DD, -
awaitEE 
_contextEE 
.EE 
SaveChangesAsyncEE +
(EE+ ,
)EE, -
;EE- .
returnFF 
trueFF 
;FF 
}GG 	
publicJJ 
asyncJJ 
TaskJJ 
<JJ 
IListJJ 
<JJ  
ProductJJ  '
>JJ' (
>JJ( )#
getProducts_By_SuppliesJJ* A
(JJA B
ListJJB F
<JJF G
ProductJJG N
>JJN O
productJJP W
,JJW X
ListJJY ]
<JJ] ^
HasSuppliesJJ^ i
>JJi j
my_suppliesJJk v
)JJv w
{KK 	
ListMM 
<MM 
ProductMM 
>MM 
produMM 
=MM  !
newMM" %
ListMM& *
<MM* +
ProductMM+ 2
>MM2 3
(MM3 4
)MM4 5
;MM5 6
foreachNN 
(NN 
varNN 
prodNN 
inNN  
productNN! (
)NN( )
{OO 
boolPP 
valid_ProductPP "
=PP# $
my_suppliesPP% 0
.PP0 1
FindAllPP1 8
(PP8 9
cPP9 :
=>PP; =
cPP> ?
.PP? @

Supplie_IDPP@ J
==PPK M
prodPPN R
.PPR S
Category_IDPPS ^
)PP^ _
.PP_ `
CountPP` e
(PPe f
)PPf g
>PPh i
$numPPj k
;PPk l
ifQQ 
(QQ 
valid_ProductQQ !
)QQ! "
{RR 
produUU 
.UU 
AddUU 
(UU 
prodUU "
)UU" #
;UU# $
}XX 
}[[ 
return]] 
produ]] 
;]] 
}`` 	
publicff 
asyncff 
Taskff 
<ff 
boolff 
>ff 
DeleteProductAsyncff  2
(ff2 3
Productff3 :
productff; B
)ffB C
{gg 	
_contexthh 
.hh 
Producthh 
.hh 
Removehh #
(hh# $
producthh$ +
)hh+ ,
;hh, -
awaitii 
_contextii 
.ii 
SaveChangesAsyncii +
(ii+ ,
)ii, -
;ii- .
returnjj 
truejj 
;jj 
}kk 	
publicmm 
asyncmm 
Taskmm 
<mm 
IListmm 
<mm  
Productmm  '
>mm' (
>mm( )&
GetProductsByCategoryAsyncmm* D
(mmD E
stringmmE K
emailmmL Q
,mmQ R
intmmS V
category_idmmW b
)mmb c
{nn 	
returnoo 
awaitoo 
_contextoo !
.oo! "
Productoo" )
.oo) *
Whereoo* /
(oo/ 0
productoo0 7
=>oo8 :
Stringoo; A
.ooA B
EqualsooB H
(ooH I
productooI P
.ooP Q
Entrepreneur_EmailooQ c
,ooc d
emailooe j
)ooj k
&&ool n
productooo v
.oov w
Category_ID	oow Ç
==
ooÉ Ö
category_id
ooÜ ë
)
ooë í
.
ooí ì
ToListAsync
ooì û
(
ooû ü
)
ooü †
;
oo† °
}qq 	
publicss 
asyncss 
Taskss 
<ss 
Productss !
>ss! "
GetProductAsyncss# 2
(ss2 3
intss3 6
Idss7 9
)ss9 :
{tt 	
Productuu 
productuu 
=uu 
awaituu #
_contextuu$ ,
.uu, -
Productuu- 4
.uu4 5
FirstOrDefaultAsyncuu5 H
(uuH I
cuuI J
=>uuK M
cuuN O
.uuO P
Code_IDuuP W
.uuW X
EqualsuuX ^
(uu^ _
Iduu_ a
)uua b
)uub c
;uuc d
returnvv 
productvv 
;vv 
}ww 	
publicyy 
Productyy 

GetProductyy !
(yy! "
stringyy" (
Idyy) +
)yy+ ,
{zz 	
return{{ 
_context{{ 
.{{ 
Product{{ $
.{{$ %
FirstOrDefault{{% 3
({{3 4
c{{4 5
=>{{6 8
String{{9 ?
.{{? @
Equals{{@ F
({{F G
c{{G H
.{{H I
Code_ID{{I P
.{{P Q
ToString{{Q Y
({{Y Z
){{Z [
,{{[ \
Id{{] _
){{_ `
){{` a
;{{a b
}|| 	
public~~ 
async~~ 
Task~~ 
<~~ 
List~~ 
<~~ 
Product~~ &
>~~& '
>~~' (
GetAllProductsAsync~~) <
(~~< =
)~~= >
{ 	
return
ÄÄ 
await
ÄÄ 
_context
ÄÄ !
.
ÄÄ! "
Product
ÄÄ" )
.
ÄÄ) *
ToListAsync
ÄÄ* 5
(
ÄÄ5 6
)
ÄÄ6 7
;
ÄÄ7 8
}
ÅÅ 	
public
ÉÉ 
async
ÉÉ 
Task
ÉÉ 
<
ÉÉ 
IList
ÉÉ 
<
ÉÉ  
Product
ÉÉ  '
>
ÉÉ' (
>
ÉÉ( )*
GetProductsEntrepreneurAsync
ÉÉ* F
(
ÉÉF G
string
ÉÉG M
email
ÉÉN S
)
ÉÉS T
{
ÑÑ 	
return
ÖÖ 
await
ÖÖ 
_context
ÖÖ !
.
ÖÖ! "
Product
ÖÖ" )
.
ÖÖ) *
Where
ÖÖ* /
(
ÖÖ/ 0
c
ÖÖ0 1
=>
ÖÖ2 4
String
ÖÖ5 ;
.
ÖÖ; <
Equals
ÖÖ< B
(
ÖÖB C
c
ÖÖC D
.
ÖÖD E 
Entrepreneur_Email
ÖÖE W
,
ÖÖW X
email
ÖÖY ^
)
ÖÖ^ _
)
ÖÖ_ `
.
ÖÖ` a
ToListAsync
ÖÖa l
(
ÖÖl m
)
ÖÖm n
;
ÖÖn o
}
áá 	
public
ââ 
IList
ââ 
<
ââ 
Product
ââ 
>
ââ %
GetProductsEntrepreneur
ââ 6
(
ââ6 7
string
ââ7 =
email
ââ> C
)
ââC D
{
ää 	
return
ãã 
_context
ãã 
.
ãã 
Product
ãã #
.
ãã# $
Where
ãã$ )
(
ãã) *
c
ãã* +
=>
ãã, .
String
ãã/ 5
.
ãã5 6
Equals
ãã6 <
(
ãã< =
c
ãã= >
.
ãã> ? 
Entrepreneur_Email
ãã? Q
,
ããQ R
email
ããS X
)
ããX Y
)
ããY Z
.
ããZ [
ToList
ãã[ a
(
ããa b
)
ããb c
;
ããc d
}
çç 	
public
èè 
async
èè 
Task
èè 
<
èè 
IEnumerable
èè %
<
èè% &
Product
èè& -
>
èè- .
>
èè. /
GetProducts
èè0 ;
(
èè; <
)
èè< =
{
êê 	
return
ëë 
await
ëë 
_context
ëë !
.
ëë! "
Product
ëë" )
.
ëë) *
Select
ëë* 0
(
ëë0 1
product
ëë1 8
=>
ëë9 ;
new
ëë< ?
Product
ëë@ G
{
ëëH I
Code_ID
ëëJ Q
=
ëëR S
product
ëëT [
.
ëë[ \
Code_ID
ëë\ c
,
ëëc d
Product_Name
ëëe q
=
ëër s
product
ëët {
.
ëë{ |
Product_Nameëë| à
,ëëà â
Priceëëä è
=ëëê ë
productëëí ô
.ëëô ö
Priceëëö ü
}ëë† °
)ëë° ¢
.ëë¢ £
ToListAsyncëë£ Æ
(ëëÆ Ø
)ëëØ ∞
;ëë∞ ±
}
íí 	
public
ìì 
async
ìì 
Task
ìì 
<
ìì 
	PagedList
ìì #
<
ìì# $
Product
ìì$ +
>
ìì+ ,
>
ìì, -
GetProducts
ìì. 9
(
ìì9 :
ShopParameters
ìì: H
shopParameters
ììI W
)
ììW X
{
îî 	
var
ïï 
products
ïï 
=
ïï 
await
ïï  
_context
ïï! )
.
ïï) *
Product
ïï* 1
.
ïï1 2
ToListAsync
ïï2 =
(
ïï= >
)
ïï> ?
;
ïï? @
return
ññ 
	PagedList
ññ 
<
ññ 
Product
ññ $
>
ññ$ %
.
ññ% &
ToPagedList
ññ& 1
(
ññ1 2
products
ññ2 :
,
ññ: ;
shopParameters
ññ< J
.
ññJ K

PageNumber
ññK U
,
ññU V
shopParameters
ññW e
.
ññe f
PageSize
ññf n
)
ññn o
;
ñño p
}
óó 	
public
òò 
async
òò 
Task
òò 
RemoveProduct
òò '
(
òò' (
int
òò( +
Id
òò, .
)
òò. /
{
ôô 	
Product
öö 
ProductToRemove
öö #
=
öö$ %
await
öö& +
_context
öö, 4
.
öö4 5
Product
öö5 <
.
öö< =
	FindAsync
öö= F
(
ööF G
Id
ööG I
)
ööI J
;
ööJ K
_context
õõ 
.
õõ 
Product
õõ 
.
õõ 
Remove
õõ #
(
õõ# $
ProductToRemove
õõ$ 3
)
õõ3 4
;
õõ4 5
await
úú 
_context
úú 
.
úú 
SaveChangesAsync
úú +
(
úú+ ,
)
úú, -
;
úú- .
}
ùù 	
public
üü 
int
üü !
GetProductsQuantity
üü &
(
üü& '
)
üü' (
{
†† 	
return
©© 
_context
©© 
.
©© 
Product
©© #
.
©©# $
Count
©©$ )
(
©©) *
)
©©* +
;
©©+ ,
}
´´ 	
public
≠≠ 
IList
≠≠ 
<
≠≠ 
Product
≠≠ 
>
≠≠ 
GetList
≠≠ %
(
≠≠% &
string
≠≠& ,
product
≠≠- 4
)
≠≠4 5
{
ÆÆ 	
return
ØØ 
_context
ØØ 
.
ØØ 
Product
ØØ #
.
ØØ# $

FromSqlRaw
ØØ$ .
(
ØØ. /
$str
ØØ/ D
+
ØØE F
product
ØØG N
+
ØØO P
$str
ØØQ U
)
ØØU V
.
ØØV W
ToArray
ØØW ^
(
ØØ^ _
)
ØØ_ `
;
ØØ` a
}
∞∞ 	
public
≤≤ 
IList
≤≤ 
<
≤≤ 
Product
≤≤ 
>
≤≤ 
GetListByCategory
≤≤ /
(
≤≤/ 0
int
≤≤0 3

categoryID
≤≤4 >
)
≤≤> ?
{
≥≥ 	
return
¥¥ 
_context
¥¥ 
.
¥¥ 
Product
¥¥ #
.
¥¥# $

FromSqlRaw
¥¥$ .
(
¥¥. /
$str
¥¥/ L
+
¥¥M N

categoryID
¥¥O Y
)
¥¥[ \
.
¥¥\ ]
ToArray
¥¥] d
(
¥¥d e
)
¥¥e f
;
¥¥f g
}
µµ 	
public
ππ 
IList
ππ 
<
ππ 
Product
ππ 
>
ππ 
GetListRestricted
ππ /
(
ππ/ 0
string
ππ0 6
product
ππ7 >
,
ππ> ?
int
ππ? B

categoryID
ππC M
)
ππM N
{
∫∫ 	
return
ªª 
_context
ªª 
.
ªª 
Product
ªª #
.
ªª# $

FromSqlRaw
ªª$ .
(
ªª. /
$str
ªª/ N
+
ªªO P
product
ªªQ X
+
ªªY Z
$str
ªª[ `
+
ªª` a

categoryID
ªªc m
)
ªªm n
.
ªªn o
ToArray
ªªo v
(
ªªv w
)
ªªw x
;
ªªx y
}
ºº 	
public
ææ 
IList
ææ 
<
ææ 
Product
ææ 
>
ææ 
GetNewProducts
ææ ,
(
ææ, -
)
ææ- .
{
øø 	
return
¿¿ 
_context
¿¿ 
.
¿¿ 
Product
¿¿ #
.
¿¿# $

FromSqlRaw
¿¿$ .
(
¿¿. /
$str
¿¿/ D
)
¿¿D E
.
¿¿E F
ToArray
¿¿F M
(
¿¿M N
)
¿¿N O
;
¿¿O P
}
¡¡ 	
public
¬¬ 
IList
¬¬ 
<
¬¬ 
Product
¬¬ 
>
¬¬ 
GetOfferProducts
¬¬ .
(
¬¬. /
)
¬¬/ 0
{
√√ 	
return
ƒƒ 
_context
ƒƒ 
.
ƒƒ 
Product
ƒƒ #
.
ƒƒ# $

FromSqlRaw
ƒƒ$ .
(
ƒƒ. /
$str
ƒƒ/ F
)
ƒƒF G
.
ƒƒG H
ToArray
ƒƒH O
(
ƒƒO P
)
ƒƒP Q
;
ƒƒQ R
}
≈≈ 	
public
∆∆ 
IList
∆∆ 
<
∆∆ 
Product
∆∆ 
>
∆∆ $
GetRecommendedProducts
∆∆ 4
(
∆∆4 5
string
∆∆5 ;
	userEmail
∆∆< E
)
∆∆E F
{
«« 	
return
»» 
_context
»» 
.
»» 
Product
»» #
.
»»# $

FromSqlRaw
»»$ .
(
»». /
$str
»»/ O
+
»»P Q
	userEmail
»»R [
+
»»\ ]
$str
»»^ b
)
»»b c
.
»»c d
ToArray
»»d k
(
»»k l
)
»»l m
;
»»m n
}
…… 	
public
ÀÀ 
Product
ÀÀ 

GetProduct
ÀÀ !
(
ÀÀ! "
int
ÀÀ" %
Id
ÀÀ& (
)
ÀÀ( )
{
ÃÃ 	
Product
ÕÕ 
product
ÕÕ 
=
ÕÕ 
_context
ÕÕ '
.
ÕÕ' (
Product
ÕÕ( /
.
ÕÕ/ 0
FirstOrDefault
ÕÕ0 >
(
ÕÕ> ?
c
ÕÕ? @
=>
ÕÕA C
c
ÕÕD E
.
ÕÕE F
Code_ID
ÕÕF M
.
ÕÕM N
Equals
ÕÕN T
(
ÕÕT U
Id
ÕÕU W
)
ÕÕW X
)
ÕÕX Y
;
ÕÕY Z
return
ŒŒ 
product
ŒŒ 
;
ŒŒ 
}
œœ 	
public
–– 
Service
–– 

GetService
–– !
(
––! "
int
––" %
Id
––& (
)
––( )
{
—— 	
Service
““ 
service
““ 
=
““ 
_context
““ &
.
““& '
Service
““' .
.
““. /
FirstOrDefault
““/ =
(
““= >
c
““> ?
=>
““@ B
c
““C D
.
““D E
Code_ID
““E L
.
““L M
Equals
““M S
(
““S T
Id
““T V
)
““V W
)
““W X
;
““X Y
return
”” 
service
”” 
;
”” 
}
‘‘ 	
}
’’ 
}÷÷ ÃA
ùC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\EmprendeUCR_WebApplication\Data\Services\Product_Service\Product\Product_ServiceService.cs
	namespace		 	&
EmprendeUCR_WebApplication		
 $
.		$ %
Data		% )
.		) *
Services		* 2
{

 
public 

class "
Product_ServiceService '
:( )
	PageModel* 3
{ 
private 
readonly &
EmprendeUCR_WebApplication 3
.3 4
Data4 8
.8 9
Contexts9 A
.A B
SqlServerDbContextB T
_contextU ]
;] ^
public "
Product_ServiceService %
(% &&
EmprendeUCR_WebApplication& @
.@ A
DataA E
.E F
ContextsF N
.N O
SqlServerDbContextO a
contextb i
)i j
{ 	
_context 
= 
context 
; 
} 	
public 
async 
Task 
< 
IList 
<  
Product_Service  /
>/ 0
>0 1
GetAsync2 :
(: ;
); <
{ 	
return 
await 
_context !
.! "
Product_Service" 1
.1 2
ToListAsync2 =
(= >
)> ?
;? @
} 	
public 
async 
Task 
< 
int 
> %
InsertProductServiceAsync 8
(8 9
Product_Service9 H
product_serviceI X
)X Y
{ 	
Console 
. 
	WriteLine 
( 
product_service -
)- .
;. /
Product_Service 
obj 
=  !
product_service" 1
;1 2
await 
_context 
. 
Product_Service *
.* +
AddAsync+ 3
(3 4
obj4 7
)7 8
;8 9
await 
_context 
. 
SaveChangesAsync +
(+ ,
), -
;- .
Console 
. 
	WriteLine 
( 
obj !
)! "
;" #
return   
obj   
.   
Code_ID   
;   
}!! 	
public%% 
async%% 
Task%% 
<%% 
bool%% 
>%% %
UpdateProductServiceAsync%%  9
(%%9 :
Product_Service%%: I
product_service%%J Y
)%%Y Z
{&& 	
_context'' 
.'' 
Product_Service'' $
.''$ %
Update''% +
(''+ ,
product_service'', ;
)''; <
;''< =
await(( 
_context(( 
.(( 
SaveChangesAsync(( +
(((+ ,
)((, -
;((- .
return)) 
true)) 
;)) 
}** 	
public.. 
async.. 
Task.. 
<.. 
bool.. 
>.. %
DeleteProductServiceAsync..  9
(..9 :
Product_Service..: I
product_service..J Y
)..Y Z
{// 	
_context00 
.00 
Product_Service00 $
.00$ %
Remove00% +
(00+ ,
product_service00, ;
)00; <
;00< =
await11 
_context11 
.11 
SaveChangesAsync11 +
(11+ ,
)11, -
;11- .
return22 
true22 
;22 
}33 	
public55 
async55 
Task55 
<55 
bool55 
>55 )
DeleteProductServiceByIdAsync55  =
(55= >
int55> A
codeId55B H
)55H I
{66 	
try77 
{88 
Product_Service99 
prod99  $
=99% &
_context99' /
.99/ 0
Product_Service990 ?
.99? @
First99@ E
(99E F
p99F G
=>99H J
p99K L
.99L M
Code_ID99M T
==99U W
codeId99X ^
)99^ _
;99_ `
_context:: 
.:: 
Product_Service:: (
.::( )
Remove::) /
(::/ 0
prod::0 4
)::4 5
;::5 6
await;; 
_context;; 
.;; 
SaveChangesAsync;; /
(;;/ 0
);;0 1
;;;1 2
return<< 
true<< 
;<< 
}== 
catch>> 
(>> 
	Exception>> 
)>> 
{?? 
throw@@ 
;@@ 
returnAA 
falseAA 
;AA 
}BB 
}EE 	
publicGG 
asyncGG 
TaskGG 
<GG 
Product_ServiceGG )
>GG) *"
GetProductServiceAsyncGG+ A
(GGA B
intGGB E
IdGGF H
)GGH I
{HH 	
Product_ServiceII 
product_serviceII +
=II, -
awaitII. 3
_contextII4 <
.II< =
Product_ServiceII= L
.IIL M
FirstOrDefaultAsyncIIM `
(II` a
cIIa b
=>IIc e
cIIf g
.IIg h
Code_IDIIh o
.IIo p
EqualsIIp v
(IIv w
IdIIw y
)IIy z
)IIz {
;II{ |
returnJJ 
product_serviceJJ "
;JJ" #
}KK 	
publicNN 
asyncNN 
TaskNN 
<NN 
ListNN 
<NN 
Product_ServiceNN .
>NN. /
>NN/ 0'
GetAllProductsServicesAsyncNN1 L
(NNL M
)NNM N
{OO 	
returnPP 
awaitPP 
_contextPP !
.PP! "
Product_ServicePP" 1
.PP1 2
ToListAsyncPP2 =
(PP= >
)PP> ?
;PP? @
}QQ 	
publicSS 
asyncSS 
TaskSS 
<SS 
IListSS 
<SS  
Product_ServiceSS  /
>SS/ 0
>SS0 10
$GetProductsServicesEntrepreneurAsyncSS2 V
(SSV W
stringSSW ]
emailSS^ c
)SSc d
{TT 	
returnUU 
awaitUU 
_contextUU !
.UU! "
Product_ServiceUU" 1
.UU1 2
WhereUU2 7
(UU7 8
cUU8 9
=>UU: <
StringUU= C
.UUC D
EqualsUUD J
(UUJ K
cUUK L
.UUL M
Entrepreneur_EmailUUM _
,UU_ `
emailUUa f
)UUf g
)UUg h
.UUh i
ToListAsyncUUi t
(UUt u
)UUu v
;UUv w
}WW 	
publicZZ 
asyncZZ 
TaskZZ 
<ZZ 
IListZZ 
<ZZ  
Product_ServiceZZ  /
>ZZ/ 0
>ZZ0 1&
GetProductsByCategoryAsyncZZ2 L
(ZZL M
stringZZM S
emailZZT Y
,ZZY Z
intZZ[ ^
category_idZZ_ j
)ZZj k
{[[ 	
return\\ 
await\\ 
_context\\ !
.\\! "
Product_Service\\" 1
.\\1 2
Where\\2 7
(\\7 8
product\\8 ?
=>\\@ B
String\\C I
.\\I J
Equals\\J P
(\\P Q
product\\Q X
.\\X Y
Entrepreneur_Email\\Y k
,\\k l
email\\m r
)\\r s
&&\\t v
product\\w ~
.\\~ 
Category_ID	\\ ä
==
\\ã ç
category_id
\\é ô
)
\\ô ö
.
\\ö õ
ToListAsync
\\õ ¶
(
\\¶ ß
)
\\ß ®
;
\\® ©
}^^ 	
publicaa 
IListaa 
<aa 
Product_Serviceaa $
>aa$ %
GetListaa& -
(aa- .
stringaa. 4
productaa5 <
)aa< =
{bb 	
returncc 
_contextcc 
.cc 
Product_Servicecc +
.cc+ ,

FromSqlRawcc, 6
(cc6 7
$strcc7 V
+ccW X
productccY `
+cca b
$strccc g
)ccg h
.cch i
ToArraycci p
(ccp q
)ccq r
;ccr s
}dd 	
}ee 
}gg óV
ïC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\EmprendeUCR_WebApplication\Data\Services\Product_Service\Service\ServiceService.cs
	namespace		 	&
EmprendeUCR_WebApplication		
 $
.		$ %
Data		% )
.		) *
Services		* 2
{

 
public 

class 
ServiceService 
:  !
	PageModel" +
{ 
private 
readonly &
EmprendeUCR_WebApplication 3
.3 4
Data4 8
.8 9
Contexts9 A
.A B
SqlServerDbContextB T
_contextU ]
;] ^
public 
ServiceService 
( &
EmprendeUCR_WebApplication 8
.8 9
Data9 =
.= >
Contexts> F
.F G
SqlServerDbContextG Y
contextZ a
)a b
{ 	
_context 
= 
context 
; 
} 	
public 
async 
Task 
< 
IList 
<  
Service  '
>' (
>( )
GetAsync* 2
(2 3
)3 4
{ 	
return 
await 
_context !
.! "
Service" )
.) *
ToListAsync* 5
(5 6
)6 7
;7 8
} 	
public 
async 
Task 
< 
bool 
> 
InsertServiceAsync  2
(2 3
Service3 :
service; B
)B C
{ 	
await 
_context 
. 
Service "
." #
AddAsync# +
(+ ,
service, 3
)3 4
;4 5
await 
_context 
. 
SaveChangesAsync +
(+ ,
), -
;- .
return 
true 
; 
} 	
public"" 
async"" 
Task"" 
<"" 
bool"" 
>"" (
InsertServiceTransactioAsync""  <
(""< =
Service""= D
service""E L
)""L M
{## 	
bool$$ 
answer$$ 
=$$ 
false$$ 
;$$  
using&& 
var&& 
transaction&& !
=&&" #
_context&&$ ,
.&&, -
Database&&- 5
.&&5 6
BeginTransaction&&6 F
(&&F G
System&&G M
.&&M N
Data&&N R
.&&R S
IsolationLevel&&S a
.&&a b
ReadCommitted&&b o
)&&o p
;&&p q
try'' 
{(( 
if** 
(** 
(** 
service** 
.** 
Price_per_hour** +
>=**, .
$num**. /
)**/ 0
||**1 3
(**4 5
service**5 <
.**< =
Category_ID**= H
<**I J
$num**K L
)**L M
||**N P
(**Q R
service**R Y
.**Y Z
Service_Name**Z f
.**f g
Length**g m
(**m n
)**n o
<**p q
$num**r t
&&**u w
service**x 
.	** Ä
Service_Name
**Ä å
.
**å ç
Length
**ç ì
(
**ì î
)
**î ï
>
**ñ ó
$num
**ò ô
)
**ô ö
)
**ö õ
{++ 
await,, 
transaction,, %
.,,% &
RollbackAsync,,& 3
(,,3 4
),,4 5
;,,5 6
}-- 
else.. 
{// 
await00 
_context00 "
.00" #
Service00# *
.00* +
AddAsync00+ 3
(003 4
service004 ;
)00; <
;00< =
await11 
_context11 "
.11" #
SaveChangesAsync11# 3
(113 4
)114 5
;115 6
await22 
transaction22 %
.22% &
CommitAsync22& 1
(221 2
)222 3
;223 4
answer33 
=33 
true33 !
;33! "
}44 
}55 
catch66 
(66 
	Exception66 
e66 
)66 
{77 
await88 
transaction88 !
.88! "
RollbackAsync88" /
(88/ 0
)880 1
;881 2
}99 
return:: 
answer:: 
;:: 
}== 	
publicBB 
asyncBB 
TaskBB 
<BB 
boolBB 
>BB 
UpdateServiceAsyncBB  2
(BB2 3
ServiceBB3 :
serviceBB; B
)BBB C
{CC 	
_contextDD 
.DD 
ServiceDD 
.DD 
UpdateDD #
(DD# $
serviceDD$ +
)DD+ ,
;DD, -
awaitEE 
_contextEE 
.EE 
SaveChangesAsyncEE +
(EE+ ,
)EE, -
;EE- .
returnFF 
trueFF 
;FF 
}GG 	
publicKK 
asyncKK 
TaskKK 
<KK 
boolKK 
>KK 
DeleteServiceAsyncKK  2
(KK2 3
ServiceKK3 :
serviceKK; B
)KKB C
{LL 	
_contextMM 
.MM 
ServiceMM 
.MM 
RemoveMM #
(MM# $
serviceMM$ +
)MM+ ,
;MM, -
awaitNN 
_contextNN 
.NN 
SaveChangesAsyncNN +
(NN+ ,
)NN, -
;NN- .
returnOO 
trueOO 
;OO 
}PP 	
publicTT 
asyncTT 
TaskTT 
<TT 
ServiceTT !
>TT! "
GetServiceAsyncTT# 2
(TT2 3
intTT3 6
IdTT7 9
)TT9 :
{UU 	
ServiceVV 
serviceVV 
=VV 
awaitVV #
_contextVV$ ,
.VV, -
ServiceVV- 4
.VV4 5
FirstOrDefaultAsyncVV5 H
(VVH I
cVVI J
=>VVK M
cVVN O
.VVO P
Code_IDVVP W
.VVW X
EqualsVVX ^
(VV^ _
IdVV_ a
)VVa b
)VVb c
;VVc d
returnWW 
serviceWW 
;WW 
}XX 	
publicZZ 
ServiceZZ 

GetServiceZZ !
(ZZ! "
stringZZ" (
IdZZ) +
)ZZ+ ,
{[[ 	
return\\ 
_context\\ 
.\\ 
Service\\ #
.\\# $
FirstOrDefault\\$ 2
(\\2 3
c\\3 4
=>\\5 7
String\\8 >
.\\> ?
Equals\\? E
(\\E F
c\\F G
.\\G H
Code_ID\\H O
.\\O P
ToString\\P X
(\\X Y
)\\Y Z
,\\Z [
Id\\\ ^
)\\^ _
)\\_ `
;\\` a
}]] 	
public__ 
async__ 
Task__ 
<__ 
List__ 
<__ 
Service__ &
>__& '
>__' (
GetAllServicesAsync__) <
(__< =
)__= >
{`` 	
returnaa 
awaitaa 
_contextaa !
.aa! "
Serviceaa" )
.aa) *
ToListAsyncaa* 5
(aa5 6
)aa6 7
;aa7 8
}bb 	
publicdd 
asyncdd 
Taskdd 
<dd 
IListdd 
<dd  
Servicedd  '
>dd' (
>dd( )(
GetServicesEntrepreneurAsyncdd* F
(ddF G
stringddG M
emailddN S
)ddS T
{ee 	
returnff 
awaitff 
_contextff !
.ff! "
Serviceff" )
.ff) *
Whereff* /
(ff/ 0
cff0 1
=>ff2 4
Stringff5 ;
.ff; <
Equalsff< B
(ffB C
cffC D
.ffD E
Entrepreneur_EmailffE W
,ffW X
emailffY ^
)ff^ _
)ff_ `
.ff` a
ToListAsyncffa l
(ffl m
)ffm n
;ffn o
}hh 	
publicjj 
IListjj 
<jj 
Servicejj 
>jj #
GetServicesEntrepreneurjj 5
(jj5 6
stringjj6 <
emailjj= B
)jjB C
{kk 	
returnll 
_contextll 
.ll 
Servicell #
.ll# $
Wherell$ )
(ll) *
cll* +
=>ll, .
Stringll/ 5
.ll5 6
Equalsll6 <
(ll< =
cll= >
.ll> ?
Entrepreneur_Emailll? Q
,llQ R
emailllS X
)llX Y
)llY Z
.llZ [
ToListll[ a
(lla b
)llb c
;llc d
}nn 	
publicpp 
asyncpp 
Taskpp 
<pp 
IListpp 
<pp  
Servicepp  '
>pp' (
>pp( )&
GetServicesByCategoryAsyncpp* D
(ppD E
stringppE K
emailppL Q
,ppQ R
intppS V
category_idppW b
)ppb c
{qq 	
returnrr 
awaitrr 
_contextrr !
.rr! "
Servicerr" )
.rr) *
Whererr* /
(rr/ 0
servicerr0 7
=>rr8 :
Stringrr; A
.rrA B
EqualsrrB H
(rrH I
servicerrI P
.rrP Q
Entrepreneur_EmailrrQ c
,rrc d
emailrre j
)rrj k
&&rrl n
servicerro v
.rrv w
Category_ID	rrw Ç
==
rrÉ Ö
category_id
rrÜ ë
)
rrë í
.
rrí ì
ToListAsync
rrì û
(
rrû ü
)
rrü †
;
rr† °
}tt 	
publicvv 
asyncvv 
Taskvv 
<vv 
IEnumerablevv %
<vv% &
Servicevv& -
>vv- .
>vv. /
GetServicesvv0 ;
(vv; <
)vv< =
{ww 	
returnxx 
awaitxx 
_contextxx !
.xx! "
Servicexx" )
.xx) *
Selectxx* 0
(xx0 1
servicexx1 8
=>xx9 ;
newxx< ?
Servicexx@ G
{xxH I
Code_IDxxJ Q
=xxR S
servicexxT [
.xx[ \
Code_IDxx\ c
,xxc d
Service_Namexxe q
=xxr s
servicexxt {
.xx{ |
Service_Name	xx| à
,
xxà â
Price_per_hour
xxä ò
=
xxô ö
service
xxõ ¢
.
xx¢ £
Price_per_hour
xx£ ±
}
xx≤ ≥
)
xx≥ ¥
.
xx¥ µ
ToListAsync
xxµ ¿
(
xx¿ ¡
)
xx¡ ¬
;
xx¬ √
}yy 	
public{{ 
int{{ 
GetServicesQuantity{{ &
({{& '
){{' (
{|| 	
return}} 
_context}} 
.}} 
Service}} #
.}}# $
Count}}$ )
(}}) *
)}}* +
;}}+ ,
}~~ 	
} 
}ÄÄ Á
úC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\EmprendeUCR_WebApplication\Data\Services\Product_Service\Service\Service_PhotosService.cs
	namespace 	&
EmprendeUCR_WebApplication
 $
.$ %
Data% )
.) *
Services* 2
{ 
public 

class !
Service_PhotosService &
{ 
private 
readonly &
EmprendeUCR_WebApplication 3
.3 4
Data4 8
.8 9
Contexts9 A
.A B
SqlServerDbContextB T
_contextU ]
;] ^
public !
Service_PhotosService $
($ %&
EmprendeUCR_WebApplication% ?
.? @
Data@ D
.D E
ContextsE M
.M N
SqlServerDbContextN `
contexta h
)h i
{ 	
_context 
= 
context 
; 
} 	
public 
bool 
savePhotoToDb !
(! "
Service_Photos" 0
s_p1 4
)4 5
{ 	
_context 
. 
Service_Photos #
.# $
Add$ '
(' (
s_p( +
)+ ,
;, -
_context 
. 
SaveChanges  
(  !
)! "
;" #
return 
true 
; 
} 	
public 
List 
< 
Service_Photos "
>" #
loadAllPhotos$ 1
(1 2
)2 3
{ 	
return 
_context 
. 
Service_Photos *
.* +
ToList+ 1
(1 2
)2 3
;3 4
} 	
public!! 
List!! 
<!! 
Service_Photos!! "
>!!" #
loadPhotosByID!!$ 2
(!!2 3
int!!3 6
Code_ID!!7 >
)!!> ?
{"" 	
return## 
_context## 
.## 
Service_Photos## *
.##* +
Where##+ 0
(##0 1
p##1 2
=>##3 5
p##6 7
.##7 8
Code_ID##8 ?
==##@ B
Code_ID##C J
)##J K
.##K L
ToList##L R
(##R S
)##S T
;##T U
}$$ 	
public&& 
string&& &
convertServiceImageDisplay&& 0
(&&0 1
byte&&1 5
[&&5 6
]&&6 7
image&&8 =
)&&= >
{'' 	
if(( 
((( 
image(( 
!=(( 
null(( 
)(( 
{)) 
var** 
base64** 
=** 
Convert** $
.**$ %
ToBase64String**% 3
(**3 4
image**4 9
)**9 :
;**: ;
var++ 
fs++ 
=++ 
string++ 
.++  
Format++  &
(++& '
$str++' B
,++B C
base64++D J
)++J K
;++K L
return,, 
fs,, 
;,, 
}-- 
return.. 
$str.. 
;.. 
}// 	
public11 
Service_Photos11 
loadServicePhoto11 .
(11. /
int11/ 2
	serviceID113 <
)11< =
{22 	
return33 
_context33 
.33 
Service_Photos33 *
.33* +
FirstOrDefault33+ 9
(339 :
photo33: ?
=>33@ B
String33C I
.33I J
Equals33J P
(33P Q
photo33Q V
.33V W
Code_ID33W ^
,33^ _
	serviceID33` i
)33i j
)33j k
;33k l
}44 	
}66 
}77 ï
åC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\EmprendeUCR_WebApplication\Data\Services\Product_Service\StatusService.cs
	namespace

 	&
EmprendeUCR_WebApplication


 $
.

$ %
Data

% )
.

) *
Services

* 2
{ 
public 

class 
StatusService 
{ 
private 
readonly &
EmprendeUCR_WebApplication 3
.3 4
Data4 8
.8 9
Contexts9 A
.A B
SqlServerDbContextB T
_contextU ]
;] ^
public 
StatusService 
( &
EmprendeUCR_WebApplication 7
.7 8
Data8 <
.< =
Contexts= E
.E F
SqlServerDbContextF X
contextY `
)` a
{ 	
_context 
= 
context 
; 
} 	
public 
async 
Task 
< 
IList 
<  
Status  &
>& '
>' (
GetAsync) 1
(1 2
)2 3
{ 	
return 
await 
_context !
.! "
Status" (
.( )
ToListAsync) 4
(4 5
)5 6
;6 7
} 	
public 
async 
Task 
< 
bool 
> 
InsertStatusAsync  1
(1 2
Status2 8
status9 ?
)? @
{ 	
await 
_context 
. 
Status !
.! "
AddAsync" *
(* +
status+ 1
)1 2
;2 3
await 
_context 
. 
SaveChangesAsync +
(+ ,
), -
;- .
return 
true 
; 
} 	
public 
async 
Task 
< 
bool 
> 
InsertListOfStatus  2
(2 3
IList3 8
<8 9
Status9 ?
>? @
status_ListA L
)L M
{ 	
try   
{!! 
foreach"" 
("" 
var"" 
status"" #
in""$ &
status_List""' 2
)""2 3
{## 
await$$ 
InsertStatusAsync$$ +
($$+ ,
status$$, 2
)$$2 3
;$$3 4
}%% 
await&& 
_context&& 
.&& 
SaveChangesAsync&& /
(&&/ 0
)&&0 1
;&&1 2
}'' 
catch(( 
((( %
InvalidOperationException(( ,
)((, -
{)) 
}++ 
return-- 
true-- 
;-- 
}.. 	
public// 
async// 
Task// 
<// 
List// 
<// 
Status// %
>//% &
>//& '
GetAllStatusAsync//( 9
(//9 :
)//: ;
{00 	
return11 
await11 
_context11 !
.11! "
Status11" (
.11( )
ToListAsync11) 4
(114 5
)115 6
;116 7
}22 	
}33 
}44 °
~C:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\EmprendeUCR_WebApplication\Data\Services\ProvinceService.cs
	namespace		 	&
EmprendeUCR_WebApplication		
 $
.		$ %
Data		% )
.		) *
Services		* 2
{

 
public 

class 
ProvinceService  
:! "
	PageModel# ,
{ 
private 
readonly &
EmprendeUCR_WebApplication 3
.3 4
Data4 8
.8 9
Contexts9 A
.A B
SqlServerDbContextB T
_contextU ]
;] ^
public 
ProvinceService 
( &
EmprendeUCR_WebApplication 9
.9 :
Data: >
.> ?
Contexts? G
.G H
SqlServerDbContextH Z
context[ b
)b c
{ 	
_context 
= 
context 
; 
} 	
public 
async 
Task 
< 
IList 
<  
Province  (
>( )
>) *
GetAsync+ 3
(3 4
)4 5
{ 	
return 
await 
_context !
.! "
Province" *
.* +
ToListAsync+ 6
(6 7
)7 8
;8 9
} 	
public 
IList 
< 
Province 
> 
GetProvinces +
(+ ,
), -
{ 	
return 
_context 
. 
Province $
.$ %
ToList% +
(+ ,
), -
;- .
} 	
public 
void 
addProvince 
(  
Province  (
province) 1
)1 2
{ 	
_context   
.   
Province   
.   
Add   !
(  ! "
province  " *
)  * +
;  + ,
_context!! 
.!! 
SaveChanges!!  
(!!  !
)!!! "
;!!" #
}"" 	
}## 
}$$ ÷,
~C:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\EmprendeUCR_WebApplication\Data\Services\RegisterService.cs
	namespace 	&
EmprendeUCR_WebApplication
 $
.$ %
Data% )
.) *
Services* 2
{ 
public 

class 
RegisterService  
{ 
Registro 

_oRegister 
= 
new !
Registro" *
(* +
)+ ,
;, -
User 
_oUser 
= 
new 
User 
( 
)  
;  !
public 
async 
Task 
< 
bool 
> 
ConfirmMail  +
(+ ,
string, 2
email3 8
)8 9
{ 	
bool 
emailConfirmed 
=  !
false" '
;' (
try 
{ 
if 
( 
! 
string 
. 
IsNullOrEmpty )
() *
email* /
)/ 0
)0 1
{ 
Registro 
registro %
=& '
new( +
Registro, 4
(4 5
)5 6
{ 
Email 
= 
email  %
,% &
} 
; 
emailConfirmed "
=# $
await% *
this+ /
./ 0 
checkRecordExistence0 D
(D E
registroE M
)M N
;N O
} 
} 
catch   
(   
	Exception   
ex   
)    
{!! 
Console"" 
."" 
	WriteLine"" !
(""! "
ex""" $
.""$ %
Message""% ,
)"", -
;""- .
}## 
return$$ 
emailConfirmed$$ !
;$$! "
}%% 	
public'' 
async'' 
Task'' 
<'' 
bool'' 
>'' 
Registrarse''  +
(''+ ,
Registro'', 4
	oRegistro''5 >
)''> ?
{(( 	
bool)) 
	registrar)) 
=)) 
false)) "
;))" #
try** 
{++ 
	registrar,, 
=,, 
await,, !
this,," &
.,,& ' 
checkRecordExistence,,' ;
(,,; <
	oRegistro,,< E
),,E F
;,,F G
}-- 
catch.. 
(.. 
	Exception.. 
ex.. 
)..  
{// 
Console00 
.00 
	WriteLine00 !
(00! "
ex00" $
.00$ %
Message00% ,
)00, -
;00- .
}11 
return22 
	registrar22 
;22 
}33 	
public55 
async55 
Task55 
<55 
bool55 
>55  
checkRecordExistence55  4
(554 5
Registro555 =
	oRegistro55> G
)55G H
{66 	
bool77 

encontrado77 
=77 
false77 #
;77# $
if88 
(88 
!88 
string88 
.88 
IsNullOrEmpty88 %
(88% &
	oRegistro88& /
.88/ 0
Email880 5
)885 6
)886 7
{99 

encontrado:: 
=:: 
await:: "
this::# '
.::' (
VerifyUserExistence::( ;
(::; <
	oRegistro::< E
.::E F
Email::F K
)::K L
;::L M
};; 
return<< 

encontrado<< 
;<< 
}== 	
public?? 
async?? 
Task?? 
<?? 
bool?? 
>?? 
VerifyUserExistence??  3
(??3 4
string??4 :
email??; @
)??@ A
{??B C
bool@@ 
retorno@@ 
=@@ 
false@@  
;@@  !
usingBB 
(BB 
IDbConnectionBB !
conBB" %
=BB& '
newBB( +
SqlConnectionBB, 9
(BB9 :
GlobalBB: @
.BB@ A
ConnectionStringBBA Q
)BBQ R
)BBR S
{CC 
ifDD 
(DD 
conDD 
.DD 
StateDD 
==DD  
ConnectionStateDD! 0
.DD0 1
ClosedDD1 7
)DD7 8
conDD9 <
.DD< =
OpenDD= A
(DDA B
)DDB C
;DDC D
stringFF 
sSQLFF 
=FF 
$strFF ?
;FF? @
ifHH 
(HH 
!HH 
stringHH 
.HH 
IsNullOrEmptyHH )
(HH) *
emailHH* /
)HH/ 0
)HH0 1
sSQLHH2 6
+=HH7 9
$strHH: H
+HHI J
emailHHK P
+HHQ R
$strHHS V
;HHV W
varJJ 
oUserJJ 
=JJ 
(JJ 
awaitJJ "
conJJ# &
.JJ& '

QueryAsyncJJ' 1
<JJ1 2
UserJJ2 6
>JJ6 7
(JJ7 8
sSQLJJ8 <
)JJ< =
)JJ= >
.JJ> ?
ToListJJ? E
(JJE F
)JJF G
;JJG H
ifLL 
(LL 
oUserLL 
!=LL 
nullLL !
&&LL" $
oUserLL% *
.LL* +
CountLL+ 0
>LL1 2
$numLL3 4
)LL4 5
{LL6 7
retornoMM 
=MM 
trueMM "
;MM" #
}NN 
returnPP 
retornoPP 
;PP 
}QQ 
}RR 	
}SS 
}TT ﬁ
|C:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\EmprendeUCR_WebApplication\Data\Services\ReportService.cs
	namespace 	&
EmprendeUCR_WebApplication
 $
.$ %
Data% )
.) *
Services* 2
{ 
public 

class 
ReportService 
:  
	PageModel! *
{ 
private 
readonly 
Contexts !
.! "
SqlServerDbContext" 4
_context5 =
;= >
public 
ReportService 
( 
Contexts %
.% &
SqlServerDbContext& 8
context9 @
)@ A
{ 	
_context 
= 
context 
; 
} 	
public 
async 
Task 
< 
IList 
<  
Report  &
>& '
>' (
GetAsync) 1
(1 2
)2 3
{ 	
return 
await 
_context !
.! "
Report" (
.( )
ToListAsync) 4
(4 5
)5 6
;6 7
} 	
public 
Report 
getReportById #
(# $
int$ '
Id( *
)* +
{   	
return!! 
_context!! 
.!! 
Report!! "
.!!" #
Find!!# '
(!!' (
Id!!( *
)!!* +
;!!+ ,
}"" 	
public$$ 
void$$ 
deleteReport$$  
($$  !
Report$$! '
report$$( .
)$$. /
{$$0 1
_context%% 
.%% 
Report%% 
.%% 
Remove%% "
(%%" #
report%%# )
)%%) *
;%%* +
_context&& 
.&& 
SaveChanges&&  
(&&  !
)&&! "
;&&" #
}'' 	
}(( 
})) ñ/
äC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\EmprendeUCR_WebApplication\Data\Services\Reports\CreateReportService.cs
	namespace 	&
EmprendeUCR_WebApplication
 $
.$ %
Data% )
.) *
Services* 2
.2 3
Reports3 :
{ 
public 

class 
CreateReportService $
:% &
	PageModel' 0
{ 
public 
CreateReportService "
(" #
Contexts# +
.+ ,
SqlServerDbContext, >
context? F
)F G
{ 	
_context 
= 
context 
; 
} 	
private 
readonly 
Contexts !
.! "
SqlServerDbContext" 4
_context5 =
;= >
private   
bool   
TitleNotValid   "
;  " #
private!! 
bool!! 
DescriptionNotValid!! (
;!!( )
public"" 
bool"" 
AddDialogVisible"" $
;""$ %
public## 
string## 
Title## 
;## 
public$$ 
string$$ 
Content$$ 
;$$ 
public%% 
bool%% 
ContentNotValid%% #
;%%# $
public&& 
bool&&  
CreateReportDisabled&& (
;&&( )
public'' 
string'' 
user'' 
;'' 
public// 
void// "
OpenCreateReportDialog// *
(//* +
)//+ ,
{00 	
this11 
.11 
AddDialogVisible11 !
=11" #
true11$ (
;11( )
this22 
.22  
CreateReportDisabled22 %
=22& '
true22( ,
;22, -
}33 	
public<< 
void<< #
CloseCreateReportDialog<< +
(<<+ ,
)<<, -
{== 	
this>> 
.>> 
AddDialogVisible>> !
=>>" #
false>>$ )
;>>) *!
ResetCreateReportData?? !
(??! "
)??" #
;??# $
}@@ 	
publicHH 
asyncHH 
voidHH 
CreateReportHH &
(HH& '
)HH' (
{II 	
thisJJ 
.JJ 
AddDialogVisibleJJ !
=JJ" #
falseJJ$ )
;JJ) *
ReportKK 
reportKK 
=KK 
newKK 
ReportKK  &
(KK& '
)KK' (
;KK( )
reportLL 
.LL 
TitleLL 
=LL 
TitleLL  
;LL  !
reportMM 
.MM 
ContentMM 
=MM 
ContentMM $
;MM$ %
reportNN 
.NN 
UserNN 
=NN 
userNN 
;NN 
awaitOO 
InsertReportAsyncOO #
(OO# $
reportOO$ *
)OO* +
;OO+ ,!
ResetCreateReportDataPP !
(PP! "
)PP" #
;PP# $
}QQ 	
publicYY 
voidYY !
ResetCreateReportDataYY )
(YY) *
)YY* +
{ZZ 	
AddDialogVisible[[ 
=[[ 
false[[ $
;[[% &
Title\\ 
=\\ 
null\\ 
;\\ 
Content]] 
=]] 
null]] 
;]]  
CreateReportDisabled^^  
=^^! "
false^^# (
;^^) *
TitleNotValid__ 
=__ 
false__ !
;__! "
}`` 
publicgg 
asyncgg 
Taskgg 
<gg 
boolgg 
>gg 
InsertReportAsyncgg  1
(gg1 2
Reportgg2 8
reportgg9 ?
)gg? @
{hh 	
awaitii 
_contextii 
.ii 
Reportii !
.ii! "
AddAsyncii" *
(ii* +
reportii+ 1
)ii1 2
;ii2 3
awaitjj 
_contextjj 
.jj 
SaveChangesAsyncjj +
(jj+ ,
)jj, -
;jj- .
returnkk 
truekk 
;kk 
}ll 	
publicmm 
voidmm 
ValidateTitlemm !
(mm! "
	Microsoftmm" +
.mm+ ,

AspNetCoremm, 6
.mm6 7

Componentsmm7 A
.mmA B
ChangeEventArgsmmB Q
argsmmR V
)mmV W
{nn 	
TitleNotValidoo 
=oo 
trueoo  
;oo  !
Titlepp 
=pp 
(pp 
Stringpp 
)pp 
argspp  
.pp  !
Valuepp! &
;pp& '
ifqq 
(qq 
Titleqq 
.qq 
Lengthqq 
>qq 
$numqq  
)qq  !
{rr 
TitleNotValidss 
=ss 
falsess  %
;ss% &
}tt  
CreateReportDisableduu  
=uu! "
TitleNotValiduu# 0
||uu1 3
DescriptionNotValiduu4 G
;uuG H
}vv 	
publicww 
voidww 
ValidateDescriptionww '
(ww' (
	Microsoftww( 1
.ww1 2

AspNetCoreww2 <
.ww< =

Componentsww= G
.wwG H
ChangeEventArgswwH W
argswwX \
)ww\ ]
{xx 	
ContentNotValidyy 
=yy 
trueyy "
;yy" #
Contentzz 
=zz 
(zz 
Stringzz 
)zz 
argszz "
.zz" #
Valuezz# (
;zz( )
if{{ 
({{ 
Content{{ 
.{{ 
Length{{ 
>{{  
$num{{! "
){{" #
{|| 
ContentNotValid}} 
=}}  !
false}}" '
;}}' (
}~~  
CreateReportDisabled  
=! "
TitleNotValid# 0
||1 3
DescriptionNotValid4 G
;G H
}
ÄÄ 	
}
ÉÉ 
}ÑÑ ¨
}C:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\EmprendeUCR_WebApplication\Data\Services\Serviceservice.cs
	namespace

 	&
EmprendeUCR_WebApplication


 $
.

$ %
Data

% )
.

) *
Services

* 2
{ 
public 

class 
Serviceservice 
:  !
	PageModel" +
{ 
private 
readonly &
EmprendeUCR_WebApplication 3
.3 4
Data4 8
.8 9
Contexts9 A
.A B
SqlServerDbContextB T
_contextU ]
;] ^
public 
Serviceservice 
( &
EmprendeUCR_WebApplication 8
.8 9
Data9 =
.= >
Contexts> F
.F G
SqlServerDbContextG Y
contextZ a
)a b
{ 	
_context 
= 
context 
; 
} 	
public 
IList 
< 
ServicePandemic $
>$ %
GetList& -
(- .
string. 4
product5 <
)< =
{ 	
return 
_context 
. 
ServicePandemic +
.+ ,

FromSqlRaw, 6
(6 7
$str7 L
+M N
productO V
+W X
$strY ]
)] ^
.^ _
ToArray_ f
(f g
)g h
;h i
} 	
public 
IList 
< 
ServicePandemic $
>$ %
GetListByCategory& 7
(7 8
int8 ;

categoryID< F
)F G
{ 	
return 
_context 
. 
ServicePandemic +
.+ ,

FromSqlRaw, 6
(6 7
$str7 T
+U V

categoryIDW a
)a b
.b c
ToArrayc j
(j k
)k l
;l m
} 	
public   
IList   
<   
ServicePandemic   $
>  $ %
GetListRestricted  & 7
(  7 8
string  8 >
product  ? F
,  F G
int  H K

categoryID  L V
)  V W
{!! 	
return"" 
_context"" 
."" 
ServicePandemic"" +
.""+ ,

FromSqlRaw"", 6
(""6 7
$str""7 V
+""W X
product""Y `
+""a b
$str""c h
+""i j

categoryID""k u
)""u v
.""v w
ToArray""w ~
(""~ 
)	"" Ä
;
""Ä Å
}## 	
}$$ 
}%% Ä

ÉC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\EmprendeUCR_WebApplication\Data\Services\Shopping_CartService.cs
	namespace

 	&
EmprendeUCR_WebApplication


 $
.

$ %
Data

% )
.

) *
Services

* 2
{ 
public 

class  
Shopping_CartService %
{ 
private 
readonly &
EmprendeUCR_WebApplication 3
.3 4
Data4 8
.8 9
Contexts9 A
.A B
SqlServerDbContextB T
_contextU ]
;] ^
public  
Shopping_CartService #
(# $&
EmprendeUCR_WebApplication$ >
.> ?
Data? C
.C D
ContextsD L
.L M
SqlServerDbContextM _
context` g
)g h
{ 	
_context 
= 
context 
; 
} 	
public 
void 
addEmail 
( 
Shopping_Cart *
email+ 0
)0 1
{ 	
_context 
. 
Add 
( 
email 
) 
;  
} 	
} 
} Í
áC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\EmprendeUCR_WebApplication\Data\Services\Shopping_Cart_HasService.cs
	namespace		 	&
EmprendeUCR_WebApplication		
 $
.		$ %
Data		% )
.		) *
Services		* 2
{

 
public 

class $
Shopping_Cart_HasService )
:* +
	PageModel, 5
{ 
private 
readonly &
EmprendeUCR_WebApplication 3
.3 4
Data4 8
.8 9
Contexts9 A
.A B
SqlServerDbContextB T
_contextU ]
;] ^
public $
Shopping_Cart_HasService '
(' (&
EmprendeUCR_WebApplication( B
.B C
DataC G
.G H
ContextsH P
.P Q
SqlServerDbContextQ c
contextd k
)k l
{ 	
_context 
= 
context 
; 
} 	
public 
int 
GetProductsQuantity &
(& '
string' -
	userEmail. 7
)7 8
{ 	
return 
_context 
. 
Shopping_Cart_Has -
.- .
AsNoTracking. :
(: ;
); <
.< =
Where= B
(B C
scC E
=>F H
scI K
.K L
EmailL Q
==S U
	userEmailV _
)_ `
.` a
Counta f
(f g
)g h
;h i
}   	
}"" 
}## ⁄
ëC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\EmprendeUCR_WebApplication\Data\Services\Shopping_Cart_Has_Service_Pandemic.cs
	namespace 	&
EmprendeUCR_WebApplication
 $
.$ %
Data% )
.) *
Services* 2
{ 
public 

class .
"Shopping_Cart_Has_Service_Pandemic 3
:3 4
	PageModel5 >
{ 
private 
readonly &
EmprendeUCR_WebApplication 3
.3 4
Data4 8
.8 9
Contexts9 A
.A B 
SqlDbContextPandemicB V
_contextW _
;_ `
public .
"Shopping_Cart_Has_Service_Pandemic 1
(1 2&
EmprendeUCR_WebApplication2 L
.L M
DataM Q
.Q R
ContextsR Z
.Z [ 
SqlDbContextPandemic[ o
contextp w
)w x
{ 	
_context 
= 
context 
; 
} 	
public 
bool 
searchProduct !
(! "
string" (
email) .
,. /
int0 3
	idProduct4 =
)= >
{ 	
Shopping_Cart_Has 
existing &
=' (
_context) 1
.1 2
Shopping_Cart_Has2 C
.C D
FirstOrDefaultD R
(R S
cS T
=>U W
cX Y
.Y Z
EmailZ _
._ `
Equals` f
(f g
emailg l
)l m
&&n p
cq r
.r s
Code_IDs z
=={ }
	idProduct	~ á
)
á à
;
à â
if 
( 
existing 
!= 
null  
)  !
{ 
return 
true 
; 
} 
return 
false 
; 
}   	
public"" 
void"" 

addProduct"" 
("" 
Shopping_Cart_Has"" 0
product""1 8
)""8 9
{## 	
_context$$ 
.$$ 
Add$$ 
($$ 
product$$  
)$$  !
;$$! "
_context%% 
.%% 
SaveChanges%%  
(%%  !
)%%! "
;%%" #
}&& 	
public(( 
int(( 
GetProductsQuantity(( &
(((& '
string((' -
	userEmail((. 7
)((7 8
{)) 	
return** 
_context** 
.** 
Shopping_Cart_Has** -
.**- .
AsNoTracking**. :
(**: ;
)**; <
.**< =
Where**= B
(**B C
sc**C E
=>**F H
sc**I K
.**K L
Email**L Q
==**R T
	userEmail**U ^
)**^ _
.**_ `
Count**` e
(**e f
)**f g
;**g h
}++ 	
},, 
}-- Ñ,
zC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\EmprendeUCR_WebApplication\Data\Services\UserService.cs
	namespace 	&
EmprendeUCR_WebApplication
 $
.$ %
Data% )
.) *
Services* 2
{ 
public 

class 
UserService 
: 
	PageModel (
{ 
private 
readonly &
EmprendeUCR_WebApplication 3
.3 4
Data4 8
.8 9
Contexts9 A
.A B
SqlServerDbContextB T
_contextU ]
;] ^
public 
UserService 
( &
EmprendeUCR_WebApplication 5
.5 6
Data6 :
.: ;
Contexts; C
.C D
SqlServerDbContextD V
contextW ^
)^ _
{ 	
_context 
= 
context 
; 
} 	
public 
void 
AddUser 
( 
User  
user! %
)% &
{ 	
_context 
. 
User 
. 
Add 
( 
user "
)" #
;# $
_context 
. 
SaveChanges  
(  !
)! "
;" #
} 	
public 
void 

UpdateUser 
( 
User #
_user$ )
)) *
{ 	
User   
user   
=   
_context    
.    !
User  ! %
.  % &
FirstOrDefault  & 4
(  4 5
c  5 6
=>  7 9
c  : ;
.  ; <
Email  < A
.  A B
Equals  B H
(  H I
_user  I N
.  N O
Email  O T
)  T U
)  U V
;  V W
if!! 
(!! 
user!! 
!=!! 
null!! 
)!! 
{"" 
user## 
.## 
Province_Name## "
=### $
_user##% *
.##* +
Province_Name##+ 8
;##8 9
user$$ 
.$$ 
Canton_Name$$  
=$$! "
_user$$# (
.$$( )
Canton_Name$$) 4
;$$4 5
user%% 
.%% 
District_Name%% "
=%%# $
_user%%% *
.%%* +
District_Name%%+ 8
;%%8 9
user'' 
.'' 
Photo'' 
='' 
_user'' "
.''" #
Photo''# (
;''( )
user)) 
.)) 
Name)) 
=)) 
_user)) !
.))! "
Name))" &
;))& '
user** 
.** 
F_Last_Name**  
=**! "
_user**# (
.**( )
F_Last_Name**) 4
;**4 5
user++ 
.++ 
S_Last_Name++  
=++! "
_user++# (
.++( )
S_Last_Name++) 4
;++4 5
user-- 
.-- 

Birth_Date-- 
=--  !
_user--" '
.--' (

Birth_Date--( 2
;--2 3
user.. 
... 
Email_Confirmation.. '
=..( )
_user..* /
.../ 0
Email_Confirmation..0 B
;..B C
_context00 
.00 
Update00 
(00  
user00  $
)00$ %
;00% &
_context11 
.11 
SaveChanges11 $
(11$ %
)11% &
;11& '
}22 
}33 	
public55 
async55 
Task55 
<55 
bool55 
>55 
UpdateAsync55  +
(55+ ,
User55, 0
user551 5
)555 6
{66 	
_context77 
.77 
User77 
.77 
Update77  
(77  !
user77! %
)77% &
;77& '
await88 
_context88 
.88 
SaveChangesAsync88 +
(88+ ,
)88, -
;88- .
return99 
true99 
;99 
}:: 	
public<< 
bool<< 
getConfirmEmail<< #
(<<# $
string<<$ *
email<<+ 0
)<<0 1
{<<2 3
bool== 

confirmado== 
=== 
false== #
;==# $
User>> 
user>> 
=>> 
_context>>  
.>>  !
User>>! %
.>>% &
FirstOrDefault>>& 4
(>>4 5
c>>5 6
=>>>7 9
c>>: ;
.>>; <
Email>>< A
.>>A B
Equals>>B H
(>>H I
email>>I N
)>>N O
)>>O P
;>>P Q
if?? 
(?? 
user?? 
!=?? 
null?? 
)?? 
{@@ 

confirmadoAA 
=AA 
(AA 
boolAA "
)AA" #
userAA# '
.AA' (
Email_ConfirmationAA( :
;AA: ;
}BB 
returnCC 

confirmadoCC 
;CC 
}DD 	
publicFF 
asyncFF 
TaskFF 
<FF 
UserFF 
>FF 
GetUserByEmailAsyncFF  3
(FF3 4
stringFF4 :
emailFF; @
)FF@ A
{GG 	
returnHH 
(HH 
awaitHH 
_contextHH "
.HH" #
UserHH# '
.HH' (
	FindAsyncHH( 1
(HH1 2
emailHH2 7
)HH7 8
)HH8 9
;HH9 :
}II 	
}JJ 
}KK Ø?
ÇC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\EmprendeUCR_WebApplication\Data\Services\UserServicePandemic.cs
	namespace 	&
EmprendeUCR_WebApplication
 $
.$ %
Data% )
.) *
Services* 2
{ 
public 

class 
UserServicePandemic $
:% &
	PageModel' 0
{ 
private 
readonly &
EmprendeUCR_WebApplication 3
.3 4
Data4 8
.8 9
Contexts9 A
.A B 
SqlDbContextPandemicB V
_contextW _
;_ `
public 
UserServicePandemic "
(" #&
EmprendeUCR_WebApplication# =
.= >
Data> B
.B C
ContextsC K
.K L 
SqlDbContextPandemicL `
contexta h
)h i
{ 	
_context 
= 
context 
; 
} 	
public 
async 
Task 
< 
IList 
<  
User  $
>$ %
>% &
GetAsync' /
(/ 0
)0 1
{ 	
return 
await 
_context !
.! "
User" &
.& '
ToListAsync' 2
(2 3
)3 4
;4 5
} 	
public 
void 
AddUser 
( 
User  
user! %
)% &
{ 	
_context 
. 
User 
. 
Add 
( 
user "
)" #
;# $
_context   
.   
SaveChanges    
(    !
)  ! "
;  " #
}!! 	
public## 
void## 

UpdateUser## 
(## 
User## #
_user##$ )
)##) *
{$$ 	
User%% 
user%% 
=%% 
_context%%  
.%%  !
User%%! %
.%%% &
FirstOrDefault%%& 4
(%%4 5
c%%5 6
=>%%7 9
c%%: ;
.%%; <
Email%%< A
.%%A B
Equals%%B H
(%%H I
_user%%I N
.%%N O
Email%%O T
)%%T U
)%%U V
;%%V W
if&& 
(&& 
user&& 
!=&& 
null&& 
)&& 
{'' 
user(( 
.(( 
Province_Name(( "
=((# $
_user((% *
.((* +
Province_Name((+ 8
;((8 9
user)) 
.)) 
Canton_Name))  
=))! "
_user))# (
.))( )
Canton_Name))) 4
;))4 5
user** 
.** 
District_Name** "
=**# $
_user**% *
.*** +
District_Name**+ 8
;**8 9
user,, 
.,, 
Photo,, 
=,, 
_user,, "
.,," #
Photo,,# (
;,,( )
user.. 
... 
Name.. 
=.. 
_user.. !
...! "
Name.." &
;..& '
user// 
.// 
F_Last_Name//  
=//! "
_user//# (
.//( )
F_Last_Name//) 4
;//4 5
user00 
.00 
S_Last_Name00  
=00! "
_user00# (
.00( )
S_Last_Name00) 4
;004 5
user22 
.22 

Birth_Date22 
=22  !
_user22" '
.22' (

Birth_Date22( 2
;222 3
user33 
.33 
Email_Confirmation33 '
=33( )
_user33* /
.33/ 0
Email_Confirmation330 B
;33B C
_context55 
.55 
Update55 
(55  
user55  $
)55$ %
;55% &
_context66 
.66 
SaveChanges66 $
(66$ %
)66% &
;66& '
}77 
}88 	
public:: 
bool:: 
getConfirmEmail:: #
(::# $
string::$ *
email::+ 0
)::0 1
{;; 	
bool<< 

confirmado<< 
=<< 
false<< #
;<<# $
User== 
user== 
=== 
_context==  
.==  !
User==! %
.==% &
FirstOrDefault==& 4
(==4 5
c==5 6
=>==7 9
c==: ;
.==; <
Email==< A
.==A B
Equals==B H
(==H I
email==I N
)==N O
)==O P
;==P Q
if>> 
(>> 
user>> 
!=>> 
null>> 
)>> 
{?? 

confirmado@@ 
=@@ 
(@@ 
bool@@ "
)@@" #
user@@# '
.@@' (
Email_Confirmation@@( :
;@@: ;
}AA 
returnBB 

confirmadoBB 
;BB 
}CC 	
publicEE 
asyncEE 
TaskEE 
<EE 
UserEE 
>EE 
getUserEE  '
(EE' (
stringEE( .
emailEE/ 4
)EE4 5
{FF 	
UserGG 
_userGG 
=GG 
newGG 
UserGG !
(GG! "
)GG" #
;GG# $
usingII 
(II 
IDbConnectionII  
conII! $
=II% &
newII' *
SqlConnectionII+ 8
(II8 9
GlobalII9 ?
.II? @
ConnectionStringII@ P
)IIP Q
)IIQ R
{JJ 
ifKK 
(KK 
conKK 
.KK 
StateKK 
==KK  
ConnectionStateKK! 0
.KK0 1
ClosedKK1 7
)KK7 8
conKK9 <
.KK< =
OpenKK= A
(KKA B
)KKB C
;KKC D
stringMM 
sSQLMM 
=MM 
$strMM ?
;MM? @
ifOO 
(OO 
!OO 
stringOO 
.OO 
IsNullOrEmptyOO )
(OO) *
emailOO* /
)OO/ 0
)OO0 1
sSQLOO2 6
+=OO7 9
$strOO: H
+OOI J
emailOOK P
+OOQ R
$strOOS V
;OOV W
varQQ 
oUserQQ 
=QQ 
(QQ 
awaitQQ "
conQQ# &
.QQ& '

QueryAsyncQQ' 1
<QQ1 2
UserQQ2 6
>QQ6 7
(QQ7 8
sSQLQQ8 <
)QQ< =
)QQ= >
.QQ> ?
ToListQQ? E
(QQE F
)QQF G
;QQG H
ifSS 
(SS 
oUserSS 
!=SS 
nullSS !
&&SS" $
oUserSS% *
.SS* +
CountSS+ 0
>SS1 2
$numSS3 4
)SS4 5
{TT 
_userVV 
=VV 
oUserVV !
.VV! "
SingleOrDefaultVV" 1
(VV1 2
)VV2 3
;VV3 4
}WW 
elseXX 
{YY 
returnZZ 
nullZZ 
;ZZ  
}[[ 
return]] 
_user]] 
;]] 
}^^ 
}__ 	
publicaa 
IListaa 
<aa 
Useraa 
>aa 
getPhotoaa #
(aa# $
stringaa$ *
emailaa+ 0
)aa0 1
{bb 	
returncc 
_contextcc 
.cc 
Usercc  
.cc  !

FromSqlRawcc! +
(cc+ ,
$strcc, X
+ccY Z
emailcc[ `
)cc` a
.cca b
ToArrayccb i
(cci j
)ccj k
;cck l
}dd 	
publicgg 
Usergg 
GetUserByEmailgg "
(gg" #
stringgg# )
emailgg* /
)gg/ 0
{hh 	
varii 
aii 
=ii 
_contextii 
.ii 
Userii !
.ii! "
Findii" &
(ii& '
emailii' ,
)ii, -
;ii- .
returnjj 
ajj 
;jj 
}kk 	
}ll 
}mm Ò
ÅC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\EmprendeUCR_WebApplication\Domain\Core\CoreEntities\IsOffer.cs
	namespace 	&
EmprendeUCR_WebApplication
 $
.$ %
Domain% +
.+ ,
Core, 0
.0 1
CoreEntities1 =
{ 
public		 

partial		 
class		 
IsOffer		  
{

 
[ 	
Key	 
] 
public 
int 
OfferId 
{ 
get  
;  !
set" %
;% &
}' (
public 
int 
CodeId 
{ 
get 
;  
set! $
;$ %
}& '
public 
string 
	UserEmail 
{  !
get" %
;% &
set' *
;* +
}, -
public 
int 

CategoryId 
{ 
get  #
;# $
set% (
;( )
}* +
public 
int 
? 
Amount 
{ 
get  
;  !
set" %
;% &
}' (
public 
virtual 
Offer 
Offer "
{# $
get% (
;( )
set* -
;- .
}/ 0
internal 
bool 
apply 
( 
Product #
product$ +
)+ ,
{ 	
return 
product 
. 
CodeId 
==  
CodeId! '
&&( *
product+ 2
.2 3
EntrepreneurEmail3 D
==E G
	UserEmailH Q
&& 
product 
. 

CategoryId $
==% '

CategoryId( 2
?3 4
true5 9
:: ;
false< A
;A B
} 	
} 
} ñ
C:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\EmprendeUCR_WebApplication\Domain\Core\CoreEntities\Offer.cs
	namespace 	&
EmprendeUCR_WebApplication
 $
.$ %
Domain% +
.+ ,
Core, 0
.0 1
CoreEntities1 =
{		 
public

 

partial

 
class

 
Offer

 
:

  
AggregateRoot

! .
{ 
public 
int 
OfferId 
{ 
get  
;  !
set" %
;% &
}' (
public 
DateTime 
InitialDate #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 
DateTime 

ExpireDate "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
string 
OfferDescription &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public 
int 
Discount 
{ 
get !
;! "
set# &
;& '
}( )
private 
readonly 
List 
< 
IsOffer %
>% &
	_isOffers' 0
;0 1
public 
virtual 
IReadOnlyCollection *
<* +
IsOffer+ 2
>2 3
IsOffers4 <
=>= ?
	_isOffers@ I
.I J

AsReadOnlyJ T
(T U
)U V
;V W
} 
} Ù
ÅC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\EmprendeUCR_WebApplication\Domain\Core\CoreEntities\Product.cs
	namespace		 	&
EmprendeUCR_WebApplication		
 $
.		$ %
Domain		% +
.		+ ,
Core		, 0
.		0 1
CoreEntities		1 =
{

 
public 

partial 
class 
Product  
:! "
ProductService# 1
{ 
public 
string 
ProductName !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
string 
ProductDescription (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
public 
int 
Price 
{ 
get 
; 
set  #
;# $
}% &
public 
int 
currentPrice 
{  !
get" %
;% &
set' *
;* +
}, -
private 
readonly 
List 
< 
Product_Photos ,
>, - 
_product_Photos_List. B
;B C
public 
IReadOnlyCollection "
<" #
Product_Photos# 1
>1 2
Product_Photos3 A
;A B
internal 
void 
getCurrentPrice %
(% &
List& *
<* +
Offer+ 0
>0 1
offers2 8
)8 9
{ 	
currentPrice 
= 
Price  
;  !
foreach 
( 
var 
offer 
in !
offers" (
)( )
{ 
if 
( 
offer 
. 
IsOffers "
." #
	ElementAt# ,
(, -
$num- .
). /
./ 0
apply0 5
(5 6
this6 :
): ;
); <
{= >
currentPrice  
=! "
offer# (
.( )
Discount) 1
;1 2
} 
} 
} 	
} 
}   Å
àC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\EmprendeUCR_WebApplication\Domain\Core\CoreEntities\ProductService.cs
	namespace

 	&
EmprendeUCR_WebApplication


 $
.

$ %
Domain

% +
.

+ ,
Core

, 0
.

0 1
CoreEntities

1 =
{ 
public 

class 
ProductService 
{ 
public 
int 
CodeId 
{ 
get 
;  
set! $
;$ %
}& '
public 
string 
EntrepreneurEmail '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
public 
byte 
Availability  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
int 

CategoryId 
{ 
get  #
;# $
set% (
;( )
}* +
public 
string 
GetProductStatus &
(& '
Order' ,
order- 2
)2 3
{ 	
string 
state 
= 
this 
.  
	Organized  )
.) *
Where* /
(/ 0
item0 4
=>5 7
item8 <
.< =
DateAndHourCreation= P
==Q S
orderT Y
.Y Z
DateAndHourCreationZ m
&&' )
item* .
.. /
Email/ 4
==5 7
order8 =
.= >
ClientEmail> I
)I J
.J K
FirstK P
(P Q
)Q R
.R S
NameS W
;W X
return   
state   
;   
}!! 	
private$$ 
readonly$$ 
List$$ 
<$$ 
	Organized$$ '
>$$' (
_organizedList$$) 7
;$$7 8
public%% 
IReadOnlyCollection%% "
<%%" #
	Organized%%# ,
>%%, -
	Organized%%. 7
;%%7 8
private&& 
readonly&& 
List&& 
<&& 
ProductHasStatus&& .
>&&. /!
_productHasStatusList&&0 E
;&&E F
public'' 
IReadOnlyCollection'' "
<''" #
ProductHasStatus''# 3
>''3 4
ProductHasStatus''5 E
;''E F
private(( 
readonly(( 
List(( 
<(( 
ShopLine(( &
>((& '
shoppingCartHas((( 7
;((7 8
public)) 
IReadOnlyCollection)) "
<))" #
ShopLine))# +
>))+ ,
ShoppingCartHas))- <
=>))= ?
shoppingCartHas))@ O
.))O P

AsReadOnly))P Z
())Z [
)))[ \
;))\ ]
}** 
}++ Ø

àC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\EmprendeUCR_WebApplication\Domain\Core\CoreEntities\Product_Photos.cs
	namespace 	&
EmprendeUCR_WebApplication
 $
.$ %
Domain% +
.+ ,
Core, 0
.0 1
CoreEntities1 =
{ 
public 

class 
Product_Photos 
{ 
public 
int 
Product_Photos_ID $
{% &
get' *
;* +
set, /
;/ 0
}1 2
public 
int 
Code_ID 
{ 
get  
;  !
set" %
;% &
}' (
public 
string 
Entrepreneur_Email (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
public 
int 
Category_ID 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
byte 
[ 
] 
Photos 
{ 
get "
;" #
set$ '
;' (
}) *
public"" 
Product"" 
product"" 
;"" 
}$$ 
}%% ”
ÅC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\EmprendeUCR_WebApplication\Domain\Core\CoreEntities\Service.cs
	namespace 	&
EmprendeUCR_WebApplication
 $
.$ %
Domain% +
.+ ,
Core, 0
.0 1
CoreEntities1 =
{		 
public

 

partial

 
class

 
Service

  
:

! "
ProductService

# 1
{ 
public 
string 
ServiceName !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
string 
ServiceDescription (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
public 
int 
? 
PricePerHour  
{! "
get# &
;& '
set( +
;+ ,
}- .
} 
} º
ÉC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\EmprendeUCR_WebApplication\Domain\Core\Entities\AggregateRoot.cs
	namespace 	&
EmprendeUCR_WebApplication
 $
.$ %
Domain% +
.+ ,
Core, 0
.0 1
Entities1 9
{ 
public 

abstract 
class 
AggregateRoot '
{ 
} 
} Ä
|C:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\EmprendeUCR_WebApplication\Domain\Core\Entities\Entity.cs
	namespace 	&
EmprendeUCR_WebApplication
 $
.$ %
Domain% +
.+ ,
Core, 0
.0 1
Entities1 9
{ 
public 

abstract 
class 
Entity  
:! "
Entity# )
<) *
long* .
>. /
{ 
} 
} Õ
áC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\EmprendeUCR_WebApplication\Domain\Core\Exceptions\DomainException.cs
	namespace 	&
EmprendeUCR_WebApplication
 $
.$ %
Domain% +
.+ ,
Core, 0
.0 1

Exceptions1 ;
{ 
public 

class 
DomainException  
:! "
	Exception# ,
{ 
public 
DomainException 
( 
string %
?% &
message' .
). /
:0 1
base2 6
(6 7
message7 >
)> ?
{ 	
}		 	
}

 
} ˜
ìC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\EmprendeUCR_WebApplication\Domain\Core\Exceptions\InvalidValueObjectException.cs
	namespace 	&
EmprendeUCR_WebApplication
 $
.$ %
Domain% +
.+ ,
Core, 0
.0 1

Exceptions1 ;
{ 
public 

class '
InvalidValueObjectException ,
:- .
DomainException/ >
{ 
public '
InvalidValueObjectException *
(* +
string+ 1
?1 2
message3 :
): ;
:< =
base> B
(B C
messageC J
)J K
{ 	
}		 	
}

 
} Ω 
âC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\EmprendeUCR_WebApplication\Domain\Core\Helpers\ValidationExtensions.cs
	namespace 	&
EmprendeUCR_WebApplication
 $
.$ %
Domain% +
.+ ,
Core, 0
.0 1
Helpers1 8
{ 
public 

static 
class  
ValidationExtensions ,
{ 
public		 
static		 
TSuccess		 
Success		 &
<		& '
TFail		' ,
,		, -
TSuccess		. 6
>		6 7
(		7 8
this		8 <

Validation		= G
<		G H
TFail		H M
,		M N
TSuccess		O W
>		W X
result		Y _
)		_ `
where

 
TFail

 
:

 
notnull

 !
where 
TSuccess 
: 
notnull $
{ 	
if 
( 
result 
. 
IsFail 
) 
throw 
new %
InvalidOperationException 3
(3 4
$str4 C
)C D
;D E
return 
result 
. 
SuccessToList '
(' (
)( )
.) *
First* /
(/ 0
)0 1
;1 2
} 	
public 
static 
TFail 
Fail  
<  !
TFail! &
,& '
TSuccess( 0
>0 1
(1 2
this2 6

Validation7 A
<A B
TFailB G
,G H
TSuccessI Q
>Q R
resultS Y
)Y Z
where 
TFail 
: 
notnull !
where 
TSuccess 
: 
notnull $
{ 	
if 
( 
result 
. 
	IsSuccess  
)  !
throw 
new %
InvalidOperationException 3
(3 4
$str4 C
)C D
;D E
return 
result 
. 

FailToList $
($ %
)% &
.& '
First' ,
(, -
)- .
;. /
} 	
public 
static 
TSuccess 
Validate '
<' (
TFail( -
,- .
TSuccess/ 7
>7 8
(8 9
this9 =

Validation> H
<H I
TFailI N
,N O
TSuccessP X
>X Y
resultZ `
)` a
where 
TFail 
: 
notnull !
where 
TSuccess 
: 
notnull $
{   	
if!! 
(!! 
result!! 
.!! 
IsFail!! 
)!! 
throw"" 
new"" '
InvalidValueObjectException"" 5
(""5 6
result""6 <
.""< =
Fail""= A
(""A B
)""B C
.""C D
ToString""D L
(""L M
)""M N
)""N O
;""O P
return$$ 
result$$ 
.$$ 
Success$$ !
($$! "
)$$" #
;$$# $
}%% 	
public'' 
static'' 
TFail'' 
?'' 
FailOrDefault'' *
<''* +
TFail''+ 0
,''0 1
TSuccess''2 :
>'': ;
(''; <
this''< @

Validation''A K
<''K L
TFail''L Q
,''Q R
TSuccess''S [
>''[ \
result''] c
)''c d
where(( 
TFail(( 
:(( 
notnull(( !
where)) 
TSuccess)) 
:)) 
notnull)) $
{** 	
return++ 
result++ 
.++ 
IsFail++  
?,, 
result,, 
.,, 
Fail,, 
(,, 
),, 
:-- 
default-- 
;-- 
}.. 	
}// 
}00 ∞
ÖC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\EmprendeUCR_WebApplication\Domain\Core\Repositories\IRepository.cs
	namespace 	&
EmprendeUCR_WebApplication
 $
.$ %
Domain% +
.+ ,
Core, 0
.0 1
Repositories1 =
{ 
public 

	interface 
IRepository  
<  !
TAggregateRoot! /
>/ 0
where1 6
TAggregateRoot7 E
:F G
AggregateRootH U
{ 
IUnitOfWork 

UnitOfWork 
{  
get! $
;$ %
}& '
}		 
}

 £

ÖC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\EmprendeUCR_WebApplication\Domain\Core\Repositories\IUnitOfWork.cs
	namespace 	&
EmprendeUCR_WebApplication
 $
.$ %
Domain% +
.+ ,
Core, 0
.0 1
Repositories1 =
{ 
public 

	interface 
IUnitOfWork  
:! "
IDisposable# .
{ 
Task !
BeginTransactionAsync "
(" #
)# $
;$ %
Task "
CommitTransactionAsync #
(# $
)$ %
;% &
void 
RollbackTransaction  
(  !
)! "
;" #
Task 
< 
int 
> 
SaveChangesAsync "
(" #
CancellationToken# 4
cancellationToken5 F
=G H
defaultI P
(P Q
CancellationTokenQ b
)b c
)c d
;d e
Task   
SaveEntitiesAsync   
(   
CancellationToken   0
cancellationToken  1 B
=  C D
default  E L
(  L M
CancellationToken  M ^
)  ^ _
)  _ `
;  ` a
}!! 
}"" ƒ
àC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\EmprendeUCR_WebApplication\Domain\Core\ValueObjects\RequiredString.cs
	namespace 	&
EmprendeUCR_WebApplication
 $
.$ %
Domain% +
.+ ,
Core, 0
.0 1
ValueObjects1 =
{ 
public

 

class

 
RequiredString

 
:

  !
ValueObject

" -
{ 
public 
const 
int 
	MaxLength "
=# $
$num% )
;) *
public 
string 
Value 
{ 
get !
;! "
}# $
private 
RequiredString 
( 
string %
value& +
)+ ,
{ 	
Value 
= 
value 
; 
} 	
private 
RequiredString 
( 
)  
{ 	
Value 
= 
null 
! 
; 
} 	
public 
static 

Validation  
<  !
ValidationError! 0
,0 1
RequiredString2 @
>@ A
	TryCreateB K
(K L
stringL R
?R S
valueT Y
)Y Z
{ 	
if 
( 
string 
. 
IsNullOrWhiteSpace )
() *
value* /
)/ 0
)0 1
return 
new 
IsNullOrWhitespace -
(- .
). /
;/ 0
if   
(   
value   
.   
Length   
>   
	MaxLength   (
)  ( )
return!! 
new!! 
TooLong!! "
(!!" #
	MaxLength!!# ,
)!!, -
;!!- .
return## 
new## 
RequiredString## %
(##% &
value##& +
)##+ ,
;##, -
}$$ 	
	protected&& 
override&& 
IEnumerable&& &
<&&& '
object&&' -
>&&- .!
GetEqualityComponents&&/ D
(&&D E
)&&E F
{'' 	
yield(( 
return(( 
Value(( 
;(( 
})) 	
public++ 
override++ 
string++ 
ToString++ '
(++' (
)++( )
{,, 	
return-- 
Value-- 
;-- 
}.. 	
public00 
abstract00 
record00 
ValidationError00 .
;00. /
public11 
record11 
IsNullOrWhitespace11 (
:11) *
ValidationError11+ :
;11: ;
public22 
record22 
TooLong22 
(22 
int22 !
	MaxLength22" +
)22+ ,
:22- .
ValidationError22/ >
;22> ?
}33 
}44 ü
ÖC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\EmprendeUCR_WebApplication\Domain\Core\ValueObjects\ValueObject.cs
	namespace 	&
EmprendeUCR_WebApplication
 $
.$ %
Domain% +
.+ ,
Core, 0
.0 1
ValueObjects1 =
{ 
public 

abstract 
class 
ValueObject %
:& '&
CSharpFunctionalExtensions( B
.B C
ValueObjectC N
{ 
} 
} ‚	
àC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\EmprendeUCR_WebApplication\Domain\NotificationContext\Notification.cs
	namespace 	&
EmprendeUCR_WebApplication
 $
.$ %
Domain% +
.+ ,
NotificationContext, ?
{		 
public

 

partial

 
class

 
Notification

 %
{ 
public 
DateTime 
date 
{ 
get "
;" #
set$ '
;' (
}) *
public 
string 
url 
{ 
get 
;  
set! $
;$ %
}& '
public 
virtual 
string 
color #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 
byte 
Type 
{ 
get 
; 
set  #
;# $
}% &
public 
virtual 
string 
ToString &
(& '
)' (
{ 	
return 
$str 7
;7 8
} 	
} 
}   ç
ìC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\EmprendeUCR_WebApplication\Domain\NotificationContext\OrderNotificationClient.cs
	namespace 	&
EmprendeUCR_WebApplication
 $
.$ %
Domain% +
.+ ,
NotificationContext, ?
{ 
public 

class #
OrderNotificationClient (
:* +
Notification, 8
{ 
public 
string 
ClientEmail !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
DateTime 
DateAndHourCreation +
{, -
get. 1
;1 2
set3 6
;6 7
}8 9
public 
string 
State 
{ 
set !
;! "
get# &
;& '
}( )
public 
string 
NameEntrepenur $
{% &
set' *
;* +
get, /
;/ 0
}1 2
public 
bool 
view 
{ 
get 
; 
set  #
;# $
}% &
public 
override 
string 
color $
{% &
get' *
{+ ,
return- 3
State4 9
==: <
$str= H
?I J
$strK S
:T U
$strV _
;_ `
}a b
}c d
public #
OrderNotificationClient &
(& '
)' (
{ 	
url   
=   
$str   "
;  " #
}!! 	
public++ 
override++ 
string++ 
ToString++ '
(++' (
)++( )
{,, 	
return-- 
$str-- !
+--" #
NameEntrepenur--$ 2
+--3 4
$str--5 <
+--= >
State--? D
;--D E
}.. 	
}// 
}00 Î
òC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\EmprendeUCR_WebApplication\Domain\NotificationContext\OrderNotificationEntrepeneur.cs
	namespace 	&
EmprendeUCR_WebApplication
 $
.$ %
Domain% +
.+ ,
NotificationContext, ?
{ 
public 

class (
OrderNotificationEntrepeneur -
:. /
Notification0 <
{ 
public 
string 
ClientEmail !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
DateTime 
DateAndHourCreation +
{, -
get. 1
;1 2
set3 6
;6 7
}8 9
public 
string 
State 
{ 
set !
;! "
get# &
;& '
}( )
public 
string 
EntrepreneurEmail '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
public 
string 

nameClient  
{! "
set# &
;& '
get( +
;+ ,
}- .
public (
OrderNotificationEntrepeneur +
(+ ,
), -
{. /
url 
= 
$str $
;$ %
color 
= 
$str 
; 
} 	
public!! 
override!! 
string!! 
ToString!! '
(!!' (
)!!( )
{"" 	
return## 
$str## .
+##/ 0

nameClient##1 ;
;##< =
}$$ 	
}&& 
}'' Ó2
åC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\EmprendeUCR_WebApplication\Domain\NotificationContext\UserNotification.cs
	namespace 	&
EmprendeUCR_WebApplication
 $
.$ %
Domain% +
.+ ,
NotificationContext, ?
{ 
public

 

delegate

 
Task

  
newEventNotification

 -
(

- .
object

. 4
sender

5 ;
,

; <'
NotificationChangeEventArgs

= X
notification

Y e
)

e f
;

f g
public 

class '
NotificationChangeEventArgs ,
:- .
	EventArgs/ 8
{ 
public 
bool 
	Increment 
{ 
get  #
;# $
}% &
public '
NotificationChangeEventArgs *
(* +
bool+ /
	increment0 9
)9 :
{ 	
this 
. 
	Increment 
= 
	increment &
;& '
} 	
} 
public 

class 
UserNotification !
:" #
AggregateRoot$ 1
{ 
public 
enum "
notificationsToReceive *
{ 	)
ClientsOrdersAcceptedRejected )
,) *%
EntrepeneurOrdersAccepted %
} 	
public 
string 
Email 
{ 
set !
;! "
get# &
;& '
}( )
public 
int 
TypeUser 
{ 
set !
;! "
get# &
;& '
}( )
public 
List 
< 
Notification  
>  !
Notifications" /
{0 1
set2 5
;5 6
get7 :
;: ;
}< =
public   
bool   
alreadySubscribed   %
{  & '
set  ( +
;  + ,
get  - 0
;  0 1
}  2 3
public"" 
void"" 
orderNotifications"" &
(""& '
)""' (
{## 	
if$$ 
($$ 
this$$ 
.$$ 
Notifications$$ "
is$$# %
not$$& )
null$$* .
)$$. /
{$$0 1
Notifications%% 
=%% 
Notifications%%  -
.%%- .
OrderByDescending%%. ?
(%%? @
x%%@ A
=>%%B D
x%%E F
.%%F G
date%%G K
)%%K L
.%%L M
ToList%%M S
(%%S T
)%%T U
;%%U V
}&& 
}'' 	
public)) 
int))  
notificationQuantity)) '
{))( )
set))* -
;))- .
get))/ 2
;))2 3
}))4 5
public,, 
event,,  
newEventNotification,, )"
OnNotificationChangeds,,* @
;,,@ A
public-- 
UserNotification-- 
(--  
string--  &
email--' ,
,--, -
int--. 1
typeUser--2 :
)--: ;
{--< =
Email.. 
=.. 
email.. 
;.. 
TypeUser// 
=// 
typeUser// 
;//  
switch00 
(00 
typeUser00 
)00 
{00 
case11 
$num11 
:11 
break33 
;33 
}44 
Notifications55 
=55 
new55 
List55  $
<55$ %
Notification55% 1
>551 2
(552 3
)553 4
;554 5
}77 	
public99 
async99 
Task99 
QuantityEvent99 '
(99' (
object99( .
sender99/ 5
,995 6'
NotificationChangeEventArgs997 R
e99S T
)99T U
{:: 	
if;; 
(;; 
e;; 
.;; 
	Increment;; 
);; 
{<<  
notificationQuantity== $
++==$ &
;==& '
}>> 
else?? 
{??  
notificationQuantity@@ $
--@@$ &
;@@& '
}AA 
ifBB 
(BB "
OnNotificationChangedsBB &
isBB' )
notBB* -
nullBB. 2
)BB2 3
{BB4 5
awaitCC "
OnNotificationChangedsCC ,
.CC, -
InvokeCC- 3
(CC3 4
senderCC4 :
,CC: ;
eCC< =
)CC= >
;CC> ?
}DD 
}FF 	
publicII 
ListII 
<II 
intII 
>II "
getNotificationsWantedII /
(II/ 0
)II0 1
{II2 3
ListJJ 
<JJ 
intJJ 
>JJ 
listNotificationsJJ '
=JJ( )
newJJ* -
ListJJ. 2
<JJ2 3
intJJ3 6
>JJ6 7
(JJ7 8
)JJ8 9
;JJ9 :
switchKK 
(KK 
TypeUserKK 
)KK 
{KK 
caseLL 
$numLL 
:LL 
listNotificationsMM %
.MM% &
AddMM& )
(MM) *
(MM* +
intMM+ .
)MM. /"
notificationsToReceiveMM/ E
.MME F)
ClientsOrdersAcceptedRejectedMMF c
)MMc d
;MMd e
breakNN 
;NN 
caseOO 
$numOO 
:OO 
listNotificationsPP %
.PP% &
AddPP& )
(PP) *
(PP* +
intPP+ .
)PP. /"
notificationsToReceivePP/ E
.PPE F%
EntrepeneurOrdersAcceptedPPF _
)PP_ `
;PP` a
breakQQ 
;QQ 
caseRR 
$numRR 
:RR 
breakSS 
;SS 
}TT 
returnUU 
listNotificationsUU $
;UU$ %
}VV 	
publicWW 
voidWW 
setNewNotificationsWW '
(WW' (
ListWW( ,
<WW, -
NotificationWW- 9
>WW9 :
newNotificationsWW; K
)WWK L
{WWM N
NotificationsXX 
.XX 
AddRangeXX "
(XX" #
newNotificationsXX# 3
)XX3 4
;XX4 5
}YY 	
publicZZ 
voidZZ 
notificationPollZZ $
(ZZ$ %
)ZZ% &
{ZZ' (
}\\ 	
}__ 
}`` ö
ãC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\EmprendeUCR_WebApplication\Domain\OrderContext\Entities\GenericStatus.cs
	namespace		 	&
EmprendeUCR_WebApplication		
 $
.		$ %
Domain		% +
.		+ ,
OrderContext		, 8
.		8 9
Entities		9 A
{

 
public 

partial 
class 
GenericStatus &
{ 
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
private 
readonly 
List 
< 
Order #
># $

_orderList% /
;/ 0
public 
IReadOnlyCollection "
<" #
Order# (
>( )
Order* /
;/ 0
public 
Status 
status 
{ 
get "
;" #
set$ '
;' (
}) *
} 
} «N
ÉC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\EmprendeUCR_WebApplication\Domain\OrderContext\Entities\Order.cs
	namespace		 	&
EmprendeUCR_WebApplication		
 $
.		$ %
Domain		% +
.		+ ,
OrderContext		, 8
.		8 9
Entities		9 A
{

 
public 

partial 
class 
Order 
:  
AggregateRoot! .
{ 
public 
DateTime 
DateAndHourCreation +
{, -
get. 1
;1 2
set3 6
;6 7
}8 9
public 
string 
ClientEmail !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
string 
Details 
{ 
get  #
;# $
set% (
;( )
}* +
public 
DateTime 
DeliveryDate $
{% &
get' *
;* +
set, /
;/ 0
}1 2
public 
string 
DeliveryAddress %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
public 
string 
EntrepreneurEmail '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
public 
string 
State 
{ 
get !
;! "
set# &
;& '
}( )
public 
string 
PaymentName !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
Order 
( 
) 
{ 
} 
public 
Order 
( 
DateTime 
dateAndHourCreation 1
,1 2
string3 9
clientEmail: E
,E F
string 
details 
, 
string  &
deliveryAddress' 6
,6 7
DateTime8 @
deliveryDateA M
,M N
string 
entrepreneurEmail (
,( )
string* 0
state1 6
,6 7
string8 >
paymentName? J
)J K
{ 	
DateAndHourCreation 
=  !
dateAndHourCreation" 5
;5 6
ClientEmail 
= 
clientEmail %
;% &
Details 
= 
details 
; 
DeliveryAddress 
= 
deliveryAddress -
;- .
DeliveryDate   
=   
deliveryDate   '
;  ' (
EntrepreneurEmail!! 
=!! 
entrepreneurEmail!!  1
;!!1 2
State"" 
="" 
state"" 
;"" 
PaymentName## 
=## 
paymentName## %
;##% &
}$$ 	
public++ 
void++ 
setOrganized++  
(++  !
List++! %
<++% &
	Organized++& /
>++/ 0

organizeds++1 ;
)++; <
{++= >
	Organized,, 
=,, 

organizeds,, "
.,," #

AsReadOnly,,# -
(,,- .
),,. /
;,,/ 0
}-- 	
public55 
void55 
changeGlobalStatus55 &
(55& '
string55' -
	newStatus55. 7
)557 8
{559 :
foreach66 
(66 
var66 
	orderLine66 "
in66# %
	Organized66& /
)66/ 0
{77 
	orderLine88 
.88 
ChangeStatus88 %
(88% &
	newStatus88& /
)88/ 0
;880 1
}99 
this:: 
.:: 
State:: 
=:: 
	newStatus:: "
;::" #
};; 	
publicCC 
ListCC 
<CC 
OrderCC 
>CC "
SortEntrepreneurOrdersCC 1
(CC1 2
ListCC2 6
<CC6 7
OrderCC7 <
>CC< =
ordersCC> D
)CCD E
{DD 	
ordersEE 
=EE 
ordersEE 
.EE 
WhereEE !
(EE! "
orderEE" '
=>EE( *
orderEE+ 0
.EE0 1
StateEE1 6
!=EE7 9
$strEE: E
)EEE F
.FF 
OrderByDescendingFF "
(FF" #
orderFF# (
=>FF) +
orderFF, 1
.FF1 2
StateFF2 7
)FF7 8
.GG 
ConcatGG 
(GG 
ordersGG 
.GG 
WhereGG $
(GG$ %
orderGG% *
=>GG+ -
orderGG. 3
.GG3 4
StateGG4 9
==GG: <
$strGG= H
)GGH I
)GGI J
.HH 
ToListHH 
(HH 
)HH 
;HH 
returnJJ 
ordersJJ 
;JJ 
}KK 	
publicSS 
ListSS 
<SS 
OrderSS 
>SS 
SortClientOrdersSS +
(SS+ ,
ListSS, 0
<SS0 1
OrderSS1 6
>SS6 7
ordersSS8 >
)SS> ?
{TT 	
orders]] 
=]] 
orders]] 
.]] 
Where]] !
(]]! "
order]]" '
=>]]( *
order]]+ 0
.]]0 1
State]]1 6
==]]7 9
$str]]: N
||]]O Q
order]]R W
.]]W X
State]]X ]
==]]^ `
$str]]a n
)]]n o
.^^ 
OrderByDescending^^ "
(^^" #
order^^# (
=>^^) +
order^^, 1
.^^1 2
State^^2 7
)^^7 8
.__ 
Concat__ 
(__ 
orders__ 
.__ 
Where__ $
(__$ %
order__% *
=>__+ -
order__. 3
.__3 4
State__4 9
==__: <
$str__= G
)__G H
)__H I
.`` 
Concat`` 
(`` 
orders`` 
.`` 
Where`` $
(``$ %
order``% *
=>``+ -
order``. 3
.``3 4
State``4 9
==``: <
$str``= T
)``T U
)``U V
.aa 
Concataa 
(aa 
ordersaa 
.aa 
Whereaa $
(aa$ %
orderaa% *
=>aa+ -
orderaa. 3
.aa3 4
Stateaa4 9
==aa: <
$straa= H
)aaH I
)aaI J
.bb 
Concatbb 
(bb 
ordersbb 
.bb 
Wherebb $
(bb$ %
orderbb% *
=>bb+ -
orderbb. 3
.bb3 4
Statebb4 9
==bb: <
$strbb= H
)bbH I
)bbI J
.cc 
ToListcc 
(cc 
)cc 
;cc 
returnee 
ordersee 
;ee 
}ff 	
publichh 
voidhh 
ChangerOrderStatushh &
(hh& '
stringhh' -
	newStatushh. 7
)hh7 8
{ii 	
thisjj 
.jj 
Statejj 
=jj 
	newStatusjj "
;jj" #
ifkk 
(kk 
	newStatuskk 
==kk 
$strkk '
||kk( *
	newStatuskk+ 4
==kk5 7
$strkk8 C
)kkC D
{ll 
foreachmm 
(mm 
varmm 
	orderLinemm &
inmm' )
	Organizedmm* 3
)mm3 4
{nn 
	orderLineoo 
.oo 
ChangeStatusoo *
(oo* +
	newStatusoo+ 4
)oo4 5
;oo5 6
}pp 
}qq 
}rr 	
publictt 
voidtt 
changeProductStatustt '
(tt' (
stringtt( .
productStatustt/ <
,tt< =
inttt> A
CodeIdttB H
,ttH I
stringttJ P
EntrepreneurEmailttQ b
,ttc d
inttte h

CategoryIdtti s
)tts t
{uu 	
varvv 
productvv 
=vv 
	Organizedvv #
.vv# $
FirstOrDefaultvv$ 2
(vv2 3
pvv3 4
=>vv5 7
pvv8 9
.vv9 :
CodeIdvv: @
==vvA C
CodeIdvvD J
&&vvK M
pvvN O
.vvO P
EntrepreneurEmailvvP a
==vvb d
EntrepreneurEmailvve v
&&vvw y
pvvz {
.vv{ |

CategoryId	vv| Ü
==
vvá â

CategoryId
vvä î
)
vvî ï
;
vvï ñ
productww 
.ww 
ChangeStatusww  
(ww  !
productStatusww! .
)ww. /
;ww/ 0
}xx 	
publiczz 
Listzz 
<zz 
Orderzz 
>zz 
filterOrderszz '
(zz' (
Listzz( ,
<zz, -
Orderzz- 2
>zz2 3
ordersToFilterzz4 B
,zzB C
stringzzD J
statuszzK Q
)zzQ R
{{{ 	
return|| 
ordersToFilter|| !
.||! "
Where||" '
(||' (
item||( ,
=>||- /
item||0 4
.||4 5
State||5 :
==||; =
status||> D
)||D E
.||E F
ToList||F L
(||L M
)||M N
;||N O
}}} 	
private
ÅÅ 
readonly
ÅÅ 
List
ÅÅ 
<
ÅÅ 
	Organized
ÅÅ '
>
ÅÅ' (
_organizedList
ÅÅ) 7
;
ÅÅ7 8
public
ÇÇ !
IReadOnlyCollection
ÇÇ "
<
ÇÇ" #
	Organized
ÇÇ# ,
>
ÇÇ, -
	Organized
ÇÇ. 7
;
ÇÇ7 8
public
ÉÉ 
GenericStatus
ÉÉ 
genericStatus
ÉÉ *
{
ÉÉ+ ,
get
ÉÉ- 0
;
ÉÉ0 1
set
ÉÉ2 5
;
ÉÉ5 6
}
ÉÉ7 8
}
ÑÑ 
}ÖÖ ˘
áC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\EmprendeUCR_WebApplication\Domain\OrderContext\Entities\Organized.cs
	namespace

 	&
EmprendeUCR_WebApplication


 $
.

$ %
Domain

% +
.

+ ,
OrderContext

, 8
.

8 9
Entities

9 A
{ 
public 

partial 
class 
	Organized "
{ 
public 
int 
CodeId 
{ 
get 
;  
set! $
;$ %
}& '
public 
string 
EntrepreneurEmail '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
public 
int 

CategoryId 
{ 
get  #
;# $
set% (
;( )
}* +
public 
DateTime 
DateAndHourCreation +
{, -
get. 1
;1 2
set3 6
;6 7
}8 9
public 
string 
Email 
{ 
get !
;! "
set# &
;& '
}( )
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
public 
int 
Quantity 
{ 
get !
;! "
set# &
;& '
}( )
public 
DateTime 
DateOfChange $
{% &
get' *
;* +
set, /
;/ 0
}1 2
public 
	Organized 
( 
) 
{ 
} 
public 
	Organized 
( 
int 
codeId #
,# $
string% +
entrepreneurEmail, =
,= >
int? B

categoryIdC M
,M N
DateTime 
dateAndHourCreation ,
,, -
string. 4
email5 :
,: ;
string< B
nameC G
,G H
int 
quantity 
, 
DateTime &
dateOfChange' 3
,3 4
Order5 :
_order; A
)A B
{ 	
CodeId 
= 
codeId 
; 
EntrepreneurEmail 
= 
entrepreneurEmail  1
;1 2

CategoryId 
= 

categoryId #
;# $
DateAndHourCreation   
=    !
dateAndHourCreation  " 5
;  5 6
Email!! 
=!! 
email!! 
;!! 
Name"" 
="" 
name"" 
;"" 
Quantity## 
=## 
quantity## 
;##  
DateOfChange$$ 
=$$ 
dateOfChange$$ '
;$$' (
order%% 
=%% 
_order%% 
;%% 
}&& 	
public-- 
void-- 
ChangeStatus--  
(--  !
string--! '
	newStatus--( 1
)--1 2
{--2 3
Name.. 
=.. 
	newStatus.. 
;.. 
}// 	
public22 
Order22 
order22 
{22 
get22  
;22  !
set22" %
;22% &
}22' (
public33 
Status33 
status33 
{33 
get33 "
;33" #
set33$ '
;33' (
}33) *
public44 
ProductService44 
productService44 ,
{44- .
get44/ 2
;442 3
set444 7
;447 8
}449 :
}55 
}66 –
êC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\EmprendeUCR_WebApplication\Domain\OrderContext\Entities\PersonalizedStatus.cs
	namespace

 	&
EmprendeUCR_WebApplication


 $
.

$ %
Domain

% +
.

+ ,
OrderContext

, 8
.

8 9
Entities

9 A
{ 
public 

partial 
class 
PersonalizedStatus +
{ 
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
private 
readonly 
List 
< 
ProductHasStatus .
>. /!
_productHasStatusList0 E
;E F
public 
IReadOnlyCollection "
<" #
ProductHasStatus# 3
>3 4
ProductHasStatus5 E
;E F
public 
Status 
status 
{ 
get "
;" #
set$ '
;' (
}) *
} 
} ≤
éC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\EmprendeUCR_WebApplication\Domain\OrderContext\Entities\ProductHasStatus.cs
	namespace

 	&
EmprendeUCR_WebApplication


 $
.

$ %
Domain

% +
.

+ ,
OrderContext

, 8
.

8 9
Entities

9 A
{ 
public 

partial 
class 
ProductHasStatus )
{ 
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
public 
int 
CodeId 
{ 
get 
;  
set! $
;$ %
}& '
public 
string 
EntrepreneurEmail '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
public 
int 

CategoryId 
{ 
get  #
;# $
set% (
;( )
}* +
public 
int 
Order 
{ 
get 
; 
set  #
;# $
}% &
public 
ProductService 
productService ,
{- .
get/ 2
;2 3
set4 7
;7 8
}9 :
public 
PersonalizedStatus !
personalizedStatus" 4
{5 6
get7 :
;: ;
set< ?
;? @
}A B
} 
} ±
ÑC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\EmprendeUCR_WebApplication\Domain\OrderContext\Entities\Status.cs
	namespace 	&
EmprendeUCR_WebApplication
 $
.$ %
Domain% +
.+ ,
OrderContext, 8
.8 9
Entities9 A
{		 
public

 

class

 
Status

 
{ 
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
public 
string 
PreviousStateName '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
public 
Status 
previousStatus $
{% &
get' *
;* +
set, /
;/ 0
}1 2
public 
Status 
posteriorStatus %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
public 
PersonalizedStatus !
personalizedStatus" 4
{5 6
get7 :
;: ;
set< ?
;? @
}A B
public 
GenericStatus 
genericStatus *
{+ ,
get- 0
;0 1
set2 5
;5 6
}7 8
private 
readonly 
List 
< 
	Organized '
>' (
_organizedList) 7
;7 8
public 
IReadOnlyCollection "
<" #
	Organized# ,
>, -
	Organized. 7
;7 8
} 
} ⁄
zC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\EmprendeUCR_WebApplication\Domain\OrderContext\Order.cs
	namespace 	&
EmprendeUCR_WebApplication
 $
.$ %
Domain% +
.+ ,
OrderContext, 8
{ 
public 

class 
Order 
{		 
public

 
DateTime

 
DateAndHourCreation

 +
;

+ ,
public 
string 
Details 
; 
public 
DateTime 
DeliveryDate $
;$ %
public 
int 
CodeID 
; 
public 
String 
EntrepreneurEmail '
;' (
public 
int 

CategoryID 
; 
} 
} ú
~C:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\EmprendeUCR_WebApplication\Domain\OrderContext\Organized.cs
	namespace 	&
EmprendeUCR_WebApplication
 $
.$ %
Domain% +
.+ ,
OrderContext, 8
{ 
public 

class 
	Organized 
{		 
public

 
int

 
Quantity

 
;

 
public 
DateTime 
DateOfChange $
;$ %
} 
} ö
{C:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\EmprendeUCR_WebApplication\Domain\OrderContext\Status.cs
	namespace 	&
EmprendeUCR_WebApplication
 $
.$ %
Domain% +
.+ ,
OrderContext, 8
{ 
public 

class 
Status 
{		 
private 
string 
Name 
; 
private 
string 
PreviousStateName (
;( )
} 
} Æ
åC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\EmprendeUCR_WebApplication\Domain\Repositories\INotificationRepository.cs
	namespace 	&
EmprendeUCR_WebApplication
 $
.$ %
Domain% +
.+ ,
Repositories, 8
{ 
enum 
Users	 
{ 
NotUser 
, 
Client 
, 
Entrepeneur 
, 
Admin 
} 
public 

	interface #
INotificationRepository ,
:- .
IRepository/ :
<: ;
UserNotification; K
>K L
{ #
INotificationRepository 
Next  $
{% &
set' *
;* +
get, /
;/ 0
}1 2
void 
EventsSubscriptions  
(  !
UserNotification! 1
UserNotification2 B
)B C
;C D
virtual 
void 
GetNotifications %
(% &
UserNotification& 6
UserNotification7 G
)G H
{I J
}K L
virtual 
void $
GetNotificationsQuantity -
(- .
UserNotification. >
UserNotification? O
)O P
{Q R
}S T
void 
Unsubscription 
( 
UserNotification ,
UserNotification- =
)= >
;> ?
int 
GetProductsQuantity 
(  
UserNotification  0
UserNotification1 A
)A B
;B C
}%% 
}&& é
ÖC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\EmprendeUCR_WebApplication\Domain\Repositories\IOfferRepository.cs
	namespace 	&
EmprendeUCR_WebApplication
 $
.$ %
Domain% +
.+ ,
Repositories, 8
{ 
public 

	interface 
IOfferRepository %
:& '
IRepository( 3
<3 4
Offer4 9
>9 :
{ 
Task 
< 
List 
< 
Offer 
> 
> 
getOffersToShop )
() *
DateTime* 2
dateTime3 ;
); <
;< =
List 
< 
Offer 
> 
getOffersToOrder $
($ %
DateTime% -
dateTime. 6
)6 7
;7 8
} 
} ≈
ÖC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\EmprendeUCR_WebApplication\Domain\Repositories\IOrderRepository.cs
	namespace 	&
EmprendeUCR_WebApplication
 $
.$ %
Domain% +
.+ ,
Repositories, 8
{ 
public 

	interface 
IOrderRepository %
:& '
IRepository( 3
<3 4
Order4 9
>9 :
{ 
Task 
< 
List 
< 
Order 
> 
? 
> 
GetByIdAsync '
(' (
string( .
email/ 4
)4 5
;5 6
Task 
< 
List 
< 
Order 
> 
? 
> )
GetEntreprenurFinalizedOrders 8
(8 9
string9 ?
email@ E
)E F
;F G
Task 
< 
List 
< 
Order 
> 
? 
> 
GetAcceptedOrders ,
(, -
string- 3
email4 9
)9 :
;: ;
Task 
< 
List 
< 
Order 
> 
? 
>  
GetClientOrdersAsync /
(/ 0
string0 6
email7 <
)< =
;= >
List 
< 
Tuple 
< 
int 
, 
Product 
>  
>  !
GetProductsAsync" 2
(2 3
Order3 8
order9 >
)> ?
;? @
Task 
< 
List 
< 
Status 
> 
> 
GetOrderStatuses +
(+ ,
), -
;- .
Task 
SetProductStatuses 
(  
Product  '
product( /
,/ 0
List1 5
<5 6
Status6 <
>< =
statusesList> J
)J K
;K L
Task 
orderUpdate 
( 
Order 
orderToUpdate ,
), -
;- .
string 
defineColor 
( 
string !
status" (
)( )
;) *
Task 
< 
string 
> 
GetEntreprenurName '
(' (
string( .
email/ 4
)4 5
;5 6
} 
} Ì
åC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\EmprendeUCR_WebApplication\Domain\Repositories\IShoppingCartRepository.cs
	namespace 	&
EmprendeUCR_WebApplication
 $
.$ %
Domain% +
.+ ,
Repositories, 8
{ 
public 

	interface #
IShoppingCartRepository -
:. /
IRepository0 ;
<; <
ShoppingCart< H
>H I
{ 
Task 
	SaveAsync 
( 
ShoppingCart #
shoppingCart$ 0
)0 1
;1 2
Task 
< 
ShoppingCart 
? 
> 
GetByIdAsync (
(( )
string) /
email0 5
)5 6
;6 7
Task 

DeleteLine 
( 
ShopLine  
line! %
)% &
;& '
Task 
< 
List 
< 
Product_Photos  
>  !
>! "
	GetPhotos# ,
(, -
Product- 4
product5 <
)< =
;= >
Task 
SendRequest 
( 
ShoppingCart %
shop& *
,* +
string, 2
Details3 :
,: ;
string< B
DeliveryAddressC R
,R S
DateTime( 0
DeliveryDate1 =
,= >
string? E!
selectedPaymentMethodF [
)[ \
;\ ]
Task 
< 
Order 
> 
CreateOrder 
(  
ShoppingCart  ,
shop- 1
,1 2
string3 9
Details: A
,A B
stringC I
DeliveryAddressJ Y
,Y Z
DateTime( 0
DeliveryDate1 =
,= >
string? E!
selectedPaymentMethodF [
)[ \
;\ ]
} 
}  
çC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\EmprendeUCR_WebApplication\Domain\ShoppingCartContext\Entities\ShopLine.cs
	namespace		 	&
EmprendeUCR_WebApplication		
 $
.		$ %
Domain		% +
.		+ ,
ShoppingCartContext		, ?
.		? @
Entities		@ H
{

 
public 

partial 
class 
ShopLine !
{ 
public 
string 
Email 
{ 
get !
;! "
set# &
;& '
}( )
public 
int 
CodeId 
{ 
get 
;  
set! $
;$ %
}& '
public 
string 
EntrepreneurEmail '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
public 
int 

CategoryId 
{ 
get  #
;# $
set% (
;( )
}* +
public 
ShoppingCart 
shoppingCart (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
public 
Product 
product 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
int 
Quantity 
{ 
get !
;! "
set# &
;& '
}( )
=* +
$num, -
;- .
} 
} Û
ëC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\EmprendeUCR_WebApplication\Domain\ShoppingCartContext\Entities\ShoppingCart.cs
	namespace		 	&
EmprendeUCR_WebApplication		
 $
.		$ %
Domain		% +
.		+ ,
ShoppingCartContext		, ?
.		? @
Entities		@ H
{

 
public 

partial 
class 
ShoppingCart %
:& '
AggregateRoot( 5
{ 
private 
readonly 
List 
< 
ShopLine &
>& '

_shopLines( 2
;2 3
public 
string 
Email 
{ 
get !
;! "
set# &
;& '
}( )
public 
IReadOnlyCollection "
<" #
ShopLine# +
>+ ,
	ShopLines- 6
=>7 9

_shopLines: D
.D E

AsReadOnlyE O
(O P
)P Q
;Q R
internal 
void )
DeleteProductFromShoppingCart 3
(3 4
ShopLine4 <
shopLine= E
)E F
{ 	
if 
( 

_shopLines 
. 
Exists !
(! "
p" #
=>$ &
p' (
==) +
shopLine, 4
)4 5
)5 6
{ 

_shopLines 
. 
Remove !
(! "
shopLine" *
)* +
;+ ,
} 
} 	
internal%% 
void%%  
eraseAllProductLines%% *
(%%* +
)%%+ ,
{%%- .
foreach&& 
(&& 
var&& 
shopLine&& !
in&&" $
	ShopLines&&% .
)&&. /
{&&0 1)
DeleteProductFromShoppingCart'' -
(''- .
shopLine''. 6
)''6 7
;''7 8
}(( 
})) 	
}** 
}++ ÷y
óC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\EmprendeUCR_WebApplication\Infrastructure\BillContext\Implementations\PdfCreation.cs
	namespace 	&
EmprendeUCR_WebApplication
 $
.$ %
Infrastructure% 3
.3 4
BillContext4 ?
.? @
Implementations@ O
{ 
public 

class 
PdfCreation 
: 
IPdfCreation +
{ 
public 
byte 
[ 
] 
Generate 
( 

IJSRuntime )
js* ,
,, -
Order. 3
order4 9
,9 :
List; ?
<? @
Tuple@ E
<E F
intF I
,I J
ProductK R
>R S
>S T
productsU ]
,] ^
string_ e
entrepreneurNamef v
,v w
stringx ~

clientName	 â
)
â ä
{ 	
var 
memoryStream 
= 
new "
MemoryStream# /
(/ 0
)0 1
;1 2
float 
	margeLeft 
= 
$num "
;" #
float 

margeRight 
= 
$num #
;# $
float 
margeTop 
= 
$num !
;! "
float 
margeBottom 
= 
$num  $
;$ %
Document!! 
pdf!! 
=!! 
new!! 
Document!! '
(!!' (
PageSize""$ ,
."", -
A4""- /
,""/ 0
	margeLeft##$ -
.##- .
ToDpi##. 3
(##3 4
)##4 5
,##5 6

margeRight$$$ .
.$$. /
ToDpi$$/ 4
($$4 5
)$$5 6
,$$6 7
margeTop%%$ ,
.%%, -
ToDpi%%- 2
(%%2 3
)%%3 4
,%%4 5
margeBottom&&$ /
.&&/ 0
ToDpi&&0 5
(&&5 6
)&&6 7
)''# $
;''$ %
pdf)) 
.)) 
AddTitle)) 
()) 
$str)) %
)))% &
;))& '
pdf** 
.** 
	AddAuthor** 
(** 
$str** .
)**. /
;**/ 0
pdf++ 
.++ 
AddCreationDate++ 
(++  
)++  !
;++! "
pdf,, 
.,, 
AddKeywords,, 
(,, 
$str,, $
),,$ %
;,,% &
pdf-- 
.-- 

AddSubject-- 
(-- 
$str-- 9
)--9 :
;--: ;
	PdfWriter// 
writer// 
=// 
	PdfWriter// (
.//( )
GetInstance//) 4
(//4 5
pdf//5 8
,//8 9
memoryStream//: F
)//F G
;//G H
var00 
	fontStyle00 
=00 
FontFactory00 '
.00' (
GetFont00( /
(00/ 0
$str000 7
,007 8
$num009 ;
,00; <
	BaseColor00= F
.00F G
White00G L
)00L M
;00M N
var11 
labelHeader11 
=11 
new11 !
Chunk11" '
(11' (
$str11( =
,11= >
	fontStyle11? H
)11H I
;11I J
HeaderFooter22 
header22 
=22  !
new22" %
HeaderFooter22& 2
(222 3
new223 6
Phrase227 =
(22= >
labelHeader22> I
)22I J
,22J K
false22L Q
)22Q R
{33 
BackgroundColor44 
=44  !
new44" %
	BaseColor44& /
(44/ 0
$num440 2
,442 3
$num444 6
,446 7
$num448 ;
)44; <
,44< =
	Alignment55 
=55 
Element55 #
.55# $
ALIGN_CENTER55$ 0
,550 1
Border66 
=66 
	Rectangle66 "
.66" #
	NO_BORDER66# ,
}77 
;77 
pdf88 
.88 
Header88 
=88 
header88 
;88  
var:: 
labelFooter:: 
=:: 
new:: !
Chunk::" '
(::' (
$str::( .
,::. /
	fontStyle::0 9
)::9 :
;::: ;
HeaderFooter;; 
footer;; 
=;;  !
new;;" %
HeaderFooter;;& 2
(;;2 3
new;;3 6
Phrase;;7 =
(;;= >
labelFooter;;> I
);;I J
,;;J K
true;;L P
);;P Q
{<< 
Border== 
=== 
	Rectangle== "
.==" #
	NO_BORDER==# ,
,==, -
	Alignment>> 
=>> 
Element>> #
.>># $
ALIGN_RIGHT>>$ /
}?? 
;?? 
pdf@@ 
.@@ 
Footer@@ 
=@@ 
footer@@ 
;@@  
pdfBB 
.BB 
OpenBB 
(BB 
)BB 
;BB 
	PageTableDD 
(DD 
pdfDD 
,DD 
writerDD !
,DD! "
orderDD# (
,DD( )
productsDD* 2
,DD2 3

clientNameDD4 >
,DD> ?
entrepreneurNameDD@ P
)DDP Q
;DDQ R
pdfFF 
.FF 
CloseFF 
(FF 
)FF 
;FF 
returnHH 
memoryStreamHH 
.HH  
ToArrayHH  '
(HH' (
)HH( )
;HH) *
}II 	
privateRR 
voidRR 
	PageTableRR 
(RR 
DocumentRR '
pdfRR( +
,RR+ ,
	PdfWriterRR- 6
writerRR7 =
,RR= >
OrderRR? D
orderRRE J
,RRJ K
ListRRL P
<RRP Q
TupleRRQ V
<RRV W
intRRW Z
,RRZ [
ProductSS &
>SS& '
>SS' (
productsSS) 1
,SS1 2
stringSS3 9
entrepreneurNameSS: J
,SSJ K
stringSSL R

clientNameSSS ]
)SS] ^
{TT 	
varUU 
newLineUU 
=UU 
newUU 
	ParagraphUU '
(UU' (
$strUU( @
+UUA B
DateTimeUUC K
.UUK L
NowUUL O
.UUO P
ToStringUUP X
(UUX Y
$strUUY e
)UUe f
,UUf g
newUUh k
FontUUl p
(UUp q
FontUUq u
.UUu v
	HELVETICAUUv 
,	UU Ä
$num
UUÅ É
,
UUÉ Ñ
Font
UUÖ â
.
UUâ ä
BOLD
UUä é
)
UUé è
)
UUè ê
;
UUê ë
pdfVV 
.VV 
AddVV 
(VV 
newLineVV 
)VV 
;VV 
createSectionsXX 
(XX 
pdfXX 
,XX 
writerXX  &
,XX& '
orderXX( -
,XX- .
productsXX/ 7
,XX7 8
entrepreneurNameXX9 I
,XXI J

clientNameXXK U
,XXV W
newLineXXX _
)XX_ `
;XX` a
TableZZ 
	datatableZZ 
=ZZ 
newZZ !
TableZZ" '
(ZZ' (
$numZZ( )
)ZZ) *
;ZZ* +
createTable[[ 
([[ 
	datatable[[ !
,[[! "
products[[" *
,[[* +
newLine[[+ 2
,[[2 3
pdf[[3 6
)[[6 7
;[[7 8
}\\ 	
privateff 
staticff 
voidff 
createSectionsff *
(ff* +
Documentff+ 3
pdfff4 7
,ff7 8
	PdfWriterff9 B
writerffC I
,ffI J
OrderffK P
orderffQ V
,ffV W
ListffX \
<ff\ ]
Tupleff] b
<ffb c
intffc f
,fff g
Productffh o
>ffo p
>ffp q
productsffr z
,ffz {
stringgg+ 1
entrepreneurNamegg2 B
,ggB C
stringggD J

clientNameggK U
,ggU V
	ParagraphggW `
newLinegga h
)ggh i
{hh 	
newLineii 
=ii 
newii 
	Paragraphii #
(ii# $
$strii$ >
+ii? @
orderiiA F
.iiF G
EntrepreneurEmailiiG X
,iiX Y
newiiZ ]
Fontii^ b
(iib c
Fontiic g
.iig h
	HELVETICAiih q
,iiq r
$numiis u
,iiu v
Fontiiw {
.ii{ |
BOLD	ii| Ä
)
iiÄ Å
)
iiÅ Ç
;
iiÇ É
pdfjj 
.jj 
Addjj 
(jj 
newLinejj 
)jj 
;jj 
newLinekk 
=kk 
newkk 
	Paragraphkk #
(kk# $
$strkk$ >
+kk? @
entrepreneurNamekkA Q
,kkQ R
newkkS V
FontkkW [
(kk[ \
Fontkk\ `
.kk` a
	HELVETICAkka j
,kkj k
$numkkl n
,kkn o
Fontkkp t
.kkt u
BOLDkku y
)kky z
)kkz {
;kk{ |
pdfll 
.ll 
Addll 
(ll 
newLinell 
)ll 
;ll 
newLinenn 
=nn 
newnn 
	Paragraphnn #
(nn# $
$strnn$ :
+nn; <
ordernn= B
.nnB C
ClientEmailnnC N
,nnN O
newnnP S
FontnnT X
(nnX Y
FontnnY ]
.nn] ^
	HELVETICAnn^ g
,nng h
$numnni k
,nnk l
Fontnnm q
.nnq r
BOLDnnr v
)nnv w
)nnw x
;nnx y
pdfoo 
.oo 
Addoo 
(oo 
newLineoo 
)oo 
;oo 
newLinepp 
=pp 
newpp 
	Paragraphpp #
(pp# $
$strpp$ :
+pp; <

clientNamepp= G
,ppG H
newppI L
FontppM Q
(ppQ R
FontppR V
.ppV W
	HELVETICAppW `
,pp` a
$numppb d
,ppd e
Fontppf j
.ppj k
BOLDppk o
)ppo p
)ppp q
;ppq r
pdfqq 
.qq 
Addqq 
(qq 
newLineqq 
)qq 
;qq 
newLiness 
=ss 
newss 
	Paragraphss #
(ss# $
$strss$ 6
+ss7 8
orderss9 >
.ss> ?
PaymentNamess? J
,ssJ K
newssL O
FontssP T
(ssT U
FontssU Y
.ssY Z
	HELVETICAssZ c
,ssc d
$numsse g
,ssg h
Fontssi m
.ssm n
BOLDssn r
)ssr s
)sss t
;sst u
pdftt 
.tt 
Addtt 
(tt 
newLinett 
)tt 
;tt 
}uu 	
private}} 
static}} 
void}} 
createTable}} '
(}}( )
Table}}* /
	datatable}}0 9
,}}: ;
List}}< @
<}}@ A
Tuple}}A F
<}}F G
int}}G J
,}}J K
Product}}K R
>}}R S
>}}S T
products}}U ]
,}}^ _
	Paragraph}}` i
newLine}}j q
,}}r s
Document}}t |
pdf	}}} Ä
)
}}Ä Å
{~~ 	
	datatable 
. 
Padding 
= 
$num  !
;! "
	datatable
ÄÄ 
.
ÄÄ 
Spacing
ÄÄ 
=
ÄÄ 
$num
ÄÄ  !
;
ÄÄ! "
float
ÇÇ 
[
ÇÇ 
]
ÇÇ 
headerwidths
ÇÇ  
=
ÇÇ! "
{
ÇÇ# $
$num
ÇÇ% '
,
ÇÇ' (
$num
ÇÇ) +
,
ÇÇ+ ,
$num
ÇÇ- /
,
ÇÇ/ 0
$num
ÇÇ1 3
}
ÇÇ4 5
;
ÇÇ5 6
	datatable
ÑÑ 
.
ÑÑ 
Widths
ÑÑ 
=
ÑÑ 
headerwidths
ÑÑ +
;
ÑÑ+ ,
	datatable
ÖÖ 
.
ÖÖ (
DefaultHorizontalAlignment
ÖÖ 0
=
ÖÖ1 2
Element
ÖÖ3 :
.
ÖÖ: ;

ALIGN_LEFT
ÖÖ; E
;
ÖÖE F
	datatable
áá 
.
áá 
AddCell
áá 
(
áá 
$str
áá '
)
áá' (
;
áá( )
	datatable
àà 
.
àà 
AddCell
àà 
(
àà 
$str
àà (
)
àà( )
;
àà) *
	datatable
ââ 
.
ââ 
AddCell
ââ 
(
ââ 
$str
ââ &
)
ââ& '
;
ââ' (
	datatable
ää 
.
ää 
AddCell
ää 
(
ää 
$str
ää ,
)
ää, -
;
ää- .
int
åå 
totalPriceLine
åå 
=
åå  
$num
åå! "
;
åå" #
int
çç 

totalPrice
çç 
=
çç 
$num
çç 
;
çç 
int
éé 
price
éé 
=
éé 
$num
éé 
;
éé 
int
èè 
quantity
èè 
=
èè 
$num
èè 
;
èè 
foreach
ëë 
(
ëë 
var
ëë 
productLine
ëë $
in
ëë% '
products
ëë( 0
)
ëë0 1
{
íí 
price
ìì 
=
ìì 
productLine
ìì #
.
ìì# $
Item2
ìì$ )
.
ìì) *
currentPrice
ìì* 6
;
ìì6 7
quantity
îî 
=
îî 
productLine
îî &
.
îî& '
Item1
îî' ,
;
îî, -
totalPriceLine
ïï 
=
ïï  
price
ïï! &
*
ïï' (
quantity
ïï) 1
;
ïï1 2

totalPrice
ññ 
+=
ññ 
totalPriceLine
ññ ,
;
ññ, -
	datatable
óó 
.
óó 
AddCell
óó !
(
óó! "
productLine
óó" -
.
óó- .
Item2
óó. 3
.
óó3 4
ProductName
óó4 ?
)
óó? @
;
óó@ A
	datatable
òò 
.
òò 
AddCell
òò !
(
òò! "
quantity
òò" *
.
òò* +
ToString
òò+ 3
(
òò3 4
)
òò4 5
)
òò5 6
;
òò6 7
	datatable
ôô 
.
ôô 
AddCell
ôô !
(
ôô! "
price
ôô" '
.
ôô' (
ToString
ôô( 0
(
ôô0 1
)
ôô1 2
)
ôô2 3
;
ôô3 4
	datatable
öö 
.
öö 
AddCell
öö !
(
öö! "
totalPriceLine
öö" 0
.
öö0 1
ToString
öö1 9
(
öö9 :
)
öö: ;
)
öö; <
;
öö< =
}
õõ 
pdf
ùù 
.
ùù 
Add
ùù 
(
ùù 
	datatable
ùù 
)
ùù 
;
ùù 
newLine
üü 
=
üü 
new
üü 
	Paragraph
üü #
(
üü# $
$str
üü$ >
+
üü? @

totalPrice
üüA K
,
üüK L
new
üüM P
Font
üüQ U
(
üüU V
Font
üüV Z
.
üüZ [
	HELVETICA
üü[ d
,
üüd e
$num
üüf h
,
üüh i
Font
üüj n
.
üün o
BOLD
üüo s
)
üüs t
)
üüt u
;
üüu v
pdf
†† 
.
†† 
Add
†† 
(
†† 
newLine
†† 
)
†† 
;
†† 
}
°° 	
}
¢¢ 
}££ ∏
àC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\EmprendeUCR_WebApplication\Infrastructure\BillContext\IPdfCreation.cs
	namespace 	&
EmprendeUCR_WebApplication
 $
.$ %
Infrastructure% 3
.3 4
BillContext4 ?
{ 
public		 

	interface		 
IPdfCreation		 !
{

 
public 
byte 
[ 
] 
Generate 
( 

IJSRuntime )
js* ,
,, -
Order. 3
order4 9
,9 :
List; ?
<? @
Tuple@ E
<E F
intF I
,I J
ProductK R
>R S
>S T
productsU ]
,] ^
string_ e
entrepreneurNamef v
,v w
stringx ~

clientName	 â
)
â ä
;
ä ã
} 
} Ô"
âC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\EmprendeUCR_WebApplication\Infrastructure\Core\ApplicationDbContext.cs
	namespace

 	
Lab2


 
.

 
Infrastructure

 
.

 
Core

 "
{ 
public 

class  
ApplicationDbContext %
:& '
	DbContext( 1
,1 2
IUnitOfWork3 >
{ 
private 
readonly 
ILogger  
<  ! 
ApplicationDbContext! 5
>5 6
_logger7 >
;> ?
private !
IDbContextTransaction %
?% &
_currentTransaction' :
;: ;
public !
IDbContextTransaction $
?$ %!
GetCurrentTransaction& ;
(; <
)< =
=>> @
_currentTransactionA T
;T U
public 
bool  
HasActiveTransaction (
=>) +
_currentTransaction, ?
!=@ B
nullC G
;G H
public  
ApplicationDbContext #
(# $
DbContextOptions$ 4
options5 <
,< =
ILogger> E
<E F 
ApplicationDbContextF Z
>Z [
logger\ b
)b c
: 
base 
( 
options 
) 
{ 	
_logger 
= 
logger 
; 
} 	
public 
async 
Task 
SaveEntitiesAsync +
(+ ,
CancellationToken, =
cancellationToken> O
=P Q
defaultR Y
(Y Z
CancellationTokenZ k
)k l
)l m
{ 	
await 
base 
. 
SaveChangesAsync '
(' (
cancellationToken( 9
)9 :
;: ;
}   	
public"" 
async"" 
Task"" !
BeginTransactionAsync"" /
(""/ 0
)""0 1
{## 	
if$$ 
($$ 
_currentTransaction$$ #
!=$$$ &
null$$' +
)$$+ ,
return$$- 3
;$$3 4
_currentTransaction&& 
=&&  !
await&&" '
Database&&( 0
.&&0 1!
BeginTransactionAsync&&1 F
(&&F G
)&&G H
;&&H I
}'' 	
public)) 
async)) 
Task)) "
CommitTransactionAsync)) 0
())0 1
)))1 2
{** 	
if++ 
(++ 
_currentTransaction++ #
==++$ &
null++' +
)+++ ,
throw++- 2
new++3 6%
InvalidOperationException++7 P
(++P Q
$"++Q S
$str++S s
"++s t
)++t u
;++u v
try-- 
{.. 
await// 
SaveChangesAsync// &
(//& '
)//' (
;//( )
await00 
_currentTransaction00 )
.00) *
CommitAsync00* 5
(005 6
)006 7
;007 8
}11 
catch22 
{33 
RollbackTransaction44 #
(44# $
)44$ %
;44% &
throw55 
;55 
}66 
finally77 
{88 
if99 
(99 
_currentTransaction99 '
!=99( *
null99+ /
)99/ 0
{:: 
_currentTransaction;; '
.;;' (
Dispose;;( /
(;;/ 0
);;0 1
;;;1 2
_currentTransaction<< '
=<<( )
null<<* .
;<<. /
}== 
}>> 
}?? 	
publicAA 
voidAA 
RollbackTransactionAA '
(AA' (
)AA( )
{BB 	
tryCC 
{DD 
_currentTransactionEE #
?EE# $
.EE$ %
RollbackEE% -
(EE- .
)EE. /
;EE/ 0
}FF 
finallyGG 
{HH 
ifII 
(II 
_currentTransactionII '
!=II( *
nullII+ /
)II/ 0
{JJ 
_currentTransactionKK '
.KK' (
DisposeKK( /
(KK/ 0
)KK0 1
;KK1 2
_currentTransactionLL '
=LL( )
nullLL* .
;LL. /
}MM 
}NN 
}OO 	
}PP 
}QQ ã
éC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\EmprendeUCR_WebApplication\Infrastructure\Core\EntityMappings\ProductMap.cs
	namespace		 	&
EmprendeUCR_WebApplication		
 $
.		$ %
Infrastructure		% 3
.		3 4
Core		4 8
.		8 9
EntityMappings		9 G
{

 
public 

class 

ProductMap 
: $
IEntityTypeConfiguration 6
<6 7
Product7 >
>> ?
{ 
public 
void 
	Configure 
( 
EntityTypeBuilder /
</ 0
Product0 7
>7 8
builder9 @
)@ A
{ 	
builder 
. 
ToTable 
( 
$str %
)% &
;& '
builder 
. 
Property 
( 
e 
=> !
e" #
.# $
ProductDescription$ 6
)6 7
. 
HasMaxLength 
( 
$num !
)! "
. 
HasColumnName 
( 
$str 4
)4 5
;5 6
builder 
. 
Property 
( 
e 
=> !
e" #
.# $
ProductName$ /
)/ 0
. 

IsRequired 
( 
) 
. 
HasMaxLength 
( 
$num !
)! "
. 
HasColumnName 
( 
$str -
)- .
;. /
builder 
. 
HasMany 
( 
e 
=>  
e! "
." #
ShoppingCartHas# 2
)2 3
. 
WithOne 
( 
c 
=>  
c! "
." #
product# *
!* +
)+ ,
;, -
} 	
} 
} ©
ïC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\EmprendeUCR_WebApplication\Infrastructure\Core\EntityMappings\ProductServiceMap.cs
	namespace		 	&
EmprendeUCR_WebApplication		
 $
.		$ %
Infrastructure		% 3
.		3 4
Core		4 8
.		8 9
EntityMappings		9 G
{

 
public 

class 
ProductServiceMap "
:# $$
IEntityTypeConfiguration% =
<= >
ProductService> L
>L M
{ 
public 
void 
	Configure 
( 
EntityTypeBuilder /
</ 0
ProductService0 >
>> ?
builder@ G
)G H
{ 	
builder 
. 
HasKey 
( 
e 
=> 
new  #
{$ %
e& '
.' (
CodeId( .
,. /
e0 1
.1 2
EntrepreneurEmail2 C
,C D
eE F
.F G

CategoryIdG Q
}R S
)S T
;T U
builder 
. 
ToTable 
( 
$str -
)- .
;. /
builder 
. 
Property 
( 
e 
=> !
e" #
.# $
CodeId$ *
)* +
. 
ValueGeneratedOnAdd $
($ %
)% &
. 
HasColumnName 
( 
$str (
)( )
;) *
builder 
. 
Property 
( 
e 
=> !
e" #
.# $
EntrepreneurEmail$ 5
)5 6
. 
HasMaxLength 
( 
$num !
)! "
. 
	IsUnicode 
( 
false  
)  !
. 
HasColumnName 
( 
$str 3
)3 4
;4 5
builder 
. 
Property 
( 
e 
=> !
e" #
.# $

CategoryId$ .
). /
./ 0
HasColumnName0 =
(= >
$str> K
)K L
;L M
builder 
. 
Property 
( 
e 
=> !
e" #
.# $
Availability$ 0
)0 1
.1 2
HasDefaultValueSql2 D
(D E
$strE L
)L M
;M N
builder$$ 
.$$ 
HasIndex$$ 
($$ 
t$$ 
=>$$ !
new$$" %
{$$& '
t$$( )
.$$) *
CodeId$$* 0
,$$0 1
t$$2 3
.$$3 4
EntrepreneurEmail$$4 E
,$$E F
t$$G H
.$$H I

CategoryId$$I S
}$$T U
)$$U V
.%% 
IsUnique%% 
(%% 
)%% 
;%% 
}'' 	
}(( 
})) Ó
éC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\EmprendeUCR_WebApplication\Infrastructure\Core\EntityMappings\ServiceMap.cs
	namespace		 	&
EmprendeUCR_WebApplication		
 $
.		$ %
Infrastructure		% 3
.		3 4
Core		4 8
.		8 9
EntityMappings		9 G
{

 
public 

class 

ServiceMap 
: $
IEntityTypeConfiguration 6
<6 7
Service7 >
>> ?
{ 
public 
void 
	Configure 
( 
EntityTypeBuilder /
</ 0
Service0 7
>7 8
builder9 @
)@ A
{ 	
builder 
. 
ToTable 
( 
$str %
)% &
;& '
builder 
. 
Property 
( 
e 
=> !
e" #
.# $
PricePerHour$ 0
)0 1
.1 2
HasColumnName2 ?
(? @
$str@ P
)P Q
;Q R
builder 
. 
Property 
( 
e 
=> !
e" #
.# $
ServiceDescription$ 6
)6 7
. 
HasMaxLength 
( 
$num !
)! "
. 
	IsUnicode 
( 
false  
)  !
. 
HasColumnName 
( 
$str 4
)4 5
;5 6
builder 
. 
Property 
( 
e 
=> !
e" #
.# $
ServiceName$ /
)/ 0
. 

IsRequired 
( 
) 
. 
HasMaxLength 
( 
$num !
)! "
. 
	IsUnicode 
( 
false  
)  !
. 
HasColumnName 
( 
$str -
)- .
;. /
} 	
} 
}   ﬁ
õC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\EmprendeUCR_WebApplication\Infrastructure\Core\OfferContext\EntityMappings\IsOfferMap.cs
	namespace 	&
EmprendeUCR_WebApplication
 $
.$ %
Infrastructure% 3
.3 4
Core4 8
.8 9
OfferContext9 E
.E F
EntityMappingsF T
{ 
public 

class 

IsOfferMap 
: $
IEntityTypeConfiguration 6
<6 7
IsOffer7 >
>> ?
{ 
public 
void 
	Configure 
( 
EntityTypeBuilder /
</ 0
IsOffer0 7
>7 8
builder9 @
)@ A
{ 	
builder 
. 
HasKey 
( 
e 
=> 
new  #
{$ %
e& '
.' (
OfferId( /
,/ 0
e1 2
.2 3
CodeId3 9
,9 :
e; <
.< =
	UserEmail= F
,F G
eH I
.I J

CategoryIdJ T
}U V
)V W
;W X
builder 
. 
ToTable 
( 
$str &
)& '
;' (
builder 
. 
Property 
( 
e 
=> !
e" #
.# $
OfferId$ +
)+ ,
., -
HasColumnName- :
(: ;
$str; E
)E F
;F G
builder!! 
.!! 
Property!! 
(!! 
e!! 
=>!! !
e!!" #
.!!# $
CodeId!!$ *
)!!* +
.!!+ ,
HasColumnName!!, 9
(!!9 :
$str!!: C
)!!C D
;!!D E
builder## 
.## 
Property## 
(## 
e## 
=>## !
e##" #
.### $
	UserEmail##$ -
)##- .
.$$ 
HasMaxLength$$ 
($$ 
$num$$ !
)$$! "
.%% 
	IsUnicode%% 
(%% 
false%%  
)%%  !
.&& 
HasColumnName&& 
(&& 
$str&& +
)&&+ ,
;&&, -
builder(( 
.(( 
Property(( 
((( 
e(( 
=>(( !
e((" #
.((# $

CategoryId(($ .
)((. /
.((/ 0
HasColumnName((0 =
(((= >
$str((> K
)((K L
;((L M
builder** 
.** 
Property** 
(** 
e** 
=>** !
e**" #
.**# $
Amount**$ *
)*** +
.**+ ,
HasDefaultValueSql**, >
(**> ?
$str**? F
)**F G
;**G H
builder,, 
.,, 
HasOne,, 
(,, 
d,, 
=>,, 
d,,  !
.,,! "
Offer,," '
),,' (
.-- 
WithMany-- 
(-- 
p-- 
=>-- 
p--  
.--  !
IsOffers--! )
)--) *
... 
HasForeignKey.. 
(.. 
d..  
=>..! #
d..$ %
...% &
OfferId..& -
)..- .
;... /
}// 	
}00 
}11 –
ôC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\EmprendeUCR_WebApplication\Infrastructure\Core\OfferContext\EntityMappings\OfferMap.cs
	namespace 	&
EmprendeUCR_WebApplication
 $
.$ %
Infrastructure% 3
.3 4
Core4 8
.8 9
OfferContext9 E
.E F
EntityMappingsF T
{ 
public 

class 
OfferMap 
: $
IEntityTypeConfiguration 4
<4 5
Offer5 :
>: ;
{ 
public 
void 
	Configure 
( 
EntityTypeBuilder /
</ 0
Offer0 5
>5 6
builder7 >
)> ?
{ 	
builder 
. 
ToTable 
( 
$str #
)# $
;$ %
builder 
. 
HasKey 
( 
e 
=> 
new  #
{$ %
e& '
.' (
OfferId( /
}0 1
)1 2
;2 3
builder 
. 
Property 
( 
e 
=> !
e" #
.# $
OfferId$ +
)+ ,
., -
HasColumnName- :
(: ;
$str; E
)E F
;F G
builder!! 
.!! 
Property!! 
(!! 
e!! 
=>!! !
e!!" #
.!!# $

ExpireDate!!$ .
)!!. /
."" 
HasColumnType"" 
("" 
$str"" %
)""% &
.## 
HasColumnName## 
(## 
$str## ,
)##, -
;##- .
builder%% 
.%% 
Property%% 
(%% 
e%% 
=>%% !
e%%" #
.%%# $
InitialDate%%$ /
)%%/ 0
.&& 
HasColumnType&& 
(&& 
$str&& %
)&&% &
.'' 
HasColumnName'' 
('' 
$str'' -
)''- .
;''. /
builder)) 
.)) 
Property)) 
()) 
e)) 
=>)) !
e))" #
.))# $
OfferDescription))$ 4
)))4 5
.** 
HasMaxLength** 
(** 
$num** !
)**! "
.++ 
	IsUnicode++ 
(++ 
false++  
)++  !
.,, 
HasColumnName,, 
(,, 
$str,, 2
),,2 3
;,,3 4
}-- 	
}.. 
}// ¶
êC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\EmprendeUCR_WebApplication\Infrastructure\Core\OfferContext\OfferDbContext.cs
	namespace 	&
EmprendeUCR_WebApplication
 $
.$ %
Infrastructure% 3
.3 4
Core4 8
.8 9
OfferContext9 E
{ 
public 

partial 
class 
OfferDbContext '
:( ) 
ApplicationDbContext* >
{ 
public 
OfferDbContext 
( 
DbContextOptions .
<. /
OfferDbContext/ =
>= >
options? F
,F G
ILoggerH O
<O P
OfferDbContextP ^
>^ _
logger` f
)f g
: 
base 
( 
options 
, 
logger "
)" #
{ 	
} 	
	protected 
override 
void 
OnConfiguring  -
(- .#
DbContextOptionsBuilder. E
optionsBuilderF T
)T U
{ 	
optionsBuilder 
. 
LogTo  
(  !
message! (
=>) +
Debug, 1
.1 2
	WriteLine2 ;
(; <
message< C
)C D
)D E
;E F
} 	
public   
virtual   
DbSet   
<   
IsOffer   $
>  $ %
IsOffers  & .
{  / 0
get  1 4
;  4 5
set  6 9
;  9 :
}  ; <
public!! 
virtual!! 
DbSet!! 
<!! 
Offer!! "
>!!" #
Offers!!$ *
{!!+ ,
get!!- 0
;!!0 1
set!!2 5
;!!5 6
}!!7 8
	protected"" 
override"" 
void"" 
OnModelCreating""  /
(""/ 0
ModelBuilder""0 <
modelBuilder""= I
)""I J
{## 	
base%% 
.%% 
OnModelCreating%%  
(%%  !
modelBuilder%%! -
)%%- .
;%%. /
modelBuilder&& 
.&& 
ApplyConfiguration&& +
(&&+ ,
new&&, /

IsOfferMap&&0 :
(&&: ;
)&&; <
)&&< =
;&&= >
modelBuilder'' 
.'' 
ApplyConfiguration'' +
(''+ ,
new'', /
OfferMap''0 8
(''8 9
)''9 :
)'': ;
;''; <
}(( 	
})) 
}** π
ûC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\EmprendeUCR_WebApplication\Infrastructure\Core\OfferContext\Repositories\OfferRepository.cs
	namespace 	&
EmprendeUCR_WebApplication
 $
.$ %
Infrastructure% 3
.3 4
Core4 8
.8 9
OfferContext9 E
.E F
RepositoriesF R
{ 
public 

class 
OfferRepository  
:! "
IOfferRepository# 3
{ 
private 
readonly 
OfferDbContext '

_dbContext( 2
;2 3
public 
IUnitOfWork 

UnitOfWork %
=>& (

_dbContext) 3
;3 4
public 
OfferRepository 
( 
OfferDbContext -

unitOfWork. 8
)8 9
{ 	

_dbContext   
=   

unitOfWork   #
;  # $
}!! 	
public)) 
async)) 
Task)) 
<)) 
List)) 
<)) 
Offer)) $
>))$ %
>))% &
getOffersToShop))' 6
())6 7
DateTime))7 ?
dateTime))@ H
)))H I
{** 	
List++ 
<++ 
Offer++ 
>++ 
offer++ 
=++ 

_dbContext++  *
.++* +
Offers+++ 1
.,, 
Include,, 
(,, 
offer,, 
=>,, !
offer,," '
.,,' (
IsOffers,,( 0
),,0 1
.-- 
Where-- 
(-- 
offer-- 
=>-- 
offer--  %
.--% &

ExpireDate--& 0
>=--1 3
dateTime--4 <
&&--= ?
offer--@ E
.--E F
InitialDate--F Q
<=--R T
dateTime--U ]
)--] ^
... 
ToList.. 
(.. 
).. 
;.. 
offer// 
=// 
offer// 
.// 
Where// 
(//  
o//  !
=>//" $
o//% &
.//& '
IsOffers//' /
./// 0
Count//0 5
==//6 8
$num//9 :
)//: ;
.//; <
ToList//< B
(//B C
)//C D
;//D E
return00 
offer00 
;00 
}11 	
List44 
<44 
Offer44 
>44 
IOfferRepository44 $
.44$ %
getOffersToOrder44% 5
(445 6
DateTime446 >
dateTime44? G
)44G H
{55 	
List66 
<66 
Offer66 
>66 
offer66 
=66 

_dbContext66  *
.66* +
Offers66+ 1
.77 
Include77 
(77 
offer77 
=>77  "
offer77# (
.77( )
IsOffers77) 1
)771 2
.88 
Where88 
(88 
offer88 
=>88  
offer88! &
.88& '

ExpireDate88' 1
>=882 4
dateTime885 =
&&88> @
offer88A F
.88F G
InitialDate88G R
<=88S U
dateTime88V ^
)88^ _
.99 
ToList99 
(99 
)99 
;99 
offer:: 
=:: 
offer:: 
.:: 
Where:: 
(::  
o::  !
=>::" $
o::% &
.::& '
IsOffers::' /
.::/ 0
Count::0 5
==::6 8
$num::9 :
)::: ;
.::; <
ToList::< B
(::B C
)::C D
;::D E
return;; 
offer;; 
;;; 
}<< 	
}== 
}>> ‰
ØC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\EmprendeUCR_WebApplication\Infrastructure\NotificationContext\EntitityMappings\OrderNotificationClientMap.cs
	namespace		 	&
EmprendeUCR_WebApplication		
 $
.		$ %
Infrastructure		% 3
.		3 4
NotificationContext		4 G
.		G H
EntitityMappings		H X
{

 
public 

class &
OrderNotificationClientMap +
:, -$
IEntityTypeConfiguration. F
<F G#
OrderNotificationClientG ^
>^ _
{ 
public 
void 
	Configure 
( 
EntityTypeBuilder /
</ 0#
OrderNotificationClient0 G
>G H
builderI P
)P Q
{ 	
builder 
. 
HasKey 
( 
e 
=> 
new  #
{$ %
e& '
.' (
DateAndHourCreation( ;
,; <
e= >
.> ?
ClientEmail? J
}K L
)L M
;M N
builder 
. 
ToView 
( 
$str 4
)4 5
;5 6
builder 
. 
Property 
( 
d 
=> !
d" #
.# $
ClientEmail$ /
)/ 0
.0 1
HasColumnName1 >
(> ?
$str? M
)M N
. 
HasMaxLength 
( 
$num !
)! "
;" #
builder 
. 
Property 
( 
d 
=> !
d" #
.# $
DateAndHourCreation$ 7
)7 8
.8 9
HasColumnName9 F
(F G
$strG b
)b c
;c d
builder 
. 
Property 
( 
e 
=> !
e" #
.# $
State$ )
)) *
. 
HasMaxLength 
( 
$num  
)  !
. 
HasColumnName 
( 
$str &
)& '
;' (
builder 
. 
Property 
( 
e 
=> !
e" #
.# $
NameEntrepenur$ 2
)2 3
.3 4
HasColumnName4 A
(A B
$strB H
)H I
;I J
builder 
. 
Property 
( 
d 
=> !
d" #
.# $
date$ (
)( )
.) *
HasColumnName* 7
(7 8
$str8 X
)X Y
;Y Z
builder 
. 
Property 
( 
d 
=> !
d" #
.# $
view$ (
)( )
.) *
HasColumnName* 7
(7 8
$str8 >
)> ?
;? @
builder 
. 
Ignore 
( 
e 
=> 
e  !
.! "
url" %
)% &
;& '
builder 
. 
Ignore 
( 
e 
=> 
e  !
.! "
color" '
)' (
;( )
builder   
.   
Ignore   
(   
e   
=>   
e    !
.  ! "
Type  " &
)  & '
;  ' (
}!! 	
}"" 
}## ⁄
¥C:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\EmprendeUCR_WebApplication\Infrastructure\NotificationContext\EntitityMappings\OrderNotificationEntrepeneurMap.cs
	namespace		 	&
EmprendeUCR_WebApplication		
 $
.		$ %
Infrastructure		% 3
.		3 4
NotificationContext		4 G
.		G H
EntitityMappings		H X
{

 
public 

class +
OrderNotificationEntrepeneurMap 0
:1 2$
IEntityTypeConfiguration3 K
<K L(
OrderNotificationEntrepeneurL h
>h i
{ 
public 
void 
	Configure 
( 
EntityTypeBuilder /
</ 0(
OrderNotificationEntrepeneur0 L
>L M
builderN U
)U V
{ 	
builder 
. 
HasKey 
( 
e 
=> 
new  #
{$ %
e& '
.' (
DateAndHourCreation( ;
,; <
e= >
.> ?
ClientEmail? J
}K L
)L M
;M N
builder 
. 
ToView 
( 
$str :
): ;
;; <
builder 
. 
Property 
( 
d 
=> !
d" #
.# $
ClientEmail$ /
)/ 0
.0 1
HasColumnName1 >
(> ?
$str? M
)M N
. 
HasMaxLength 
( 
$num !
)! "
;" #
builder 
. 
Property 
( 
d 
=> !
d" #
.# $
DateAndHourCreation$ 7
)7 8
.8 9
HasColumnName9 F
(F G
$strG b
)b c
;c d
builder 
. 
Property 
( 
e 
=> !
e" #
.# $
State$ )
)) *
. 
HasMaxLength 
( 
$num  
)  !
. 
HasColumnName 
( 
$str &
)& '
;' (
builder 
. 
Property 
( 
e 
=> !
e" #
.# $
EntrepreneurEmail$ 5
)5 6
. 
HasMaxLength 
( 
$num 
)  
.  !
HasColumnName! .
(. /
$str/ C
)C D
;D E
builder 
. 
Property 
( 
e 
=> !
e" #
.# $

nameClient$ .
). /
./ 0
HasColumnName0 =
(= >
$str> D
)D E
;E F
builder 
. 
Property 
( 
d 
=> !
d" #
.# $
date$ (
)( )
.) *
HasColumnName* 7
(7 8
$str8 X
)X Y
;Y Z
builder   
.   
Ignore   
(   
e   
=>   
e    !
.  ! "
color  " '
)  ' (
;  ( )
builder!! 
.!! 
Ignore!! 
(!! 
e!! 
=>!! 
e!!  !
.!!! "
Type!!" &
)!!& '
;!!' (
builder"" 
."" 
Ignore"" 
("" 
e"" 
=>"" 
e""  !
.""! "
url""" %
)""% &
;""& '
}## 	
}$$ 
}%% ¨
ôC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\EmprendeUCR_WebApplication\Infrastructure\NotificationContext\NotificationDbContext.cs
	namespace 	&
EmprendeUCR_WebApplication
 $
.$ %
Infrastructure% 3
.3 4
NotificationContext4 G
{ 
public 

partial 
class !
NotificationDbContext .
:/ 0 
ApplicationDbContext1 E
{ 
public !
NotificationDbContext $
($ %
DbContextOptions% 5
<5 6!
NotificationDbContext6 K
>K L
optionsM T
,T U
ILoggerV ]
<] ^!
NotificationDbContext^ s
>s t
loggeru {
){ |
: 
base 
( 
options 
, 
logger !
)! "
{ 	
} 	
	protected 
override 
void 
OnConfiguring  -
(- .#
DbContextOptionsBuilder. E
optionsBuilderF T
)T U
{ 	
optionsBuilder 
. 
LogTo  
(  !
message! (
=>) +
Debug, 1
.1 2
	WriteLine2 ;
(; <
message< C
)C D
)D E
;E F
} 	
public 
virtual 
DbSet 
< #
OrderNotificationClient 4
>4 5$
OrderNotificationClients6 N
{O P
getQ T
;T U
setV Y
;Y Z
}[ \
public 
virtual 
DbSet 
< (
OrderNotificationEntrepeneur 9
>9 :)
OrderNotificationEntrepeneurs; X
{Y Z
get[ ^
;^ _
set` c
;c d
}e f
public 
DbSet 
< 
Shopping_Cart_Has &
>& '
Shopping_Cart_Has( 9
{: ;
get< ?
;? @
setA D
;D E
}F G
	protected 
override 
void 
OnModelCreating  /
(/ 0
ModelBuilder0 <
modelBuilder= I
)I J
{   	
base!! 
.!! 
OnModelCreating!!  
(!!  !
modelBuilder!!! -
)!!- .
;!!. /
modelBuilder## 
.## 
ApplyConfiguration## +
(##+ ,
new##, /&
OrderNotificationClientMap##0 J
(##J K
)##K L
)##L M
;##M N
modelBuilder$$ 
.$$ 
ApplyConfiguration$$ +
($$+ ,
new$$, /+
OrderNotificationEntrepeneurMap$$0 O
($$O P
)$$P Q
)$$Q R
;$$R S
var%% 
shoppingCartHas%% 
=%%  !
modelBuilder%%" .
.%%. /
Entity%%/ 5
<%%5 6
Shopping_Cart_Has%%6 G
>%%G H
(%%H I
)%%I J
;%%J K
shoppingCartHas&& 
.&& 
HasKey&& "
(&&" #
c&&# $
=>&&% '
new&&( +
{&&, -
c&&. /
.&&/ 0
Email&&0 5
,&&5 6
c&&7 8
.&&8 9
Code_ID&&9 @
,&&@ A
c&&B C
.&&C D
Entrepreneur_Email&&D V
,&&V W
c&&X Y
.&&Y Z
Category_ID&&Z e
}&&f g
)&&g h
;&&h i
}'' 	
})) 
}** ò≈
∫C:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\EmprendeUCR_WebApplication\Infrastructure\NotificationContext\Repositories\ClientRepositories\NotificationRepository.cs
	namespace 	&
EmprendeUCR_WebApplication
 $
.$ %
Infrastructure% 3
.3 4
NotificationContext4 G
.G H
RepositoriesH T
.T U
ClientRepositoriesU g
{ 
public 

class "
NotificationRepository '
:( )#
INotificationRepository* A
{ 
List 
< 
Func 
< 
UserNotification "
," #
Task# '
>' (
>( )"
notificationsToReceive* @
=A B
newC F
ListG K
<K L
FuncL P
<P Q
UserNotificationQ a
,a b
Taskb f
>f g
>g h
(h i
)i j
;j k
List 
< 
Func 
< 
UserNotification "
," #
int$ '
>' (
>( )
notifications* 7
=8 9
new: =
List> B
<B C
FuncC G
<G H
UserNotificationH X
,X Y
intZ ]
>] ^
>^ _
(_ `
)` a
;a b
List 
< 
Action 
< 
UserNotification $
>$ %
>% &"
notificationToSuscribe' =
=> ?
new@ C
ListD H
<H I
ActionI O
<O P
UserNotificationP `
>` a
>a b
(b c
)c d
;d e
private 
readonly !
NotificationDbContext .

_dbContext/ 9
;9 :
public 
IUnitOfWork 

UnitOfWork %
=>& (

_dbContext) 3
;3 4
public   #
INotificationRepository   &
Next  ' +
{  , -
get  . 1
=>  2 4
throw  5 :
new  ; >#
NotImplementedException  ? V
(  V W
)  W X
;  X Y
set  Z ]
=>  ^ `
throw  a f
new  g j$
NotImplementedException	  k Ç
(
  Ç É
)
  É Ñ
;
  Ñ Ö
}
  Ü á
private"" 
List"" 
<"" 
SqlTableDependency"" '
<""' (
Notification""( 4
>""4 5
>""5 6,
 _NotifierOrderNotificationClient""7 W
;""W X
public## 
event##  
newEventNotification## )
onEventNotification##* =
;##= >
private$$ 
IConfiguration$$ 
_configuration$$ -
;$$- .
public-- "
NotificationRepository-- %
(--% &!
NotificationDbContext--& ;

unitOfWork--< F
,--F G
IConfiguration--H V
configuration--W d
)--d e
{.. 	

_dbContext// 
=// 

unitOfWork// #
;//# $
_configuration00 
=00 
configuration00 *
;00* +"
notificationsToReceive11 "
.11" #
Add11# &
(11& '%
EntrepeneurOrdersAccepted11' @
)11@ A
;11A B"
notificationsToReceive22 "
.22" #
Add22# &
(22& ')
ClientsOrdersAcceptedRejected22' D
)22D E
;22E F
}55 	
public<< 
async<< 
Task<< 
<<< 
UserNotification<< *
><<* +
GetByIdAsync<<, 8
(<<8 9
string<<9 ?
email<<@ E
,<<E F
int<<G J
type<<K O
)<<O P
{<<Q R
var== 
user== 
=== 
new== 
UserNotification== +
(==+ ,
email==, 1
,==1 2
type==3 7
)==7 8
;==8 9
var>> 
callMethods>> 
=>> 
user>> "
.>>" #"
getNotificationsWanted>># 9
(>>9 :
)>>: ;
;>>; <
foreach@@ 
(@@ 
var@@ 
iterable@@ !
in@@" $
callMethods@@% 0
)@@0 1
{@@2 3
awaitAA "
notificationsToReceiveAA ,
[AA, -
iterableAA- 5
]AA5 6
.AA6 7
InvokeAA7 =
(AA= >
userAA> B
)AAB C
;AAC D
}BB 
returnCC 
userCC 
;CC 
}DD 	
publicNN 
asyncNN 
TaskNN 
notificationsUpdateNN -
(NN- .
UserNotificationNN. >

userUpdateNN? I
)NNI J
{NNK L

_dbContextOO 
.OO 
UpdateOO 
(OO 

userUpdateOO (
)OO( )
;OO) *
awaitPP 

_dbContextPP 
.PP 
SaveEntitiesAsyncPP .
(PP. /
)PP/ 0
;PP0 1
}QQ 	
publicRR 
asyncRR 
TaskRR )
ClientsOrdersAcceptedRejectedRR 7
(RR7 8
UserNotificationRR8 H
userRRI M
)RRM N
{SS 	

Expression[[ 
<[[ 
Func[[ 
<[[ (
OrderNotificationEntrepeneur[[ 8
,[[8 9
bool[[: >
>[[> ?
>[[? @

expression[[A K
=[[L M
e[[N O
=>[[P R
e\\ 
.\\ 
EntrepreneurEmail\\ %
==\\& (
user\\) -
.\\- .
Email\\. 3
&&\\4 6
(\\7 8
e\\8 9
.\\9 :
State\\: ?
==\\@ B
$str\\C N
)\\N O
;\\O P"
ITableDependencyFilter]] "
whereCondition]]# 1
=]]2 3
new]]4 7$
SqlTableDependencyFilter]]8 P
<]]P Q(
OrderNotificationEntrepeneur]]Q m
>]]m n
(]]n o

expression^^ 
)^^ 
;^^ 
SqlTableDependency__ 
<__ 
Notification__ +
>__+ ,
sqlTableDependency__- ?
=__@ A
new__B E
SqlTableDependency__F X
<__X Y
Notification__Y e
>__e f
(__f g
_configuration__g u
.__u v 
GetConnectionString	__v â
(
__â ä
$str
__ä ù
)
__ù û
,
__û ü
$str
__† ß
,
__ß ®
filter
__© Ø
:
__Ø ∞
whereCondition
__± ø
)
__ø ¿
;
__¿ ¡
sqlTableDependencyaa 
.aa 
Startaa $
(aa$ %
)aa% &
;aa& ',
 _NotifierOrderNotificationClientbb ,
.bb, -
Addbb- 0
(bb0 1
sqlTableDependencybb1 C
)bbC D
;bbD E
}cc 	
publicee 
asyncee 
Taskee %
EntrepeneurOrdersAcceptedee 3
(ee3 4
UserNotificationee4 D
usereeE I
)eeI J
{ff 	
Listgg 
<gg 
Notificationgg 
>gg 
listgg #
=gg$ %

_dbContexthh 
.hh )
OrderNotificationEntrepeneurshh <
.hh< =
Whereii 
(ii 
eii 
=>ii  "
eii# $
.ii$ %
ClientEmailii% 0
==ii1 3
userii4 8
.ii8 9
Emailii9 >
&&ii@ B
(iiC D
eiiD E
.iiE F
StateiiF K
==iiL N
$striiO Z
||ii[ ]
eii^ _
.ii_ `
Stateii` e
==iif h
$striii s
)iit u
)iiu v
.jj 
ToListjj 
<jj  
Notificationjj  ,
>jj, -
(jj- .
)jj. /
;jj/ 0
varkk 
listskk 
=kk 
(kk 
listkk 
)kk 
;kk 
userll 
.ll 
setNewNotificationsll $
(ll$ %
listll% )
)ll) *
;ll* +
varmm 
mappermm 
=mm 
newmm 
ModelToTableMappermm /
<mm/ 0(
OrderNotificationEntrepeneurmm0 L
>mmL M
(mmM N
)mmN O
;mmO P
mappernn 
.nn 

AddMappingnn 
(nn 
enn 
=>nn  "
enn# $
.nn$ %
ClientEmailnn% 0
,nn0 1
$strnn2 @
)nn@ A
;nnA B

Expressionoo 
<oo 
Funcoo 
<oo (
OrderNotificationEntrepeneuroo 8
,oo8 9
booloo: >
>oo> ?
>oo? @

expressionooA K
=ooL M
eooN O
=>ooP R
epp 
.pp 
Statepp 
==pp 
$strpp (
&&pp) +
epp, -
.pp- .
ClientEmailpp. 9
==pp: <
$strpp= O
;ppO P"
ITableDependencyFilterrr "
whereConditionrr# 1
=rr2 3
newrr4 7$
SqlTableDependencyFilterrr8 P
<rrP Q(
OrderNotificationEntrepeneurrrQ m
>rrm n
(rrn o

expressionss 
,ss 
mappertt 
)tt 
;tt 
SqlTableDependencyvv 
<vv (
OrderNotificationEntrepeneurvv ;
>vv; <
sqlTableDependencyvv= O
=vvP Q
newvvR U
SqlTableDependencyvvV h
<vvh i)
OrderNotificationEntrepeneur	vvi Ö
>
vvÖ Ü
(
vvÜ á
_configuration
vvá ï
.
vvï ñ!
GetConnectionString
vvñ ©
(
vv© ™
$str
vv™ Ω
)
vvΩ æ
,
vvæ ø
$str
vv¿ «
,
vv« »
filter
vv… œ
:
vvœ –
whereCondition
vv— ﬂ
,
vvﬂ ‡
mapper
vv‡ Ê
:
vvÊ Á
mapper
vvÁ Ì
)
vvÌ Ó
;
vvÓ Ô
sqlTableDependencyxx 
.xx 
	OnChangedxx (
+=xx) +
thisxx, 0
.xx0 1#
TableDependency_Changedxx1 H
;xxH I
sqlTableDependencyzz 
.zz 
Startzz $
(zz$ %
)zz% &
;zz& '
}}} 	
public 
void #
TableDependency_Changed +
(+ ,
object, 2
sender3 9
,9 :"
RecordChangedEventArgs; Q
<Q R(
OrderNotificationEntrepeneurR n
>n o
ep q
)q r
{
ÄÄ 	
var
ÅÅ 
changedEntity
ÅÅ 
=
ÅÅ 
e
ÅÅ  !
.
ÅÅ! "
Entity
ÅÅ" (
;
ÅÅ( )
}
ÉÉ 	
public
ÖÖ 
async
ÖÖ 
Task
ÖÖ 
<
ÖÖ 
int
ÖÖ 
>
ÖÖ %
getNotificationQuantity
ÖÖ 6
(
ÖÖ6 7
UserNotification
ÖÖ7 G
user
ÖÖH L
)
ÖÖL M
{
ÜÜ 	
int
àà 
quantity
àà 
=
àà 
$num
àà 
;
àà 
var
ââ 
callMethods
ââ 
=
ââ 
user
ââ "
.
ââ" #$
getNotificationsWanted
ââ# 9
(
ââ9 :
)
ââ: ;
;
ââ; <
foreach
ãã 
(
ãã 
var
ãã 
iterable
ãã !
in
ãã" $
callMethods
ãã% 0
)
ãã0 1
{
åå 
quantity
çç 
=
çç 
+
çç 
notifications
çç )
[
çç) *
iterable
çç* 2
]
çç2 3
.
çç3 4
Invoke
çç4 :
(
çç: ;
user
çç; ?
)
çç? @
;
çç@ A$
notificationToSuscribe
éé &
[
éé& '
iterable
éé' /
]
éé/ 0
.
éé0 1
Invoke
éé1 7
(
éé7 8
user
éé8 <
)
éé< =
;
éé= >
}
èè 
return
êê 
quantity
êê 
;
êê 
}
ëë 	
public
íí 
int
íí '
EntrepeneursOrderQuantity
íí ,
(
íí, -
UserNotification
íí- =
user
íí> B
)
ííB C
{
ìì 	
int
îî 
quantity
îî 
=
îî 

_dbContext
îî %
.
îî% &+
OrderNotificationEntrepeneurs
îî& C
.
îîC D
Where
ïï 
(
ïï 
e
ïï 
=>
ïï  "
e
ïï# $
.
ïï$ %
EntrepreneurEmail
ïï% 6
==
ïï7 9
user
ïï: >
.
ïï> ?
Email
ïï? D
&&
ïïE G
(
ïïH I
e
ïïI J
.
ïïJ K
State
ïïK P
==
ïïQ S
$str
ïïT _
||
ïï` b
e
ïïc d
.
ïïd e
State
ïïe j
==
ïïk m
$str
ïïn x
)
ïïx y
)
ïïy z
.
ññ 
Count
ññ 
(
ññ 
)
ññ  
;
ññ  !
return
óó 
quantity
óó 
;
óó 
}
òò 	
public
öö 
void
öö *
OrderNotificationSuscription
öö 0
(
öö0 1
UserNotification
öö1 A
user
ööB F
)
ööF G
{
ööH I
var
õõ 
mapper
õõ 
=
õõ 
new
õõ  
ModelToTableMapper
õõ /
<
õõ/ 0*
OrderNotificationEntrepeneur
õõ0 L
>
õõL M
(
õõM N
)
õõN O
;
õõO P
mapper
ùù 
.
ùù 

AddMapping
ùù 
(
ùù 
e
ùù 
=>
ùù  "
e
ùù# $
.
ùù$ %
ClientEmail
ùù% 0
,
ùù0 1
$str
ùù2 @
)
ùù@ A
;
ùùA B

Expression
üü 
<
üü 
Func
üü 
<
üü *
OrderNotificationEntrepeneur
üü 8
,
üü8 9
bool
üü: >
>
üü> ?
>
üü? @

expression
üüA K
=
üüL M
e
üüN O
=>
üüP R
e
†† 
.
†† 
State
†† 
==
†† 
$str
†† (
&&
††) +
e
††, -
.
††- .
ClientEmail
††. 9
==
††: <
$str
††= O
;
††O P$
ITableDependencyFilter
¢¢ "
whereCondition
¢¢# 1
=
¢¢2 3
new
¢¢4 7&
SqlTableDependencyFilter
¢¢8 P
<
¢¢P Q*
OrderNotificationEntrepeneur
¢¢Q m
>
¢¢m n
(
¢¢n o

expression
££ 
,
££ 
mapper
§§ 
)
§§ 
;
§§  
SqlTableDependency
¶¶ 
<
¶¶ *
OrderNotificationEntrepeneur
¶¶ ;
>
¶¶; < 
sqlTableDependency
¶¶= O
=
¶¶P Q
new
¶¶R U 
SqlTableDependency
¶¶V h
<
¶¶h i+
OrderNotificationEntrepeneur¶¶i Ö
>¶¶Ö Ü
(¶¶Ü á
_configuration¶¶á ï
.¶¶ï ñ#
GetConnectionString¶¶ñ ©
(¶¶© ™
$str¶¶™ Ω
)¶¶Ω æ
,¶¶æ ø
$str¶¶¿ «
,¶¶« »
filter¶¶… œ
:¶¶œ –
whereCondition¶¶— ﬂ
,¶¶ﬂ ‡
mapper¶¶· Á
:¶¶Á Ë
mapper¶¶È Ô
)¶¶Ô 
;¶¶ Ò 
sqlTableDependency
®® 
.
®® 
Start
®® $
(
®®$ %
)
®®% &
;
®®& '
}
©© 	
public
´´ 
int
´´ 
GetQuantity
´´ 
(
´´ 
string
´´ %
email
´´& +
,
´´+ ,
int
´´- 0
type
´´1 5
)
´´5 6
{
¨¨ 	
var
ÀÀ 
mapper
ÀÀ 
=
ÀÀ 
new
ÀÀ  
ModelToTableMapper
ÀÀ /
<
ÀÀ/ 0%
OrderNotificationClient
ÀÀ0 G
>
ÀÀG H
(
ÀÀH I
)
ÀÀI J
;
ÀÀJ K
mapper
ÕÕ 
.
ÕÕ 

AddMapping
ÕÕ 
(
ÕÕ 
e
ÕÕ 
=>
ÕÕ  "
e
ÕÕ# $
.
ÕÕ$ %
ClientEmail
ÕÕ% 0
,
ÕÕ0 1
$str
ÕÕ2 @
)
ÕÕ@ A
;
ÕÕA B

Expression
œœ 
<
œœ 
Func
œœ 
<
œœ %
OrderNotificationClient
œœ 3
,
œœ3 4
bool
œœ5 9
>
œœ9 :
>
œœ: ;

expression
œœ< F
=
œœG H
e
œœI J
=>
œœK M
(
–– 
e
–– 
.
–– 
State
–– 
==
–– 
$str
–– )
||
––* ,
e
––- .
.
––. /
State
––/ 4
==
––5 7
$str
––8 C
)
––C D
&&
––E G
e
––H I
.
––I J
ClientEmail
––J U
==
––V X
email
––Y ^
;
––^ _$
ITableDependencyFilter
““ "
whereCondition
““# 1
=
““2 3
new
““4 7&
SqlTableDependencyFilter
““8 P
<
““P Q%
OrderNotificationClient
““Q h
>
““h i
(
““i j

expression
”” 
,
”” 
mapper
‘‘ 
)
‘‘ 
;
‘‘  
SqlTableDependency
÷÷ 
<
÷÷ %
OrderNotificationClient
÷÷ 6
>
÷÷6 7 
sqlTableDependency
÷÷8 J
=
÷÷K L
new
÷÷M P 
SqlTableDependency
÷÷Q c
<
÷÷c d%
OrderNotificationClient
÷÷d {
>
÷÷{ |
(
÷÷| }
_configuration÷÷} ã
.÷÷ã å#
GetConnectionString÷÷å ü
(÷÷ü †
$str÷÷† ≥
)÷÷≥ ¥
,÷÷¥ µ
$str÷÷∂ Ω
,÷÷Ω æ
filter÷÷ø ≈
:÷÷≈ ∆
whereCondition÷÷« ’
,÷÷’ ÷
mapper÷÷◊ ›
:÷÷› ﬁ
mapper÷÷ﬂ Â
)÷÷Â Ê
;÷÷Ê Á 
sqlTableDependency
◊◊ 
.
◊◊ 
	OnChanged
◊◊ (
+=
◊◊) +
this
◊◊, 0
.
◊◊0 1
OrderClientChange
◊◊1 B
;
◊◊B C 
sqlTableDependency
ÿÿ 
.
ÿÿ 
Start
ÿÿ $
(
ÿÿ$ %
)
ÿÿ% &
;
ÿÿ& '
return
€€ 

_dbContext
€€ 
.
€€ +
OrderNotificationEntrepeneurs
€€ <
.
€€< =
Where
‹‹ 
(
‹‹ 
e
‹‹ 
=>
‹‹  "
e
‹‹# $
.
‹‹$ %
ClientEmail
‹‹% 0
==
‹‹1 3
email
‹‹4 9
&&
‹‹: <
(
‹‹= >
e
‹‹> ?
.
‹‹? @
State
‹‹@ E
==
‹‹F H
$str
‹‹I T
||
‹‹U W
e
‹‹X Y
.
‹‹Y Z
State
‹‹Z _
==
‹‹` b
$str
‹‹c m
)
‹‹m n
)
‹‹n o
.
›› 
Count
›› 
(
›› 
)
››  
;
››  !
}
ﬁﬁ 	
private
‡‡ 
void
‡‡ $
OrderEntrepeneurChange
‡‡ +
(
‡‡+ ,
object
‡‡, 2
sender
‡‡3 9
,
‡‡9 :$
RecordChangedEventArgs
‡‡; Q
<
‡‡Q R*
OrderNotificationEntrepeneur
‡‡R n
>
‡‡n o
e
‡‡p q
)
‡‡q r
{
·· 	
var
‚‚ 
changedEntity
‚‚ 
=
‚‚ 
e
‚‚  !
.
‚‚! "
Entity
‚‚" (
;
‚‚( )
if
„„ 
(
„„ 
changedEntity
„„ 
.
„„ 
EntrepreneurEmail
„„ /
==
„„0 2
$str
„„3 M
&&
„„N P
changedEntity
„„Q ^
.
„„^ _
State
„„_ d
==
„„e g
$str
„„h 
)„„ Ä
{
‰‰ !
onEventNotification
ÂÂ #
.
ÂÂ# $
Invoke
ÂÂ$ *
(
ÂÂ* +
this
ÂÂ+ /
,
ÂÂ/ 0
new
ÂÂ1 4)
NotificationChangeEventArgs
ÂÂ5 P
(
ÂÂP Q
true
ÂÂQ U
)
ÂÂU V
)
ÂÂV W
;
ÂÂW X
}
ÊÊ 
else
ÁÁ 
{
ÁÁ !
onEventNotification
ËË #
.
ËË# $
Invoke
ËË$ *
(
ËË* +
this
ËË+ /
,
ËË/ 0
new
ËË1 4)
NotificationChangeEventArgs
ËË5 P
(
ËËP Q
false
ËËQ V
)
ËËV W
)
ËËW X
;
ËËX Y
}
ÈÈ 
}
ÎÎ 	
private
ÌÌ 
void
ÌÌ 
OrderClientChange
ÌÌ &
(
ÌÌ& '
object
ÌÌ' -
sender
ÌÌ. 4
,
ÌÌ4 5$
RecordChangedEventArgs
ÌÌ6 L
<
ÌÌL M%
OrderNotificationClient
ÌÌM d
>
ÌÌd e
e
ÌÌf g
)
ÌÌg h
{
ÓÓ 	
var
ÔÔ 
changedEntity
ÔÔ 
=
ÔÔ 
e
ÔÔ  !
.
ÔÔ! "
Entity
ÔÔ" (
;
ÔÔ( )
if
 
(
 
changedEntity
 
.
 
ClientEmail
 )
==
* ,
$str
- A
&&
B D
(
E F
changedEntity
F S
.
S T
State
T Y
==
Z \
$str
] g
||
h j
changedEntity
k x
.
x y
State
y ~
== Å
$strÇ ç
)ç é
)é è
{
ÒÒ 
if
ÚÚ 
(
ÚÚ 
changedEntity
ÚÚ !
.
ÚÚ! "
view
ÚÚ" &
)
ÚÚ& '
{
ÚÚ( )!
onEventNotification
ÛÛ '
.
ÛÛ' (
Invoke
ÛÛ( .
(
ÛÛ. /
this
ÛÛ/ 3
,
ÛÛ3 4
new
ÛÛ5 8)
NotificationChangeEventArgs
ÛÛ9 T
(
ÛÛT U
false
ÛÛU Z
)
ÛÛZ [
)
ÛÛ[ \
;
ÛÛ\ ]
}
ÙÙ 
else
ıı 
{
ˆˆ !
onEventNotification
˜˜ '
.
˜˜' (
Invoke
˜˜( .
(
˜˜. /
this
˜˜/ 3
,
˜˜3 4
new
˜˜5 8)
NotificationChangeEventArgs
˜˜9 T
(
˜˜T U
true
˜˜U Y
)
˜˜Y Z
)
˜˜Z [
;
˜˜[ \
}
¯¯ 
}
˘˘ 
}
˙˙ 	
public
¸¸ 
UserNotification
¸¸ !
GetUserNotification
¸¸  3
(
¸¸3 4
string
¸¸4 :
email
¸¸; @
,
¸¸@ A
int
¸¸B E
type
¸¸F J
)
¸¸J K
{
˝˝ 	
var
˛˛ 
user
˛˛ 
=
˛˛ 
new
˛˛ 
UserNotification
˛˛ +
(
˛˛+ ,
email
˛˛, 1
,
˛˛1 2
type
˛˛3 7
)
˛˛7 8
;
˛˛8 9
user
ˇˇ 
.
ˇˇ "
notificationQuantity
ˇˇ %
=
ˇˇ& '
this
ˇˇ( ,
.
ˇˇ, -
GetQuantity
ˇˇ- 8
(
ˇˇ8 9
email
ˇˇ9 >
,
ˇˇ> ?
type
ˇˇ? C
)
ˇˇC D
;
ˇˇD E
if
ÄÄ 
(
ÄÄ 
this
ÄÄ 
.
ÄÄ !
onEventNotification
ÄÄ (
is
ÄÄ) +
not
ÄÄ, /
null
ÄÄ0 4
)
ÄÄ4 5
{
ÅÅ 
this
ÇÇ 
.
ÇÇ !
onEventNotification
ÇÇ (
-=
ÇÇ) +
user
ÇÇ, 0
.
ÇÇ0 1
QuantityEvent
ÇÇ1 >
;
ÇÇ> ?
this
ÉÉ 
.
ÉÉ !
onEventNotification
ÉÉ (
+=
ÉÉ) +
user
ÉÉ, 0
.
ÉÉ0 1
QuantityEvent
ÉÉ1 >
;
ÉÉ> ?
}
ÑÑ 
else
ÖÖ 
{
ÖÖ 
this
ÜÜ 
.
ÜÜ !
onEventNotification
ÜÜ (
+=
ÜÜ) +
user
ÜÜ, 0
.
ÜÜ0 1
QuantityEvent
ÜÜ1 >
;
ÜÜ> ?
}
áá 
return
ââ 
user
ââ 
;
ââ 
}
ää 	
public
åå 
void
åå !
EventsSubscriptions
åå '
(
åå' (
UserNotification
åå( 8
UserNotification
åå9 I
)
ååI J
{
çç 	
throw
éé 
new
éé %
NotImplementedException
éé -
(
éé- .
)
éé. /
;
éé/ 0
}
èè 	
public
ëë 
void
ëë 
GetNotifications
ëë $
(
ëë$ %
UserNotification
ëë% 5
UserNotification
ëë6 F
)
ëëF G
{
íí 	
throw
ìì 
new
ìì %
NotImplementedException
ìì -
(
ìì- .
)
ìì. /
;
ìì/ 0
}
îî 	
public
ññ 
void
ññ &
GetNotificationsQuantity
ññ ,
(
ññ, -
UserNotification
ññ- =
UserNotification
ññ> N
)
ññN O
{
óó 	
throw
òò 
new
òò %
NotImplementedException
òò -
(
òò- .
)
òò. /
;
òò/ 0
}
ôô 	
public
õõ 
void
õõ 
Unsubscription
õõ "
(
õõ" #
UserNotification
õõ# 3
UserNotification
õõ4 D
)
õõD E
{
úú 	
throw
ùù 
new
ùù %
NotImplementedException
ùù -
(
ùù- .
)
ùù. /
;
ùù/ 0
}
ûû 	
public
†† 
int
†† !
GetProductsQuantity
†† &
(
††& '
UserNotification
††' 7
UserNotification
††8 H
)
††H I
{
°° 	
throw
¢¢ 
new
¢¢ %
NotImplementedException
¢¢ -
(
¢¢- .
)
¢¢. /
;
¢¢/ 0
}
££ 	
}
µµ 
}∂∂ ¶V
≈C:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\EmprendeUCR_WebApplication\Infrastructure\NotificationContext\Repositories\ClientRepositories\OrderNotificationClientRepository.cs
	namespace 	&
EmprendeUCR_WebApplication
 $
.$ %
Infrastructure% 3
.3 4
NotificationContext4 G
.G H
RepositoriesH T
.T U
ClientRepositoriesU g
{ 
public 

class -
!OrderNotificationClientRepository 2
:3 4#
INotificationRepository5 L
{ 
private 
readonly !
NotificationDbContext .

_dbContext/ 9
;9 :
public 
IUnitOfWork 

UnitOfWork %
=>& (

_dbContext) 3
;3 4
private 
IConfiguration 
_configuration -
;- .
public #
INotificationRepository &
Next' +
{, -
set. 1
;1 2
get3 6
;6 7
}8 9
private 
string 
EmailToListen $
{% &
set' *
;* +
get, /
;/ 0
}1 2
public 
event  
newEventNotification )
onEventNotification* =
;= >
SqlTableDependency 
< #
OrderNotificationClient 2
>2 3
sqlTableDependency4 F
;F G
public -
!OrderNotificationClientRepository 0
(0 1
)1 2
{ 	
} 	
public -
!OrderNotificationClientRepository 0
(0 1!
NotificationDbContext1 F

unitOfWorkG Q
,Q R
IConfigurationS a
configurationb o
)o p
{   	

_dbContext!! 
=!! 

unitOfWork!! #
;!!# $
_configuration"" 
="" 
configuration"" *
;""* +
}## 	
public%% 
void%% 
EventsSubscriptions%% '
(%%' (
UserNotification%%( 8
UserNotification%%9 I
)%%I J
{&& 	
this)) 
.)) 
EmailToListen)) 
=))  
UserNotification))! 1
.))1 2
Email))2 7
;))7 8
var++ 
mapper++ 
=++ 
new++ 
ModelToTableMapper++ /
<++/ 0#
OrderNotificationClient++0 G
>++G H
(++H I
)++I J
;++J K
mapper-- 
.-- 

AddMapping-- 
(-- 
e-- 
=>--  "
e--# $
.--$ %
ClientEmail--% 0
,--0 1
$str--2 @
)--@ A
;--A B

Expression// 
<// 
Func// 
<// #
OrderNotificationClient// 3
,//3 4
bool//5 9
>//9 :
>//: ;

expression//< F
=//G H
e//I J
=>//K M
(00 
e00 
.00 
State00 
==00 
$str00 (
||00) +
e00, -
.00- .
State00. 3
==004 6
$str007 B
)00B C
&&00D F
e00G H
.00H I
ClientEmail00I T
==00U W
(00X Y
string00Y _
)00_ `
EmailToListen00` m
;00m n"
ITableDependencyFilter22 "
whereCondition22# 1
=222 3
new224 7$
SqlTableDependencyFilter228 P
<22P Q#
OrderNotificationClient22Q h
>22h i
(22i j

expression33 
,33 
mapper44 
)44 
;44 
if77 
(77 
_configuration77 
is77 !
not77" %
null77& *
)77* +
{77, -
sqlTableDependency88 "
=88# $
new88% (
SqlTableDependency88) ;
<88; <#
OrderNotificationClient88< S
>88S T
(88T U
_configuration88U c
.88c d
GetConnectionString88d w
(88w x
$str	88x ã
)
88ã å
,
88å ç
$str
88é ï
,
88ï ñ
filter
88ó ù
:
88ù û
whereCondition
88ü ≠
,
88≠ Æ
mapper
88Ø µ
:
88µ ∂
mapper
88∑ Ω
)
88Ω æ
;
88æ ø
sqlTableDependency99 "
.99" #
	OnChanged99# ,
+=99- /
this990 4
.994 5
OrderClientChange995 F
;99F G
}:: 
if<< 
(<< 
Next<< 
is<< 
not<< 
null<<  
)<<  !
{<<" #
Next== 
.== 
EventsSubscriptions== (
(==( )
UserNotification==) 9
)==9 :
;==: ;
}>> 
thisAA 
.AA 
onEventNotificationAA $
+=AA% '
UserNotificationAA( 8
.AA8 9
QuantityEventAA9 F
;AAF G
ifDD 
(DD 
_configurationDD 
isDD !
notDD" %
nullDD& *
)DD* +
{EE 
sqlTableDependencyFF "
.FF" #
StartFF# (
(FF( )
)FF) *
;FF* +
}GG 
}HH 	
publicPP 
voidPP 
GetNotificationsPP $
(PP$ %
UserNotificationPP% 5
UserNotificationPP6 F
)PPF G
{QQ 	
ListRR 
<RR 
NotificationRR 
>RR 
listRR #
=RR$ %

_dbContextSS 
.SS $
OrderNotificationClientsSS 6
.SS6 7
WhereTT 
(TT 
eTT 
=>TT !
eTT" #
.TT# $
ClientEmailTT$ /
==TT0 2
UserNotificationTT3 C
.TTC D
EmailTTD I
&&TTJ L
(TTM N
eTTN O
.TTO P
StateTTP U
==TTV X
$strTTY d
||TTe g
eTTh i
.TTi j
StateTTj o
==TTp r
$strTTs }
)TT} ~
)	TT Ä
.UU 
ToListUU 
<UU 
NotificationUU +
>UU+ ,
(UU, -
)UU- .
;UU. /
UserNotificationVV 
.VV 
setNewNotificationsVV 0
(VV0 1
listVV1 5
)VV5 6
;VV6 7
ifWW 
(WW 
NextWW 
isWW 
notWW 
nullWW  
)WW  !
{XX 
NextYY 
.YY 
GetNotificationsYY %
(YY% &
UserNotificationYY& 6
)YY6 7
;YY7 8
}ZZ 
}[[ 	
publicbb 
voidbb $
GetNotificationsQuantitybb ,
(bb, -
UserNotificationbb- =
UserNotificationbb> N
)bbN O
{cc 	
UserNotificationdd 
.dd  
notificationQuantitydd 1
+=dd2 4

_dbContextdd5 ?
.dd? @$
OrderNotificationClientsdd@ X
.ddX Y
Whereee 
(ee 
eee 
=>ee !
eee" #
.ee# $
ClientEmailee$ /
==ee0 2
UserNotificationee3 C
.eeC D
EmaileeD I
&&eeJ L
(eeM N
eeeN O
.eeO P
StateeeP U
==eeV X
$streeY d
||eee g
eeeh i
.eei j
Stateeej o
==eep r
$strees }
)ee} ~
)ee~ 
.ff 
Countff 
(ff 
)ff 
;ff  
}gg 	
publicnn 
voidnn 
OrderClientChangenn %
(nn% &
objectnn& ,
sendernn- 3
,nn3 4"
RecordChangedEventArgsnn5 K
<nnK L#
OrderNotificationClientnnL c
>nnc d
enne f
)nnf g
{oo 	
varpp 
changedEntitypp 
=pp 
epp  !
.pp! "
Entitypp" (
;pp( )
ifqq 
(qq 
changedEntityqq 
.qq 
ClientEmailqq )
==qq* ,
(qq- .
stringqq. 4
)qq4 5
EmailToListenqq5 B
&&qqC E
(qqF G
changedEntityqqG T
.qqT U
StateqqU Z
==qq[ ]
$strqq^ h
||qqi k
changedEntityqql y
.qqy z
Stateqqz 
==
qqÄ Ç
$str
qqÉ é
)
qqé è
)
qqè ê
{rr 
ifss 
(ss 
changedEntityss !
.ss! "
viewss" &
)ss& '
{tt 
InvokeEventuu 
(uu  
falseuu  %
)uu% &
;uu& '
}vv 
elseww 
{xx 
InvokeEventyy 
(yy  
trueyy  $
)yy$ %
;yy% &
}zz 
}{{ 
}|| 	
public
ÉÉ 
void
ÉÉ 
Unsubscription
ÉÉ "
(
ÉÉ" #
UserNotification
ÉÉ# 3
UserNotification
ÉÉ4 D
)
ÉÉD E
{
ÑÑ 	
this
ÖÖ 
.
ÖÖ !
onEventNotification
ÖÖ $
-=
ÖÖ% '
UserNotification
ÖÖ( 8
.
ÖÖ8 9
QuantityEvent
ÖÖ9 F
;
ÖÖF G
if
áá 
(
áá  
sqlTableDependency
áá "
is
áá# %
not
áá& )
null
áá* .
)
áá. /
{
áá0 1 
sqlTableDependency
àà "
.
àà" #
Stop
àà# '
(
àà' (
)
àà( )
;
àà) *
}
ââ 
}
ää 	
public
åå 
void
åå 
InvokeEvent
åå 
(
åå  
bool
åå  $
result
åå% +
)
åå+ ,
{
çç 	
if
éé 
(
éé !
onEventNotification
éé #
is
éé$ &
not
éé' *
null
éé+ /
)
éé/ 0
{
èè !
onEventNotification
êê #
.
êê# $
Invoke
êê$ *
(
êê* +
this
êê+ /
,
êê/ 0
new
êê1 4)
NotificationChangeEventArgs
êê5 P
(
êêP Q
result
êêQ W
)
êêW X
)
êêX Y
;
êêY Z
}
ëë 
}
íí 	
public
îî 
int
îî !
GetProductsQuantity
îî &
(
îî& '
UserNotification
îî' 7
UserNotification
îî8 H
)
îîH I
{
ïï 	
int
ññ 
quantity
ññ 
=
ññ 
$num
ññ 
;
ññ 
if
óó 
(
óó 
Next
óó 
is
óó 
not
óó 
null
óó  
)
óó  !
{
òò 
quantity
ôô 
=
ôô 
Next
ôô 
.
ôô  !
GetProductsQuantity
ôô  3
(
ôô3 4
UserNotification
ôô4 D
)
ôôD E
;
ôôE F
}
öö 
return
õõ 
quantity
õõ 
;
õõ 
}
úú 	
}
ùù 
}ûû ü2
∆C:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\EmprendeUCR_WebApplication\Infrastructure\NotificationContext\Repositories\ClientRepositories\ShoppingCartNotificationRepository.cs
	namespace 	&
EmprendeUCR_WebApplication
 $
.$ %
Infrastructure% 3
.3 4
NotificationContext4 G
.G H
RepositoriesH T
.T U
ClientRepositoriesU g
{ 
public 

class .
"ShoppingCartNotificationRepository 3
:4 5#
INotificationRepository6 M
{ 
private 
readonly !
NotificationDbContext .

_dbContext/ 9
;9 :
public 
IUnitOfWork 

UnitOfWork %
=>& (

_dbContext) 3
;3 4
private 
IConfiguration 
_configuration -
;- .
public #
INotificationRepository &
Next' +
{, -
set. 1
;1 2
get3 6
;6 7
}8 9
private 
string 
EmailToListen $
{% &
set' *
;* +
get, /
;/ 0
}1 2
public 
event  
newEventNotification )
onEventNotification* =
;= >
SqlTableDependency 
< 
Shopping_Cart_Has ,
>, -
sqlTableDependency. @
;@ A
public .
"ShoppingCartNotificationRepository 1
(1 2!
NotificationDbContext2 G

unitOfWorkH R
,R S
IConfigurationT b
configurationc p
)p q
{ 	

_dbContext 
= 

unitOfWork #
;# $
_configuration 
= 
configuration *
;* +
}   	
public"" 
void"" 
EventsSubscriptions"" '
(""' (
UserNotification""( 8
UserNotification""9 I
)""I J
{## 	
this&& 
.&& 
EmailToListen&& 
=&&  
UserNotification&&! 1
.&&1 2
Email&&2 7
;&&7 8
var(( 
mapper(( 
=(( 
new(( 
ModelToTableMapper(( /
<((/ 0
Shopping_Cart_Has((0 A
>((A B
(((B C
)((C D
;((D E
mapper** 
.** 

AddMapping** 
(** 
e** 
=>**  "
e**# $
.**$ %
Email**% *
,*** +
$str**, 3
)**3 4
;**4 5

Expression,, 
<,, 
Func,, 
<,, 
Shopping_Cart_Has,, -
,,,- .
bool,,/ 3
>,,3 4
>,,4 5

expression,,6 @
=,,A B
e,,C D
=>,,E G
e-- 
.-- 
Email-- 
==-- 
(-- 
string-- %
)--% &
EmailToListen--& 3
;--3 4"
ITableDependencyFilter// "
whereCondition//# 1
=//2 3
new//4 7$
SqlTableDependencyFilter//8 P
<//P Q
Shopping_Cart_Has//Q b
>//b c
(//c d

expression00 
,00 
mapper11 
)11 
;11 
sqlTableDependency33 
=33  
new33! $
SqlTableDependency33% 7
<337 8
Shopping_Cart_Has338 I
>33I J
(33J K
_configuration33K Y
.33Y Z
GetConnectionString33Z m
(33m n
$str	33n Å
)
33Å Ç
,
33Ç É
$str
33Ñ ó
,
33ó ò
filter
33ô ü
:
33ü †
whereCondition
33° Ø
,
33Ø ∞
mapper
33± ∑
:
33∑ ∏
mapper
33π ø
)
33ø ¿
;
33¿ ¡
sqlTableDependency44 
.44 
	OnChanged44 (
+=44) +
this44, 0
.440 1
ShoppingCartChange441 C
;44C D
if66 
(66 
Next66 
is66 
not66 
null66  
)66  !
{77 
Next88 
.88 
EventsSubscriptions88 (
(88( )
UserNotification88) 9
)889 :
;88: ;
}99 
this;; 
.;; 
onEventNotification;; $
+=;;% '
UserNotification;;( 8
.;;8 9
QuantityEvent;;9 F
;;;F G
sqlTableDependency== 
.== 
Start== $
(==$ %
)==% &
;==& '
}>> 	
publicBB 
intBB 
GetProductsQuantityBB &
(BB& '
UserNotificationBB' 7
UserNotificationBB8 H
)BBH I
{CC 	
returnDD 

_dbContextDD 
.DD 
Shopping_Cart_HasDD /
.DD/ 0
WhereDD0 5
(DD5 6
scDD6 8
=>DD9 ;
scDD< >
.DD> ?
EmailDD? D
==DDE G
EmailToListenDDH U
)DDU V
.DDV W
CountDDW \
(DD\ ]
)DD] ^
;DD^ _
}EE 	
publicGG 
voidGG 
UnsubscriptionGG "
(GG" #
UserNotificationGG# 3
UserNotificationGG4 D
)GGD E
{HH 	
thisII 
.II 
onEventNotificationII $
-=II% '
UserNotificationII( 8
.II8 9
QuantityEventII9 F
;IIF G
ifKK 
(KK 
sqlTableDependencyKK "
isKK# %
notKK& )
nullKK* .
)KK. /
{LL 
sqlTableDependencyMM "
.MM" #
StopMM# '
(MM' (
)MM( )
;MM) *
}NN 
}OO 	
privatePP 
voidPP 
ShoppingCartChangePP '
(PP' (
objectPP( .
senderPP/ 5
,PP5 6"
RecordChangedEventArgsPP7 M
<PPM N
Shopping_Cart_HasPPN _
>PP_ `
ePPa b
)PPb c
{QQ 	
onEventNotificationRR 
.RR  
InvokeRR  &
(RR& '
thisRR' +
,RR+ ,
newRR- 0'
NotificationChangeEventArgsRR1 L
(RRL M
falseRRM R
)RRR S
)RRS T
;RRT U
}SS 	
}TT 
}UU ÌP
œC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\EmprendeUCR_WebApplication\Infrastructure\NotificationContext\Repositories\EntrepeneurRepositories\OrderNotificationEntrepeneurRepository.cs
	namespace 	&
EmprendeUCR_WebApplication
 $
.$ %
Infrastructure% 3
.3 4
NotificationContext4 G
.G H
RepositoriesH T
.T U#
EntrepeneurRepositoriesU l
{ 
public 

class 2
&OrderNotificationEntrepeneurRepository 7
:8 9#
INotificationRepository: Q
{ 
private 
readonly !
NotificationDbContext .

_dbContext/ 9
;9 :
public 
IUnitOfWork 

UnitOfWork %
=>& (

_dbContext) 3
;3 4
private 
IConfiguration 
_configuration -
;- .
public #
INotificationRepository &
Next' +
{, -
set. 1
;1 2
get3 6
;6 7
}8 9
private 
string 
EmailToListen $
{% &
set' *
;* +
get, /
;/ 0
}1 2
public 
event  
newEventNotification )
onEventNotification* =
;= >
SqlTableDependency 
< (
OrderNotificationEntrepeneur 7
>7 8
sqlTableDependency9 K
;K L
public 2
&OrderNotificationEntrepeneurRepository 5
(5 6!
NotificationDbContext6 K

unitOfWorkL V
,V W
IConfigurationX f
configurationg t
)t u
{ 	

_dbContext 
= 

unitOfWork #
;# $
_configuration 
= 
configuration *
;* +
} 	
public   
void   
EventsSubscriptions   '
(  ' (
UserNotification  ( 8
UserNotification  9 I
)  I J
{!! 	
this$$ 
.$$ 
EmailToListen$$ 
=$$  
UserNotification$$! 1
.$$1 2
Email$$2 7
;$$7 8
var%% 
mapper%% 
=%% 
new%% 
ModelToTableMapper%% /
<%%/ 0(
OrderNotificationEntrepeneur%%0 L
>%%L M
(%%M N
)%%N O
;%%O P
mapper&& 
.&& 

AddMapping&& 
(&& 
e&& 
=>&&  "
e&&# $
.&&$ %
EntrepreneurEmail&&% 6
,&&6 7
$str&&8 L
)&&L M
;&&M N

Expression(( 
<(( 
Func(( 
<(( (
OrderNotificationEntrepeneur(( 8
,((8 9
bool((: >
>((> ?
>((? @

expression((A K
=((L M
e((N O
=>((P R
()) 
e)) 
.)) 
State)) 
==)) 
$str)) 5
||))6 8
e))9 :
.)): ;
State)); @
==))A C
$str))D N
||))O Q
e))R S
.))S T
State))T Y
==))Z \
$str))] h
)))h i
&&))j l
e))m n
.))n o
EntrepreneurEmail	))o Ä
==
))Å É
(
))É Ñ
string
))Ñ ä
)
))ä ã
this
))ã è
.
))è ê
EmailToListen
))ê ù
;
))ù û"
ITableDependencyFilter++ "
whereCondition++# 1
=++2 3
new++4 7$
SqlTableDependencyFilter++8 P
<++P Q(
OrderNotificationEntrepeneur++Q m
>++m n
(++n o

expression,, 
,,, 
mapper-- 
)-- 
;-- 
sqlTableDependency// 
=//  
new//! $
SqlTableDependency//% 7
<//7 8(
OrderNotificationEntrepeneur//8 T
>//T U
(//U V
_configuration//V d
.//d e
GetConnectionString//e x
(//x y
$str	//y å
)
//å ç
,
//ç é
$str
//è ñ
,
//ñ ó
filter
//ò û
:
//û ü
whereCondition
//† Æ
,
//Æ Ø
mapper
//∞ ∂
:
//∂ ∑
mapper
//∏ æ
)
//æ ø
;
//ø ¿
sqlTableDependency00 
.00 
	OnChanged00 (
+=00) +
this00, 0
.000 1"
OrderEntrepeneurChange001 G
;00G H
if33 
(33 
Next33 
is33 
not33 
null33  
)33  !
{33" #
Next44 
.44 
EventsSubscriptions44 (
(44( )
UserNotification44) 9
)449 :
;44: ;
}55 
this77 
.77 
onEventNotification77 $
+=77% '
UserNotification77( 8
.778 9
QuantityEvent779 F
;77F G
sqlTableDependency99 
.99 
Start99 $
(99$ %
)99% &
;99& '
}:: 	
publicAA 
voidAA 
GetNotificationsAA $
(AA$ %
UserNotificationAA% 5
UserNotificationAA6 F
)AAF G
{BB 	
ListCC 
<CC 
NotificationCC 
>CC 
listCC #
=CC$ %

_dbContextDD 
.DD )
OrderNotificationEntrepeneursDD <
.DD< =
WhereEE 
(EE 
eEE 
=>EE  "
eEE# $
.EE$ %
EntrepreneurEmailEE% 6
==EE7 9
UserNotificationEE: J
.EEJ K
EmailEEK P
&&EEQ S
(EET U
eEEU V
.EEV W
StateEEW \
==EE] _
$strEE` w
)EEw x
)EEx y
.FF 
ToListFF 
<FF  
NotificationFF  ,
>FF, -
(FF- .
)FF. /
;FF/ 0
UserNotificationGG 
.GG 
setNewNotificationsGG 0
(GG0 1
listGG1 5
)GG5 6
;GG6 7
ifHH 
(HH 
NextHH 
isHH 
notHH 
nullHH  
)HH  !
{II 
NextJJ 
.JJ 
GetNotificationsJJ %
(JJ% &
UserNotificationJJ& 6
)JJ6 7
;JJ7 8
}KK 
}LL 	
publicSS 
voidSS $
GetNotificationsQuantitySS ,
(SS, -
UserNotificationSS- =
UserNotificationSS> N
)SSN O
{TT 	
UserNotificationUU 
.UU  
notificationQuantityUU 1
=UU2 3
UserNotificationUU4 D
.UUD E 
notificationQuantityUUE Y
+UUZ [

_dbContextUU\ f
.UUf g*
OrderNotificationEntrepeneurs	UUg Ñ
.
UUÑ Ö
WhereVV 
(VV 
eVV 
=>VV  "
eVV# $
.VV$ %
EntrepreneurEmailVV% 6
==VV7 9
UserNotificationVV: J
.VVJ K
EmailVVK P
&&VVQ S
(VVT U
eVVU V
.VVV W
StateVVW \
==VV] _
$strVV` w
)VVw x
)VVx y
.WW 
CountWW 
(WW 
)WW  
;WW  !
ifXX 
(XX 
NextXX 
isXX 
notXX 
nullXX  
)XX  !
{YY 
NextZZ 
.ZZ 
EventsSubscriptionsZZ (
(ZZ( )
UserNotificationZZ) 9
)ZZ9 :
;ZZ: ;
}[[ 
}]] 	
privatedd 
voiddd "
OrderEntrepeneurChangedd +
(dd+ ,
objectdd, 2
senderdd3 9
,dd9 :"
RecordChangedEventArgsdd; Q
<ddQ R(
OrderNotificationEntrepeneurddR n
>ddn o
eddp q
)ddq r
{ee 	
varff 
changedEntityff 
=ff 
eff  !
.ff! "
Entityff" (
;ff( )
ifgg 
(gg 
changedEntitygg 
.gg 
EntrepreneurEmailgg /
==gg0 2
(gg3 4
stringgg4 :
)gg: ;
EmailToListengg; H
&&ggI K
changedEntityggL Y
.ggY Z
StateggZ _
==gg` b
$strggc z
)ggz {
{hh 
onEventNotificationii #
.ii# $
Invokeii$ *
(ii* +
thisii+ /
,ii/ 0
newii1 4'
NotificationChangeEventArgsii5 P
(iiP Q
trueiiQ U
)iiU V
)iiV W
;iiW X
}jj 
elsekk 
{ll 
onEventNotificationmm #
.mm# $
Invokemm$ *
(mm* +
thismm+ /
,mm/ 0
newmm1 4'
NotificationChangeEventArgsmm5 P
(mmP Q
falsemmQ V
)mmV W
)mmW X
;mmX Y
}nn 
}pp 	
publicrr 
voidrr 
Unsubscriptionrr "
(rr" #
UserNotificationrr# 3
UserNotificationrr4 D
)rrD E
{ss 	
thistt 
.tt 
onEventNotificationtt $
-=tt% '
UserNotificationtt( 8
.tt8 9
QuantityEventtt9 F
;ttF G
ifvv 
(vv 
sqlTableDependencyvv "
isvv# %
notvv& )
nullvv* .
)vv. /
{ww 
sqlTableDependencyxx "
.xx" #
Stopxx# '
(xx' (
)xx( )
;xx) *
}yy 
}zz 	
public|| 
int|| 
GetProductsQuantity|| &
(||& '
UserNotification||' 7
UserNotification||8 H
)||H I
{}} 	
int~~ 
quantity~~ 
=~~ 
$num~~ 
;~~ 
if 
( 
Next 
is 
not 
null  
)  !
{
ÄÄ 
quantity
ÅÅ 
=
ÅÅ 
Next
ÅÅ  
.
ÅÅ  !!
GetProductsQuantity
ÅÅ! 4
(
ÅÅ4 5
UserNotification
ÅÅ5 E
)
ÅÅE F
;
ÅÅF G
}
ÇÇ 
return
ÉÉ 
quantity
ÉÉ 
;
ÉÉ 
}
ÑÑ 	
}
ÖÖ 
}ÜÜ πA
∂C:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\EmprendeUCR_WebApplication\Infrastructure\NotificationContext\Repositories\Handlers\ClientNotificationRepository.cs
	namespace 	&
EmprendeUCR_WebApplication
 $
.$ %
Infrastructure% 3
.3 4
NotificationContext4 G
.G H
RepositoriesH T
.T U
HandlersU ]
{ 
public 

class (
ClientNotificationRepository -
:. /#
INotificationRepository0 G
{ 
private 
readonly !
NotificationDbContext .

_dbContext/ 9
;9 :
public 
IUnitOfWork 

UnitOfWork %
=>& (

_dbContext) 3
;3 4
private 
IConfiguration 
_configuration -
;- .
public #
INotificationRepository &
Next' +
{, -
set. 1
;1 2
get3 6
;6 7
}8 9
public #
INotificationRepository &
Child' ,
{- .
set/ 2
;2 3
get4 7
;7 8
}9 :
public (
ClientNotificationRepository +
(+ ,!
NotificationDbContext, A

unitOfWorkB L
,L M
IConfigurationN \
configuration] j
)j k
{ 	

_dbContext 
= 

unitOfWork #
;# $
_configuration 
= 
configuration *
;* +%
createChainResponsability %
(% &
)& '
;' (
} 	
private 
void %
createChainResponsability .
(. /
)/ 0
{ 	#
INotificationRepository #
OrderNotification$ 5
=6 7
new8 ;-
!OrderNotificationClientRepository< ]
(] ^
this^ b
.b c

_dbContextc m
,m n
thiso s
.s t
_configuration	t Ç
)
Ç É
;
É Ñ#
INotificationRepository   #$
shoppingCartNotification  $ <
=  = >
new  ? B.
"ShoppingCartNotificationRepository  C e
(  e f
this  f j
.  j k

_dbContext  k u
,  u v
this  w {
.  { |
_configuration	  | ä
)
  ä ã
;
  ã å
Child"" 
="" 
OrderNotification"" %
;""% &
OrderNotification## 
.## 
Next## "
=### $$
shoppingCartNotification##% =
;##= >
}%% 	
public'' 
void'' 
EventsSubscriptions'' '
(''' (
UserNotification''( 8
UserNotification''9 I
)''I J
{(( 	
if)) 
()) 
UserNotification))  
.))  !
TypeUser))! )
==))* ,
())- .
int)). 1
)))1 2
Users))2 7
.))7 8
Client))8 >
)))> ?
{** 
if++ 
(++ 
Child++ 
is++ 
not++  
null++! %
)++% &
{++' (
Child,, 
.,, 
EventsSubscriptions,, -
(,,- .
UserNotification,,. >
),,> ?
;,,? @
}-- 
}.. 
else// 
{// 
if00 
(00 
Next00 
is00 
not00 
null00  $
)00$ %
{11 
Next22 
.22 
EventsSubscriptions22 ,
(22, -
UserNotification22- =
)22= >
;22> ?
}33 
}44 
}55 	
public77 
void77 
GetNotifications77 $
(77$ %
UserNotification77% 5
UserNotification776 F
)77F G
{88 	
if99 
(99 
UserNotification99  
.99  !
TypeUser99! )
==99* ,
(99- .
int99. 1
)991 2
Users992 7
.997 8
Client998 >
)99> ?
{:: 
if;; 
(;; 
Child;; 
is;; 
not;;  
null;;! %
);;% &
{<< 
Child== 
.== 
GetNotifications== *
(==* +
UserNotification==+ ;
)==; <
;==< =
}?? 
}@@ 
elseAA 
{BB 
ifCC 
(CC 
NextCC 
isCC 
notCC 
nullCC  $
)CC$ %
{DD 
NextEE 
.EE 
GetNotificationsEE )
(EE) *
UserNotificationEE* :
)EE: ;
;EE; <
}FF 
}GG 
}HH 	
publicJJ 
voidJJ $
GetNotificationsQuantityJJ ,
(JJ, -
UserNotificationJJ- =
UserNotificationJJ> N
)JJN O
{KK 	
ifLL 
(LL 
UserNotificationLL  
.LL  !
TypeUserLL! )
==LL* ,
(LL- .
intLL. 1
)LL1 2
UsersLL2 7
.LL7 8
ClientLL8 >
)LL> ?
{MM 
ifNN 
(NN 
ChildNN 
isNN 
notNN  
nullNN! %
)NN% &
{OO 
ChildPP 
.PP $
GetNotificationsQuantityPP 2
(PP2 3
UserNotificationPP3 C
)PPC D
;PPD E
}QQ 
}RR 
elseSS 
{TT 
ifUU 
(UU 
NextUU 
isUU 
notUU 
nullUU  $
)UU$ %
{VV 
NextWW 
.WW $
GetNotificationsQuantityWW 1
(WW1 2
UserNotificationWW2 B
)WWB C
;WWC D
}YY 
}ZZ 
}[[ 	
public]] 
void]] 
Unsubscription]] "
(]]" #
UserNotification]]# 3
UserNotification]]4 D
)]]D E
{^^ 	
if__ 
(__ 
UserNotification__  
.__  !
TypeUser__! )
==__* ,
(__- .
int__. 1
)__1 2
Users__2 7
.__7 8
Client__8 >
)__> ?
{`` 
ifaa 
(aa 
Childaa 
isaa 
notaa  
nullaa! %
)aa% &
{bb 
Childcc 
.cc 
Unsubscriptioncc (
(cc( )
UserNotificationcc) 9
)cc9 :
;cc: ;
}dd 
}ee 
elseff 
{gg 
ifhh 
(hh 
Nexthh 
ishh 
nothh 
nullhh  $
)hh$ %
{ii 
Nextjj 
.jj 
Unsubscriptionjj '
(jj' (
UserNotificationjj( 8
)jj8 9
;jj9 :
}kk 
}ll 
}mm 	
publicoo 
intoo 
GetProductsQuantityoo &
(oo& '
UserNotificationoo' 7
UserNotificationoo8 H
)ooH I
{pp 	
intqq 
quantityqq 
=qq 
$numqq 
;qq 
ifrr 
(rr 
UserNotificationrr  
.rr  !
TypeUserrr! )
==rr* ,
(rr- .
intrr. 1
)rr1 2
Usersrr2 7
.rr7 8
Clientrr8 >
)rr> ?
{ss 
iftt 
(tt 
Childtt 
istt 
nottt  
nulltt! %
)tt% &
{uu 
quantityvv 
=vv 
Childvv $
.vv$ %
GetProductsQuantityvv% 8
(vv8 9
UserNotificationvv9 I
)vvI J
;vvJ K
}ww 
}xx 
elseyy 
{zz 
if{{ 
({{ 
Next{{ 
is{{ 
not{{ 
null{{  $
){{$ %
{|| 
quantity}} 
=}} 
Next}}  $
.}}$ %
GetProductsQuantity}}% 8
(}}8 9
UserNotification}}9 I
)}}I J
;}}J K
}~~ 
} 
return
ÄÄ 
quantity
ÄÄ 
;
ÄÄ 
}
ÅÅ 	
}
ÇÇ 
}ÉÉ Ü9
ªC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\EmprendeUCR_WebApplication\Infrastructure\NotificationContext\Repositories\Handlers\EntrepeneurNotificationRepository.cs
	namespace 	&
EmprendeUCR_WebApplication
 $
.$ %
Infrastructure% 3
.3 4
NotificationContext4 G
.G H
RepositoriesH T
.T U
HandlersU ]
{ 
public 

class -
!EntrepeneurNotificationRepository 2
:3 4#
INotificationRepository5 L
{ 
private 
readonly !
NotificationDbContext .

_dbContext/ 9
;9 :
public 
IUnitOfWork 

UnitOfWork %
=>& (

_dbContext) 3
;3 4
private 
IConfiguration 
_configuration -
;- .
public #
INotificationRepository &
Next' +
{, -
set. 1
;1 2
get3 6
;6 7
}8 9
public #
INotificationRepository &
Child' ,
{- .
set/ 2
;2 3
get4 7
;7 8
}9 :
public -
!EntrepeneurNotificationRepository 0
(0 1!
NotificationDbContext1 F

unitOfWorkG Q
,Q R
IConfigurationS a
configurationb o
)o p
{ 	

_dbContext 
= 

unitOfWork #
;# $
_configuration 
= 
configuration *
;* +%
createChainResponsability %
(% &
)& '
;' (
} 	
private 
void %
createChainResponsability .
(. /
)/ 0
{ 	#
INotificationRepository   #
OrderNotification  $ 5
=  6 7
new  8 ;2
&OrderNotificationEntrepeneurRepository  < b
(  b c
this  c g
.  g h

_dbContext  h r
,  r s
this  t x
.  x y
_configuration	  y á
)
  á à
;
  à â
Child"" 
="" 
OrderNotification"" %
;""% &
}$$ 	
public&& 
void&& 
EventsSubscriptions&& '
(&&' (
UserNotification&&( 8
UserNotification&&9 I
)&&I J
{'' 	
if(( 
((( 
UserNotification((  
.((  !
TypeUser((! )
==((* ,
(((- .
int((. 1
)((1 2
Users((2 7
.((7 8
Entrepeneur((8 C
)((C D
{)) 
if** 
(** 
Child** 
is** 
not**  
null**! %
)**% &
{**' (
Child++ 
.++ 
EventsSubscriptions++ -
(++- .
UserNotification++. >
)++> ?
;++? @
},, 
}-- 
else.. 
{// 
if00 
(00 
Next00 
is00 
not00 
null00  $
)00$ %
{11 
Next22 
.22 
EventsSubscriptions22 ,
(22, -
UserNotification22- =
)22= >
;22> ?
}33 
}44 
}55 	
public77 
void77 
GetNotifications77 $
(77$ %
UserNotification77% 5
UserNotification776 F
)77F G
{88 	
if99 
(99 
UserNotification99  
.99  !
TypeUser99! )
==99* ,
(99- .
int99. 1
)991 2
Users992 7
.997 8
Entrepeneur998 C
)99C D
{:: 
if;; 
(;; 
Child;; 
is;; 
not;;  
null;;! %
);;% &
{<< 
Child== 
.== 
GetNotifications== *
(==* +
UserNotification==+ ;
)==; <
;==< =
}>> 
}?? 
else@@ 
{AA 
ifBB 
(BB 
NextBB 
isBB 
notBB 
nullBB  $
)BB$ %
{CC 
NextDD 
.DD 
GetNotificationsDD )
(DD) *
UserNotificationDD* :
)DD: ;
;DD; <
}EE 
}FF 
}GG 	
publicII 
voidII $
GetNotificationsQuantityII ,
(II, -
UserNotificationII- =
UserNotificationII> N
)IIN O
{JJ 	
ifKK 
(KK 
UserNotificationKK  
.KK  !
TypeUserKK! )
==KK* ,
(KK- .
intKK. 1
)KK1 2
UsersKK2 7
.KK7 8
EntrepeneurKK8 C
)KKC D
{LL 
ifMM 
(MM 
ChildMM 
isMM 
notMM  
nullMM! %
)MM% &
{NN 
ChildOO 
.OO $
GetNotificationsQuantityOO 2
(OO2 3
UserNotificationOO3 C
)OOC D
;OOD E
}PP 
}QQ 
elseRR 
{SS 
ifTT 
(TT 
NextTT 
isTT 
notTT 
nullTT  $
)TT$ %
{UU 
NextVV 
.VV $
GetNotificationsQuantityVV 1
(VV1 2
UserNotificationVV2 B
)VVB C
;VVC D
}WW 
}XX 
}YY 	
public[[ 
void[[ 
Unsubscription[[ "
([[" #
UserNotification[[# 3
UserNotification[[4 D
)[[D E
{\\ 	
if]] 
(]] 
UserNotification]]  
.]]  !
TypeUser]]! )
==]]* ,
(]]- .
int]]. 1
)]]1 2
Users]]2 7
.]]7 8
Entrepeneur]]8 C
)]]C D
{^^ 
if__ 
(__ 
Child__ 
is__ 
not__  
null__! %
)__% &
{`` 
Childaa 
.aa 
Unsubscriptionaa (
(aa( )
UserNotificationaa) 9
)aa9 :
;aa: ;
}bb 
}cc 
elsedd 
{ee 
ifff 
(ff 
Nextff 
isff 
notff 
nullff  $
)ff$ %
{gg 
Nexthh 
.hh 
Unsubscriptionhh '
(hh' (
UserNotificationhh( 8
)hh8 9
;hh9 :
}ii 
}jj 
}kk 	
publicmm 
intmm 
GetProductsQuantitymm &
(mm& '
UserNotificationmm' 7
UserNotificationmm8 H
)mmH I
{nn 	
intoo 
quantityoo 
=oo 
$numoo 
;oo 
ifpp 
(pp 
Nextpp 
ispp 
notpp 
nullpp  
)pp  !
{qq 
quantityrr 
=rr 
Nextrr 
.rr  
GetProductsQuantityrr  3
(rr3 4
UserNotificationrr4 D
)rrD E
;rrE F
}ss 
returntt 
quantitytt 
;tt 
}uu 	
}vv 
}ww Æ)
∑C:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\EmprendeUCR_WebApplication\Infrastructure\NotificationContext\Repositories\Handlers\NotificationRepositoryHandler.cs
	namespace 	&
EmprendeUCR_WebApplication
 $
.$ %
Infrastructure% 3
.3 4
NotificationContext4 G
.G H
RepositoriesH T
.T U
HandlersU ]
{ 
public 

class )
NotificationRepositoryHandler .
:/ 0#
INotificationRepository1 H
{		 
private

 
readonly

 !
NotificationDbContext

 .

_dbContext

/ 9
;

9 :
public 
IUnitOfWork 

UnitOfWork %
=>& (

_dbContext) 3
;3 4
private 
IConfiguration 
_configuration -
;- .
public #
INotificationRepository &
Next' +
{, -
set. 1
;1 2
get3 6
;6 7
}8 9
public )
NotificationRepositoryHandler ,
(, -!
NotificationDbContext- B

unitOfWorkC M
,M N
IConfigurationO ]
configuration^ k
)k l
{ 	

_dbContext 
= 

unitOfWork #
;# $
_configuration 
= 
configuration *
;* +%
createChainResponsability %
(% &
)& '
;' (
} 	
private 
void %
createChainResponsability .
(. /
)/ 0
{ 	#
INotificationRepository #
clientNotifications$ 7
=8 9
new: =(
ClientNotificationRepository> Z
(Z [
this[ _
._ `

_dbContext` j
,j k
thisl p
.p q
_configurationq 
)	 Ä
;
Ä Å#
INotificationRepository #
otherNotification$ 5
=6 7
new8 ;-
!EntrepeneurNotificationRepository< ]
(] ^
this^ b
.b c

_dbContextc m
,m n
thiso s
.s t
_configuration	t Ç
)
Ç É
;
É Ñ
Next 
= 
clientNotifications &
;& '
clientNotifications 
.  
Next  $
=% &
otherNotification' 8
;8 9
}   	
public"" 
void"" 
EventsSubscriptions"" '
(""' (
UserNotification""( 8
UserNotification""9 I
)""I J
{## 	
if$$ 
($$ 
Next$$ 
is$$ 
not$$ 
null$$  
)$$  !
{%% 
Next&& 
.&& 
EventsSubscriptions&& (
(&&( )
UserNotification&&) 9
)&&9 :
;&&: ;
}'' 
}(( 	
public** 
void** 
GetNotifications** $
(**$ %
UserNotification**% 5
UserNotification**6 F
)**F G
{++ 	
if,, 
(,, 
Next,, 
is,, 
not,, 
null,,  
),,  !
{-- 
Next.. 
... 
GetNotifications.. %
(..% &
UserNotification..& 6
)..6 7
;..7 8
}// 
}00 	
public22 
void22 $
GetNotificationsQuantity22 ,
(22, -
UserNotification22- =
UserNotification22> N
)22N O
{33 	
if44 
(44 
Next44 
is44 
not44 
null44  
)44  !
{55 
UserNotification66  
.66  ! 
notificationQuantity66! 5
=666 7
$num668 9
;669 :
Next77 
.77 $
GetNotificationsQuantity77 -
(77- .
UserNotification77. >
)77> ?
;77? @
}99 
}:: 	
public<< 
void<< 
Unsubscription<< "
(<<" #
UserNotification<<# 3
UserNotification<<4 D
)<<D E
{== 	
if>> 
(>> 
Next>> 
is>> 
not>> 
null>>  
)>>  !
{?? 
Next@@ 
.@@ 
Unsubscription@@ #
(@@# $
UserNotification@@$ 4
)@@4 5
;@@5 6
}AA 
}BB 	
publicDD 
intDD 
GetProductsQuantityDD &
(DD& '
UserNotificationDD' 7
UserNotificationDD8 H
)DDH I
{EE 	
intFF 
quantityFF 
=FF 
$numFF 
;FF 
ifGG 
(GG 
NextGG 
isGG 
notGG 
nullGG  
)GG  !
{HH 
quantityII 
=II 
NextII 
.II  
GetProductsQuantityII  3
(II3 4
UserNotificationII4 D
)IID E
;IIE F
}JJ 
returnKK 
quantityKK 
;KK 
}LL 	
}MM 
}NN ø
úC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\EmprendeUCR_WebApplication\Infrastructure\OrderContext\EntityMappings\GenericStatusMap.cs
	namespace 	&
EmprendeUCR_WebApplication
 $
.$ %
Infrastructure% 3
.3 4
OrderContext4 @
.@ A
EntityMappingsA O
{ 
public 

class 
GenericStatusMap !
:" #$
IEntityTypeConfiguration$ <
<< =
GenericStatus= J
>J K
{ 
public 
void 
	Configure 
( 
EntityTypeBuilder /
</ 0
GenericStatus0 =
>= >
builder? F
)F G
{ 	
builder 
. 
HasKey 
( 
e 
=> 
new  #
{$ %
e& '
.' (
Name( ,
}- .
). /
;/ 0
builder 
. 
ToTable 
( 
$str ,
), -
;- .
builder 
. 
Property 
( 
e 
=> !
e" #
.# $
Name$ (
)( )
. 
HasMaxLength 
( 
$num  
)  !
. 
HasColumnName 
( 
$str %
)% &
;& '
builder!! 
.!! 
HasOne!! 
(!! 
e!! 
=>!! 
e!!  !
.!!! "
status!!" (
)!!( )
."" 
WithOne"" 
("" 
s"" 
=>"" 
s"" 
.""  
genericStatus""  -
)""- .
.## 
HasForeignKey## 
<## 
GenericStatus## ,
>##, -
(##- .
e##. /
=>##0 2
new##3 6
{##7 8
e##9 :
.##: ;
Name##; ?
}##@ A
)##A B
;##B C
}$$ 	
}%% 
}&& ·%
îC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\EmprendeUCR_WebApplication\Infrastructure\OrderContext\EntityMappings\OrderMap.cs
	namespace 	&
EmprendeUCR_WebApplication
 $
.$ %
Infrastructure% 3
.3 4
OrderContext4 @
.@ A
EntityMappingsA O
{ 
public 

class 
OrderMap 
: $
IEntityTypeConfiguration 4
<4 5
Order5 :
>: ;
{ 
public 
void 
	Configure 
( 
EntityTypeBuilder /
</ 0
Order0 5
>5 6
builder7 >
)> ?
{ 	
builder 
. 
HasKey 
( 
e 
=> 
new  #
{$ %
e& '
.' (
DateAndHourCreation( ;
,; <
e= >
.> ?
ClientEmail? J
}J K
)K L
;L M
builder 
. 
ToTable 
( 
$str #
)# $
;$ %
builder 
. 
Property 
( 
e 
=> !
e" #
.# $
Details$ +
)+ ,
. 
HasMaxLength 
( 
$num !
)! "
;" #
builder!! 
.!! 
Property!! 
(!! 
e!! 
=>!! !
e!!" #
.!!# $
DeliveryDate!!$ 0
)!!0 1
.!!1 2
HasColumnName!!2 ?
(!!? @
$str!!@ O
)!!O P
;!!P Q
builder## 
.## 
Property## 
(## 
e## 
=>## !
e##" #
.### $
DeliveryAddress##$ 3
)##3 4
.$$ 
HasMaxLength$$ 
($$ 
$num$$ "
)$$" #
.%% 
HasColumnName%% 
(%% 
$str%% 1
)%%1 2
;%%2 3
builder'' 
.'' 
Property'' 
('' 
e'' 
=>'' !
e''" #
.''# $
EntrepreneurEmail''$ 5
)''5 6
.(( 
HasMaxLength(( 
((( 
$num(( !
)((! "
.((" #
HasColumnName((# 0
(((0 1
$str((1 E
)((E F
;((F G
builder** 
.** 
Property** 
(** 
e** 
=>** !
e**" #
.**# $
DateAndHourCreation**$ 7
)**7 8
.++ 
HasColumnName++ 
(++ 
$str++ :
)++: ;
;++; <
builder-- 
.-- 
Property-- 
(-- 
d-- 
=>-- !
d--" #
.--# $
ClientEmail--$ /
)--/ 0
.--0 1
HasColumnName--1 >
(--> ?
$str--? M
)--M N
... 
HasMaxLength.. 
(.. 
$num.. !
)..! "
;.." #
builder00 
.00 
Property00 
(00 
e00 
=>00 !
e00" #
.00# $
State00$ )
)00) *
.11 
HasMaxLength11 
(11 
$num11  
)11  !
.22 
HasColumnName22 
(22 
$str22 &
)22& '
;22' (
builder44 
.44 
Property44 
(44 
e44 
=>44 !
e44" #
.44# $
PaymentName44$ /
)44/ 0
.55 
HasMaxLength55 
(55 
$num55  
)55  !
.66 
HasColumnName66 
(66 
$str66 -
)66- .
;66. /
builder88 
.88 
HasMany88 
(88 
d88 
=>88  
d88! "
.88" #
	Organized88# ,
)88, -
.99 
WithOne99 
(99 
p99 
=>99 
p99 
.99  
order99  %
)99% &
.99& '

IsRequired99' 1
(991 2
)992 3
;993 4
builder;; 
.;; 
HasOne;; 
(;; 
e;; 
=>;; 
e;;  !
.;;! "
genericStatus;;" /
);;/ 0
.<< 
WithMany<< 
(<< 
s<< 
=><< 
s<<  
.<<  !
Order<<! &
)<<& '
.== 
HasForeignKey== 
(== 
e==  
=>==! #
new==$ '
{==( )
e==* +
.==+ ,
State==, 1
}==2 3
)==3 4
;==4 5
}?? 	
}@@ 
}AA í+
òC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\EmprendeUCR_WebApplication\Infrastructure\OrderContext\EntityMappings\OrganizedMap.cs
	namespace 	&
EmprendeUCR_WebApplication
 $
.$ %
Infrastructure% 3
.3 4
OrderContext4 @
.@ A
EntityMappingsA O
{ 
public 

class 
OrganizedMap 
: $
IEntityTypeConfiguration  8
<8 9
	Organized9 B
>B C
{ 
public 
void 
	Configure 
( 
EntityTypeBuilder /
</ 0
	Organized0 9
>9 :
builder; B
)B C
{ 	
builder 
. 
HasKey 
( 
e 
=> 
new  #
{$ %
e& '
.' (
CodeId( .
,. /
e0 1
.1 2
EntrepreneurEmail2 C
,C D
eE F
.F G

CategoryIdG Q
,Q R
e& '
.' (
DateAndHourCreation( ;
,; <
e= >
.> ?
Email? D
}D E
)E F
;F G
builder 
. 
ToTable 
( 
$str '
)' (
;( )
builder 
. 
Property 
( 
e 
=> !
e" #
.# $
EntrepreneurEmail$ 5
)5 6
. 
HasMaxLength 
( 
$num !
)! "
." #
HasColumnName# 0
(0 1
$str1 E
)E F
;F G
builder!! 
.!! 
Property!! 
(!! 
e!! 
=>!! !
e!!" #
.!!# $
Email!!$ )
)!!) *
."" 
HasMaxLength"" 
("" 
$num"" !
)""! "
.""" #
HasColumnName""# 0
(""0 1
$str""1 8
)""8 9
;""9 :
builder$$ 
.$$ 
Property$$ 
($$ 
e$$ 
=>$$ !
e$$" #
.$$# $
Name$$$ (
)$$( )
.%% 
HasMaxLength%% 
(%% 
$num%%  
)%%  !
.%%! "

IsRequired%%" ,
(%%, -
)%%- .
;%%. /
builder'' 
.'' 
Property'' 
('' 
e'' 
=>'' !
e''" #
.''# $
DateAndHourCreation''$ 7
)''7 8
.''8 9
HasColumnName''9 F
(''F G
$str''G b
)''b c
;''c d
builder)) 
.)) 
Property)) 
()) 
e)) 
=>)) !
e))" #
.))# $
DateOfChange))$ 0
)))0 1
.))1 2
HasColumnName))2 ?
())? @
$str))@ P
)))P Q
;))Q R
builder++ 
.++ 
Property++ 
(++ 
e++ 
=>++ !
e++" #
.++# $
CodeId++$ *
)++* +
.+++ ,
HasColumnName++, 9
(++9 :
$str++: C
)++C D
;++D E
builder-- 
.-- 
Property-- 
(-- 
e-- 
=>-- !
e--" #
.--# $

CategoryId--$ .
)--. /
.--/ 0
HasColumnName--0 =
(--= >
$str--> K
)--K L
;--L M
builder00 
.00 
HasOne00 
(00 
d00 
=>00 
d00  !
.00! "
order00" '
)00' (
.11 
WithMany11 
(11 
p11 
=>11 
p11  
.11  !
	Organized11! *
)11* +
.22 
HasForeignKey22 
(22 
d22  
=>22! #
new22$ '
{22( )
d22* +
.22+ ,
DateAndHourCreation22, ?
,22? @
d22A B
.22B C
Email22C H
}22I J
)22J K
.22K L

IsRequired22L V
(22V W
)22W X
;22X Y
builder44 
.44 
HasOne44 
(44 
d44 
=>44 
d44  !
.44! "
status44" (
)44( )
.55 
WithMany55 
(55 
p55 
=>55 
p55  
.55  !
	Organized55! *
)55* +
.66 
HasForeignKey66 
(66 
d66  
=>66! #
new66$ '
{66( )
d66* +
.66+ ,
Name66, 0
}660 1
)661 2
;662 3
builder88 
.88 
HasOne88 
(88 
d88 
=>88 
d88  !
.88! "
productService88" 0
)880 1
.99 
WithMany99 
(99 
p99 
=>99 
p99  
.99  !
	Organized99! *
)99* +
.:: 
HasForeignKey:: 
(:: 
d::  
=>::! #
new::$ '
{::( )
d::* +
.::+ ,
CodeId::, 2
,::2 3
d::4 5
.::5 6
EntrepreneurEmail::6 G
,::G H
d::I J
.::J K

CategoryId::K U
}::V W
)::W X
;::X Y
};; 	
}<< 
}== ›
°C:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\EmprendeUCR_WebApplication\Infrastructure\OrderContext\EntityMappings\PersonalizedStatusMap.cs
	namespace 	&
EmprendeUCR_WebApplication
 $
.$ %
Infrastructure% 3
.3 4
OrderContext4 @
.@ A
EntityMappingsA O
{ 
public 

class !
PersonalizedStatusMap &
:' ($
IEntityTypeConfiguration) A
<A B
PersonalizedStatusB T
>T U
{ 
public 
void 
	Configure 
( 
EntityTypeBuilder /
</ 0
PersonalizedStatus0 B
>B C
builderD K
)K L
{ 	
builder 
. 
HasKey 
( 
e 
=> 
new  #
{$ %
e& '
.' (
Name( ,
}- .
). /
;/ 0
builder 
. 
ToTable 
( 
$str 1
)1 2
;2 3
builder 
. 
Property 
( 
e 
=> !
e" #
.# $
Name$ (
)( )
. 
HasMaxLength 
( 
$num  
)  !
. 
HasColumnName 
( 
$str %
)% &
;& '
builder!! 
.!! 
HasOne!! 
(!! 
e!! 
=>!! 
e!!  !
.!!! "
status!!" (
)!!( )
."" 
WithOne"" 
("" 
s"" 
=>"" 
s"" 
.""  
personalizedStatus""  2
)""2 3
.## 
HasForeignKey## 
<## 
PersonalizedStatus## 1
>##1 2
(##2 3
e##3 4
=>##5 7
new##8 ;
{##< =
e##> ?
.##? @
Name##@ D
}##E F
)##F G
;##G H
}%% 	
}&& 
}'' ÿ 
üC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\EmprendeUCR_WebApplication\Infrastructure\OrderContext\EntityMappings\ProductHasStatusMap.cs
	namespace 	&
EmprendeUCR_WebApplication
 $
.$ %
Infrastructure% 3
.3 4
OrderContext4 @
.@ A
EntityMappingsA O
{ 
public 

class 
ProductHasStatusMap $
:% &$
IEntityTypeConfiguration' ?
<? @
ProductHasStatus@ P
>P Q
{ 
public 
void 
	Configure 
( 
EntityTypeBuilder /
</ 0
ProductHasStatus0 @
>@ A
builderB I
)I J
{ 	
builder 
. 
HasKey 
( 
e 
=> 
new  #
{$ %
e& '
.' (
Name( ,
,, -
e. /
./ 0
CodeId0 6
,6 7
e8 9
.9 :
EntrepreneurEmail: K
,K L
eM N
.N O

CategoryIdO Y
}Z [
)[ \
;\ ]
builder 
. 
ToTable 
( 
$str (
)( )
;) *
builder 
. 
Property 
( 
e 
=> !
e" #
.# $
Name$ (
)( )
. 
HasMaxLength 
( 
$num  
)  !
. 
HasColumnName 
( 
$str %
)% &
;& '
builder!! 
.!! 
Property!! 
(!! 
e!! 
=>!! !
e!!" #
.!!# $
CodeId!!$ *
)!!* +
."" 
HasColumnName"" 
("" 
$str"" (
)""( )
;"") *
builder$$ 
.$$ 
Property$$ 
($$ 
e$$ 
=>$$ !
e$$" #
.$$# $
EntrepreneurEmail$$$ 5
)$$5 6
.%% 
HasMaxLength%% 
(%% 
$num%% !
)%%! "
.&& 
HasColumnName&& 
(&& 
$str&& 3
)&&3 4
;&&4 5
builder(( 
.(( 
Property(( 
((( 
e(( 
=>(( !
e((" #
.((# $

CategoryId(($ .
)((. /
.)) 
HasColumnName)) 
()) 
$str)) ,
))), -
;))- .
builder++ 
.++ 
Property++ 
(++ 
e++ 
=>++ !
e++" #
.++# $
Order++$ )
)++) *
.,, 
HasColumnName,, 
(,, 
$str,, &
),,& '
;,,' (
builder.. 
... 
HasOne.. 
(.. 
e.. 
=>.. 
e..  !
...! "
personalizedStatus.." 4
)..4 5
.// 
WithMany// 
(// 
s// 
=>// 
s//  
.//  !
ProductHasStatus//! 1
)//1 2
.00 
HasForeignKey00 
(00 
e00  
=>00! #
new00$ '
{00( )
e00* +
.00+ ,
Name00, 0
}001 2
)002 3
;003 4
builder22 
.22 
HasOne22 
(22 
e22 
=>22 
e22  !
.22! "
productService22" 0
)220 1
.33 
WithMany33 
(33 
p33 
=>33 
p33  
.33  !
ProductHasStatus33! 1
)331 2
.44 
HasForeignKey44 
(44 
e44  
=>44! #
new44$ '
{44( )
e44* +
.44+ ,
CodeId44, 2
,442 3
e444 5
.445 6
EntrepreneurEmail446 G
,44G H
e44I J
.44J K

CategoryId44K U
}44V W
)44W X
;44X Y
}55 	
}66 
}77 Ò
ñC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\EmprendeUCR_WebApplication\Infrastructure\OrderContext\EntityMappings\ProductMap.cs
	namespace 	&
EmprendeUCR_WebApplication
 $
.$ %
Infrastructure% 3
.3 4
OrderContext4 @
.@ A
EntityMappingsA O
{ 
public 

class 

ProductMap 
: $
IEntityTypeConfiguration 6
<6 7
Product7 >
>> ?
{ 
public 
void 
	Configure 
( 
EntityTypeBuilder /
</ 0
Product0 7
>7 8
builder9 @
)@ A
{ 	
builder 
. 
ToTable 
( 
$str %
)% &
;& '
builder 
. 
Property 
( 
e 
=> !
e" #
.# $
ProductDescription$ 6
)6 7
. 
HasMaxLength 
( 
$num !
)! "
. 
HasColumnName 
( 
$str 4
)4 5
;5 6
builder!! 
.!! 
Property!! 
(!! 
e!! 
=>!! !
e!!" #
.!!# $
ProductName!!$ /
)!!/ 0
."" 

IsRequired"" 
("" 
)"" 
.## 
HasMaxLength## 
(## 
$num## !
)##! "
.$$ 
HasColumnName$$ 
($$ 
$str$$ -
)$$- .
;$$. /
builder&& 
.&& 
Ignore&& 
(&& 
e&& 
=>&& 
e&&  !
.&&! "
ShoppingCartHas&&" 1
)&&1 2
;&&2 3
builder'' 
.'' 
Ignore'' 
('' 
e'' 
=>'' 
e''  !
.''! "
Product_Photos''" 0
)''0 1
;''1 2
builder(( 
.(( 
Ignore(( 
((( 
e(( 
=>(( 
e((  !
.((! "
currentPrice((" .
)((. /
;((/ 0
})) 	
}** 
}++ ¯
ùC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\EmprendeUCR_WebApplication\Infrastructure\OrderContext\EntityMappings\ProductServiceMap.cs
	namespace 	&
EmprendeUCR_WebApplication
 $
.$ %
Infrastructure% 3
.3 4
OrderContext4 @
.@ A
EntityMappingsA O
{ 
public 

class 
ProductServiceMap "
:# $$
IEntityTypeConfiguration% =
<= >
ProductService> L
>L M
{ 
public 
void 
	Configure 
( 
EntityTypeBuilder /
</ 0
ProductService0 >
>> ?
builder@ G
)G H
{ 	
builder 
. 
HasKey 
( 
e 
=> 
new  #
{$ %
e& '
.' (
CodeId( .
,. /
e0 1
.1 2
EntrepreneurEmail2 C
,C D
eE F
.F G

CategoryIdG Q
}R S
)S T
;T U
builder 
. 
ToTable 
( 
$str -
)- .
;. /
builder 
. 
Property 
( 
e 
=> !
e" #
.# $
CodeId$ *
)* +
. 
ValueGeneratedOnAdd $
($ %
)% &
.   
HasColumnName   
(   
$str   (
)  ( )
;  ) *
builder"" 
."" 
Property"" 
("" 
e"" 
=>"" !
e""" #
.""# $
EntrepreneurEmail""$ 5
)""5 6
.## 
HasMaxLength## 
(## 
$num## !
)##! "
.$$ 
	IsUnicode$$ 
($$ 
false$$  
)$$  !
.%% 
HasColumnName%% 
(%% 
$str%% 3
)%%3 4
;%%4 5
builder'' 
.'' 
Property'' 
('' 
e'' 
=>'' !
e''" #
.''# $

CategoryId''$ .
)''. /
.''/ 0
HasColumnName''0 =
(''= >
$str''> K
)''K L
;''L M
builder)) 
.)) 
Property)) 
()) 
e)) 
=>)) !
e))" #
.))# $
Availability))$ 0
)))0 1
.))1 2
HasDefaultValueSql))2 D
())D E
$str))E L
)))L M
;))M N
builder,, 
.,, 
Ignore,, 
(,, 
e,, 
=>,, 
e,,  !
.,,! "
ShoppingCartHas,," 1
),,1 2
;,,2 3
builder.. 
... 
HasIndex.. 
(.. 
t.. 
=>.. !
new.." %
{..& '
t..( )
...) *
CodeId..* 0
,..0 1
t..2 3
...3 4
EntrepreneurEmail..4 E
,..E F
t..G H
...H I

CategoryId..I S
}..T U
)..U V
.// 
IsUnique// 
(// 
)// 
;// 
}11 	
}22 
}33 ª
ùC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\EmprendeUCR_WebApplication\Infrastructure\OrderContext\EntityMappings\Product_PhotosMap.cs
	namespace 	&
EmprendeUCR_WebApplication
 $
.$ %
Infrastructure% 3
.3 4
OrderContext4 @
.@ A
EntityMappingsA O
{ 
public 

class 
Product_PhotosMap "
:# $$
IEntityTypeConfiguration% =
<= >
Product_Photos> L
>L M
{ 
public 
void 
	Configure 
( 
EntityTypeBuilder /
</ 0
Product_Photos0 >
>> ?
builder@ G
)G H
{ 	
builder 
. 
HasKey 
( 
e 
=> 
new  #
{$ %
e& '
.' (
Product_Photos_ID( 9
,9 :
e; <
.< =
Code_ID= D
,D E
eF G
.G H
Entrepreneur_EmailH Z
,Z [
e\ ]
.] ^
Category_ID^ i
}j k
)k l
;l m
builder 
. 
ToTable 
( 
$str ,
), -
;- .
builder 
. 
Property 
( 
e 
=> !
e" #
.# $
Product_Photos_ID$ 5
)5 6
.   

IsRequired   
(   
)   
.!! 
HasColumnName!! 
(!! 
$str!! 2
)!!2 3
;!!3 4
builder## 
.## 
Property## 
(## 
e## 
=>## !
e##" #
.### $
Code_ID##$ +
)##+ ,
.$$ 

IsRequired$$ 
($$ 
)$$ 
.%% 
HasColumnName%% 
(%% 
$str%% (
)%%( )
;%%) *
builder'' 
.'' 
Property'' 
('' 
e'' 
=>'' !
e''" #
.''# $
Entrepreneur_Email''$ 6
)''6 7
.(( 
HasMaxLength(( 
((( 
$num(( !
)((! "
.)) 
HasColumnName)) 
()) 
$str)) 3
)))3 4
;))4 5
builder++ 
.++ 
Property++ 
(++ 
e++ 
=>++ !
e++" #
.++# $
Photos++$ *
)++* +
.,, 
HasColumnName,, 
(,, 
$str,, '
),,' (
;,,( )
builder.. 
... 
Property.. 
(.. 
e.. 
=>.. !
e.." #
...# $
Category_ID..$ /
)../ 0
.// 

IsRequired// 
(// 
)// 
.00 
HasColumnName00 
(00 
$str00 ,
)00, -
;00- .
builder22 
.22 
HasOne22 
(22 
e22 
=>22 
e22  !
.22! "
product22" )
)22) *
.33 
WithMany33 
(33 
c33 
=>33 !
c33" #
.33# $
Product_Photos33$ 2
)332 3
.44 
HasForeignKey44 !
(44! "
e44" #
=>44$ &
new44' *
{44+ ,
e44- .
.44. /
Code_ID44/ 6
,446 7
e448 9
.449 :
Entrepreneur_Email44: L
,44L M
e44N O
.44O P
Category_ID44P [
}44\ ]
)44] ^
;44^ _
}55 	
}66 
}77 ˛
ñC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\EmprendeUCR_WebApplication\Infrastructure\OrderContext\EntityMappings\ServiceMap.cs
	namespace 	&
EmprendeUCR_WebApplication
 $
.$ %
Infrastructure% 3
.3 4
OrderContext4 @
.@ A
EntityMappingsA O
{ 
public 

class 

ServiceMap 
: $
IEntityTypeConfiguration 6
<6 7
Service7 >
>> ?
{ 
public 
void 
	Configure 
( 
EntityTypeBuilder /
</ 0
Service0 7
>7 8
builder9 @
)@ A
{ 	
builder 
. 
ToTable 
( 
$str %
)% &
;& '
builder 
. 
Property 
( 
e 
=> !
e" #
.# $
PricePerHour$ 0
)0 1
.1 2
HasColumnName2 ?
(? @
$str@ P
)P Q
;Q R
builder 
. 
Property 
( 
e 
=> !
e" #
.# $
ServiceDescription$ 6
)6 7
.   
HasMaxLength   
(   
$num   !
)  ! "
.!! 
	IsUnicode!! 
(!! 
false!!  
)!!  !
."" 
HasColumnName"" 
("" 
$str"" 4
)""4 5
;""5 6
builder$$ 
.$$ 
Property$$ 
($$ 
e$$ 
=>$$ !
e$$" #
.$$# $
ServiceName$$$ /
)$$/ 0
.%% 

IsRequired%% 
(%% 
)%% 
.&& 
HasMaxLength&& 
(&& 
$num&& !
)&&! "
.'' 
	IsUnicode'' 
('' 
false''  
)''  !
.(( 
HasColumnName(( 
((( 
$str(( -
)((- .
;((. /
})) 	
}** 
}++ ©
ïC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\EmprendeUCR_WebApplication\Infrastructure\OrderContext\EntityMappings\StatusMap.cs
	namespace 	&
EmprendeUCR_WebApplication
 $
.$ %
Infrastructure% 3
.3 4
OrderContext4 @
.@ A
EntityMappingsA O
{ 
public 

class 
	StatusMap 
: $
IEntityTypeConfiguration 5
<5 6
Status6 <
>< =
{ 
public 
void 
	Configure 
( 
EntityTypeBuilder /
</ 0
Status0 6
>6 7
builder8 ?
)? @
{ 	
builder 
. 
HasKey 
( 
e 
=> 
new  #
{$ %
e& '
.' (
Name( ,
}- .
). /
;/ 0
builder 
. 
ToTable 
( 
$str $
)$ %
;% &
builder 
. 
Property 
( 
e 
=> !
e" #
.# $
Name$ (
)( )
. 
HasMaxLength 
( 
$num  
)  !
.   
HasColumnName   
(   
$str   %
)  % &
;  & '
builder"" 
."" 
Property"" 
("" 
e"" 
=>"" !
e""" #
.""# $
PreviousStateName""$ 5
)""5 6
.## 
HasMaxLength## 
(## 
$num##  
)##  !
.$$ 
HasColumnName$$ 
($$ 
$str$$ 4
)$$4 5
;$$5 6
builder&& 
.&& 
HasOne&& 
(&& 
e&& 
=>&& 
e&&  !
.&&! "
previousStatus&&" 0
)&&0 1
.'' 
WithOne'' 
('' 
s'' 
=>'' 
s'' 
.''  
posteriorStatus''  /
)''/ 0
.(( 
HasForeignKey(( 
<(( 
Status(( %
>((% &
(((& '
e((' (
=>(() +
new((, /
{((0 1
e((2 3
.((3 4
PreviousStateName((4 E
}((F G
)((G H
;((H I
}** 	
}++ 
},,  +
ãC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\EmprendeUCR_WebApplication\Infrastructure\OrderContext\OrderDbContext.cs
	namespace 	&
EmprendeUCR_WebApplication
 $
.$ %
Infrastructure% 3
.3 4
OrderContext4 @
{ 
public 

partial 
class 
OrderDbContext '
:( ) 
ApplicationDbContext* >
{ 
public 
OrderDbContext 
( 
DbContextOptions .
<. /
OrderDbContext/ =
>= >
options? F
,F G
ILoggerH O
<O P
OrderDbContextP ^
>^ _
logger` f
)f g
: 
base 
( 
options 
, 
logger "
)" #
{ 	
} 	
	protected 
override 
void 
OnConfiguring  -
(- .#
DbContextOptionsBuilder. E
optionsBuilderF T
)T U
{ 	
optionsBuilder 
. 
LogTo  
(  !
message! (
=>) +
Debug, 1
.1 2
	WriteLine2 ;
(; <
message< C
)C D
)D E
;E F
} 	
public 
virtual 
DbSet 
< 
Product $
>$ %
Products& .
{/ 0
get1 4
;4 5
set6 9
;9 :
}; <
public 
virtual 
DbSet 
< 
ProductService +
>+ ,
ProductServices- <
{= >
get? B
;B C
setD G
;G H
}I J
public 
virtual 
DbSet 
< 
Service $
>$ %
Services& .
{/ 0
get1 4
;4 5
set6 9
;9 :
}; <
public 
virtual 
DbSet 
< 
Order "
>" #
Orders$ *
{+ ,
get- 0
;0 1
set2 5
;5 6
}7 8
public   
virtual   
DbSet   
<   
	Organized   &
>  & '

Organizeds  ( 2
{  3 4
get  5 8
;  8 9
set  : =
;  = >
}  ? @
public!! 
virtual!! 
DbSet!! 
<!! 
Status!! #
>!!# $
Statuses!!% -
{!!. /
get!!0 3
;!!3 4
set!!5 8
;!!8 9
}!!: ;
public"" 
virtual"" 
DbSet"" 
<"" 
GenericStatus"" *
>""* +
GenericStatuses"", ;
{""< =
get""> A
;""A B
set""C F
;""F G
}""H I
public## 
virtual## 
DbSet## 
<## 
PersonalizedStatus## /
>##/ 0 
PersonalizedStatuses##1 E
{##F G
get##H K
;##K L
set##M P
;##P Q
}##R S
public$$ 
virtual$$ 
DbSet$$ 
<$$ 
ProductHasStatus$$ -
>$$- .
ProductHasStatuses$$/ A
{$$B C
get$$D G
;$$G H
set$$I L
;$$L M
}$$N O
	protected&& 
override&& 
void&& 
OnModelCreating&&  /
(&&/ 0
ModelBuilder&&0 <
modelBuilder&&= I
)&&I J
{'' 	
base(( 
.(( 
OnModelCreating((  
(((  !
modelBuilder((! -
)((- .
;((. /
modelBuilder** 
.** 
ApplyConfiguration** +
(**+ ,
new**, /
ProductServiceMap**0 A
(**A B
)**B C
)**C D
;**D E
modelBuilder++ 
.++ 
ApplyConfiguration++ +
(+++ ,
new++, /

ProductMap++0 :
(++: ;
)++; <
)++< =
;++= >
modelBuilder,, 
.,, 
ApplyConfiguration,, +
(,,+ ,
new,,, /

ServiceMap,,0 :
(,,: ;
),,; <
),,< =
;,,= >
modelBuilder-- 
.-- 
ApplyConfiguration-- +
(--+ ,
new--, /
OrderMap--0 8
(--8 9
)--9 :
)--: ;
;--; <
modelBuilder.. 
... 
ApplyConfiguration.. +
(..+ ,
new.., /
OrganizedMap..0 <
(..< =
)..= >
)..> ?
;..? @
modelBuilder// 
.// 
ApplyConfiguration// +
(//+ ,
new//, /
	StatusMap//0 9
(//9 :
)//: ;
)//; <
;//< =
modelBuilder00 
.00 
ApplyConfiguration00 +
(00+ ,
new00, /
GenericStatusMap000 @
(00@ A
)00A B
)00B C
;00C D
modelBuilder11 
.11 
ApplyConfiguration11 +
(11+ ,
new11, /!
PersonalizedStatusMap110 E
(11E F
)11F G
)11G H
;11H I
modelBuilder22 
.22 
ApplyConfiguration22 +
(22+ ,
new22, /
ProductHasStatusMap220 C
(22C D
)22D E
)22E F
;22F G
}33 	
}44 
}55 Íñ
ôC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\EmprendeUCR_WebApplication\Infrastructure\OrderContext\Repositories\OrderRepository.cs
	namespace 	&
EmprendeUCR_WebApplication
 $
.$ %
Infrastructure% 3
.3 4
OrderContext4 @
.@ A
RepositoriesA M
{ 
public 

class 
OrderRepository  
:! "
IOrderRepository# 3
{ 
private 
readonly 
OrderDbContext '

_dbContext( 2
;2 3
public 
IUnitOfWork 

UnitOfWork %
=>& (

_dbContext) 3
;3 4
public 
OrderRepository 
( 
OrderDbContext -

unitOfWork. 8
)8 9
{ 	

_dbContext 
= 

unitOfWork #
;# $
} 	
public'' 
async'' 
Task'' 
<'' 
List'' 
<'' 
Order'' $
>''$ %
>''% &
GetByIdAsync''' 3
(''3 4
string''4 :
email''; @
)''@ A
{(( 	
List** 
<** 
Order** 
>** 
orders** 
=**  
await**! &

_dbContext**' 1
.**1 2
Orders**2 8
.++ 
Where++ 
(++ 
order++ 
=>++ 
order++ $
.++$ %
EntrepreneurEmail++% 6
==++7 9
email++: ?
&&++@ B
order++C H
.++H I
State++I N
==++O Q
$str++R i
)++i j
.,, 
Include,, 
(,, 
order,, 
=>,,  
order,,! &
.,,& '
	Organized,,' 0
),,0 1
.-- 
ThenInclude--  
(--  !
	Organized--! *
=>--+ -
	Organized--. 7
.--7 8
productService--8 F
)--F G
... 
Include.. 
(.. 
order.. 
=>.. !
order.." '
...' (
	Organized..( 1
)..1 2
.// 
ThenInclude//  
(//  !
	Organized//! *
=>//+ -
	Organized//. 7
.//7 8
status//8 >
)//> ?
.00 
ToListAsync00 
(00 
)00 
;00 
return22 
orders22 
;22 
}33 	
public;; 
async;; 
Task;; 
<;; 
List;; 
<;; 
Order;; $
>;;$ %
>;;% &
GetAcceptedOrders;;' 8
(;;8 9
string;;9 ?
email;;@ E
);;E F
{<< 	
List>> 
<>> 
Order>> 
>>> 
orders>> 
=>>  
await>>! &

_dbContext>>' 1
.>>1 2
Orders>>2 8
.?? 
Where?? 
(?? 
order?? 
=>?? 
order?? $
.??$ %
EntrepreneurEmail??% 6
==??7 9
email??: ?
&&??@ B
order??C H
.??H I
State??I N
!=??O Q
$str??R i
&&??j l
order??m r
.??r s
State??s x
!=??y {
$str	??| á
)
??á à
.@@ 
OrderBy@@ 
(@@ 
order@@ 
=>@@  
order@@! &
.@@& '
State@@' ,
)@@, -
.AA 
IncludeAA 
(AA 
orderAA 
=>AA  
orderAA! &
.AA& '
genericStatusAA' 4
)AA4 5
.BB 
IncludeBB 
(BB 
orderBB 
=>BB  
orderBB! &
.BB& '
	OrganizedBB' 0
)BB0 1
.CC 
ThenIncludeCC  
(CC  !
	OrganizedCC! *
=>CC+ -
	OrganizedCC. 7
.CC7 8
productServiceCC8 F
)CCF G
.DD 
IncludeDD 
(DD 
orderDD 
=>DD !
orderDD" '
.DD' (
	OrganizedDD( 1
)DD1 2
.EE 
ThenIncludeEE  
(EE  !
	OrganizedEE! *
=>EE+ -
	OrganizedEE. 7
.EE7 8
statusEE8 >
)EE> ?
.FF 
ToListAsyncFF 
(FF 
)FF 
;FF 
ordersHH 
=HH 
newHH 
OrderHH 
(HH 
)HH  
.HH  !"
SortEntrepreneurOrdersHH! 7
(HH7 8
ordersHH8 >
)HH> ?
;HH? @
returnJJ 
ordersJJ 
;JJ 
}KK 	
publicSS 
asyncSS 
TaskSS 
<SS 
ListSS 
<SS 
OrderSS $
>SS$ %
>SS% & 
GetClientOrdersAsyncSS' ;
(SS; <
stringSS< B
emailSSC H
)SSH I
{TT 	
ListUU 
<UU 
OrderUU 
>UU 
ordersUU 
=UU  
awaitUU! &

_dbContextUU' 1
.UU1 2
OrdersUU2 8
.VV 
WhereVV 
(VV 
orderVV 
=>VV 
orderVV $
.VV$ %
ClientEmailVV% 0
==VV1 3
emailVV4 9
)VV9 :
.WW 
OrderByWW 
(WW 
orderWW 
=>WW  
orderWW! &
.WW& '
StateWW' ,
)WW, -
.XX 
IncludeXX 
(XX 
orderXX 
=>XX  
orderXX! &
.XX& '
	OrganizedXX' 0
)XX0 1
.YY 
ThenIncludeYY  
(YY  !
	OrganizedYY! *
=>YY+ -
	OrganizedYY. 7
.YY7 8
productServiceYY8 F
)YYF G
.ZZ 
IncludeZZ 
(ZZ 
orderZZ 
=>ZZ !
orderZZ" '
.ZZ' (
	OrganizedZZ( 1
)ZZ1 2
.[[ 
ThenInclude[[  
([[  !
	Organized[[! *
=>[[+ -
	Organized[[. 7
.[[7 8
status[[8 >
)[[> ?
.\\ 
ToListAsync\\ 
(\\ 
)\\ 
;\\ 
orders^^ 
=^^ 
new^^ 
Order^^ 
(^^ 
)^^  
.^^  !
SortClientOrders^^! 1
(^^1 2
orders^^2 8
)^^8 9
;^^9 :

_dbContext`` 
.`` 
Database`` 
.``  
ExecuteSqlRaw``  -
(``- .
$str``. I
,``I J

parameters``K U
:``V W
new``X [
[``[ \
]``\ ]
{``^ _
email``` e
}``f g
)``h i
;``i j
returnaa 
ordersaa 
;aa 
}bb 	
publicii 
Listii 
<ii 
Tupleii 
<ii 
intii 
,ii 
Productii &
>ii& '
>ii' (
GetProductsAsyncii) 9
(ii9 :
Orderii: ?
orderii@ E
)iiE F
{jj 	
Listkk 
<kk 
Tuplekk 
<kk 
intkk 
,kk 
Productkk #
>kk# $
>kk$ %
productskk& .
=kk/ 0

_dbContextkk1 ;
.kk; <
Productskk< D
.ll 
Includell 
(ll 
productll  
=>ll! #
productll$ +
.ll+ ,
ProductHasStatusll, <
)ll< =
.mm 
Includemm 
(mm 
productmm  
=>mm! #
productmm$ +
.mm+ ,
	Organizedmm, 5
)mm5 6
.nn 
Wherenn 
(nn 
productnn 
=>nn !
productnn" )
.nn) *
	Organizednn* 3
.nn3 4
Anynn4 7
(nn7 8
onn8 9
=>nn: <
onn= >
.nn> ?
DateAndHourCreationnn? R
==nnS U
ordernnV [
.nn[ \
DateAndHourCreationnn\ o
&&nnp r
ooo 
.oo 
Emailoo 
==oo !
orderoo" '
.oo' (
ClientEmailoo( 3
&&oo4 6
ooo7 8
.oo8 9
CodeIdoo9 ?
==oo@ B
productooC J
.ooJ K
CodeIdooK Q
&&ooR T
oooU V
.ooV W

CategoryIdooW a
==oob d
productooe l
.ool m

CategoryIdoom w
&&oox z
opp 
.pp 
EntrepreneurEmailpp *
==pp+ -
productpp. 5
.pp5 6
EntrepreneurEmailpp6 G
)ppG H
)ppH I
.qq 
Selectqq 
(qq 
productqq 
=>qq  "
newqq# &
Tupleqq' ,
<qq, -
intqq- 0
,qq0 1
Productqq1 8
>qq8 9
(rr  !
productrr! (
.rr( )
	Organizedrr) 2
.rr2 3
Whererr3 8
(rr8 9
orr9 :
=>rr; =
orr> ?
.rr? @
DateAndHourCreationrr@ S
==rrT V
orderrrW \
.rr\ ]
DateAndHourCreationrr] p
&&rrq s
oss! "
.ss" #
Emailss# (
==ss) +
orderss, 1
.ss1 2
ClientEmailss2 =
&&ss> @
ossA B
.ssB C
CodeIdssC I
==ssJ L
productssM T
.ssT U
CodeIdssU [
&&ss\ ^
oss_ `
.ss` a

CategoryIdssa k
==ssl n
productsso v
.ssv w

CategoryId	ssw Å
&&
ssÇ Ñ
ott! "
.tt" #
EntrepreneurEmailtt# 4
==tt5 7
producttt8 ?
.tt? @
EntrepreneurEmailtt@ Q
)ttQ R
.ttR S
FirstOrDefaultttS a
(tta b
)ttb c
.ttc d
Quantityttd l
,ttl m
productttn u
)ttu v
)ttv w
.uu 
ToListuu 
(uu 
)uu 
;uu 
returnww 
productsww 
;ww 
}xx 	
public
ÄÄ 
async
ÄÄ 
Task
ÄÄ 
<
ÄÄ 
List
ÄÄ 
<
ÄÄ 
Status
ÄÄ %
>
ÄÄ% &
>
ÄÄ& '
GetOrderStatuses
ÄÄ( 8
(
ÄÄ8 9
)
ÄÄ9 :
{
ÅÅ 	
List
ÇÇ 
<
ÇÇ 
Status
ÇÇ 
>
ÇÇ 
statuses
ÇÇ !
=
ÇÇ" #
await
ÇÇ$ )

_dbContext
ÇÇ* 4
.
ÇÇ4 5
Statuses
ÇÇ5 =
.
ÉÉ 
Where
ÉÉ 
(
ÉÉ 
status
ÉÉ 
=>
ÉÉ  
status
ÉÉ! '
.
ÉÉ' (
Name
ÉÉ( ,
==
ÉÉ- /
$str
ÉÉ0 ;
)
ÉÉ; <
.
ÑÑ 
ToListAsync
ÑÑ 
(
ÑÑ 
)
ÑÑ 
;
ÑÑ 
Status
ÜÜ 
currentStatus
ÜÜ  
;
ÜÜ  !
while
áá 
(
áá 
statuses
áá 
.
áá 
First
áá  
(
áá  !
)
áá! "
.
áá" #
Name
áá# '
!=
áá( *
$str
áá+ 5
)
áá5 6
{
àà 
currentStatus
ââ 
=
ââ 
(
ââ  !
await
ââ! &

_dbContext
ââ' 1
.
ââ1 2
Statuses
ââ2 :
.
ää 
Where
ää 
(
ää 
status
ää !
=>
ää" $
status
ää% +
.
ää+ ,
Name
ää, 0
==
ää1 3
statuses
ää4 <
.
ää< =
First
ää= B
(
ääB C
)
ääC D
.
ääD E
PreviousStateName
ääE V
)
ääV W
.
ãã 
ToListAsync
ãã  
(
ãã  !
)
ãã! "
)
ãã" #
.
ãã# $
First
ãã$ )
(
ãã) *
)
ãã* +
;
ãã+ ,
statuses
çç 
.
çç 
Insert
çç 
(
çç  
$num
çç  !
,
çç! "
currentStatus
çç# 0
)
çç0 1
;
çç1 2
}
éé 
return
èè 
statuses
èè 
;
èè 
}
êê 	
public
ôô 
Task
ôô  
SetProductStatuses
ôô &
(
ôô& '
Product
ôô' .
product
ôô/ 6
,
ôô6 7
List
ôô8 <
<
ôô< =
Status
ôô= C
>
ôôC D
statusesList
ôôE Q
)
ôôQ R
{
öö 	
List
õõ 
<
õõ 
Status
õõ 
>
õõ 
statuses
õõ !
=
õõ" #

_dbContext
õõ$ .
.
õõ. /
Statuses
õõ/ 7
.
úú 
Include
úú 
(
úú 
status
úú 
=>
úú  "
status
úú# )
.
úú) * 
personalizedStatus
úú* <
)
úú< =
.
ùù 
ThenInclude
ùù  
(
ùù  ! 
personalizedStatus
ùù! 3
=>
ùù4 6 
personalizedStatus
ùù7 I
.
ùùI J
ProductHasStatus
ùùJ Z
)
ùùZ [
.
ûû 
Where
ûû 
(
ûû 
status
ûû 
=>
ûû  
status
ûû! '
.
ûû' ( 
personalizedStatus
ûû( :
.
ûû: ;
ProductHasStatus
ûû; K
.
ûûK L
Any
ûûL O
(
ûûO P
productStatus
ûûP ]
=>
ûû^ `
productStatus
üü ,
.
üü, -
CodeId
üü- 3
==
üü4 6
product
üü7 >
.
üü> ?
CodeId
üü? E
&&
üüF H
productStatus
†† ,
.
††, -

CategoryId
††- 7
==
††8 :
product
††; B
.
††B C

CategoryId
††C M
&&
††N P
productStatus
°° ,
.
°°, -
EntrepreneurEmail
°°- >
==
°°? A
product
°°B I
.
°°I J
EntrepreneurEmail
°°J [
)
°°[ \
)
°°\ ]
.
¢¢ 
ToList
¢¢ 
(
¢¢ 
)
¢¢ 
;
¢¢ 
int
§§ 
index
§§ 
=
§§ 
statusesList
§§ $
.
§§$ %
	FindIndex
§§% .
(
§§. /
status
§§/ 5
=>
§§6 8
status
§§9 ?
.
§§? @
Name
§§@ D
==
§§E G
$str
§§H U
)
§§U V
;
§§V W
statusesList
•• 
.
•• 
InsertRange
•• $
(
••$ %
index
••% *
+
••* +
$num
••+ ,
,
••, -
statuses
••. 6
)
••6 7
;
••7 8
return
ßß 
Task
ßß 
.
ßß 
CompletedTask
ßß %
;
ßß% &
}
®® 	
public
ØØ 
async
ØØ 
Task
ØØ 
orderUpdate
ØØ %
(
ØØ% &
Order
ØØ& +
OrderToUpdate
ØØ, 9
)
ØØ9 :
{
∞∞ 	

_dbContext
±± 
.
±± 
Update
±± 
(
±± 
OrderToUpdate
±± ,
)
±±, -
;
±±- .
await
≤≤ 

_dbContext
≤≤ 
.
≤≤ 
SaveEntitiesAsync
≤≤ .
(
≤≤. /
)
≤≤/ 0
;
≤≤0 1
}
≥≥ 	
public
µµ 
string
µµ 
defineColor
µµ !
(
µµ! "
string
µµ" (
status
µµ) /
)
µµ/ 0
{
∂∂ 	
string
∑∑ 
color
∑∑ 
=
∑∑ 
$str
∑∑ 
;
∑∑ 
if
∏∏ 
(
∏∏ 
status
∏∏ 
==
∏∏ 
$str
∏∏ $
)
∏∏$ %
{
ππ 
color
∫∫ 
=
∫∫ 
$str
∫∫ #
;
∫∫# $
}
ªª 
else
ºº 
if
ºº 
(
ºº 
status
ºº 
==
ºº 
$str
ºº *
)
ºº* +
{
ΩΩ 
color
ææ 
=
ææ 
$str
ææ 
;
ææ 
}
øø 
else
¿¿ 
if
¿¿ 
(
¿¿ 
status
¿¿ 
==
¿¿ 
$str
¿¿ 3
)
¿¿3 4
{
¡¡ 
color
¬¬ 
=
¬¬ 
$str
¬¬ )
;
¬¬) *
}
√√ 
else
ƒƒ 
if
ƒƒ 
(
ƒƒ 
status
ƒƒ 
==
ƒƒ 
$str
ƒƒ 6
)
ƒƒ6 7
{
≈≈ 
color
∆∆ 
=
∆∆ 
$str
∆∆  
;
∆∆  !
}
«« 
else
»» 
if
»» 
(
»» 
status
»» 
==
»» 
$str
»» *
)
»»* +
{
…… 
color
   
=
   
$str
   '
;
  ' (
}
ÀÀ 
else
ÃÃ 
{
ÕÕ 
color
ŒŒ 
=
ŒŒ 
$str
ŒŒ *
;
ŒŒ* +
}
œœ 
return
–– 
color
–– 
;
–– 
}
—— 	
public
⁄⁄ 
async
⁄⁄ 
Task
⁄⁄ 
<
⁄⁄ 
List
⁄⁄ 
<
⁄⁄ 
Order
⁄⁄ $
>
⁄⁄$ %
>
⁄⁄% &+
GetEntreprenurFinalizedOrders
⁄⁄' D
(
⁄⁄D E
string
⁄⁄E K
email
⁄⁄L Q
)
⁄⁄Q R
{
€€ 	
List
‹‹ 
<
‹‹ 
Order
‹‹ 
>
‹‹ 
orders
‹‹ 
=
‹‹  
await
‹‹! &

_dbContext
‹‹' 1
.
‹‹1 2
Orders
‹‹2 8
.
›› 
Where
›› 
(
›› 
order
›› 
=>
›› 
order
››  
.
››  !
EntrepreneurEmail
››! 2
==
››3 5
email
››6 ;
&&
››< >
order
››? D
.
››D E
State
››E J
==
››K M
$str
››N Y
)
››Y Z
.
ﬁﬁ 
Include
ﬁﬁ 
(
ﬁﬁ 
order
ﬁﬁ 
=>
ﬁﬁ 
order
ﬁﬁ "
.
ﬁﬁ" #
	Organized
ﬁﬁ# ,
)
ﬁﬁ, -
.
ﬂﬂ 
ThenInclude
ﬂﬂ 
(
ﬂﬂ 
	Organized
ﬂﬂ &
=>
ﬂﬂ' )
	Organized
ﬂﬂ* 3
.
ﬂﬂ3 4
productService
ﬂﬂ4 B
)
ﬂﬂB C
.
‡‡ 
Include
‡‡ 
(
‡‡ 
order
‡‡ 
=>
‡‡ 
order
‡‡ #
.
‡‡# $
	Organized
‡‡$ -
)
‡‡- .
.
·· 
ThenInclude
·· 
(
·· 
	Organized
·· &
=>
··' )
	Organized
··* 3
.
··3 4
status
··4 :
)
··: ;
.
‚‚ 
ToListAsync
‚‚ 
(
‚‚ 
)
‚‚ 
;
‚‚ 
return
‰‰ 
orders
‰‰ 
;
‰‰ 
}
ÂÂ 	
public
ÁÁ 
async
ÁÁ 
Task
ÁÁ 
<
ÁÁ 
string
ÁÁ  
>
ÁÁ  ! 
GetEntreprenurName
ÁÁ" 4
(
ÁÁ4 5
string
ÁÁ5 ;
email
ÁÁ< A
)
ÁÁA B
{
ËË 	
string
ÏÏ 
retval
ÏÏ 
=
ÏÏ 

_dbContext
ÏÏ &
.
ÏÏ& '
Database
ÏÏ' /
.
ÏÏ/ 0
ExecuteSqlRaw
ÏÏ0 =
(
ÏÏ= >
$str
ÏÏ> X
+
ÏÏY Z
email
ÏÏ[ `
+
ÏÏa b
$str
ÏÏc g
)
ÏÏg h
.
ÏÏh i
ToString
ÏÏi q
(
ÏÏq r
)
ÏÏr s
;
ÏÏs t
return
ÓÓ 
retval
ÓÓ 
;
ÓÓ 
}
ÔÔ 	
}
ÒÒ 
}ÚÚ ï#
õC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\EmprendeUCR_WebApplication\Infrastructure\ShoppingCartContext\EntityMappings\OrderMap.cs
	namespace 	&
EmprendeUCR_WebApplication
 $
.$ %
Infrastructure% 3
.3 4
ShoppingCartContext4 G
.G H
EntityMappingsH V
{ 
public 

class 
OrderMap 
: $
IEntityTypeConfiguration 4
<4 5
Order5 :
>: ;
{ 
public 
void 
	Configure 
( 
EntityTypeBuilder /
</ 0
Order0 5
>5 6
builder7 >
)> ?
{ 	
builder 
. 
HasKey 
( 
e 
=> 
new  #
{$ %
e& '
.' (
DateAndHourCreation( ;
,; <
e= >
.> ?
ClientEmail? J
}J K
)K L
;L M
builder 
. 
ToTable 
( 
$str #
)# $
;$ %
builder 
. 
Property 
( 
e 
=> !
e" #
.# $
Details$ +
)+ ,
. 
HasMaxLength 
( 
$num !
)! "
;" #
builder!! 
.!! 
Property!! 
(!! 
e!! 
=>!! !
e!!" #
.!!# $
DeliveryDate!!$ 0
)!!0 1
.!!1 2
HasColumnName!!2 ?
(!!? @
$str!!@ O
)!!O P
;!!P Q
builder## 
.## 
Property## 
(## 
e## 
=>## !
e##" #
.### $
DeliveryAddress##$ 3
)##3 4
.$$ 
HasMaxLength$$ 
($$ 
$num$$ "
)$$" #
.%% 
HasColumnName%% 
(%% 
$str%% 1
)%%1 2
;%%2 3
builder'' 
.'' 
Property'' 
('' 
e'' 
=>'' !
e''" #
.''# $
EntrepreneurEmail''$ 5
)''5 6
.(( 
HasMaxLength(( 
((( 
$num(( !
)((! "
.((" #
HasColumnName((# 0
(((0 1
$str((1 E
)((E F
;((F G
builder** 
.** 
Property** 
(** 
e** 
=>** !
e**" #
.**# $
DateAndHourCreation**$ 7
)**7 8
.++ 
HasColumnName++ 
(++ 
$str++ :
)++: ;
;++; <
builder-- 
.-- 
Property-- 
(-- 
d-- 
=>-- !
d--" #
.--# $
ClientEmail--$ /
)--/ 0
.--0 1
HasColumnName--1 >
(--> ?
$str--? M
)--M N
... 
HasMaxLength.. 
(.. 
$num.. !
)..! "
;.." #
builder00 
.00 
Property00 
(00 
e00 
=>00 !
e00" #
.00# $
State00$ )
)00) *
.11 
HasMaxLength11 
(11 
$num11  
)11  !
.22 
HasColumnName22 
(22 
$str22 &
)22& '
;22' (
builder44 
.44 
Property44 
(44 
e44 
=>44 !
e44" #
.44# $
PaymentName44$ /
)44/ 0
.55 
HasMaxLength55 
(55 
$num55  
)55  !
.66 
HasColumnName66 
(66 
$str66 -
)66- .
;66. /
builder88 
.88 
HasMany88 
(88 
d88 
=>88  
d88! "
.88" #
	Organized88# ,
)88, -
.99 
WithOne99 
(99 
p99 
=>99 
p99 
.99  
order99  %
)99% &
.99& '

IsRequired99' 1
(991 2
)992 3
;993 4
builder;; 
.;; 
Ignore;; 
(;; 
o;; 
=>;; 
o;;  !
.;;! "
genericStatus;;" /
);;/ 0
;;;0 1
}<< 	
}== 
}>> í%
üC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\EmprendeUCR_WebApplication\Infrastructure\ShoppingCartContext\EntityMappings\OrganizedMap.cs
	namespace 	&
EmprendeUCR_WebApplication
 $
.$ %
Infrastructure% 3
.3 4
ShoppingCartContext4 G
.G H
EntityMappingsH V
{ 
public 

class 
OrganizedMap 
: $
IEntityTypeConfiguration  8
<8 9
	Organized9 B
>B C
{ 
public 
void 
	Configure 
( 
EntityTypeBuilder /
</ 0
	Organized0 9
>9 :
builder; B
)B C
{ 	
builder 
. 
HasKey 
( 
e 
=> 
new  #
{$ %
e& '
.' (
CodeId( .
,. /
e0 1
.1 2
EntrepreneurEmail2 C
,C D
eE F
.F G

CategoryIdG Q
,Q R
e& '
.' (
DateAndHourCreation( ;
,; <
e= >
.> ?
Email? D
,D E
eF G
.G H
NameH L
}M N
)N O
;O P
builder 
. 
ToTable 
( 
$str '
)' (
;( )
builder 
. 
Property 
( 
e 
=> !
e" #
.# $
EntrepreneurEmail$ 5
)5 6
. 
HasMaxLength 
( 
$num !
)! "
." #
HasColumnName# 0
(0 1
$str1 E
)E F
;F G
builder!! 
.!! 
Property!! 
(!! 
e!! 
=>!! !
e!!" #
.!!# $
Email!!$ )
)!!) *
."" 
HasMaxLength"" 
("" 
$num"" !
)""! "
.""" #
HasColumnName""# 0
(""0 1
$str""1 8
)""8 9
;""9 :
builder$$ 
.$$ 
Property$$ 
($$ 
e$$ 
=>$$ !
e$$" #
.$$# $
Name$$$ (
)$$( )
.%% 
HasMaxLength%% 
(%% 
$num%%  
)%%  !
.%%! "

IsRequired%%" ,
(%%, -
)%%- .
;%%. /
builder'' 
.'' 
Property'' 
('' 
e'' 
=>'' !
e''" #
.''# $
DateAndHourCreation''$ 7
)''7 8
.''8 9
HasColumnName''9 F
(''F G
$str''G b
)''b c
;''c d
builder)) 
.)) 
Property)) 
()) 
e)) 
=>)) !
e))" #
.))# $
DateOfChange))$ 0
)))0 1
.))1 2
HasColumnName))2 ?
())? @
$str))@ P
)))P Q
;))Q R
builder++ 
.++ 
Property++ 
(++ 
e++ 
=>++ !
e++" #
.++# $
CodeId++$ *
)++* +
.+++ ,
HasColumnName++, 9
(++9 :
$str++: C
)++C D
;++D E
builder-- 
.-- 
Property-- 
(-- 
e-- 
=>-- !
e--" #
.--# $

CategoryId--$ .
)--. /
.--/ 0
HasColumnName--0 =
(--= >
$str--> K
)--K L
;--L M
builder00 
.00 
HasOne00 
(00 
d00 
=>00 
d00  !
.00! "
order00" '
)00' (
.11 
WithMany11 
(11 
p11 
=>11 
p11  
.11  !
	Organized11! *
)11* +
.22 
HasForeignKey22 
(22 
d22  
=>22! #
new22$ '
{22( )
d22* +
.22+ ,
DateAndHourCreation22, ?
,22? @
d22A B
.22B C
Email22C H
}22I J
)22J K
.22K L

IsRequired22L V
(22V W
)22W X
;22X Y
builder44 
.44 
Ignore44 
(44 
o44 
=>44 
o44  !
.44! "
productService44" 0
)440 1
;441 2
builder55 
.55 
Ignore55 
(55 
o55 
=>55 
o55  !
.55! "
status55" (
)55( )
;55) *
}77 	
}88 
}99 ÿ
°C:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\EmprendeUCR_WebApplication\Infrastructure\ShoppingCartContext\EntityMappings\ProductLineMap.cs
	namespace 	&
EmprendeUCR_WebApplication
 $
.$ %
Infrastructure% 3
.3 4
ShoppingCartContext4 G
.G H
EntityMappingsH V
{ 
public 

class 
ProductLineMap 
:  !$
IEntityTypeConfiguration" :
<: ;
ShopLine; C
>C D
{ 
public 
void 
	Configure 
( 
EntityTypeBuilder /
</ 0
ShopLine0 8
>8 9
builder: A
)A B
{ 	
builder 
. 
HasKey 
( 
e 
=> 
new  #
{$ %
e& '
.' (
Email( -
,- .
e/ 0
.0 1
CodeId1 7
,7 8
e9 :
.: ;
EntrepreneurEmail; L
,L M
eN O
.O P

CategoryIdP Z
}[ \
)\ ]
;] ^
builder 
. 
ToTable 
( 
$str /
)/ 0
;0 1
builder 
. 
Property 
( 
e 
=> !
e" #
.# $
Email$ )
)) *
.   
HasMaxLength   
(   
$num   !
)  ! "
;  " #
builder"" 
."" 
Property"" 
("" 
e"" 
=>"" !
e""" #
.""# $
CodeId""$ *
)""* +
.""+ ,
HasColumnName"", 9
(""9 :
$str"": C
)""C D
;""D E
builder$$ 
.$$ 
Property$$ 
($$ 
e$$ 
=>$$ !
e$$" #
.$$# $
EntrepreneurEmail$$$ 5
)$$5 6
.%% 
HasMaxLength%% 
(%% 
$num%% !
)%%! "
.&& 
HasColumnName&& 
(&& 
$str&& 3
)&&3 4
;&&4 5
builder)) 
.)) 
Property)) 
()) 
e)) 
=>))  
e))! "
.))" #

CategoryId))# -
)))- .
.)). /
HasColumnName))/ <
())< =
$str))= J
)))J K
;))K L
builder++ 
.++ 
HasOne++ 
(++ 
d++ 
=>++ 
d++  !
.++! "
shoppingCart++" .
)++. /
.,, 
WithMany,, 
(,, 
p,, 
=>,, 
p,,  
.,,  !
	ShopLines,,! *
),,* +
.-- 
HasForeignKey-- 
(-- 
d--  
=>--! #
d--$ %
.--% &
Email--& +
)--+ ,
;--, -
builder00 
.00 
HasOne00 
(00 
d00 
=>00 
d00  !
.00! "
product00" )
)00) *
.11 
WithMany11 
(11 
d11 
=>11 
d11  
.11  !
ShoppingCartHas11! 0
)110 1
.22 
HasForeignKey22 
(22 
d22  
=>22! #
new22$ '
{22( )
d22* +
.22+ ,
CodeId22, 2
,222 3
d224 5
.225 6
EntrepreneurEmail226 G
,22G H
d22I J
.22J K

CategoryId22K U
}22V W
)22W X
;22X Y
builder44 
.44 
Ignore44 
(44 
s44 
=>44 
s44  !
.44! "
Quantity44" *
)44* +
;44+ ,
}66 	
}77 
}88 £
ùC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\EmprendeUCR_WebApplication\Infrastructure\ShoppingCartContext\EntityMappings\ProductMap.cs
	namespace 	&
EmprendeUCR_WebApplication
 $
.$ %
Infrastructure% 3
.3 4
ShoppingCartContext4 G
.G H
EntityMappingsH V
{ 
public 

class 

ProductMap 
: $
IEntityTypeConfiguration 6
<6 7
Product7 >
>> ?
{ 
public 
void 
	Configure 
( 
EntityTypeBuilder /
</ 0
Product0 7
>7 8
builder9 @
)@ A
{ 	
builder 
. 
ToTable 
( 
$str %
)% &
;& '
builder 
. 
Property 
( 
e 
=> !
e" #
.# $
ProductDescription$ 6
)6 7
. 
HasMaxLength 
( 
$num !
)! "
. 
HasColumnName 
( 
$str 4
)4 5
;5 6
builder!! 
.!! 
Property!! 
(!! 
e!! 
=>!! !
e!!" #
.!!# $
ProductName!!$ /
)!!/ 0
."" 

IsRequired"" 
("" 
)"" 
.## 
HasMaxLength## 
(## 
$num## !
)##! "
.$$ 
HasColumnName$$ 
($$ 
$str$$ -
)$$- .
;$$. /
builder&& 
.&& 
HasMany&& 
(&& 
e&& 
=>&&  
e&&! "
.&&" #
ShoppingCartHas&&# 2
)&&2 3
.'' 
WithOne'' 
('' 
c'' 
=>''  
c''! "
.''" #
product''# *
!''* +
)''+ ,
;'', -
builder)) 
.)) 
HasMany)) 
()) 
e)) 
=>))  
e))! "
.))" #
Product_Photos))# 1
)))1 2
.** 
WithOne** 
(** 
c** 
=>**  
c**! "
.**" #
product**# *
!*** +
)**+ ,
.++ 
HasForeignKey++ !
(++! "
e++" #
=>++$ &
new++' *
{+++ ,
e++- .
.++. /
Code_ID++/ 6
,++6 7
e++8 9
.++9 :
Entrepreneur_Email++: L
,++M N
e++O P
.++P Q
Category_ID++Q \
}++] ^
)++^ _
;++_ `
builder,, 
.,, 
Ignore,, 
(,, 
p,, 
=>,, 
p,,  !
.,,! "
currentPrice,," .
),,. /
;,,/ 0
}-- 	
}.. 
}// ¿
§C:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\EmprendeUCR_WebApplication\Infrastructure\ShoppingCartContext\EntityMappings\ProductServiceMap.cs
	namespace 	&
EmprendeUCR_WebApplication
 $
.$ %
Infrastructure% 3
.3 4
ShoppingCartContext4 G
.G H
EntityMappingsH V
{ 
public 

class 
ProductServiceMap "
:# $$
IEntityTypeConfiguration% =
<= >
ProductService> L
>L M
{ 
public 
void 
	Configure 
( 
EntityTypeBuilder /
</ 0
ProductService0 >
>> ?
builder@ G
)G H
{ 	
builder 
. 
HasKey 
( 
e 
=> 
new  #
{$ %
e& '
.' (
CodeId( .
,. /
e0 1
.1 2
EntrepreneurEmail2 C
,C D
eE F
.F G

CategoryIdG Q
}R S
)S T
;T U
builder 
. 
ToTable 
( 
$str -
)- .
;. /
builder 
. 
Property 
( 
e 
=> !
e" #
.# $
CodeId$ *
)* +
. 
ValueGeneratedOnAdd $
($ %
)% &
.   
HasColumnName   
(   
$str   (
)  ( )
;  ) *
builder"" 
."" 
Property"" 
("" 
e"" 
=>"" !
e""" #
.""# $
EntrepreneurEmail""$ 5
)""5 6
.## 
HasMaxLength## 
(## 
$num## !
)##! "
.$$ 
	IsUnicode$$ 
($$ 
false$$  
)$$  !
.%% 
HasColumnName%% 
(%% 
$str%% 3
)%%3 4
;%%4 5
builder'' 
.'' 
Property'' 
('' 
e'' 
=>'' !
e''" #
.''# $

CategoryId''$ .
)''. /
.''/ 0
HasColumnName''0 =
(''= >
$str''> K
)''K L
;''L M
builder)) 
.)) 
Property)) 
()) 
e)) 
=>)) !
e))" #
.))# $
Availability))$ 0
)))0 1
.))1 2
HasDefaultValueSql))2 D
())D E
$str))E L
)))L M
;))M N
builder** 
.** 
Ignore** 
(** 
e** 
=>** 
e**  !
.**! "
	Organized**" +
)**+ ,
;**, -
builder++ 
.++ 
HasIndex++ 
(++ 
t++ 
=>++ !
new++" %
{++& '
t++( )
.++) *
CodeId++* 0
,++0 1
t++2 3
.++3 4
EntrepreneurEmail++4 E
,++E F
t++G H
.++H I

CategoryId++I S
}++T U
)++U V
.,, 
IsUnique,, 
(,, 
),, 
;,, 
builder.. 
... 
Ignore.. 
(.. 
e.. 
=>.. 
e..  !
...! "
ProductHasStatus.." 2
)..2 3
;..3 4
}// 	
}00 
}11 …
§C:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\EmprendeUCR_WebApplication\Infrastructure\ShoppingCartContext\EntityMappings\Product_PhotosMap.cs
	namespace 	&
EmprendeUCR_WebApplication
 $
.$ %
Infrastructure% 3
.3 4
ShoppingCartContext4 G
.G H
EntityMappingsH V
{ 
public 

class 
Product_PhotosMap "
:# $$
IEntityTypeConfiguration% =
<= >
Product_Photos> L
>L M
{ 
public 
void 
	Configure 
( 
EntityTypeBuilder /
</ 0
Product_Photos0 >
>> ?
builder@ G
)G H
{ 	
builder 
. 
HasKey 
( 
e 
=> 
new  #
{$ %
e& '
.' (
Product_Photos_ID( 9
,9 :
e; <
.< =
Code_ID= D
,D E
eF G
.G H
Entrepreneur_EmailH Z
,Z [
e\ ]
.] ^
Category_ID^ i
}j k
)k l
;l m
builder 
. 
ToTable 
( 
$str ,
), -
;- .
builder 
. 
Property 
( 
e 
=> !
e" #
.# $
Product_Photos_ID$ 5
)5 6
.   

IsRequired   
(   
)   
.!! 
HasColumnName!! 
(!! 
$str!! 2
)!!2 3
;!!3 4
builder## 
.## 
Property## 
(## 
e## 
=>## !
e##" #
.### $
Code_ID##$ +
)##+ ,
.$$ 

IsRequired$$ 
($$ 
)$$ 
.%% 
HasColumnName%% 
(%% 
$str%% (
)%%( )
;%%) *
builder'' 
.'' 
Property'' 
('' 
e'' 
=>'' !
e''" #
.''# $
Entrepreneur_Email''$ 6
)''6 7
.(( 
HasMaxLength(( 
((( 
$num(( !
)((! "
.)) 
HasColumnName)) 
()) 
$str)) 3
)))3 4
;))4 5
builder++ 
.++ 
Property++ 
(++ 
e++ 
=>++ !
e++" #
.++# $
Photos++$ *
)++* +
.,, 
HasColumnName,, 
(,, 
$str,, '
),,' (
;,,( )
builder.. 
... 
Property.. 
(.. 
e.. 
=>.. !
e.." #
...# $
Category_ID..$ /
)../ 0
.// 

IsRequired// 
(// 
)// 
.00 
HasColumnName00 
(00 
$str00 ,
)00, -
;00- .
builder22 
.22 
HasOne22 
(22 
e22 
=>22 
e22  !
.22! "
product22" )
)22) *
.33 
WithMany33 
(33 
c33 
=>33 !
c33" #
.33# $
Product_Photos33$ 2
)332 3
.44 
HasForeignKey44 !
(44! "
e44" #
=>44$ &
new44' *
{44+ ,
e44- .
.44. /
Code_ID44/ 6
,446 7
e448 9
.449 :
Entrepreneur_Email44: L
,44L M
e44N O
.44O P
Category_ID44P [
}44\ ]
)44] ^
;44^ _
}66 	
}88 
}99 å
ùC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\EmprendeUCR_WebApplication\Infrastructure\ShoppingCartContext\EntityMappings\ServiceMap.cs
	namespace 	&
EmprendeUCR_WebApplication
 $
.$ %
Infrastructure% 3
.3 4
ShoppingCartContext4 G
.G H
EntityMappingsH V
{ 
public 

class 

ServiceMap 
: $
IEntityTypeConfiguration 6
<6 7
Service7 >
>> ?
{ 
public 
void 
	Configure 
( 
EntityTypeBuilder /
</ 0
Service0 7
>7 8
builder9 @
)@ A
{ 	
builder 
. 
ToTable 
( 
$str %
)% &
;& '
builder 
. 
Property 
( 
e 
=> !
e" #
.# $
PricePerHour$ 0
)0 1
.1 2
HasColumnName2 ?
(? @
$str@ P
)P Q
;Q R
builder 
. 
Property 
( 
e 
=> !
e" #
.# $
ServiceDescription$ 6
)6 7
.   
HasMaxLength   
(   
$num   !
)  ! "
.!! 
	IsUnicode!! 
(!! 
false!!  
)!!  !
."" 
HasColumnName"" 
("" 
$str"" 4
)""4 5
;""5 6
builder$$ 
.$$ 
Property$$ 
($$ 
e$$ 
=>$$ !
e$$" #
.$$# $
ServiceName$$$ /
)$$/ 0
.%% 

IsRequired%% 
(%% 
)%% 
.&& 
HasMaxLength&& 
(&& 
$num&& !
)&&! "
.'' 
	IsUnicode'' 
('' 
false''  
)''  !
.(( 
HasColumnName(( 
((( 
$str(( -
)((- .
;((. /
})) 	
}** 
}++ Ä
¢C:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\EmprendeUCR_WebApplication\Infrastructure\ShoppingCartContext\EntityMappings\ShoppingCartMap.cs
	namespace 	&
EmprendeUCR_WebApplication
 $
.$ %
Infrastructure% 3
.3 4
ShoppingCartContext4 G
.G H
EntityMappingsH V
{ 
public 

class 
ShoppingCartMap  
:! "$
IEntityTypeConfiguration# ;
<; <
ShoppingCart< H
>H I
{ 
public 
void 
	Configure 
( 
EntityTypeBuilder /
</ 0
ShoppingCart0 <
>< =
builder> E
)E F
{ 	
builder 
. 
HasKey 
( 
e 
=> 
e  !
.! "
Email" '
)' (
. 
HasName 
( 
$str <
)< =
;= >
builder 
. 
ToTable 
( 
$str +
)+ ,
;, -
builder 
. 
Property 
( 
e 
=> !
e" #
.# $
Email$ )
)) *
. 
HasMaxLength 
( 
$num !
)! "
.   
	IsUnicode   
(   
false    
)    !
;  ! "
builder"" 
."" 
HasMany"" 
("" 
e"" 
=>""  
e""! "
.""" #
	ShopLines""# ,
)"", -
.## 
WithOne## 
(## 
c## 
=>## 
c## 
.##  
shoppingCart##  ,
!##, -
)##- .
;##. /
}$$ 	
}%% 
}&& ˛D
ßC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\EmprendeUCR_WebApplication\Infrastructure\ShoppingCartContext\Repositories\ShoppingCartRepository.cs
	namespace 	&
EmprendeUCR_WebApplication
 $
.$ %
Infrastructure% 3
.3 4
Core4 8
{ 
public 

class "
ShoppingCartRepository '
:( )#
IShoppingCartRepository* A
{ 
private 
readonly "
ShoppingCartDbContext2 /

_dbContext0 :
;: ;
public 
IUnitOfWork 

UnitOfWork %
=>& (

_dbContext) 3
;3 4
public "
ShoppingCartRepository %
(% &"
ShoppingCartDbContext2& <

unitOfWork= G
)G H
{ 	

_dbContext   
=   

unitOfWork   #
;  # $
}!! 	
public(( 
Task(( 

DeleteLine(( 
((( 
ShopLine(( '
shopLine((( 0
)((0 1
{)) 	

_dbContext** 
.** 
	ShopLines**  
.**  !
Remove**! '
(**' (
shopLine**( 0
)**0 1
;**1 2
return++ 
Task++ 
.++ 
CompletedTask++ %
;++% &
},, 	
public33 
async33 
Task33 
<33 
ShoppingCart33 &
?33& '
>33' (
GetByIdAsync33) 5
(335 6
string336 <
email33= B
)33B C
{44 	
ShoppingCart55 
shop55 
=55 
await55  %

_dbContext55& 0
.550 1
ShoppingCarts551 >
.66 
Include66 
(66 
shop66 
=>66 
shop66  $
.66$ %
	ShopLines66% .
)66. /
.77 
ThenInclude77  
(77  !
p77! "
=>77# %
p77& '
.77' (
product77( /
)77/ 0
.88 
ThenInclude88  
(88  !
p88! "
=>88# %
p88& '
.88' (
Product_Photos88( 6
)886 7
.99 
FirstOrDefaultAsync99 #
(99# $
t99$ %
=>99& (
t99) *
.99* +
Email99+ 0
==991 3
email994 9
)999 :
;99: ;
return:: 
shop:: 
;:: 
};; 	
publicBB 
asyncBB 
TaskBB 
	SaveAsyncBB #
(BB# $
ShoppingCartBB$ 0
shoppingCartBB1 =
)BB= >
{CC 	

_dbContextDD 
.DD 
UpdateDD 
(DD 
shoppingCartDD *
)DD* +
;DD+ ,
awaitFF 

_dbContextFF 
.FF 
SaveEntitiesAsyncFF .
(FF. /
)FF/ 0
;FF0 1
}GG 	
publicNN 
asyncNN 
TaskNN 
<NN 
ListNN 
<NN  
Product_PhotosNN  .
>NN. /
>NN/ 0
	GetPhotosNN1 :
(NN: ;
ProductNN; B
productsNNC K
)NNK L
{OO 	
ListPP 
<PP 
Product_PhotosPP 
>PP  
photosPP! '
=PP( )

_dbContextPP+ 5
.PP5 6
Product_PhotosPP6 D
.QQ 
WhereQQ 
(QQ 
pQQ 
=>QQ 
pQQ 
.QQ 
Code_IDQQ &
==QQ' )
productsQQ* 2
.QQ2 3
CodeIdQQ3 9
)QQ9 :
.RR 
ToListRR 
(RR 
)RR 
;RR 
returnSS 
productsSS 
.SS 
Product_PhotosSS *
.SS* +
ToListSS+ 1
(SS1 2
)SS2 3
;SS3 4
}TT 	
public\\ 
async\\ 
Task\\ 
SendRequest\\ %
(\\% &
ShoppingCart\\& 2
shop\\3 7
,\\7 8
string\\9 ?
Details\\@ G
,\\G H
string\\I O
DeliveryAddress\\P _
,\\_ `
DateTime]]0 8
DeliveryDate]]9 E
,]]E F
string]]G M!
selectedPaymentMethod]]N c
)]]c d
{^^ 	
Order__ 
order__ 
=__ 
await__  
CreateOrder__! ,
(__, -
shop__- 1
,__1 2
Details__3 :
,__: ;
DeliveryAddress__< K
,__K L
DeliveryDate__M Y
,__Y Z!
selectedPaymentMethod__[ p
)__p q
;__q r
await`` 

_dbContext`` 
.`` 
SaveEntitiesAsync`` .
(``. /
)``/ 0
;``0 1
}aa 	
publicjj 
asyncjj 
Taskjj 
<jj 
Orderjj 
>jj  
CreateOrderjj! ,
(jj, -
ShoppingCartjj- 9
shopjj: >
,jj> ?
stringjj@ F
DetailsjjG N
,jjN O
stringkk 
DeliveryAddresskk  /
,kk/ 0
DateTimekk1 9
DeliveryDatekk: F
,kkF G
stringkkH N!
selectedPaymentMethodkkO d
)kke f
{ll 	
DateTimemm 
DateAndHourCreationmm (
=mm) *
DateTimemm+ 3
.mm3 4
Nowmm4 7
;mm7 8
DateAndHourCreationnn 
=nn  !
newnn" %
DateTimenn& .
(nn. /
DateAndHourCreationoo 
.oo  
Ticksoo  %
-oo& '
(oo( )
DateAndHourCreationoo) <
.oo< =
Ticksoo= B
%ooC D
TimeSpanooE M
.ooM N
TicksPerSecondooN \
)oo\ ]
,oo] ^
DateAndHourCreationpp 
.pp  
Kindpp  $
)pp$ %
;pp% &
stringrr 
ClientEmailrr 
=rr  
shoprr! %
.rr% &
Emailrr& +
;rr+ ,
stringss 
EntrepreneurEmailss $
=ss% &
shopss' +
.ss+ ,
	ShopLinesss, 5
.ss5 6
FirstOrDefaultss6 D
(ssD E
)ssE F
.ssF G
EntrepreneurEmailssG X
;ssX Y
stringtt 
statustt 
=tt 
$strtt 3
;tt3 4
Listuu 
<uu 
	Organizeduu 
>uu 
listShopLineuu (
=uu) *
newuu+ .
Listuu/ 3
<uu3 4
	Organizeduu4 =
>uu= >
(uu> ?
)uu? @
;uu@ A
Orderww 
orderww 
=ww 
newww 
Orderww #
(ww# $
DateAndHourCreationww$ 7
,ww7 8
ClientEmailww9 D
,wwD E
DetailswwF M
,wwM N
DeliveryAddresswwO ^
,ww^ _
DeliveryDateww` l
,wwl m
EntrepreneurEmailxx +
,xx+ ,
statusxx- 3
,xx3 4!
selectedPaymentMethodxx5 J
)xxJ K
;xxK L
foreachyy 
(yy 
varyy 
organizedLineyy &
inyy' )
shopyy* .
.yy. /
	ShopLinesyy/ 8
)yy8 9
{zz 
int{{ 
codeId{{ 
={{ 
organizedLine{{ *
.{{* +
CodeId{{+ 1
;{{1 2
int|| 

categoryId|| 
=||  
organizedLine||! .
.||. /

CategoryId||/ 9
;||9 :
int}} 
quantity}} 
=}} 
organizedLine}} ,
.}}, -
Quantity}}- 5
;}}5 6
EntrepreneurEmail~~ !
=~~" #
organizedLine~~$ 1
.~~1 2
EntrepreneurEmail~~2 C
;~~C D
	Organized 
	organized #
=$ %
new& )
	Organized* 3
(3 4
codeId4 :
,: ;
EntrepreneurEmail< M
,M N

categoryIdO Y
,Y Z!
DateAndHourCreation
ÄÄ +
,
ÄÄ+ ,
ClientEmail
ÄÄ, 7
,
ÄÄ7 8
status
ÄÄ9 ?
,
ÄÄ? @
quantity
ÄÄA I
,
ÄÄI J
DeliveryDate
ÄÄK W
,
ÄÄW X
order
ÄÄY ^
)
ÄÄ^ _
;
ÄÄ_ `
listShopLine
ÅÅ 
.
ÅÅ 
Add
ÅÅ  
(
ÅÅ  !
	organized
ÅÅ! *
)
ÅÅ* +
;
ÅÅ+ ,
}
ÇÇ 
order
ÉÉ 
.
ÉÉ 
setOrganized
ÉÉ 
(
ÉÉ 
listShopLine
ÉÉ +
)
ÉÉ+ ,
;
ÉÉ, -

_dbContext
ÑÑ 
.
ÑÑ 
Add
ÑÑ 
(
ÑÑ 
order
ÑÑ  
)
ÑÑ  !
;
ÑÑ! "
return
ÖÖ 
order
ÖÖ 
;
ÖÖ 
}
ÜÜ 	
}
àà 
}ää ∫(
öC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\EmprendeUCR_WebApplication\Infrastructure\ShoppingCartContext\ShoppingCartDbContext2.cs
	namespace 	&
EmprendeUCR_WebApplication
 $
.$ %
Infrastructure% 3
.3 4
ShoppingCartContext4 G
{ 
public 

partial 
class "
ShoppingCartDbContext2 /
:0 1 
ApplicationDbContext2 F
{ 
public "
ShoppingCartDbContext2 %
(% &
DbContextOptions& 6
<6 7"
ShoppingCartDbContext27 M
>M N
optionsO V
,V W
ILoggerX _
<_ `"
ShoppingCartDbContext2` v
>v w
loggerx ~
)~ 
: 
base 
( 
options 
, 
logger "
)" #
{ 	
} 	
	protected 
override 
void 
OnConfiguring  -
(- .#
DbContextOptionsBuilder. E
optionsBuilderF T
)T U
{ 	
optionsBuilder 
. 
LogTo  
(  !
message! (
=>) +
Debug, 1
.1 2
	WriteLine2 ;
(; <
message< C
)C D
)D E
;E F
} 	
public 
virtual 
DbSet 
< 
Product $
>$ %
Products& .
{/ 0
get1 4
;4 5
set6 9
;9 :
}; <
public   
virtual   
DbSet   
<   
ProductService   +
>  + ,
ProductServices  - <
{  = >
get  ? B
;  B C
set  D G
;  G H
}  I J
public!! 
virtual!! 
DbSet!! 
<!! 
Service!! $
>!!$ %
Services!!& .
{!!/ 0
get!!1 4
;!!4 5
set!!6 9
;!!9 :
}!!; <
public"" 
virtual"" 
DbSet"" 
<"" 
ShoppingCart"" )
>"") *
ShoppingCarts""+ 8
{""9 :
get""; >
;""> ?
set""@ C
;""C D
}""E F
public## 
virtual## 
DbSet## 
<## 
ShopLine## %
>##% &
	ShopLines##' 0
{##1 2
get##3 6
;##6 7
set##8 ;
;##; <
}##= >
public$$ 
virtual$$ 
DbSet$$ 
<$$ 
Product_Photos$$ +
>$$+ ,
Product_Photos$$- ;
{$$< =
get$$> A
;$$A B
set$$C F
;$$F G
}$$H I
public%% 
virtual%% 
DbSet%% 
<%% 
Order%% "
>%%" #
Orders%%$ *
{%%+ ,
get%%- 0
;%%0 1
set%%2 5
;%%5 6
}%%7 8
public&& 
virtual&& 
DbSet&& 
<&& 
	Organized&& &
>&&& '

Organizeds&&( 2
{&&3 4
get&&5 8
;&&8 9
set&&: =
;&&= >
}&&? @
	protected'' 
override'' 
void'' 
OnModelCreating''  /
(''/ 0
ModelBuilder''0 <
modelBuilder''= I
)''I J
{(( 	
base** 
.** 
OnModelCreating**  
(**  !
modelBuilder**! -
)**- .
;**. /
modelBuilder,, 
.,, 
ApplyConfiguration,, +
(,,+ ,
new,,, /

ProductMap,,0 :
(,,: ;
),,; <
),,< =
;,,= >
modelBuilder-- 
.-- 
ApplyConfiguration-- +
(--+ ,
new--, /
ProductServiceMap--0 A
(--A B
)--B C
)--C D
;--D E
modelBuilder.. 
... 
ApplyConfiguration.. +
(..+ ,
new.., /

ServiceMap..0 :
(..: ;
)..; <
)..< =
;..= >
modelBuilder// 
.// 
ApplyConfiguration// +
(//+ ,
new//, /
Product_PhotosMap//0 A
(//A B
)//B C
)//C D
;//D E
modelBuilder11 
.11 
ApplyConfiguration11 +
(11+ ,
new11, /
ShoppingCartMap110 ?
(11? @
)11@ A
)11A B
;11B C
modelBuilder22 
.22 
ApplyConfiguration22 +
(22+ ,
new22, /
ProductLineMap220 >
(22> ?
)22? @
)22@ A
;22A B
modelBuilder33 
.33 
ApplyConfiguration33 +
(33+ ,
new33, /
OrderMap330 8
(338 9
)339 :
)33: ;
;33; <
modelBuilder44 
.44 
ApplyConfiguration44 +
(44+ ,
new44, /
OrganizedMap440 <
(44< =
)44= >
)44> ?
;44? @
}55 	
}66 
}77 å
sC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\EmprendeUCR_WebApplication\Pages\Error.cshtml.cs
	namespace

 	&
EmprendeUCR_WebApplication


 $
.

$ %
Pages

% *
{ 
[ 
ResponseCache 
( 
Duration 
= 
$num 
,  
Location! )
=* +!
ResponseCacheLocation, A
.A B
NoneB F
,F G
NoStoreH O
=P Q
trueR V
)V W
]W X
[ "
IgnoreAntiforgeryToken 
] 
public 

class 

ErrorModel 
: 
	PageModel '
{ 
public 
string 
	RequestId 
{  !
get" %
;% &
set' *
;* +
}, -
public 
bool 
ShowRequestId !
=>" $
!% &
string& ,
., -
IsNullOrEmpty- :
(: ;
	RequestId; D
)D E
;E F
private 
readonly 
ILogger  
<  !

ErrorModel! +
>+ ,
_logger- 4
;4 5
public 

ErrorModel 
( 
ILogger !
<! "

ErrorModel" ,
>, -
logger. 4
)4 5
{ 	
_logger 
= 
logger 
; 
} 	
public 
void 
OnGet 
( 
) 
{ 	
	RequestId 
= 
Activity  
.  !
Current! (
?( )
.) *
Id* ,
??- /
HttpContext0 ;
.; <
TraceIdentifier< K
;K L
} 	
} 
}   Í
{C:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\EmprendeUCR_WebApplication\Pages\Products\List.cshtml.cs
	namespace 	&
EmprendeUCR_WebApplication
 $
.$ %
Pages% *
.* +
Products+ 3
{ 
public 

class 
	ListModel 
: 
	PageModel &
{ 
private 
readonly &
EmprendeUCR_WebApplication 3
.3 4
Data4 8
.8 9
Contexts9 A
.A B
SqlServerDbContextB T
_contextU ]
;] ^
public 
	ListModel 
( &
EmprendeUCR_WebApplication 3
.3 4
Data4 8
.8 9
Contexts9 A
.A B
SqlServerDbContextB T
contextU \
)\ ]
{ 	
_context 
= 
context 
; 
} 	
public 
IList 
< &
EmprendeUCR_WebApplication /
./ 0
Data0 4
.4 5
Entities5 =
.= >
Product> E
>E F
ProductG N
{O P
getQ T
;T U
setV Y
;Y Z
}[ \
public 
async 
Task 

OnGetAsync $
($ %
)% &
{ 	
Product 
= 
( 
IList 
< &
EmprendeUCR_WebApplication 7
.7 8
Data8 <
.< =
Entities= E
.E F
ProductF M
>M N
)N O
awaitO T
_contextU ]
.] ^
Product^ e
.e f
ToListAsyncf q
(q r
)r s
;s t
} 	
} 
} –

hC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\EmprendeUCR_WebApplication\Program.cs
	namespace

 	&
EmprendeUCR_WebApplication


 $
{ 
public 

class 
Program 
{ 
public 
static 
void 
Main 
(  
string  &
[& '
]' (
args) -
)- .
{ 	
CreateHostBuilder 
( 
args "
)" #
.# $
Build$ )
() *
)* +
.+ ,
Run, /
(/ 0
)0 1
;1 2
} 	
public 
static 
IHostBuilder "
CreateHostBuilder# 4
(4 5
string5 ;
[; <
]< =
args> B
)B C
=>D F
Host 
.  
CreateDefaultBuilder %
(% &
args& *
)* +
. $
ConfigureWebHostDefaults )
() *

webBuilder* 4
=>5 7
{ 

webBuilder 
. 

UseStartup )
<) *
Startup* 1
>1 2
(2 3
)3 4
;4 5
} 
) 
; 
} 
} ©˙
hC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\EmprendeUCR_WebApplication\Startup.cs
	namespaceLL 	&
EmprendeUCR_WebApplicationLL
 $
{MM 
publicNN 

classNN 
StartupNN 
{OO 
publicPP 
StartupPP 
(PP 
IConfigurationPP %
configurationPP& 3
)PP3 4
{QQ 	
ConfigurationRR 
=RR 
configurationRR )
;RR) *
}SS 	
publicUU 
IConfigurationUU 
ConfigurationUU +
{UU, -
getUU. 1
;UU1 2
}UU3 4
publicYY 
voidYY 
ConfigureServicesYY %
(YY% &
IServiceCollectionYY& 8
servicesYY9 A
)YYA B
{ZZ 	
services[[ 
.[[ 
AddDbContext[[ !
<[[! ""
ShoppingCartDbContext2[[" 8
>[[8 9
([[9 :
options[[: A
=>[[B D
{\\ 
options]] 
.]] 
UseSqlServer]] $
(]]$ %
(]]% &
Configuration]]& 3
.]]3 4
GetConnectionString]]4 G
(]]G H
$str]]H [
)]][ \
)]]\ ]
)]]] ^
;]]^ _
options^^ 
.^^ &
EnableSensitiveDataLogging^^ 2
(^^2 3
)^^3 4
;^^4 5
}__ 
)__ 
;__ 
servicesaa 
.aa 
AddDbContextaa !
<aa! "
SqlServerDbContextaa" 4
>aa4 5
(aa5 6
optionsaa6 =
=>aa> @
{bb 
optionscc 
.cc 
UseSqlServercc $
(cc$ %
Configurationcc% 2
.cc2 3
GetConnectionStringcc3 F
(ccF G
$strccG Z
)ccZ [
)cc[ \
;cc\ ]
optionsdd 
.dd &
EnableSensitiveDataLoggingdd 2
(dd2 3
)dd3 4
;dd4 5
}ee 
)ee 
;ee 
servicesgg 
.gg 
AddDbContextgg !
<gg! "
OrderDbContextgg" 0
>gg0 1
(gg1 2
optionsgg2 9
=>gg: <
{hh 
optionsii 
.ii 
UseSqlServerii $
(ii$ %
Configurationii% 2
.ii2 3
GetConnectionStringii3 F
(iiF G
$striiG Z
)iiZ [
)ii[ \
;ii\ ]
optionsjj 
.jj &
EnableSensitiveDataLoggingjj 2
(jj2 3
)jj3 4
;jj4 5
}kk 
)kk 
;kk 
servicesll 
.ll 
AddDbContextll !
<ll! "
OfferDbContextll" 0
>ll0 1
(ll1 2
optionsll2 9
=>ll: <
optionsll= D
.llD E
UseSqlServerllE Q
(llQ R
ConfigurationllR _
.ll_ `
GetConnectionStringll` s
(lls t
$str	llt á
)
llá à
)
llà â
)
llâ ä
;
llä ã
servicesss 
.ss 
AddTransientss !
<ss! "
EmprendeUCRss" -
.ss- .
Applicationss. 9
.ss9 :
LoginContextss: F
.ssF G
ILoginServicessG T
,ssT U
EmprendeUCRssV a
.ssa b
Applicationssb m
.ssm n
LoginContextssn z
.ssz {
Implementations	ss{ ä
.
ssä ã
LoginService
ssã ó
>
ssó ò
(
ssò ô
)
ssô ö
;
ssö õ
servicestt 
.tt 
AddTransienttt !
<tt! "
ILoginRepositorytt" 2
,tt2 3
LoginRepositorytt4 C
>ttC D
(ttD E
)ttE F
;ttF G
servicesvv 
.vv 
AddTransientvv !
<vv! "
EmprendeUCRvv" -
.vv- .
Applicationvv. 9
.vv9 :!
HomePageClientContextvv: O
.vvO P"
IHomePageClientServicevvP f
,vvf g
EmprendeUCRvvh s
.vvs t
Applicationvvt 
.	vv Ä#
HomePageClientContext
vvÄ ï
.
vvï ñ
Implementations
vvñ •
.
vv• ¶#
HomePageClientService
vv¶ ª
>
vvª º
(
vvº Ω
)
vvΩ æ
;
vvæ ø
servicesww 
.ww 
AddTransientww !
<ww! "%
IHomePageClientRepositoryww" ;
,ww; <$
HomePageClientRepositoryww= U
>wwU V
(wwV W
)wwW X
;wwX Y
servicesxx 
.xx 
AddTransientxx !
<xx! "%
IDisplayProductRepositoryxx" ;
,xx; <$
DisplayProductRepositoryxx= U
>xxU V
(xxV W
)xxW X
;xxX Y
serviceszz 
.zz 
AddTransientzz !
<zz! "
EmprendeUCRzz" -
.zz- .
Applicationzz. 9
.zz9 :
RegisterContextzz: I
.zzI J
IRegisterServicezzJ Z
,zzZ [
EmprendeUCRzz\ g
.zzg h
Applicationzzh s
.zzs t
RegisterContext	zzt É
.
zzÉ Ñ
Implementations
zzÑ ì
.
zzì î
RegisterService
zzî £
>
zz£ §
(
zz§ •
)
zz• ¶
;
zz¶ ß
services{{ 
.{{ 
AddTransient{{ !
<{{! "
IRegisterRepository{{" 5
,{{5 6
RegisterRepository{{7 I
>{{I J
({{J K
){{K L
;{{L M
services 
. 
AddTransient !
<! "
EmprendeUCR" -
.- .
Application. 9
.9 :'
ProductsSearchClientContext: U
.U V(
IProductsSearchClientServiceV r
,r s
EmprendeUCRt 
.	 Ä
Application
Ä ã
.
ã å)
ProductsSearchClientContext
å ß
.
ß ®
Implementations
® ∑
.
∑ ∏)
ProductsSearchClientService
∏ ”
>
” ‘
(
‘ ’
)
’ ÷
;
÷ ◊
services
ÄÄ 
.
ÄÄ 
AddTransient
ÄÄ !
<
ÄÄ! "-
IProductsSearchClientRepository
ÄÄ" A
,
ÄÄA B,
ProductsSearchClientRepository
ÄÄC a
>
ÄÄa b
(
ÄÄb c
)
ÄÄc d
;
ÄÄd e
services
ÇÇ 
.
ÇÇ 
AddTransient
ÇÇ !
<
ÇÇ! "
EmprendeUCR
ÇÇ" -
.
ÇÇ- .
Application
ÇÇ. 9
.
ÇÇ9 :
ProfileContext
ÇÇ: H
.
ÇÇH I
IProfileService
ÇÇI X
,
ÇÇX Y
EmprendeUCR
ÇÇZ e
.
ÇÇe f
Application
ÇÇf q
.
ÇÇq r
ProfileContextÇÇr Ä
.ÇÇÄ Å
ImplementationsÇÇÅ ê
.ÇÇê ë
ProfileServiceÇÇë ü
>ÇÇü †
(ÇÇ† °
)ÇÇ° ¢
;ÇÇ¢ £
services
ÉÉ 
.
ÉÉ 
AddTransient
ÉÉ !
<
ÉÉ! " 
IProfileRepository
ÉÉ" 4
,
ÉÉ4 5
ProfileRepository
ÉÉ6 G
>
ÉÉG H
(
ÉÉH I
)
ÉÉI J
;
ÉÉJ K
services
ÖÖ 
.
ÖÖ 
AddTransient
ÖÖ !
<
ÖÖ! "
EmprendeUCR
ÖÖ" -
.
ÖÖ- .
Application
ÖÖ. 9
.
ÖÖ9 :!
ConfirmAdminContext
ÖÖ: M
.
ÖÖM N"
IConfirmAdminService
ÖÖN b
,
ÖÖb c
EmprendeUCR
ÖÖd o
.
ÖÖo p
Application
ÖÖp {
.
ÖÖ{ |"
ConfirmAdminContextÖÖ| è
.ÖÖè ê
ImplementationsÖÖê ü
.ÖÖü †#
ConfirmAdminServiceÖÖ† ≥
>ÖÖ≥ ¥
(ÖÖ¥ µ
)ÖÖµ ∂
;ÖÖ∂ ∑
services
ÜÜ 
.
ÜÜ 
AddTransient
ÜÜ !
<
ÜÜ! "%
IConfirmAdminRepository
ÜÜ" 9
,
ÜÜ9 :$
ConfirmAdminRepository
ÜÜ; Q
>
ÜÜQ R
(
ÜÜR S
)
ÜÜS T
;
ÜÜT U
services
ââ 
.
ââ 
AddRazorPages
ââ "
(
ââ" #
)
ââ# $
;
ââ$ %
services
ää 
.
ää !
AddServerSideBlazor
ää (
(
ää( )
)
ää) *
;
ää* +
services
åå 
.
åå !
AddApplicationLayer
åå (
(
åå( )
)
åå) *
;
åå* +
services
çç 
.
çç $
AddInfrastructureLayer
çç +
(
çç+ ,
Configuration
éé 
.
éé !
GetConnectionString
éé 1
(
éé1 2
$str
éé2 A
)
ééA B
)
ééB C
;
ééC D
services
êê 
.
êê 
AddTransient
êê !
<
êê! "
EmprendeUCR
êê" -
.
êê- .
Application
êê. 9
.
êê9 :
PermissionContext
êê: K
.
êêK L 
IPermissionService
êêL ^
,
êê^ _
EmprendeUCR
êê` k
.
êêk l
Application
êêl w
.
êêw x 
PermissionContextêêx â
.êêâ ä
Implementationsêêä ô
.êêô ö!
PermissionServiceêêö ´
>êê´ ¨
(êê¨ ≠
)êê≠ Æ
;êêÆ Ø
services
ëë 
.
ëë 
AddTransient
ëë !
<
ëë! "#
IPermissionRepository
ëë" 7
,
ëë7 8"
PermissionRepository
ëë9 M
>
ëëM N
(
ëëN O
)
ëëO P
;
ëëP Q
services
ïï 
.
ïï 
AddDbContext
ïï !
<
ïï! "
LoginDbContext
ïï" 0
>
ïï0 1
(
ïï1 2
options
ïï2 9
=>
ïï: <
{
ññ 
options
óó 
.
óó 
UseSqlServer
óó $
(
óó$ %
Configuration
óó% 2
.
óó2 3!
GetConnectionString
óó3 F
(
óóF G
$str
óóG Z
)
óóZ [
)
óó[ \
;
óó\ ]
}
òò 
)
òò 
;
òò 
services
öö 
.
öö 
AddDbContext
öö !
<
öö! "%
DisplayProductDbContext
öö" 9
>
öö9 :
(
öö: ;
options
öö; B
=>
ööC E
{
õõ 
options
úú 
.
úú 
UseSqlServer
úú $
(
úú$ %
Configuration
úú% 2
.
úú2 3!
GetConnectionString
úú3 F
(
úúF G
$str
úúG Z
)
úúZ [
)
úú[ \
;
úú\ ]
}
ùù 
)
ùù 
;
ùù 
services
üü 
.
üü 
AddDbContext
üü !
<
üü! "#
ConfirmAdminDbContext
üü" 7
>
üü7 8
(
üü8 9
options
üü9 @
=>
üüA C
{
†† 
options
°° 
.
°° 
UseSqlServer
°° $
(
°°$ %
Configuration
°°% 2
.
°°2 3!
GetConnectionString
°°3 F
(
°°F G
$str
°°G Z
)
°°Z [
)
°°[ \
;
°°\ ]
}
¢¢ 
)
¢¢ 
;
¢¢ 
services
§§ 
.
§§ 
AddDbContext
§§ !
<
§§! "%
HomePageClientDbContext
§§" 9
>
§§9 :
(
§§: ;
options
§§; B
=>
§§C E
{
•• 
options
¶¶ 
.
¶¶ 
UseSqlServer
¶¶ $
(
¶¶$ %
Configuration
¶¶% 2
.
¶¶2 3!
GetConnectionString
¶¶3 F
(
¶¶F G
$str
¶¶G Z
)
¶¶Z [
)
¶¶[ \
;
¶¶\ ]
}
ßß 
)
ßß 
;
ßß 
services
©© 
.
©© 
AddDbContext
©© !
<
©©! "
RegisterDbContext
©©" 3
>
©©3 4
(
©©4 5
options
©©5 <
=>
©©= ?
{
™™ 
options
´´ 
.
´´ 
UseSqlServer
´´ $
(
´´$ %
Configuration
´´% 2
.
´´2 3!
GetConnectionString
´´3 F
(
´´F G
$str
´´G Z
)
´´Z [
)
´´[ \
;
´´\ ]
}
¨¨ 
)
¨¨ 
;
¨¨ 
services
ÆÆ 
.
ÆÆ 
AddDbContext
ÆÆ !
<
ÆÆ! "+
ProductsSearchClientDbContext
ÆÆ" ?
>
ÆÆ? @
(
ÆÆ@ A
options
ÆÆA H
=>
ÆÆI K
{
ØØ 
options
∞∞ 
.
∞∞ 
UseSqlServer
∞∞ $
(
∞∞$ %
Configuration
∞∞% 2
.
∞∞2 3!
GetConnectionString
∞∞3 F
(
∞∞F G
$str
∞∞G Z
)
∞∞Z [
)
∞∞[ \
;
∞∞\ ]
}
±± 
)
±± 
;
±± 
services
≥≥ 
.
≥≥ 
AddDbContext
≥≥ !
<
≥≥! "
ProfileDbContext
≥≥" 2
>
≥≥2 3
(
≥≥3 4
options
≥≥4 ;
=>
≥≥< >
{
¥¥ 
options
µµ 
.
µµ 
UseSqlServer
µµ $
(
µµ$ %
Configuration
µµ% 2
.
µµ2 3!
GetConnectionString
µµ3 F
(
µµF G
$str
µµG Z
)
µµZ [
)
µµ[ \
;
µµ\ ]
}
∂∂ 
)
∂∂ 
;
∂∂ 
services
∏∏ 
.
∏∏ 
AddDbContext
∏∏ !
<
∏∏! "!
PermissionDbContext
∏∏" 5
>
∏∏5 6
(
∏∏6 7
options
∏∏7 >
=>
∏∏? A
{
ππ 
options
∫∫ 
.
∫∫ 
UseSqlServer
∫∫ $
(
∫∫$ %
Configuration
∫∫% 2
.
∫∫2 3!
GetConnectionString
∫∫3 F
(
∫∫F G
$str
∫∫G Z
)
∫∫Z [
)
∫∫[ \
;
∫∫\ ]
}
ªª 
)
ªª 
;
ªª 
services
ææ 
.
ææ 
AddDbContext
ææ !
<
ææ! "#
NotificationDbContext
ææ" 7
>
ææ7 8
(
ææ8 9
options
ææ9 @
=>
ææA C
{
øø 
options
¿¿ 
.
¿¿ 
UseSqlServer
¿¿ $
(
¿¿$ %
Configuration
¿¿% 2
.
¿¿2 3!
GetConnectionString
¿¿3 F
(
¿¿F G
$str
¿¿G Z
)
¿¿Z [
)
¿¿[ \
;
¿¿\ ]
}
¡¡ 
)
¡¡ 
;
¡¡ 
services
√√ 
.
√√ 
AddDbContext
√√ !
<
√√! ""
SqlDbContextPandemic
√√" 6
>
√√6 7
(
√√7 8
options
√√8 ?
=>
√√@ B
options
√√C J
.
√√J K
UseSqlServer
√√K W
(
√√W X
Configuration
√√X e
.
√√e f!
GetConnectionString
√√f y
(
√√y z
$str√√z ç
)√√ç é
)√√é è
)√√è ê
;√√ê ë
services
≈≈ 
.
≈≈ 
AddDbContext
≈≈ !
<
≈≈! " 
SqlServerDbContext
≈≈" 4
>
≈≈4 5
(
≈≈5 6
options
≈≈6 =
=>
≈≈> @
options
≈≈A H
.
≈≈H I
UseSqlServer
≈≈I U
(
≈≈U V
Configuration
≈≈V c
.
≈≈c d!
GetConnectionString
≈≈d w
(
≈≈w x
$str≈≈x ã
)≈≈ã å
)≈≈å ç
)≈≈ç é
;≈≈é è
services
«« 
.
«« 
AddRazorPages
«« "
(
««" #
)
««# $
;
««$ %
services
»» 
.
»» !
AddServerSideBlazor
»» (
(
»»( )
)
»») *
;
»»* +
services
…… 
.
…… !
AddSyncfusionBlazor
…… (
(
……( )
)
……) *
;
……* +
services
   
.
   
	AddScoped
   
<
   
Alliance_Service
   /
>
  / 0
(
  0 1
)
  1 2
;
  2 3
services
ÀÀ 
.
ÀÀ 
	AddScoped
ÀÀ 
<
ÀÀ 
CategoryService
ÀÀ .
>
ÀÀ. /
(
ÀÀ/ 0
)
ÀÀ0 1
;
ÀÀ1 2
services
ÃÃ 
.
ÃÃ 
	AddScoped
ÃÃ 
<
ÃÃ  
AddCategoryService
ÃÃ 1
>
ÃÃ1 2
(
ÃÃ2 3
)
ÃÃ3 4
;
ÃÃ4 5
services
ÕÕ 
.
ÕÕ 
	AddScoped
ÕÕ 
<
ÕÕ #
DeleteCategoryService
ÕÕ 4
>
ÕÕ4 5
(
ÕÕ5 6
)
ÕÕ6 7
;
ÕÕ7 8
services
ŒŒ 
.
ŒŒ 
	AddScoped
ŒŒ 
<
ŒŒ !
EditCategoryService
ŒŒ 2
>
ŒŒ2 3
(
ŒŒ3 4
)
ŒŒ4 5
;
ŒŒ5 6
services
œœ 
.
œœ 
	AddScoped
œœ 
<
œœ 
ProductService
œœ -
>
œœ- .
(
œœ. /
)
œœ/ 0
;
œœ0 1
services
–– 
.
–– 
	AddScoped
–– 
<
–– !
EntrepreneurService
–– 2
>
––2 3
(
––3 4
)
––4 5
;
––5 6
services
—— 
.
—— 
	AddScoped
—— 
<
—— 
UserService
—— *
>
——* +
(
——+ ,
)
——, -
;
——- .
services
““ 
.
““ 
	AddScoped
““ 
<
““ $
Product_ServiceService
““ 5
>
““5 6
(
““6 7
)
““7 8
;
““8 9
services
”” 
.
”” 
	AddScoped
”” 
<
”” &
Shopping_Cart_HasService
”” 7
>
””7 8
(
””8 9
)
””9 :
;
””: ;
services
‘‘ 
.
‘‘ 
	AddScoped
‘‘ 
<
‘‘ 
ProvinceService
‘‘ .
>
‘‘. /
(
‘‘/ 0
)
‘‘0 1
;
‘‘1 2
services
’’ 
.
’’ 
	AddScoped
’’ 
<
’’ 
CantonService
’’ ,
>
’’, -
(
’’- .
)
’’. /
;
’’/ 0
services
÷÷ 
.
÷÷ 
	AddScoped
÷÷ 
<
÷÷ 
DistrictService
÷÷ .
>
÷÷. /
(
÷÷/ 0
)
÷÷0 1
;
÷÷1 2
services
◊◊ 
.
◊◊ 
	AddScoped
◊◊ 
<
◊◊  
CredentialsService
◊◊ 1
>
◊◊1 2
(
◊◊2 3
)
◊◊3 4
;
◊◊4 5
services
ÿÿ 
.
ÿÿ 
	AddScoped
ÿÿ 
<
ÿÿ 
LikesService
ÿÿ +
>
ÿÿ+ ,
(
ÿÿ, -
)
ÿÿ- .
;
ÿÿ. /
services
ŸŸ 
.
ŸŸ 
	AddScoped
ŸŸ 
<
ŸŸ 
ClientService
ŸŸ ,
>
ŸŸ, -
(
ŸŸ- .
)
ŸŸ. /
;
ŸŸ/ 0
services
⁄⁄ 
.
⁄⁄ 
	AddScoped
⁄⁄ 
<
⁄⁄ 
MembersService
⁄⁄ -
>
⁄⁄- .
(
⁄⁄. /
)
⁄⁄/ 0
;
⁄⁄0 1
services
€€ 
.
€€ 
	AddScoped
€€ 
<
€€ 
RegisterService
€€ .
>
€€. /
(
€€/ 0
)
€€0 1
;
€€1 2
services
‹‹ 
.
‹‹ 
	AddScoped
‹‹ 
<
‹‹ 
MailService
‹‹ *
>
‹‹* +
(
‹‹+ ,
)
‹‹, -
;
‹‹- .
services
›› 
.
›› 
	AddScoped
›› 
<
›› '
Email_ConfirmationService
›› 8
>
››8 9
(
››9 :
)
››: ;
;
››; <
services
ﬁﬁ 
.
ﬁﬁ 
	AddScoped
ﬁﬁ 
<
ﬁﬁ "
AdministratorService
ﬁﬁ 3
>
ﬁﬁ3 4
(
ﬁﬁ4 5
)
ﬁﬁ5 6
;
ﬁﬁ6 7
services
ﬂﬂ 
.
ﬂﬂ 
	AddScoped
ﬂﬂ 
<
ﬂﬂ 
EncrypService
ﬂﬂ ,
>
ﬂﬂ, -
(
ﬂﬂ- .
)
ﬂﬂ. /
;
ﬂﬂ/ 0
services
·· 
.
·· '
AddBlazoredSessionStorage
·· .
(
··. /
)
··/ 0
;
··0 1
services
‚‚ 
.
‚‚ 
	AddScoped
‚‚ 
<
‚‚ 
PhonesService
‚‚ ,
>
‚‚, -
(
‚‚- .
)
‚‚. /
;
‚‚/ 0
services
„„ 
.
„„ 
	AddScoped
„„ 
<
„„ "
Shopping_CartService
„„ 3
>
„„3 4
(
„„4 5
)
„„5 6
;
„„6 7
services
ÂÂ 
.
ÂÂ 
	AddScoped
ÂÂ 
<
ÂÂ #
Product_PhotosService
ÂÂ 4
>
ÂÂ4 5
(
ÂÂ5 6
)
ÂÂ6 7
;
ÂÂ7 8
services
ÁÁ 
.
ÁÁ 
	AddScoped
ÁÁ 
<
ÁÁ 0
"Shopping_Cart_Has_Service_Pandemic
ÁÁ A
>
ÁÁA B
(
ÁÁB C
)
ÁÁC D
;
ÁÁD E
services
ÈÈ 
.
ÈÈ 
	AddScoped
ÈÈ 
<
ÈÈ 
Serviceservice
ÈÈ -
>
ÈÈ- .
(
ÈÈ. /
)
ÈÈ/ 0
;
ÈÈ0 1
services
ÎÎ 
.
ÎÎ 
	AddScoped
ÎÎ 
<
ÎÎ 
KeywordService
ÎÎ -
>
ÎÎ- .
(
ÎÎ. /
)
ÎÎ/ 0
;
ÎÎ0 1
services
ÏÏ 
.
ÏÏ 
	AddScoped
ÏÏ 
<
ÏÏ 
AddKeywordService
ÏÏ 0
>
ÏÏ0 1
(
ÏÏ1 2
)
ÏÏ2 3
;
ÏÏ3 4
services
ÌÌ 
.
ÌÌ 
	AddScoped
ÌÌ 
<
ÌÌ  
ShowKeywordService
ÌÌ 1
>
ÌÌ1 2
(
ÌÌ2 3
)
ÌÌ3 4
;
ÌÌ4 5
services
ÓÓ 
.
ÓÓ 
	AddScoped
ÓÓ 
<
ÓÓ #
KeywordServiceService
ÓÓ 4
>
ÓÓ4 5
(
ÓÓ5 6
)
ÓÓ6 7
;
ÓÓ7 8
services
ÔÔ 
.
ÔÔ 
	AddScoped
ÔÔ 
<
ÔÔ 
HasKeywordService
ÔÔ 0
>
ÔÔ0 1
(
ÔÔ1 2
)
ÔÔ2 3
;
ÔÔ3 4
services
 
.
 
	AddScoped
 
<
 &
HasKeywordServiceService
 7
>
7 8
(
8 9
)
9 :
;
: ;
services
ÚÚ 
.
ÚÚ '
AddBlazoredSessionStorage
ÚÚ .
(
ÚÚ. /
)
ÚÚ/ 0
;
ÚÚ0 1
services
ıı 
.
ıı 
	AddScoped
ıı 
<
ıı !
UserServicePandemic
ıı 2
>
ıı2 3
(
ıı3 4
)
ıı4 5
;
ıı5 6
services
ˆˆ 
.
ˆˆ 
	AddScoped
ˆˆ 
<
ˆˆ $
ProductServicePandemic
ˆˆ 5
>
ˆˆ5 6
(
ˆˆ6 7
)
ˆˆ7 8
;
ˆˆ8 9
Global
˘˘ 
.
˘˘ 
ConnectionString
˘˘ #
=
˘˘$ %
Configuration
˘˘& 3
.
˘˘3 4!
GetConnectionString
˘˘4 G
(
˘˘G H
$str
˘˘H W
)
˘˘W X
;
˘˘X Y
Global
˙˙ 
.
˙˙ 

DomainName
˙˙ 
=
˙˙ 
Configuration
˙˙  -
[
˙˙- .
$str
˙˙. :
]
˙˙: ;
;
˙˙; <
services
˚˚ 
.
˚˚ 
	AddScoped
˚˚ 
<
˚˚  
CredentialsService
˚˚ 1
>
˚˚1 2
(
˚˚2 3
)
˚˚3 4
;
˚˚4 5
services
¸¸ 
.
¸¸ 
	AddScoped
¸¸ 
<
¸¸ 
LikesService
¸¸ +
>
¸¸+ ,
(
¸¸, -
)
¸¸- .
;
¸¸. /
services
˝˝ 
.
˝˝ 
	AddScoped
˝˝ 
<
˝˝ 
ClientService
˝˝ ,
>
˝˝, -
(
˝˝- .
)
˝˝. /
;
˝˝/ 0
services
˛˛ 
.
˛˛ 
	AddScoped
˛˛ 
<
˛˛ 
MembersService
˛˛ -
>
˛˛- .
(
˛˛. /
)
˛˛/ 0
;
˛˛0 1
services
ˇˇ 
.
ˇˇ 
	AddScoped
ˇˇ 
<
ˇˇ 
RegisterService
ˇˇ .
>
ˇˇ. /
(
ˇˇ/ 0
)
ˇˇ0 1
;
ˇˇ1 2
services
ÄÄ 
.
ÄÄ 
	AddScoped
ÄÄ 
<
ÄÄ 
MailService
ÄÄ *
>
ÄÄ* +
(
ÄÄ+ ,
)
ÄÄ, -
;
ÄÄ- .
services
ÅÅ 
.
ÅÅ 
	AddScoped
ÅÅ 
<
ÅÅ '
Email_ConfirmationService
ÅÅ 8
>
ÅÅ8 9
(
ÅÅ9 :
)
ÅÅ: ;
;
ÅÅ; <
services
ÇÇ 
.
ÇÇ 
	AddScoped
ÇÇ 
<
ÇÇ "
AdministratorService
ÇÇ 3
>
ÇÇ3 4
(
ÇÇ4 5
)
ÇÇ5 6
;
ÇÇ6 7
services
ÉÉ 
.
ÉÉ 
	AddScoped
ÉÉ 
<
ÉÉ 
EncrypService
ÉÉ ,
>
ÉÉ, -
(
ÉÉ- .
)
ÉÉ. /
;
ÉÉ/ 0
services
ÖÖ 
.
ÖÖ '
AddBlazoredSessionStorage
ÖÖ .
(
ÖÖ. /
)
ÖÖ/ 0
;
ÖÖ0 1
services
ÜÜ 
.
ÜÜ 
	AddScoped
ÜÜ 
<
ÜÜ "
BannedAccountService
ÜÜ 3
>
ÜÜ3 4
(
ÜÜ4 5
)
ÜÜ5 6
;
ÜÜ6 7
Global
áá 
.
áá 
ConnectionString
áá #
=
áá$ %
Configuration
áá& 3
.
áá3 4!
GetConnectionString
áá4 G
(
ááG H
$str
ááH W
)
ááW X
;
ááX Y
Global
àà 
.
àà 

DomainName
àà 
=
àà 
Configuration
àà  -
[
àà- .
$str
àà. :
]
àà: ;
;
àà; <
services
ââ 
.
ââ 
	AddScoped
ââ 
<
ââ   
CredentialsService
ââ  2
>
ââ2 3
(
ââ3 4
)
ââ4 5
;
ââ5 6
services
ää 
.
ää 
	AddScoped
ää 
<
ää 
OfferService
ää +
>
ää+ ,
(
ää, -
)
ää- .
;
ää. /
services
ãã 
.
ãã 
	AddScoped
ãã 
<
ãã 
Is_OfferService
ãã .
>
ãã. /
(
ãã/ 0
)
ãã0 1
;
ãã1 2
services
åå 
.
åå 
	AddScoped
åå 
<
åå 
ServiceService
åå -
>
åå- .
(
åå. /
)
åå/ 0
;
åå0 1
services
çç 
.
çç 
	AddScoped
çç 
<
çç #
Product_PhotosService
çç 4
>
çç4 5
(
çç5 6
)
çç6 7
;
çç7 8
services
éé 
.
éé 
	AddScoped
éé 
<
éé #
Service_PhotosService
éé 4
>
éé4 5
(
éé5 6
)
éé6 7
;
éé7 8
services
èè 
.
èè 
	AddScoped
èè 
<
èè  
HasSuppliesService
èè 1
>
èè1 2
(
èè2 3
)
èè3 4
;
èè4 5
services
êê 
.
êê 
	AddScoped
êê 
<
êê 
Has_StatusService
êê 0
>
êê0 1
(
êê1 2
)
êê2 3
;
êê3 4
services
ëë 
.
ëë 
	AddScoped
ëë 
<
ëë 
OrderService
ëë +
>
ëë+ ,
(
ëë, -
)
ëë- .
;
ëë. /
services
íí 
.
íí 
	AddScoped
íí 
<
íí 
StatusService
íí ,
>
íí, -
(
íí- .
)
íí. /
;
íí/ 0
services
ìì 
.
ìì 
	AddScoped
ìì 
<
ìì (
Personalized_StatusService
ìì 9
>
ìì9 :
(
ìì: ;
)
ìì; <
;
ìì< =
services
ïï 
.
ïï 
	AddScoped
ïï 
<
ïï &
SuggestedCategoryService
ïï 7
>
ïï7 8
(
ïï8 9
)
ïï9 :
;
ïï: ;
services
ññ 
.
ññ 
	AddScoped
ññ 
<
ññ 
ReportService
ññ ,
>
ññ, -
(
ññ- .
)
ññ. /
;
ññ/ 0
services
öö 
.
öö 
	AddScoped
öö 
<
öö 
IOfferRepository
öö /
,
öö/ 0
OfferRepository
öö1 @
>
öö@ A
(
ööA B
)
ööB C
;
ööC D
services
õõ 
.
õõ 
	AddScoped
õõ 
<
õõ %
IShoppingCartRepository
õõ 6
,
õõ6 7$
ShoppingCartRepository
õõ8 N
>
õõN O
(
õõO P
)
õõP Q
;
õõQ R
services
ùù 
.
ùù 
AddTransient
ùù !
<
ùù! ""
IShoppingCartService
ùù" 6
,
ùù6 7!
ShoppingCartService
ùù8 K
>
ùùK L
(
ùùL M
)
ùùM N
;
ùùN O
services
†† 
.
†† !
AddApplicationLayer
†† (
(
††( )
)
††) *
;
††* +
services
°° 
.
°° $
AddInfrastructureLayer
°° +
(
°°+ ,
Configuration
¢¢ 
.
¢¢ !
GetConnectionString
¢¢ 1
(
¢¢1 2
$str
¢¢2 E
)
¢¢E F
)
¢¢F G
;
¢¢G H
services
££ 
.
££ 
	AddScoped
££ 
<
££   
CredentialsService
££  2
>
££2 3
(
££3 4
)
££4 5
;
££5 6
services
•• 
.
•• 
AddTransient
•• !
<
••! "
IOrderRepository
••" 2
,
••2 3
OrderRepository
••4 C
>
••C D
(
••D E
)
••E F
;
••F G
services
¶¶ 
.
¶¶ 
AddTransient
¶¶ !
<
¶¶! "
IOrderService
¶¶" /
,
¶¶/ 0
OrderService
¶¶1 =
>
¶¶= >
(
¶¶> ?
)
¶¶? @
;
¶¶@ A
services
®® 
.
®® 
	AddScoped
®® 
<
®® %
INotificationRepository
®® 6
,
®®6 7+
NotificationRepositoryHandler
®®8 U
>
®®U V
(
®®V W
)
®®W X
;
®®X Y
services
©© 
.
©© 
	AddScoped
©© 
<
©© "
INotificationService
©© 3
,
©©3 4!
NotificationService
©©5 H
>
©©H I
(
©©I J
)
©©J K
;
©©K L
services
´´ 
.
´´ 
	AddScoped
´´ 
<
´´ 
IBillService
´´ +
,
´´+ ,
BillService
´´- 8
>
´´8 9
(
´´9 :
)
´´: ;
;
´´; <
services
¨¨ 
.
¨¨ 
	AddScoped
¨¨ 
<
¨¨ 
IPdfCreation
¨¨ +
,
¨¨+ ,
PdfCreation
¨¨- 8
>
¨¨8 9
(
¨¨9 :
)
¨¨: ;
;
¨¨; <
}
ÆÆ 	
public
±± 
void
±± 
	Configure
±± 
(
±± !
IApplicationBuilder
±± 1
app
±±2 5
,
±±5 6!
IWebHostEnvironment
±±7 J
env
±±K N
)
±±N O
{
≤≤ 	

Syncfusion
≥≥ 
.
≥≥ 
	Licensing
≥≥  
.
≥≥  !'
SyncfusionLicenseProvider
≥≥! :
.
≥≥: ;
RegisterLicense
≥≥; J
(
≥≥J K
$str≥≥K °
)≥≥° ¢
;≥≥¢ £
if
¥¥ 
(
¥¥ 
env
¥¥ 
.
¥¥ 
IsDevelopment
¥¥ !
(
¥¥! "
)
¥¥" #
)
¥¥# $
{
µµ 
app
∂∂ 
.
∂∂ '
UseDeveloperExceptionPage
∂∂ -
(
∂∂- .
)
∂∂. /
;
∂∂/ 0
}
∑∑ 
else
∏∏ 
{
ππ 
app
∫∫ 
.
∫∫ !
UseExceptionHandler
∫∫ '
(
∫∫' (
$str
∫∫( 0
)
∫∫0 1
;
∫∫1 2
app
ºº 
.
ºº 
UseHsts
ºº 
(
ºº 
)
ºº 
;
ºº 
}
ΩΩ 
app
øø 
.
øø !
UseHttpsRedirection
øø #
(
øø# $
)
øø$ %
;
øø% &
app
¿¿ 
.
¿¿ 
UseStaticFiles
¿¿ 
(
¿¿ 
)
¿¿  
;
¿¿  !
app
¬¬ 
.
¬¬ 

UseRouting
¬¬ 
(
¬¬ 
)
¬¬ 
;
¬¬ 
app
ƒƒ 
.
ƒƒ 
UseEndpoints
ƒƒ 
(
ƒƒ 
	endpoints
ƒƒ &
=>
ƒƒ' )
{
≈≈ 
	endpoints
∆∆ 
.
∆∆ 
MapBlazorHub
∆∆ &
(
∆∆& '
)
∆∆' (
;
∆∆( )
	endpoints
«« 
.
«« 
MapFallbackToPage
«« +
(
««+ ,
$str
««, 4
)
««4 5
;
««5 6
}
»» 
)
»» 
;
»» 
}
…… 	
}
   
}ÀÀ 