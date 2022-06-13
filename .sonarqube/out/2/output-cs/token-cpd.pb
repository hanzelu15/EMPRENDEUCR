ï	
qC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\src\Application\Categories\ICategoryService.cs
	namespace 	
EmprendeUCR
 
. 
Application !
.! "

Categories" ,
{ 
public 

	interface 
ICategoryService %
{ 
Task 
< 
IEnumerable 
< 
Category !
>! "
>" #
GetCategoriesAsync$ 6
(6 7
)7 8
;8 9
Task		 
<		 
Category		 
?		 
>		  
GetCategoryByIdAsync		 ,
(		, -
int		- 0
id		1 3
)		3 4
;		4 5
Task

 
ChangeTitle

 
(

 
Category

 !
category

" *
)

* +
;

+ ,
Task 
ChangeDescription 
( 
Category '
category( 0
)0 1
;1 2
Task 
ChangeParentId 
( 
Category $
category% -
)- .
;. /
} 
} Ô
ÄC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\src\Application\Categories\Implementations\CategoryService.cs
	namespace 	
EmprendeUCR
 
. 
Application !
.! "

Categories" ,
., -
Implementations- <
{ 
internal 
class 
CategoryService "
:# $
ICategoryService% 5
{ 
private		 
readonly		 
ICategoryRepository		 ,
_categoryRepository		- @
;		@ A
public

 
CategoryService

 
(

 
ICategoryRepository

 2
categoryRepository

3 E
)

E F
{ 	
_categoryRepository 
=  !
categoryRepository" 4
;4 5
} 	
public 
async 
Task 
< 
Category "
?" #
># $ 
GetCategoryByIdAsync% 9
(9 :
int: =
id> @
)@ A
{ 	
return 
await 
_categoryRepository ,
., -
GetByIdAsync- 9
(9 :
id: <
)< =
;= >
} 	
public 
async 
Task 
< 
IEnumerable %
<% &
Category& .
>. /
>/ 0
GetCategoriesAsync1 C
(C D
)D E
{ 	
return 
await 
_categoryRepository ,
.- .
GetAllAsync. 9
(9 :
): ;
;; <
} 	
public 
Task 
ChangeTitle 
(  
Category  (
category) 1
)1 2
{ 	
throw 
new 
System 
. #
NotImplementedException 4
(4 5
)5 6
;6 7
} 	
public 
Task 
ChangeDescription %
(% &
Category& .
category/ 7
)7 8
{ 	
throw 
new 
System 
. #
NotImplementedException 4
(4 5
)5 6
;6 7
} 	
public 
Task 
ChangeParentId "
(" #
Category# +
category, 4
)4 5
{   	
throw!! 
new!! 
System!! 
.!! #
NotImplementedException!! 4
(!!4 5
)!!5 6
;!!6 7
}"" 	
}## 
}$$ ±
hC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\src\Application\Chats\IChatService.cs
	namespace 	
EmprendeUCR
 
. 
Application !
.! "
Chats" '
{ 
public 

	interface 
IChatService !
{ 
public		 
Task		 
<		 
Chat		 
?		 
>		 
GetChatByIdAsync		 +
(		+ ,
int		, /
id		0 2
)		2 3
;		3 4
public

 
Task

 
<

 
IEnumerable

 
<

  
Chat

  $
>

$ %
>

% &
GetChatsAsync

' 4
(

4 5
)

5 6
;

6 7
public 
Task 
< 
Chat 
? 
> 
AddChatAsync '
(' (
)( )
;) *
} 
} Ú
kC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\src\Application\Chats\IMessageService.cs
	namespace 	
EmprendeUCR
 
. 
Application !
.! "
Chats" '
{ 
public 

	interface 
IMessageService $
{		 
public 
Task 
< 
Message 
? 
> 
GetMessageByIdAsync 1
(1 2
int2 5
chatID6 <
,< =
DateTimeOffset> L
dateM Q
)Q R
;R S
public 
Task 
< 
IEnumerable 
<  
Message  '
>' (
>( )
GetMessagesAsync* :
(: ;
); <
;< =
public 
Task 
AddMessageAsync #
(# $
Message$ +
message, 3
)3 4
;4 5
} 
} Ω
wC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\src\Application\Chats\Implementations\ChatService.cs
	namespace 	
EmprendeUCR
 
. 
Application !
.! "
Chats" '
.' (
Implementations( 7
{ 
internal 
class 
ChatService 
:  
IChatService! -
{		 
private

 
readonly

 
IChatRepository

 (
_chatRepository

) 8
;

8 9
public 
ChatService 
( 
IChatRepository *
chatRepository+ 9
)9 :
{ 	
_chatRepository 
= 
chatRepository ,
;, -
} 	
public 
async 
Task 
< 
Chat 
? 
>  
GetChatByIdAsync! 1
(1 2
int2 5
id6 8
)8 9
{ 	
return 
await 
_chatRepository (
.( )
GetByIdAsync) 5
(5 6
id6 8
)8 9
;9 :
} 	
public 
async 
Task 
< 
IEnumerable %
<% &
Chat& *
>* +
>+ ,
GetChatsAsync- :
(: ;
); <
{ 	
return 
await 
_chatRepository (
.( )
GetAllAsync) 4
(4 5
)5 6
;6 7
} 	
public 
async 
Task 
< 
Chat 
? 
>  
AddChatAsync! -
(- .
). /
{ 	
return 
await 
_chatRepository (
.( )
AddChat) 0
(0 1
)1 2
;2 3
} 	
} 
} »
zC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\src\Application\Chats\Implementations\MessageService.cs
	namespace 	
EmprendeUCR
 
. 
Application !
.! "
Chats" '
.' (
Implementations( 7
{ 
internal		 
class		 
MessageService		 !
:		" #
IMessageService		$ 3
{

 
private 
readonly 
IMessageRepository +
_messageRepository, >
;> ?
public 
MessageService 
( 
IMessageRepository 0
messageRepository1 B
)B C
{ 	
_messageRepository 
=  
messageRepository! 2
;2 3
} 	
public 
async 
Task 
AddMessageAsync )
() *
Message* 1
message2 9
)9 :
{ 	
await 
_messageRepository $
.$ %

AddMessage% /
(/ 0
message0 7
)7 8
;8 9
} 	
public 
async 
Task 
< 
Message !
?! "
>" #
GetMessageByIdAsync$ 7
(7 8
int8 ;
chatID< B
,B C
DateTimeOffsetD R
dateS W
)W X
{ 	
return 
await 
_messageRepository +
.+ ,
GetByIdAsync, 8
(8 9
chatID9 ?
,? @
dateA E
)E F
;F G
} 	
public 
async 
Task 
< 
IEnumerable %
<% &
Message& -
>- .
>. /
GetMessagesAsync0 @
(@ A
)A B
{ 	
return 
await 
_messageRepository +
.+ ,
GetAllAsync, 7
(7 8
)8 9
;9 :
} 	
} 
} ∏
C:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\src\Application\Chats\Implementations\UtilizesChatService.cs
	namespace 	
EmprendeUCR
 
. 
Application !
.! "
Chats" '
.' (
Implementations( 7
{ 
internal		 
class		 
UtilizesChatService		 &
:		' ( 
IUtilizesChatService		) =
{

 
private 
readonly #
IUtilizesChatRepository 0#
_utilizesChatRepository1 H
;H I
public 
UtilizesChatService "
(" ##
IUtilizesChatRepository# :"
utilizesChatRepository; Q
)Q R
{ 	#
_utilizesChatRepository #
=$ %"
utilizesChatRepository& <
;< =
} 	
public 
async 
Task  
AddUtilizesChatAsync .
(. /
UtilizesChat/ ;
utilizesChat< H
)H I
{ 	
await #
_utilizesChatRepository )
.) *
AddUtilizesChat* 9
(9 :
utilizesChat: F
)F G
;G H
} 	
public 
async 
Task 
< 
UtilizesChat &
?& '
>' ($
GetUtilizesChatByIdAsync) A
(A B
intB E
chatIDF L
,L M
stringN T
	userEmailU ^
)^ _
{ 	
return 
await #
_utilizesChatRepository 0
.0 1
GetByIdAsync1 =
(= >
chatID> D
,D E
	userEmailF O
)O P
;P Q
} 	
public 
async 
Task 
< 
IEnumerable %
<% &
UtilizesChat& 2
>2 3
>3 4!
GetUtilizesChatsAsync5 J
(J K
)K L
{ 	
return 
await #
_utilizesChatRepository 0
.0 1
GetAllAsync1 <
(< =
)= >
;> ?
} 	
} 
} ú
pC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\src\Application\Chats\IUtilizesChatService.cs
	namespace 	
EmprendeUCR
 
. 
Application !
.! "
Chats" '
{ 
public 

	interface  
IUtilizesChatService )
{ 
public		 
Task		 
<		 
UtilizesChat		  
?		  !
>		! "$
GetUtilizesChatByIdAsync		# ;
(		; <
int		< ?
chatID		@ F
,		F G
string		H N
	userEmail		O X
)		X Y
;		Y Z
public

 
Task

 
<

 
IEnumerable

 
<

  
UtilizesChat

  ,
>

, -
>

- .!
GetUtilizesChatsAsync

/ D
(

D E
)

E F
;

F G
public 
Task  
AddUtilizesChatAsync (
(( )
UtilizesChat) 5
utilizesChat6 B
)B C
;C D
} 
} º
~C:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\src\Application\ConfirmAdminContext\IConfirmAdminService.cs
	namespace 	
EmprendeUCR
 
. 
Application !
.! "
ConfirmAdminContext" 5
{		 
public

 

	interface

  
IConfirmAdminService

 )
{ 
IList 
<  
ActiveAdministrators "
>" #
getAdminitrators$ 4
(4 5
)5 6
;6 7
Task 
< 
User 
> 
getAdmin 
( 
string "
email# (
)( )
;) *
Task 
< 
bool 
> 
acceptNewAdmin !
(! " 
ActiveAdministrators" 6
admin7 <
)< =
;= >
Task 
< 
bool 
> 
declineNewAdmin "
(" # 
ActiveAdministrators# 7
admin8 =
)= >
;> ?
string 
getMailBody 
( 
int 
	type_user (
)( )
;) *
Task 
< 
string 
> 
	sendEmail 
( 
Mail #
	mailClass$ -
)- .
;. /
Task 
< 
bool 
> 
deteleUserAdmin "
(" #
string# )
email* /
)/ 0
;0 1
} 
} ú8
çC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\src\Application\ConfirmAdminContext\Implementations\ConfirmAdminService.cs
	namespace

 	
EmprendeUCR


 
.

 
Application

 !
.

! "
ConfirmAdminContext

" 5
.

5 6
Implementations

6 E
{ 
public 

class 
ConfirmAdminService $
:% & 
IConfirmAdminService' ;
{ 
private 
readonly #
IConfirmAdminRepository 0#
_confirmAdminRepository1 H
;H I
public 
ConfirmAdminService "
(" ##
IConfirmAdminRepository# :"
ConfirmAdminRepository; Q
)Q R
{ 	#
_confirmAdminRepository #
=$ %"
ConfirmAdminRepository& <
;< =
} 	
public 
IList 
<  
ActiveAdministrators )
>) *
getAdminitrators+ ;
(; <
)< =
{> ?
return #
_confirmAdminRepository *
.* +!
getAdministratorsVoid+ @
(@ A
)A B
;B C
} 	
public 
async 
Task 
< 
User 
> 
getAdmin  (
(( )
string) /
email0 5
)5 6
{7 8
return 
await #
_confirmAdminRepository 0
.0 1
getAdminUser1 =
(= >
email> C
)C D
;D E
} 	
public 
async 
Task 
< 
bool 
> 
acceptNewAdmin  .
(. / 
ActiveAdministrators/ C
adminD I
)I J
{K L
return 
await #
_confirmAdminRepository 0
.0 1
acceptAdmin1 <
(< =
admin= B
)B C
;C D
} 	
public   
async   
Task   
<   
bool   
>   
declineNewAdmin    /
(  / 0 
ActiveAdministrators  0 D
admin  E J
)  J K
{  K L
return!! 
await!! #
_confirmAdminRepository!! 0
.!!0 1
declineAdmin!!1 =
(!!= >
admin!!> C
)!!C D
;!!D E
}"" 	
public$$ 
string$$ 
getMailBody$$ !
($$! "
int$$" %
type$$& *
)$$* +
{%% 	
string&& 
url&& 
=&& 
$str&& 
;&& 
string'' 
result'' 
='' 
$str'' 
;'' 
if(( 
((( 
type(( 
==(( 
$num(( 
)(( 
{)) 
url** 
=** 
$str** 0
+**1 2
$str**3 M
;**M N
result,, 
=,, 
string,, 
.,,  
Format,,  &
(,,& '
$str,/' -
+//. /
$char//0 3
+//4 5
url//6 9
+//: ;
$char//< ?
+//@ A
$str00# ?
,00? @
url00A D
)00D E
;00E F
}11 
if33 
(33 
type33 
==33 
$num33 
)33 
{44 
result66 
=66 
string66 
.66  
Format66  &
(66& '
$str68' h
)88h i
;88i j
}99 
return:: 
result:: 
;:: 
};; 	
public>> 
async>> 
Task>> 
<>> 
string>>  
>>>  !
	sendEmail>>" +
(>>+ ,
Mail>>, 0
	mailClass>>1 :
)>>: ;
{?? 	
try@@ 
{AA 
usingBB 
(BB 
MailMessageBB "
mailBB# '
=BB( )
newBB* -
MailMessageBB. 9
(BB9 :
)BB: ;
)BB; <
{CC 
mailDD 
.DD 
FromDD 
=DD 
newDD  #
MailAddressDD$ /
(DD/ 0
	mailClassDD0 9
.DD9 :

FromMailIdDD: D
)DDD E
;DDE F
	mailClassFF 
.FF 
	ToMailIdsFF '
.FF' (
ForEachFF( /
(FF/ 0
xFF0 1
=>FF2 4
{GG 
mailHH 
.HH 
ToHH 
.HH  
AddHH  #
(HH# $
xHH$ %
)HH% &
;HH& '
}II 
)II 
;II 
mailKK 
.KK 
BodyKK 
=KK 
	mailClassKK  )
.KK) *
BodyKK* .
;KK. /
mailLL 
.LL 
SubjectLL  
=LL! "
	mailClassLL# ,
.LL, -
SubjectLL- 4
;LL4 5
mailMM 
.MM 

IsBodyHtmlMM #
=MM$ %
	mailClassMM& /
.MM/ 0

IsBodyHtmlMM0 :
;MM: ;
	mailClassOO 
.OO 
AttachementsOO *
.OO* +
ForEachOO+ 2
(OO2 3
xOO3 4
=>OO5 7
{PP 
mailQQ 
.QQ 
AttachmentsQQ (
.QQ( )
AddQQ) ,
(QQ, -
newQQ- 0

AttachmentQQ1 ;
(QQ; <
xQQ< =
)QQ= >
)QQ> ?
;QQ? @
}RR 
)RR 
;RR 
usingTT 
(TT 

SmtpClientTT %
smtpTT& *
=TT+ ,
newTT- 0

SmtpClientTT1 ;
(TT; <
$strTT< L
,TTL M
$numTTN Q
)TTQ R
)TTR S
{UU 
smtpVV 
.VV 
CredentialsVV (
=VV) *
newVV+ .
SystemVV/ 5
.VV5 6
NetVV6 9
.VV9 :
NetworkCredentialVV: K
(VVK L
	mailClassVVL U
.VVU V

FromMailIdVVV `
,VV` a
	mailClassVVb k
.VVk l
FromMailIdPasswordVVl ~
)VV~ 
;	VV Ä
smtpWW 
.WW 
	EnableSslWW &
=WW' (
trueWW) -
;WW- .
awaitXX 
smtpXX "
.XX" #
SendMailAsyncXX# 0
(XX0 1
mailXX1 5
)XX5 6
;XX6 7
returnYY 
$strYY 0
;YY0 1
}ZZ 
}[[ 
}\\ 
catch]] 
(]] 
	Exception]] 
ex]] 
)]]  
{^^ 
return__ 
ex__ 
.__ 
Message__ !
;__! "
}`` 
}aa 	
publiccc 
asynccc 
Taskcc 
<cc 
boolcc 
>cc 
deteleUserAdmincc  /
(cc/ 0
stringcc0 6
emailcc7 <
)cc< =
{dd 	
returnee 
awaitee #
_confirmAdminRepositoryee 0
.ee0 1

deteleUseree1 ;
(ee; <
emailee< A
)eeA B
;eeB C
}ff 	
}gg 
}hh ≥
iC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\src\Application\DependencyInjection.cs
	namespace 	
EmprendeUCR
 
. 
Application !
{ 
public 

static 
class 
DependencyInjection +
{ 
public 
static 
IServiceCollection (
AddApplicationLayer) <
(< =
this= A
IServiceCollectionB T
servicesU ]
)] ^
{ 	
services 
. 
AddTransient !
<! "+
ISinpeMovilPaymentMethodService" A
,A B*
SinpeMovilPaymentMethodServiceC a
>a b
(b c
)c d
;d e
services 
. 
AddTransient !
<! "*
ISinpeIbanPaymentMethodService" @
,@ A)
SinpeIbanPaymentMethodServiceB _
>_ `
(` a
)a b
;b c
services 
. 
AddTransient !
<! "%
ICardPaymentMethodService" ;
,; <$
CardPaymentMethodService= U
>U V
(V W
)W X
;X Y
services 
. 
AddTransient !
<! ""
IHasPaymentInfoService" 8
,9 :!
HasPaymentInfoService; P
>P Q
(Q R
)R S
;S T
services 
. 
AddTransient !
<! ")
ISinpeMovilPaymentInfoService" ?
,? @(
SinpeMovilPaymentInfoServiceA ]
>] ^
(^ _
)_ `
;` a
services 
. 
AddTransient !
<! "(
ISinpeIbanPaymentInfoService" >
,> ?'
SinpeIbanPaymentInfoService@ [
>[ \
(\ ]
)] ^
;^ _
services 
. 
AddTransient !
<! "#
ICardPaymentInfoService" 9
,9 :"
CardPaymentInfoService; Q
>Q R
(R S
)S T
;T U
services 
. 
AddTransient !
<! "
IPaymentInfoService" 5
,5 6
PaymentInfoService7 I
>I J
(J K
)K L
;L M
services 
. 
AddTransient !
<! "
IChatService" .
,. /
ChatService0 ;
>; <
(< =
)= >
;> ?
services 
. 
AddTransient !
<! "
IMessageService" 1
,1 2
MessageService3 A
>A B
(B C
)C D
;D E
services 
. 
AddTransient !
<! " 
IUtilizesChatService" 6
,6 7
UtilizesChatService8 K
>K L
(L M
)M N
;N O
services   
.   
AddTransient   !
<  ! "
ILoginService  " /
,  / 0
LoginService  1 =
>  = >
(  > ?
)  ? @
;  @ A
services!! 
.!! 
AddTransient!! !
<!!! "
IProductService!!" 1
,!!1 2
ProductService!!3 A
>!!A B
(!!B C
)!!C D
;!!D E
services"" 
."" 
AddTransient"" !
<""! ""
IProductServiceService""" 8
,""8 9!
ProductServiceService"": O
>""O P
(""P Q
)""Q R
;""R S
return## 
services## 
;## 
}$$ 	
}%% 
}&& ≈
àC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\src\Application\Entrepreneurs\Implementations\ProductPhotosService.cs
	namespace

 	
EmprendeUCR


 
.

 
Application

 !
.

! "
Entrepreneurs

" /
.

/ 0
Implementations

0 ?
{ 
class 	 
ProductPhotosService
 
:  !
IProductPhotosService! 6
{ 
private 
readonly $
IProductPhotosRepository 1$
_productPhotosRepository2 J
;J K
public  
ProductPhotosService #
(# $$
IProductPhotosRepository$ <#
productPhotosRepository= T
)T U
{ 	$
_productPhotosRepository $
=% &#
productPhotosRepository' >
;> ?
} 	
public 
async 
Task 
< 
ProductPhotos '
?' (
>( )$
GetProductPhotoByIdAsync* B
(B C
longC G
idH J
)J K
{ 	
return 
await $
_productPhotosRepository 1
.1 2
GetByIdAsync2 >
(> ?
id? A
)A B
;B C
} 	
public 
async 
Task 
< 
List 
< 
ProductPhotos ,
>, -
>- .!
GetProductPhotosAsync/ D
(D E
)E F
{ 	
return 
await $
_productPhotosRepository 1
.1 2
GetAllAsync2 =
(= >
)> ?
;? @
} 	
public 
async 
Task 
< 
List 
< 
ProductPhotos ,
>, -
>- .)
GetProductPhotosByCodeIDAsync/ L
(L M
longM Q
idR T
)T U
{   	
return!! 
await!! $
_productPhotosRepository!! 1
.!!1 2"
GetAllByProductIDAsync!!2 H
(!!H I
id!!I K
)!!K L
;!!L M
}"" 	
}## 
}$$ 
ÇC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\src\Application\Entrepreneurs\Implementations\ProductService.cs
	namespace		 	
EmprendeUCR		
 
.		 
Application		 !
.		! "
Entrepreneurs		" /
.		/ 0
Implementations		0 ?
{

 
class 	
ProductService
 
: 
IProductService *
{ 
private 
readonly 
IProductRepository +
_productRepository, >
;> ?
public 
ProductService 
( 
IProductRepository 0
productRepository1 B
)B C
{ 	
_productRepository 
=  
productRepository! 2
;2 3
} 	
public## 
async## 
Task## 
<## 
Product## !
>##! "
GetProductByIdAsync### 6
(##6 7
long##7 ;
id##< >
)##> ?
{$$ 	
return%% 
await%% 
_productRepository%% +
.%%+ ,
GetByIdAsync%%, 8
(%%8 9
id%%9 ;
)%%; <
;%%< =
}&& 	
public(( 
async(( 
Task(( 
<(( 
List(( 
<(( 
Product(( &
>((& '
>((' (
GetProductsAsync(() 9
(((9 :
)((: ;
{)) 	
return** 
await** 
_productRepository** +
.**+ ,
GetAllAsync**, 7
(**7 8
)**8 9
;**9 :
}++ 	
},, 
}-- ·
âC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\src\Application\Entrepreneurs\Implementations\ProductServiceService.cs
	namespace		 	
EmprendeUCR		
 
.		 
Application		 !
.		! "
Entrepreneurs		" /
.		/ 0
Implementations		0 ?
{

 
class 	!
ProductServiceService
 
:  !"
IProductServiceService" 8
{ 
private 
readonly %
IProductServiceRepository 2%
_productServiceRepository3 L
;L M
public !
ProductServiceService $
($ %%
IProductServiceRepository% >$
productServiceRepository? W
)W X
{ 	%
_productServiceRepository $
=% &$
productServiceRepository' ?
;? @
} 	
public 
async 
Task 
< 
Product_Service )
>) *%
GetProducServiceByIdAsync+ D
(D E
longE I
idJ L
)L M
{ 	
return 
await %
_productServiceRepository 2
.2 3
GetByIdAsync3 ?
(? @
id@ B
)B C
;C D
} 	
public 
async 
Task 
< 
List 
< 
Product_Service .
>. /
>/ 0#
GetProductServicesAsync1 H
(H I
)I J
{ 	
return 
await %
_productServiceRepository 2
.2 3
GetAllAsync3 >
(> ?
)? @
;@ A
} 	
} 
} ê
yC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\src\Application\Entrepreneurs\IProductPhotosService.cs
	namespace

 	
EmprendeUCR


 
.

 
Application

 !
.

! "
Entrepreneurs

" /
{ 
public 

	interface !
IProductPhotosService *
{ 
Task 
< 
List 
< 
ProductPhotos 
>  
>  !!
GetProductPhotosAsync" 7
(7 8
)8 9
;9 :
Task 
< 
ProductPhotos 
? 
> $
GetProductPhotoByIdAsync 5
(5 6
long6 :
id; =
)= >
;> ?
Task 
< 
List 
< 
ProductPhotos 
>  
>  !)
GetProductPhotosByCodeIDAsync" ?
(? @
long@ D
idE G
)G H
;H I
} 
} ˘
sC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\src\Application\Entrepreneurs\IProductService.cs
	namespace 	
EmprendeUCR
 
. 
Application !
.! "
Entrepreneurs" /
{		 
public

 

	interface

 
IProductService

 $
{ 
Task 
< 
List 
< 
Product 
> 
> 
GetProductsAsync ,
(, -
)- .
;. /
Task 
< 
Product 
? 
> 
GetProductByIdAsync *
(* +
long+ /
id0 2
)2 3
;3 4
} 
} §
zC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\src\Application\Entrepreneurs\IProductServiceService.cs
	namespace 	
EmprendeUCR
 
. 
Application !
.! "
Entrepreneurs" /
{		 
public

 

	interface

 "
IProductServiceService

 +
{ 
Task 
< 
List 
< 
Product_Service !
>! "
>" ##
GetProductServicesAsync$ ;
(; <
)< =
;= >
Task 
< 
Product_Service 
? 
> %
GetProducServiceByIdAsync 8
(8 9
long9 =
id> @
)@ A
;A B
} 
} ò
ÇC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\src\Application\HomePageClientContext\IHomePageClientService.cs
	namespace		 	
EmprendeUCR		
 
.		 
Application		 !
.		! "!
HomePageClientContext		" 7
{

 
public 

	interface "
IHomePageClientService +
{ 
string 
convertImageDisplay "
(" #
byte# '
[' (
]( )
image* /
)/ 0
;0 1
IList 
< 
Product 
> 
listAllNewProducts )
() *
)* +
;+ ,
IList 
< 
Product 
> 
listAllNewOffer &
(& '
)' (
;( )
IList 
< 
Product 
> (
listAllNewRecomendedProducts 3
(3 4
string4 :
	userEmail; D
)D E
;E F
IList 
< 
ProductPhotos 
> !
listAllProductsPhotos 2
(2 3
)3 4
;4 5
Task 
< 
IList 
< 
Category 
> 
> !
getAllCategoriesAsync 3
(3 4
)4 5
;5 6
Task 
Rowdrop 
( 

Syncfusion 
.  
Blazor  &
.& '
Grids' ,
., -
RowDragEventArgs- =
<= >
Category> F
>F G
argsH L
,L M

SfTreeGridN X
<X Y
CategoryY a
>a b
mainc g
)g h
;h i
Task 
ChangeParent 
( 
int 
Id  
,  !
int" %
?% &
ParentId' /
)/ 0
;0 1
bool 
verifyChildCategory  
(  !
int! $
id% '
)' (
;( )
Task 
< 
bool 
> 
searchProductById $
($ %
string% +
email, 1
,1 2
int3 6
	idProduct7 @
)@ A
;A B
Task 
< 
bool 
> "
addProductShoppingCart )
() *
ShoppingCartHas* 9
shoppingCart: F
)F G
;G H
Task 
< 
IList 
< 
Offer 
> 
> 
GetAllOffersAsync ,
(, -
)- .
;. /
Task 
< 
List 
< 
ProductService  
>  !
>! "'
GetAllProductsServicesAsync# >
(> ?
)? @
;@ A
IList 
< 
Product 
> !
listPurchasedProducts ,
(, -
string- 3
email4 9
)9 :
;: ;
IList 
< 
Is_Offer 
> 
getIs_Offer #
(# $
)$ %
;% &
IList 
< 
Service_Photos 
> 
getServicePhotos .
(. /
)/ 0
;0 1
String &
GetEntrepreneurNameByEmail )
() *
string* 0
email1 6
)6 7
;7 8
Task 
< 
Is_Offer 
> 
GetIs_OfferAsync '
(' (
int( +
Is_Offer_Id, 7
)7 8
;8 9
List   
<   
Is_Offer   
>   0
$GetAllIs_OfferRelatedToOfferNOTAsync   ;
(  ; <
Offer  < A
offer  B G
)  G H
;  H I
}## 
}$$ ôZ
ëC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\src\Application\HomePageClientContext\Implementations\HomePageClientService.cs
	namespace 	
EmprendeUCR
 
. 
Application !
.! "!
HomePageClientContext" 7
.7 8
Implementations8 G
{ 
public 

class !
HomePageClientService &
:' ("
IHomePageClientService) ?
{ 
private 
readonly %
IHomePageClientRepository 2%
_homePageClientRepository3 L
;L M
private 
readonly %
IDisplayProductRepository 2%
_displayProductRepository3 L
;L M

SfTreeGrid 
< 
Category 
> 
TreeGrid %
;% &
public !
HomePageClientService $
($ %%
IHomePageClientRepository% >$
HomePageClientRepository? W
,W X%
IDisplayProductRepositoryY r%
DisplayProductRepository	s ã
)
ã å
{ 	%
_homePageClientRepository %
=& '$
HomePageClientRepository( @
;@ A%
_displayProductRepository %
=& '$
DisplayProductRepository( @
;@ A
} 	
public 
string 
convertImageDisplay )
() *
byte* .
[. /
]/ 0
image1 6
)6 7
{ 	
if 
( 
image 
!= 
null 
) 
{ 
var 
base64 
= 
Convert $
.$ %
ToBase64String% 3
(3 4
image4 9
)9 :
;: ;
var 
fs 
= 
string 
.  
Format  &
(& '
$str' B
,B C
base64D J
)J K
;K L
return 
fs 
; 
}   
return!! 
$str!! 
;!! 
}"" 	
public$$ 
IList$$ 
<$$ 
Product$$ 
>$$ 
listAllNewProducts$$ 0
($$0 1
)$$1 2
{%% 	
return&& %
_homePageClientRepository&& ,
.&&, -
getNewProducts&&- ;
(&&; <
)&&< =
;&&= >
}'' 	
public(( 
IList(( 
<(( 
Product(( 
>(( 
listAllNewOffer(( -
(((- .
)((. /
{)) 	
return** %
_homePageClientRepository** ,
.**, -
getOfferProducts**- =
(**= >
)**> ?
;**? @
}++ 	
public,, 
IList,, 
<,, 
Product,, 
>,, (
listAllNewRecomendedProducts,, :
(,,: ;
string,,; A
	userEmail,,B K
),,K L
{-- 	
return.. %
_homePageClientRepository.. ,
..., -"
getRecommendedProducts..- C
(..C D
	userEmail..D M
)..M N
;..N O
}// 	
public11 
IList11 
<11 
ProductPhotos11 "
>11" #!
listAllProductsPhotos11$ 9
(119 :
)11: ;
{22 	
return33 %
_homePageClientRepository33 ,
.33, -
loadAllPhotos33- :
(33: ;
)33; <
;33< =
}44 	
public66 
async66 
Task66 
<66 
IList66 
<66  
Category66  (
>66( )
>66) *!
getAllCategoriesAsync66+ @
(66@ A
)66A B
{77 	
return88 
await88 %
_homePageClientRepository88 2
.882 3
getCategoriesAsync883 E
(88E F
)88F G
;88G H
}99 	
public;; 
async;; 
Task;; 
Rowdrop;; !
(;;! "

Syncfusion;;" ,
.;;, -
Blazor;;- 3
.;;3 4
Grids;;4 9
.;;9 :
RowDragEventArgs;;: J
<;;J K
Category;;K S
>;;S T
args;;U Y
,;;Y Z

SfTreeGrid;;[ e
<;;e f
Category;;f n
>;;n o
main;;p t
);;t u
{<< 	
this== 
.== 
TreeGrid== 
=== 
main==  
;==  !
var>> 
position>> 
=>> 
args>> 
.>>  
Target>>  &
.>>& '
ID>>' )
;>>) *
if?? 
(?? 
position?? 
==?? 
$str?? *
)??* +
{@@ 
varAA 
CurrentViewDataAA #
=AA$ %
thisAA& *
.AA* +
TreeGridAA+ 3
.AA3 4!
GetCurrentViewRecordsAA4 I
(AAI J
)AAJ K
;AAK L
varBB 
TargetCategoryBB "
=BB# $
CurrentViewDataBB% 4
.BB4 5
	ElementAtBB5 >
(BB> ?
(BB? @
intBB@ C
)BBC D
argsBBD H
.BBH I
	DropIndexBBI R
)BBR S
;BBS T
varCC 
SourceCategoryCC "
=CC# $
CurrentViewDataCC% 4
.CC4 5
	ElementAtCC5 >
(CC> ?
(CC? @
intCC@ C
)CCC D
argsCCD H
.CCH I
	FromIndexCCI R
)CCR S
;CCS T
awaitDD 
ChangeParentDD "
(DD" #
SourceCategoryDD# 1
.DD1 2
IdDD2 4
,DD4 5
TargetCategoryDD6 D
.DDD E
ParentIdDDE M
)DDM N
;DDN O
}EE 
elseFF 
{GG 
argsHH 
.HH 
CancelHH 
=HH 
trueHH "
;HH" #
}II 
}JJ 	
publicLL 
asyncLL 
TaskLL 
ChangeParentLL &
(LL& '
intLL' *
IdLL+ -
,LL- .
intLL/ 2
?LL2 3
ParentIdLL4 <
)LL< =
{MM 	
awaitNN %
_homePageClientRepositoryNN +
.NN+ , 
changeCategoryParentNN, @
(NN@ A
IdNNA C
,NNC D
ParentIdNNE M
)NNM N
;NNN O
}OO 	
publicQQ 
boolQQ 
verifyChildCategoryQQ '
(QQ' (
intQQ( +
idQQ, .
)QQ. /
{RR 	
returnSS %
_homePageClientRepositorySS +
.SS+ ,
isChildNodeSS, 7
(SS7 8
idSS8 :
)SS: ;
;SS; <
}TT 	
publicVV 
asyncVV 
TaskVV 
<VV 
boolVV 
>VV 
searchProductByIdVV  1
(VV1 2
stringVV2 8
emailVV9 >
,VV> ?
intVV@ C
	idProductVVD M
)VVM N
{WW 	
returnXX 
awaitXX %
_homePageClientRepositoryXX 2
.XX2 3
searchProductXX3 @
(XX@ A
emailXXA F
,XXF G
	idProductXXH Q
)XXQ R
;XXR S
}YY 	
public[[ 
async[[ 
Task[[ 
<[[ 
bool[[ 
>[[ "
addProductShoppingCart[[  6
([[6 7
ShoppingCartHas[[7 F
shoppingCart[[G S
)[[S T
{\\ 	
return]] 
await]] %
_homePageClientRepository]] 2
.]]2 3

addProduct]]3 =
(]]= >
shoppingCart]]> J
)]]J K
;]]K L
}^^ 	
public`` 
async`` 
Task`` 
<`` 
IList`` 
<``  
Offer``  %
>``% &
>``& '
GetAllOffersAsync``( 9
(``9 :
)``: ;
{aa 	
returnbb 
awaitbb %
_homePageClientRepositorybb 2
.bb2 3
	GetOffersbb3 <
(bb< =
)bb= >
;bb> ?
}cc 	
publicee 
asyncee 
Taskee 
<ee 
Listee 
<ee 
ProductServiceee -
>ee- .
>ee. /'
GetAllProductsServicesAsyncee0 K
(eeK L
)eeL M
{ff 	
returngg 
awaitgg %
_homePageClientRepositorygg 2
.gg2 3
GetAllProductsgg3 A
(ggA B
)ggB C
;ggC D
}hh 	
publicjj 
IListjj 
<jj 
Productjj 
>jj !
listPurchasedProductsjj 3
(jj3 4
stringjj4 :
emailjj; @
)jj@ A
{kk 	
returnll %
_homePageClientRepositoryll ,
.ll, - 
GetPurchasedProductsll- A
(llA B
emailllB G
)llG H
;llH I
}mm 	
publicoo 
IListoo 
<oo 
Is_Offeroo 
>oo 
getIs_Offeroo *
(oo* +
)oo+ ,
{pp 	
returnqq %
_homePageClientRepositoryqq ,
.qq, -
GetAllIs_Offerqq- ;
(qq; <
)qq< =
;qq= >
}rr 	
publicss 
asyncss 
Taskss 
<ss 
Is_Offerss "
>ss" #
GetIs_OfferAsyncss$ 4
(ss4 5
intss5 8
Is_Offer_Idss9 D
)ssD E
{tt 	
returnuu 
awaituu %
_homePageClientRepositoryuu 2
.uu2 3
GetIs_OfferAsyncuu3 C
(uuC D
Is_Offer_IduuD O
)uuO P
;uuP Q
}vv 	
publicww 
IListww 
<ww 
Service_Photosww #
>ww# $
getServicePhotosww% 5
(ww5 6
)ww6 7
{xx 	
returnyy %
_homePageClientRepositoryyy ,
.yy, -
GetAllServicePhotosyy- @
(yy@ A
)yyA B
;yyB C
}zz 	
public|| 
string|| &
GetEntrepreneurNameByEmail|| 0
(||0 1
string||1 7
email||8 =
)||= >
{}} 	
User~~ 
user~~ 
=~~ %
_displayProductRepository~~ 1
.~~1 2
GetUserByEmail~~2 @
(~~@ A
email~~B G
)~~G H
;~~H I
if 
( 
user 
!= 
null 
) 
{
ÄÄ 
return
ÅÅ 
user
ÅÅ 
.
ÅÅ 
Name
ÅÅ  
+
ÅÅ! "
$str
ÅÅ# &
+
ÅÅ' (
user
ÅÅ) -
.
ÅÅ- .
F_Last_Name
ÅÅ. 9
+
ÅÅ: ;
$str
ÅÅ< ?
+
ÅÅ@ A
user
ÅÅB F
.
ÅÅF G
S_Last_Name
ÅÅG R
;
ÅÅR S
}
ÇÇ 
else
ÉÉ 
{
ÑÑ 
return
ÖÖ 
string
ÖÖ 
.
ÖÖ 
Empty
ÖÖ #
;
ÖÖ# $
}
ÜÜ 
}
àà 	
public
ââ 
List
ââ 
<
ââ 
Is_Offer
ââ 
>
ââ 2
$GetAllIs_OfferRelatedToOfferNOTAsync
ââ B
(
ââB C
Offer
ââC H
offer
ââI N
)
ââN O
{
ää 	
return
ãã '
_homePageClientRepository
ãã ,
.
ãã, -2
$GetAllIs_OfferRelatedToOfferNOTAsync
ãã- Q
(
ããQ R
offer
ããR W
)
ããW X
;
ããX Y
}
åå 	
}
çç 
}éé Ó
pC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\src\Application\LoginContext\ILoginService.cs
	namespace 	
EmprendeUCR
 
. 
Application !
.! "
LoginContext" .
{ 
public 

	interface 
ILoginService "
{ 
Task		 
<		 
bool		 
>		 
verifyTypeUser		 !
(		! "
string		" (
email		) .
,		. /
int		0 3
userType		4 <
)		< =
;		= >
string

 
encryptPassword

 
(

 
string

 %
password

& .
)

. /
;

/ 0
byte 
[ 
] $
encryptStringToBytes_Aes '
(' (
string( .
password/ 7
,7 8
byte9 =
[= >
]> ?
Key@ C
,C D
byteE I
[I J
]J K
IVL N
)N O
;O P
Task 
< 
string 
> 
GetPasswordAsync %
(% &
string& ,
email- 2
)2 3
;3 4
EmailConfirmation &
getEmailConfirmationByHash 4
(4 5
string5 ;
	hash_code< E
)E F
;F G
string 
	hashEmail 
( 
string 
email  %
)% &
;& '
string 
getSalt 
( 
) 
; 
void $
updateEmailConfirmations %
(% &
EmailConfirmation& 7
confirmation8 D
)D E
;E F
string 
getMailBody 
( 
string !
	hash_mail" +
,+ ,
int- 0
	type_user1 :
): ;
;; <
Task 
< 
EmailConfirmation 
> %
GetEmailConfirmationEmail  9
(9 :
string: @
emailA F
)F G
;G H
Task 
< 
string 
> 
SendMail 
( 
Mail "
m# $
)$ %
;% &
string 
GetNewPasswordMail !
(! "
string" (
hash) -
)- .
;. /
bool 
UpdateCredentials 
( 
Credentials *
c+ ,
), -
;- .
Task 
<  
ActiveAdministrators !
>! "#
getActiveAdministrators# :
(: ;
string; A
emailB G
)G H
;H I
Task 
< 
string 
> 
GetBannedMessage %
(% &
string& ,
email- 2
)2 3
;3 4
Task 
< 
User 
> 
getUserByEmail !
(! "
string" (
email) .
). /
;/ 0
Credentials 
getUserCredentials &
(& '
string' -
email. 3
)3 4
;4 5
} 
} µ¨
C:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\src\Application\LoginContext\Implementations\LoginService.cs
	namespace

 	
EmprendeUCR


 
.

 
Application

 !
.

! "
LoginContext

" .
.

. /
Implementations

/ >
{ 
public 

class 
LoginService 
: 
ILoginService  -
{ 
private 
readonly 
ILoginRepository )
_loginRepository* :
;: ;
byte 
[ 
] 
Key 
= 
{ 
$num 
, 
$num 
, 
$num "
," #
$num$ &
,& '
$num( +
,+ ,
$num- /
,/ 0
$num1 3
,3 4
$num5 8
,8 9
$num: =
,= >
$num? B
,B C
$numD F
,F G
$numH J
,J K
$numL N
,N O
$numP R
,R S
$numT W
,W X
$numY [
,[ \
$num] _
,_ `
$numa d
,d e
$numf i
,i j
$numk n
,n o
$nump r
,r s
$numt w
,w x
$numy |
,| }
$num	~ Å
,
Å Ç
$num
É Ö
,
Ö Ü
$num
á â
,
â ä
$num
ã é
,
é è
$num
ê í
,
í ì
$num
î ó
,
ó ò
$num
ô ú
,
ú ù
$num
û °
,
° ¢
$num
£ ¶
}
ß ®
;
® ©
byte 
[ 
] 
IV 
= 
{ 
$num 
, 
$num 
, 
$num "
," #
$num$ '
,' (
$num) ,
,, -
$num. 0
,0 1
$num2 5
,5 6
$num7 :
,: ;
$num< >
,> ?
$num@ C
,C D
$numE H
,H I
$numJ L
,L M
$numN Q
,Q R
$numS V
,V W
$numX Z
,Z [
$num\ _
}` a
;a b
public 
LoginService 
( 
ILoginRepository ,
loginRepository- <
)< =
{ 	
_loginRepository 
= 
loginRepository .
;. /
} 	
public 
async 
Task 
< 
bool 
> 
verifyTypeUser  .
(. /
string/ 5
email6 ;
,; <
int= @
userTypeA I
)I J
{ 	
return 
await 
_loginRepository )
.) *
verifyUserType* 8
(8 9
email9 >
,> ?
userType@ H
)H I
;I J
} 	
public 
string 
encryptPassword %
(% &
string& ,
password- 5
)5 6
{ 	
string 
encriptPassword "
=# $
$str% '
;' (
if   
(   
!   
string   
.   
IsNullOrEmpty   %
(  % &
password  & .
)  . /
)  / 0
{!! 
byte"" 
["" 
]"" 
encrypt"" 
=""  $
encryptStringToBytes_Aes""! 9
(""9 :
password"": B
,""B C
Key""D G
,""G H
IV""I K
)""K L
;""L M
encriptPassword## 
=##  !
Convert##" )
.##) *
ToBase64String##* 8
(##8 9
encrypt##9 @
)##@ A
;##A B
}$$ 
return%% 
encriptPassword%% "
;%%" #
}&& 	
public(( 
byte(( 
[(( 
](( $
encryptStringToBytes_Aes(( .
(((. /
string((/ 5
password((6 >
,((> ?
byte((@ D
[((D E
]((E F
Key((G J
,((J K
byte((L P
[((P Q
]((Q R
IV((S U
)((U V
{)) 	
if** 
(** 
password** 
==** 
null**  
||**! #
password**$ ,
.**, -
Length**- 3
<=**4 6
$num**7 8
)**8 9
throw++ 
new++ !
ArgumentNullException++ /
(++/ 0
$str++0 :
)++: ;
;++; <
if,, 
(,, 
Key,, 
==,, 
null,, 
||,, 
Key,, "
.,," #
Length,,# )
<=,,* ,
$num,,- .
),,. /
throw-- 
new-- !
ArgumentNullException-- /
(--/ 0
$str--0 5
)--5 6
;--6 7
if.. 
(.. 
IV.. 
==.. 
null.. 
||.. 
IV..  
...  !
Length..! '
<=..( *
$num..+ ,
).., -
throw// 
new// !
ArgumentNullException// /
(/// 0
$str//0 4
)//4 5
;//5 6
byte00 
[00 
]00 
	encrypted00 
;00 
using22 
(22 
Aes22 
aesAlg22 
=22 
Aes22  #
.22# $
Create22$ *
(22* +
)22+ ,
)22, -
{33 
aesAlg44 
.44 
Key44 
=44 
Key44  
;44  !
aesAlg55 
.55 
IV55 
=55 
IV55 
;55 
ICryptoTransform77  
	encryptor77! *
=77+ ,
aesAlg77- 3
.773 4
CreateEncryptor774 C
(77C D
aesAlg77D J
.77J K
Key77K N
,77N O
aesAlg77P V
.77V W
IV77W Y
)77Y Z
;77Z [
using99 
(99 
MemoryStream99 #
	msEncrypt99$ -
=99. /
new990 3
MemoryStream994 @
(99@ A
)99A B
)99B C
{:: 
using;; 
(;; 
CryptoStream;; '
	csEncrypt;;( 1
=;;2 3
new;;4 7
CryptoStream;;8 D
(;;D E
	msEncrypt;;E N
,;;N O
	encryptor;;P Y
,;;Y Z
CryptoStreamMode;;[ k
.;;k l
Write;;l q
);;q r
);;r s
{<< 
using== 
(== 
StreamWriter== +
	swEncrypt==, 5
===6 7
new==8 ;
StreamWriter==< H
(==H I
	csEncrypt==I R
)==R S
)==S T
{>> 
	swEncrypt?? %
.??% &
Write??& +
(??+ ,
password??, 4
)??4 5
;??5 6
}@@ 
	encryptedAA !
=AA" #
	msEncryptAA$ -
.AA- .
ToArrayAA. 5
(AA5 6
)AA6 7
;AA7 8
}BB 
}CC 
}DD 
returnEE 
	encryptedEE 
;EE 
}FF 	
publicHH 
asyncHH 
TaskHH 
<HH 
stringHH  
>HH  !
GetPasswordAsyncHH" 2
(HH2 3
stringHH3 9
emailHH: ?
)HH? @
{II 	
returnJJ 
awaitJJ 
_loginRepositoryJJ )
.JJ) *
GetPasswordJJ* 5
(JJ5 6
emailJJ6 ;
)JJ; <
;JJ< =
}KK 	
publicMM 
EmailConfirmationMM  &
getEmailConfirmationByHashMM! ;
(MM; <
stringMM< B
	hash_codeMMC L
)MML M
{NN 	
returnOO 
_loginRepositoryOO $
.OO$ % 
getEmailConfirmationOO% 9
(OO9 :
	hash_codeOO: C
)OOC D
;OOD E
}PP 	
publicRR 
stringRR 
	hashEmailRR 
(RR  
stringRR  &
emailRR' ,
)RR, -
{SS 	
stringTT 
	hashEmailTT 
=TT 
$strTT !
;TT! "
ifUU 
(UU 
stringUU 
.UU 
IsNullOrEmptyUU $
(UU$ %
emailUU% *
)UU* +
)UU+ ,
{VV 
	hashEmailWW 
=WW 
$strWW 
;WW 
}XX 
elseYY 
{ZZ 
string[[ 
salt[[ 
=[[ 
getSalt[[ %
([[% &
)[[& '
;[[' (
var\\ 
passwordBytes\\ !
=\\" #
Encoding\\$ ,
.\\, -
UTF8\\- 1
.\\1 2
GetBytes\\2 :
(\\: ;
salt\\; ?
+\\@ A
email\\B G
)\\G H
;\\H I
	hashEmail]] 
=]] 
Convert]] #
.]]# $
ToBase64String]]$ 2
(]]2 3
passwordBytes]]3 @
)]]@ A
;]]A B
}^^ 
return__ 
	hashEmail__ 
;__ 
}`` 	
publiccc 
stringcc 
getSaltcc 
(cc 
)cc 
{dd 	
varee 
charsee 
=ee 
$stree X
;eeX Y
varff 
stringCharsff 
=ff 
newff !
charff" &
[ff& '
$numff' )
]ff) *
;ff* +
vargg 
randomgg 
=gg 
newgg 
Randomgg #
(gg# $
)gg$ %
;gg% &
forhh 
(hh 
inthh 
ihh 
=hh 
$numhh 
;hh 
ihh 
<hh 
stringCharshh  +
.hh+ ,
Lengthhh, 2
;hh2 3
ihh4 5
++hh5 7
)hh7 8
{ii 
stringCharsjj 
[jj 
ijj 
]jj 
=jj  
charsjj! &
[jj& '
randomjj' -
.jj- .
Nextjj. 2
(jj2 3
charsjj3 8
.jj8 9
Lengthjj9 ?
)jj? @
]jj@ A
;jjA B
}kk 
stringll 
finalStringll 
=ll  
newll! $
Stringll% +
(ll+ ,
stringCharsll, 7
)ll7 8
;ll8 9
returnmm 
finalStringmm 
;mm 
}nn 	
publicpp 
voidpp $
updateEmailConfirmationspp ,
(pp, -
EmailConfirmationpp- >
confirmationpp? K
)ppK L
{qq 	
_loginRepositoryrr 
.rr #
updateEmailConfirmationrr 4
(rr4 5
confirmationrr5 A
)rrA B
;rrB C
}ss 	
publicuu 
stringuu 
getMailBodyuu !
(uu! "
stringuu" (
	hash_mailuu) 2
,uu2 3
intuu4 7
	type_useruu8 A
)uuA B
{vv 	
stringww 
urlww 
=ww 
$strww 
;ww 
stringxx 
resultxx 
=xx 
$strxx 
;xx 
ifyy 
(yy 
	type_useryy 
==yy 
$numyy 
)yy 
{zz 
url{{ 
={{ 
$str{{ 0
+{{1 2
$str{{3 L
+{{M N
	hash_mail{{O X
+{{Y Z
$str{{[ i
;{{i j
result}} 
=}} 
string}} 
.}}  
Format}}  &
(}}& '
$str	}Ä' -
+
ÄÄ. /
$char
ÄÄ0 3
+
ÄÄ4 5
url
ÄÄ6 9
+
ÄÄ: ;
$char
ÄÄ< ?
+
ÄÄ@ A
$str
ÅÅ# @
,
ÅÅ@ A
url
ÅÅB E
,
ÅÅE F
	hash_mail
ÅÅG P
)
ÅÅP Q
;
ÅÅQ R
}
ÇÇ 
if
ÉÉ 
(
ÉÉ 
	type_user
ÉÉ 
==
ÉÉ 
$num
ÉÉ 
)
ÉÉ 
{
ÑÑ 
url
ÖÖ 
=
ÖÖ 
$str
ÖÖ 0
+
ÖÖ1 2
$str
ÖÖ3 L
+
ÖÖM N
	hash_mail
ÖÖO X
+
ÖÖY Z
$str
ÖÖ[ o
;
ÖÖo p
result
áá 
=
áá 
string
áá 
.
áá  
Format
áá  &
(
áá& '
$str
áä' -
+
ää. /
$char
ää0 3
+
ää4 5
url
ää6 9
+
ää: ;
$char
ää< ?
+
ää@ A
$str
ãã# @
,
ãã@ A
url
ããB E
,
ããE F
	hash_mail
ããG P
)
ããP Q
;
ããQ R
}
åå 
if
çç 
(
çç 
	type_user
çç 
==
çç 
$num
çç 
)
çç 
{
éé 
url
èè 
=
èè 
$str
èè 0
+
èè1 2
$str
èè3 L
+
èèM N
	hash_mail
èèO X
+
èèY Z
$str
èè[ p
;
èèp q
result
ëë 
=
ëë 
string
ëë 
.
ëë  
Format
ëë  &
(
ëë& '
$str
ëî' -
+
îî. /
$char
îî0 3
+
îî4 5
url
îî6 9
+
îî: ;
$char
îî< ?
+
îî@ A
$str
ïï# @
,
ïï@ A
url
ïïB E
,
ïïE F
	hash_mail
ïïG P
)
ïïP Q
;
ïïQ R
}
ññ 
return
óó 
result
óó 
;
óó 
}
òò 	
public
öö 
async
öö 
Task
öö 
<
öö 
EmailConfirmation
öö +
>
öö+ ,'
GetEmailConfirmationEmail
öö- F
(
ööF G
string
ööG M
email
ööN S
)
ööS T
{
õõ 	
return
úú 
await
úú 
_loginRepository
úú )
.
úú) *)
GetEmailConfirmationByEmail
úú* E
(
úúE F
email
úúF K
)
úúK L
;
úúL M
}
ùù 	
public
üü 
async
üü 
Task
üü 
<
üü 
string
üü  
>
üü  !
SendMail
üü" *
(
üü* +
Mail
üü+ /
	mailClass
üü0 9
)
üü9 :
{
†† 	
try
°° 
{
¢¢ 
using
££ 
(
££ 
MailMessage
££ "
mail
££# '
=
££( )
new
££* -
MailMessage
££. 9
(
££9 :
)
££: ;
)
££; <
{
§§ 
mail
•• 
.
•• 
From
•• 
=
•• 
new
••  #
MailAddress
••$ /
(
••/ 0
	mailClass
••0 9
.
••9 :

FromMailId
••: D
)
••D E
;
••E F
	mailClass
ßß 
.
ßß 
	ToMailIds
ßß '
.
ßß' (
ForEach
ßß( /
(
ßß/ 0
x
ßß0 1
=>
ßß2 4
{
®® 
Console
©© 
.
©©  
	WriteLine
©©  )
(
©©) *
x
©©* +
)
©©+ ,
;
©©, -
mail
™™ 
.
™™ 
To
™™ 
.
™™  
Add
™™  #
(
™™# $
x
™™$ %
)
™™% &
;
™™& '
}
´´ 
)
´´ 
;
´´ 
mail
≠≠ 
.
≠≠ 
Body
≠≠ 
=
≠≠ 
	mailClass
≠≠  )
.
≠≠) *
Body
≠≠* .
;
≠≠. /
mail
ÆÆ 
.
ÆÆ 
Subject
ÆÆ  
=
ÆÆ! "
	mailClass
ÆÆ# ,
.
ÆÆ, -
Subject
ÆÆ- 4
;
ÆÆ4 5
mail
ØØ 
.
ØØ 

IsBodyHtml
ØØ #
=
ØØ$ %
	mailClass
ØØ& /
.
ØØ/ 0

IsBodyHtml
ØØ0 :
;
ØØ: ;
	mailClass
±± 
.
±± 
Attachements
±± *
.
±±* +
ForEach
±±+ 2
(
±±2 3
x
±±3 4
=>
±±5 7
{
≤≤ 
mail
≥≥ 
.
≥≥ 
Attachments
≥≥ (
.
≥≥( )
Add
≥≥) ,
(
≥≥, -
new
≥≥- 0

Attachment
≥≥1 ;
(
≥≥; <
x
≥≥< =
)
≥≥= >
)
≥≥> ?
;
≥≥? @
}
¥¥ 
)
¥¥ 
;
¥¥ 
using
∂∂ 
(
∂∂ 

SmtpClient
∂∂ %
smtp
∂∂& *
=
∂∂+ ,
new
∂∂- 0

SmtpClient
∂∂1 ;
(
∂∂; <
$str
∂∂< L
,
∂∂L M
$num
∂∂N Q
)
∂∂Q R
)
∂∂R S
{
∑∑ 
smtp
∏∏ 
.
∏∏ 
Credentials
∏∏ (
=
∏∏) *
new
∏∏+ .
System
∏∏/ 5
.
∏∏5 6
Net
∏∏6 9
.
∏∏9 :
NetworkCredential
∏∏: K
(
∏∏K L
	mailClass
∏∏L U
.
∏∏U V

FromMailId
∏∏V `
,
∏∏` a
	mailClass
∏∏b k
.
∏∏k l 
FromMailIdPassword
∏∏l ~
)
∏∏~ 
;∏∏ Ä
smtp
ππ 
.
ππ 
	EnableSsl
ππ &
=
ππ' (
true
ππ) -
;
ππ- .
await
∫∫ 
smtp
∫∫ "
.
∫∫" #
SendMailAsync
∫∫# 0
(
∫∫0 1
mail
∫∫1 5
)
∫∫5 6
;
∫∫6 7
return
ªª 
$str
ªª 0
;
ªª0 1
}
ºº 
}
ΩΩ 
}
ææ 
catch
øø 
(
øø 
	Exception
øø 
ex
øø 
)
øø  
{
¿¿ 
return
¡¡ 
ex
¡¡ 
.
¡¡ 
Message
¡¡ !
;
¡¡! "
}
¬¬ 
}
√√ 	
public
≈≈ 
string
≈≈  
GetNewPasswordMail
≈≈ (
(
≈≈( )
string
≈≈) /
hash
≈≈0 4
)
≈≈4 5
{
∆∆ 	
string
«« 
url
«« 
=
«« 
$str
«« 
;
«« 
string
»» 
result
»» 
=
»» 
$str
»» 
;
»» 
url
   
=
   
$str
   ,
+
  - .
$str
  / C
+
  D E
hash
  F J
;
  J K
result
ÃÃ 
=
ÃÃ 
string
ÃÃ 
.
ÃÃ 
Format
ÃÃ "
(
ÃÃ" #
$str
Ã–# )
+
––* +
$char
––, /
+
––0 1
url
––2 5
+
––6 7
$char
––8 ;
+
––< =
$str
——  @
,
——@ A
url
——B E
,
——E F
hash
——G K
)
——K L
;
——L M
return
”” 
result
”” 
;
”” 
}
‘‘ 	
public
÷÷ 
bool
÷÷ 
UpdateCredentials
÷÷ %
(
÷÷% &
Credentials
÷÷& 1
c
÷÷2 3
)
÷÷3 4
{
◊◊ 	
return
ÿÿ 
_loginRepository
ÿÿ #
.
ÿÿ# $
CredentialsUpdate
ÿÿ$ 5
(
ÿÿ5 6
c
ÿÿ6 7
)
ÿÿ7 8
;
ÿÿ8 9
}
ŸŸ 	
public
€€ 
async
€€ 
Task
€€ 
<
€€ "
ActiveAdministrators
€€ .
>
€€. /%
getActiveAdministrators
€€0 G
(
€€G H
string
€€H N
email
€€O T
)
€€T U
{
‹‹ 	
return
›› 
await
›› 
_loginRepository
›› )
.
››) *$
getActiveAdministrator
››* @
(
››@ A
email
››A F
)
››F G
;
››G H
}
ﬁﬁ 	
public
‡‡ 
async
‡‡ 
Task
‡‡ 
<
‡‡ 
string
‡‡  
>
‡‡  !
GetBannedMessage
‡‡" 2
(
‡‡2 3
string
‡‡3 9
email
‡‡: ?
)
‡‡? @
{
·· 	
string
‚‚ 
bannedMessage
‚‚  
=
‚‚! "
string
‚‚# )
.
‚‚) *
Empty
‚‚* /
;
‚‚/ 0
var
„„ 

userBanned
„„ 
=
„„ 
await
„„ "
_loginRepository
„„# 3
.
„„3 4
CheckBanned
„„4 ?
(
„„? @
email
„„@ E
)
„„E F
;
„„F G
if
‰‰ 
(
‰‰ 
!
‰‰ 
(
‰‰ 

userBanned
‰‰ 
==
‰‰ 
null
‰‰  $
)
‰‰$ %
)
‰‰% &
{
ÂÂ 
if
ÊÊ 
(
ÊÊ 

userBanned
ÊÊ 
.
ÊÊ 
Type
ÊÊ #
==
ÊÊ$ &
$num
ÊÊ' (
)
ÊÊ( )
{
ÁÁ 
bannedMessage
ËË !
=
ËË" #
$str
ËË$ U
;
ËËU V
}
ÈÈ 
else
ÍÍ 
if
ÍÍ 
(
ÍÍ 

userBanned
ÍÍ #
.
ÍÍ# $

FinishDate
ÍÍ$ .
>
ÍÍ/ 0
DateTime
ÍÍ1 9
.
ÍÍ9 :
Now
ÍÍ: =
)
ÍÍ= >
{
ÎÎ 
bannedMessage
ÏÏ !
=
ÏÏ" #
$str
ÏÏ$ R
+
ÌÌ 
(
ÌÌ 

userBanned
ÌÌ %
.
ÌÌ% &

FinishDate
ÌÌ& 0
-
ÌÌ1 2
DateTime
ÌÌ3 ;
.
ÌÌ; <
Now
ÌÌ< ?
)
ÌÌ? @
.
ÌÌ@ A
Days
ÌÌA E
+
ÌÌF G
$str
ÌÌH N
;
ÌÌN O
}
ÓÓ 
}
ÔÔ 
return
 
bannedMessage
  
;
  !
}
ÒÒ 	
public
ÛÛ 
async
ÛÛ 
Task
ÛÛ 
<
ÛÛ 
User
ÛÛ 
>
ÛÛ 
getUserByEmail
ÛÛ  .
(
ÛÛ. /
string
ÛÛ/ 5
email
ÛÛ6 ;
)
ÛÛ; <
{
ÙÙ 	
return
ıı 
await
ıı 
_loginRepository
ıı )
.
ıı) *
getUser
ıı* 1
(
ıı1 2
email
ıı2 7
)
ıı7 8
;
ıı8 9
}
ˆˆ 	
public
¯¯ 
Credentials
¯¯  
getUserCredentials
¯¯ -
(
¯¯- .
string
¯¯. 4
email
¯¯5 :
)
¯¯: ;
{
˘˘ 	
return
˙˙ 
_loginRepository
˙˙ #
.
˙˙# $
getCredentials
˙˙$ 2
(
˙˙2 3
email
˙˙3 8
)
˙˙8 9
;
˙˙9 :
}
˚˚ 	
}
¸¸ 
}˝˝ Î
zC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\src\Application\PaymentInfos\ICardPaymentInfoService.cs
	namespace 	
EmprendeUCR
 
. 
Application !
.! "
PaymentInfos" .
{ 
public 

	interface #
ICardPaymentInfoService ,
{ 
public 
Task 
< 
CardPaymentInfo #
?# $
>$ %'
GetCardPaymentInfoByIdAsync& A
(A B
stringB H
accountNumberI V
)V W
;W X
public		 
Task		 
<		 
IEnumerable		 
<		  
CardPaymentInfo		  /
>		/ 0
>		0 1$
GetCardPaymentInfosAsync		2 J
(		J K
)		K L
;		L M
public

 
Task

 
AddPaymentInfoAsync

 '
(

' (
CardPaymentInfo

( 7
cardPaymentMethod

8 I
)

I J
;

J K
public 
Task 
< 
List 
< 
CardPaymentInfo (
>( )
?) *
>* +3
'GetCardPaymentInfosByPaymentInfoIDAsync, S
(S T
ListT X
<X Y
HasPaymentInfoY g
>g h
listi m
)m n
;n o
public 
Task 
< 
CardPaymentInfo #
?# $
>$ %-
!GetCardPaymentInfoByPaymentInfoID& G
(G H
intH K
paymentInfoIDL Y
)Y Z
;Z [
} 
} ’
yC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\src\Application\PaymentInfos\IHasPaymentInfoService.cs
	namespace 	
EmprendeUCR
 
. 
Application !
.! "
PaymentInfos" .
{		 
public

 

	interface

 "
IHasPaymentInfoService

 +
{ 
public 
Task 
< 
List 
< 
HasPaymentInfo '
>' (
?( )
>) *$
getHasPaymentInfoByEmail+ C
(C D
stringD J
entrepreneurEmailK \
)\ ]
;] ^
public 
Task "
AddHasPaymentInfoAsync *
(* +
HasPaymentInfo+ 9
hasPaymentInfo: H
)H I
;I J
} 
} ƒ 
âC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\src\Application\PaymentInfos\Implementations\CardPaymentInfoService.cs
	namespace 	
EmprendeUCR
 
. 
Application !
.! "
PaymentInfos" .
.. /
Implementations/ >
{ 
public 

class "
CardPaymentInfoService '
:( )#
ICardPaymentInfoService* A
{		 
private

 
readonly

 &
ICardPaymentInfoRepository

 3&
_cardPaymentInfoRepository

4 N
;

N O
public "
CardPaymentInfoService %
(% &&
ICardPaymentInfoRepository& @%
cardPaymentInfoRepositoryA Z
)Z [
{ 	&
_cardPaymentInfoRepository &
=' (%
cardPaymentInfoRepository) B
;B C
} 	
public 
async 
Task 
AddPaymentInfoAsync -
(- .
CardPaymentInfo. =
cardPaymentInfo> M
)M N
{ 	
await &
_cardPaymentInfoRepository ,
., -
AddPaymentInfo- ;
(; <
cardPaymentInfo< K
)K L
;L M
} 	
public 
async 
Task 
< 
CardPaymentInfo )
?) *
>* +'
GetCardPaymentInfoByIdAsync, G
(G H
stringH N
accountNumberO \
)\ ]
{ 	
return 
await &
_cardPaymentInfoRepository 3
.3 4
GetByIdAsync4 @
(@ A
accountNumberA N
)N O
;O P
} 	
public 
async 
Task 
< 
CardPaymentInfo )
?) *
>* +-
!GetCardPaymentInfoByPaymentInfoID, M
(M N
intN Q
paymentInfoIDR _
)_ `
{ 	
return 
await &
_cardPaymentInfoRepository 3
.3 4
GetByPaymentInfoID4 F
(F G
paymentInfoIDG T
)T U
;U V
} 	
public 
async 
Task 
< 
IEnumerable %
<% &
CardPaymentInfo& 5
>5 6
>6 7$
GetCardPaymentInfosAsync8 P
(P Q
)Q R
{ 	
return 
await &
_cardPaymentInfoRepository 3
.3 4
GetAllAsync4 ?
(? @
)@ A
;A B
}   	
public"" 
async"" 
Task"" 
<"" 
List"" 
<"" 
CardPaymentInfo"" .
>"". /
?""/ 0
>""0 13
'GetCardPaymentInfosByPaymentInfoIDAsync""2 Y
(""Y Z
List""Z ^
<""^ _
HasPaymentInfo""_ m
>""m n
list""o s
)""s t
{## 	
List$$ 
<$$ 
CardPaymentInfo$$  
>$$  !
asociateCards$$" /
=$$0 1
new$$2 5
($$5 6
)$$6 7
;$$7 8
for%% 
(%% 
int%% 
i%% 
=%% 
$num%% 
;%% 
i%% 
<%% 
list%%  $
.%%$ %
Length%%% +
(%%+ ,
)%%, -
;%%- .
i%%/ 0
++%%0 2
)%%2 3
{&& 
var'' 
add'' 
='' 
await'' -
!GetCardPaymentInfoByPaymentInfoID''  A
(''A B
list''B F
[''F G
i''G H
]''H I
.''I J
Payment_Info_ID''J Y
)''Y Z
;''Z [
if(( 
((( 
add(( 
!=(( 
null(( 
)((  
{)) 
asociateCards** !
.**! "
Add**" %
(**% &
add**& )
)**) *
;*** +
}++ 
},, 
return-- 
asociateCards--  
;--  !
}.. 	
}00 
}11 ∆
àC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\src\Application\PaymentInfos\Implementations\HasPaymentInfoService.cs
	namespace		 	
EmprendeUCR		
 
.		 
Application		 !
.		! "
PaymentInfos		" .
.		. /
Implementations		/ >
{

 
internal 
class !
HasPaymentInfoService (
:) *"
IHasPaymentInfoService+ A
{ 
private 
readonly %
IHasPaymentInfoRepository 2%
_hasPaymentInfoRepository3 L
;L M
public !
HasPaymentInfoService $
($ %%
IHasPaymentInfoRepository% >$
hasPaymentInfoRepository? W
)W X
{ 	%
_hasPaymentInfoRepository $
=% &$
hasPaymentInfoRepository' ?
;? @
} 	
public 
async 
Task 
< 
List 
< 
HasPaymentInfo -
>- .
?. /
>/ 0$
getHasPaymentInfoByEmail1 I
(I J
stringJ P
entrepreneurEmailQ b
)b c
{ 	
var 
list 
= 
await %
_hasPaymentInfoRepository 5
.5 6
GetAllAsync6 A
(A B
)B C
;C D
var 
entrepreneurHas 
=  
list! %
.% &
Where& +
(+ ,
h, -
=>- /
h/ 0
.0 1
Entrepreneur_Email1 C
.C D
EqualsD J
(J K
entrepreneurEmailK \
)\ ]
)] ^
;^ _
if 
( 
entrepreneurHas 
==  "
null# '
)' (
{ 
return 
null 
; 
} 
return 
entrepreneurHas "
." #
ToList# )
() *
)* +
;+ ,
} 	
public 
async 
Task "
AddHasPaymentInfoAsync 0
(0 1
HasPaymentInfo1 ?
hasPaymentInfo@ N
)N O
{ 	
await %
_hasPaymentInfoRepository +
.+ ,
AddHasPaymentInfo, =
(= >
hasPaymentInfo> L
)L M
;M N
} 	
}   
}!! ¥
ÖC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\src\Application\PaymentInfos\Implementations\PaymentInfoService.cs
	namespace 	
EmprendeUCR
 
. 
Application !
.! "
PaymentInfos" .
.. /
Implementations/ >
{ 
internal 
class 
PaymentInfoService %
:& '
IPaymentInfoService( ;
{		 
private

 
readonly

 "
IPaymentInfoRepository

 /"
_paymentInfoRepository

0 F
;

F G
public 
PaymentInfoService !
(! ""
IPaymentInfoRepository" 8!
paymentInfoRepository9 N
)N O
{ 	"
_paymentInfoRepository "
=# $!
paymentInfoRepository% :
;: ;
} 	
public 
async 
Task 
< 
PaymentInfo %
?% &
>& '#
GetPaymentInfoByIdAsync( ?
(? @
int@ C
idD F
)F G
{ 	
return 
await "
_paymentInfoRepository /
./ 0
GetByIdAsync0 <
(< =
id= ?
)? @
;@ A
} 	
public 
async 
Task 
< 
IEnumerable %
<% &
PaymentInfo& 1
>1 2
>2 3 
GetPaymentInfosAsync4 H
(H I
)I J
{ 	
return 
await "
_paymentInfoRepository /
./ 0
GetAllAsync0 ;
(; <
)< =
;= >
} 	
public 
async 
Task 
< 
PaymentInfo %
?% &
>& '
AddPaymentInfoAsync( ;
(; <
)< =
{ 	
return 
await "
_paymentInfoRepository /
./ 0
AddPaymentInfo0 >
(> ?
)? @
;@ A
} 	
public 
async 
Task "
RemovePaymentInfoAsync 0
(0 1
int1 4
id5 7
)7 8
{ 	
await "
_paymentInfoRepository (
.( )
RemovePaymentInfo) :
(: ;
id; =
)= >
;> ?
} 	
}   
}!! €"
éC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\src\Application\PaymentInfos\Implementations\SinpeIbanPaymentInfoService.cs
	namespace 	
EmprendeUCR
 
. 
Application !
.! "
PaymentInfos" .
.. /
Implementations/ >
{ 
internal 
class '
SinpeIbanPaymentInfoService .
:/ 0(
ISinpeIbanPaymentInfoService1 M
{ 
private		 
readonly		 +
ISinpeIbanPaymentInfoRepository		 8+
_sinpeIbanPaymentInfoRepository		9 X
;		X Y
public

 '
SinpeIbanPaymentInfoService

 *
(

* ++
ISinpeIbanPaymentInfoRepository

+ J*
sinpeIbanPaymentInfoRepository

K i
)

i j
{ 	+
_sinpeIbanPaymentInfoRepository +
=, -*
sinpeIbanPaymentInfoRepository. L
;L M
} 	
public 
async 
Task 
AddPaymentInfoAsync -
(- . 
SinpeIbanPaymentInfo. B 
sinpeIbanPaymentInfoC W
)W X
{ 	
await +
_sinpeIbanPaymentInfoRepository 1
.1 2
AddPaymentInfo2 @
(@ A 
sinpeIbanPaymentInfoA U
)U V
;V W
} 	
public 
async 
Task 
<  
SinpeIbanPaymentInfo .
?. /
>/ 0,
 GetSinpeIbanPaymentInfoByIdAsync1 Q
(Q R
stringR X
accountNumberY f
)f g
{ 	
return 
await +
_sinpeIbanPaymentInfoRepository 8
.8 9
GetByIdAsync9 E
(E F
accountNumberF S
)S T
;T U
} 	
public 
async 
Task 
< 
IEnumerable %
<% & 
SinpeIbanPaymentInfo& :
>: ;
>; <)
GetSinpeIbanPaymentInfosAsync= Z
(Z [
)[ \
{ 	
return 
await +
_sinpeIbanPaymentInfoRepository 8
.8 9
GetAllAsync9 D
(D E
)E F
;F G
} 	
public 
async 
Task 
<  
SinpeIbanPaymentInfo .
>. /2
&GetSinpeIbanPaymentInfoByPaymentInfoID0 V
(V W
intW Z
paymentInfoID[ h
)h i
{ 	
string 
ID 
= 
paymentInfoID #
.# $
ToString$ ,
(, -
)- .
;. /
return 
await +
_sinpeIbanPaymentInfoRepository 8
.8 9
GetByPaymentInfoID9 K
(K L
paymentInfoIDL Y
)Y Z
;Z [
} 	
public!! 
async!! 
Task!! 
<!! 
List!! 
<!!  
SinpeIbanPaymentInfo!! 3
>!!3 4
>!!4 58
,GetSinpeIbanPaymentInfosByPaymentInfoIDAsync!!6 b
(!!b c
List!!c g
<!!g h
HasPaymentInfo!!h v
>!!v w
list!!x |
)!!| }
{"" 	
List## 
<##  
SinpeIbanPaymentInfo## %
>##% &
asociateSinpeIban##' 8
=##9 :
new##; >
(##> ?
)##? @
;##@ A
for$$ 
($$ 
int$$ 
i$$ 
=$$ 
$num$$ 
;$$ 
i$$ 
<$$ 
list$$  $
.$$$ %
Length$$% +
($$+ ,
)$$, -
;$$- .
i$$/ 0
++$$0 2
)$$2 3
{%% 
var&& 
add&& 
=&& 
await&& 2
&GetSinpeIbanPaymentInfoByPaymentInfoID&&  F
(&&F G
list&&G K
[&&K L
i&&L M
]&&M N
.&&N O
Payment_Info_ID&&O ^
)&&^ _
;&&_ `
if'' 
('' 
add'' 
!='' 
null'' 
)''  
{(( 
asociateSinpeIban)) %
.))% &
Add))& )
())) *
add))* -
)))- .
;)). /
}** 
}++ 
return,, 
asociateSinpeIban,, $
;,,$ %
}-- 	
}.. 
}// Ë(
èC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\src\Application\PaymentInfos\Implementations\SinpeMovilPaymentInfoService.cs
	namespace 	
EmprendeUCR
 
. 
Application !
.! "
PaymentInfos" .
.. /
Implementations/ >
{ 
internal 
class (
SinpeMovilPaymentInfoService /
:0 1)
ISinpeMovilPaymentInfoService2 O
{		 
private

 
readonly

 ,
 ISinpeMovilPaymentInfoRepository

 9,
 _sinpeMovilPaymentInfoRepository

: Z
;

Z [
public (
SinpeMovilPaymentInfoService +
(+ ,,
 ISinpeMovilPaymentInfoRepository, L+
sinpeMovilPaymentInfoRepositoryM l
)l m
{ 	,
 _sinpeMovilPaymentInfoRepository ,
=- .+
sinpeMovilPaymentInfoRepository/ N
;N O
} 	
public 
async 
Task 
AddPaymentInfoAsync -
(- .!
SinpeMovilPaymentInfo. C!
sinpeMovilPaymentInfoD Y
)Y Z
{ 	
await ,
 _sinpeMovilPaymentInfoRepository 2
.2 3
AddPaymentInfo3 A
(A B!
sinpeMovilPaymentInfoB W
)W X
;X Y
} 	
public 
Task 
< !
SinpeMovilPaymentInfo )
>) *-
!GetCardPaymentInfoByPaymentInfoID+ L
(L M
intM P
paymentInfoIDQ ^
)^ _
{ 	
throw 
new 
System 
. #
NotImplementedException 4
(4 5
)5 6
;6 7
} 	
public 
Task 
< 
List 
< !
SinpeMovilPaymentInfo .
>. /
>/ 03
'GetCardPaymentInfosByPaymentInfoIDAsync1 X
(X Y
ListY ]
<] ^
HasPaymentInfo^ l
>l m
listn r
)r s
{ 	
throw 
new 
System 
. #
NotImplementedException 4
(4 5
)5 6
;6 7
} 	
public 
async 
Task 
< !
SinpeMovilPaymentInfo /
?/ 0
>0 1-
!GetSinpeMovilPaymentInfoByIdAsync2 S
(S T
intT W
phoneNumberX c
)c d
{   	
return!! 
await!! ,
 _sinpeMovilPaymentInfoRepository!! 9
.!!9 :
GetByIdAsync!!: F
(!!F G
phoneNumber!!G R
)!!R S
;!!S T
}"" 	
public## 
async## 
Task## 
<## 
IEnumerable## %
<##% &!
SinpeMovilPaymentInfo##& ;
>##; <
>##< =*
GetSinpeMovilPaymentInfosAsync##> \
(##\ ]
)##] ^
{$$ 	
return%% 
await%% ,
 _sinpeMovilPaymentInfoRepository%% 9
.%%9 :
GetAllAsync%%: E
(%%E F
)%%F G
;%%G H
}&& 	
public'' 
async'' 
Task'' 
<'' !
SinpeMovilPaymentInfo'' /
>''/ 03
'GetSinpeMovilPaymentInfoByPaymentInfoID''1 X
(''X Y
int''Y \
paymentInfoID''] j
)''j k
{(( 	
return)) 
await)) ,
 _sinpeMovilPaymentInfoRepository)) 9
.))9 :
GetByPaymentInfoID)): L
())L M
paymentInfoID))M Z
)))Z [
;))[ \
}** 	
public,, 
async,, 
Task,, 
<,, 
List,, 
<,, !
SinpeMovilPaymentInfo,, 4
>,,4 5
>,,5 69
-GetSinpeMovilPaymentInfosByPaymentInfoIDAsync,,7 d
(,,d e
List,,e i
<,,i j
HasPaymentInfo,,j x
>,,x y
list,,z ~
),,~ 
{-- 	
List.. 
<.. !
SinpeMovilPaymentInfo.. &
>..& '
asociateSinpeMovil..( :
=..; <
new..= @
(..@ A
)..A B
;..B C
for// 
(// 
int// 
i// 
=// 
$num// 
;// 
i// 
<// 
list//  $
.//$ %
Length//% +
(//+ ,
)//, -
;//- .
i/// 0
++//0 2
)//2 3
{00 
var11 
add11 
=11 
await11 3
'GetSinpeMovilPaymentInfoByPaymentInfoID11  G
(11G H
list11H L
[11L M
i11M N
]11N O
.11O P
Payment_Info_ID11P _
)11_ `
;11` a
if22 
(22 
add22 
!=22 
null22 
)22  
{33 
asociateSinpeMovil44 &
.44& '
Add44' *
(44* +
add44+ .
)44. /
;44/ 0
}55 
}66 
return77 
asociateSinpeMovil77 %
;77% &
}88 	
}99 
}:: è	
vC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\src\Application\PaymentInfos\IPaymentInfoService.cs
	namespace 	
EmprendeUCR
 
. 
Application !
.! "
PaymentInfos" .
{ 
public 

	interface 
IPaymentInfoService (
{ 
public 
Task 
< 
PaymentInfo 
?  
>  !#
GetPaymentInfoByIdAsync" 9
(9 :
int: =
id> @
)@ A
;A B
public		 
Task		 
<		 
IEnumerable		 
<		  
PaymentInfo		  +
>		+ ,
>		, - 
GetPaymentInfosAsync		. B
(		B C
)		C D
;		D E
public

 
Task

 
<

 
PaymentInfo

 
?

  
>

  !
AddPaymentInfoAsync

" 5
(

5 6
)

6 7
;

7 8
public 
Task "
RemovePaymentInfoAsync *
(* +
int+ .
id/ 1
)1 2
;2 3
} 
} ß
C:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\src\Application\PaymentInfos\ISinpeIbanPaymentInfoService.cs
	namespace 	
EmprendeUCR
 
. 
Application !
.! "
PaymentInfos" .
{ 
public 

	interface (
ISinpeIbanPaymentInfoService 1
{ 
public 
Task 
<  
SinpeIbanPaymentInfo (
?( )
>) *,
 GetSinpeIbanPaymentInfoByIdAsync+ K
(K L
stringL R
accountNumberS `
)` a
;a b
public		 
Task		 
<		 
IEnumerable		 
<		   
SinpeIbanPaymentInfo		  4
>		4 5
>		5 6)
GetSinpeIbanPaymentInfosAsync		7 T
(		T U
)		U V
;		V W
public

 
Task

 
AddPaymentInfoAsync

 '
(

' ( 
SinpeIbanPaymentInfo

( <"
sinpeIbanPaymentMethod

= S
)

S T
;

T U
public 
Task 
< 
List 
<  
SinpeIbanPaymentInfo -
>- .
?. /
>/ 08
,GetSinpeIbanPaymentInfosByPaymentInfoIDAsync1 ]
(] ^
List^ b
<b c
HasPaymentInfoc q
>q r
lists w
)w x
;x y
public 
Task 
<  
SinpeIbanPaymentInfo (
?( )
>) *2
&GetSinpeIbanPaymentInfoByPaymentInfoID+ Q
(Q R
intR U
paymentInfoIDV c
)c d
;d e
} 
} Ø
ÄC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\src\Application\PaymentInfos\ISinpeMovilPaymentInfoService.cs
	namespace 	
EmprendeUCR
 
. 
Application !
.! "
PaymentInfos" .
{ 
public 

	interface )
ISinpeMovilPaymentInfoService 2
{ 
public 
Task 
< !
SinpeMovilPaymentInfo )
?) *
>* +-
!GetSinpeMovilPaymentInfoByIdAsync, M
(M N
intN Q
phoneNumberR ]
)] ^
;^ _
public		 
Task		 
<		 
IEnumerable		 
<		  !
SinpeMovilPaymentInfo		  5
>		5 6
>		6 7*
GetSinpeMovilPaymentInfosAsync		8 V
(		V W
)		W X
;		X Y
public

 
Task

 
AddPaymentInfoAsync

 '
(

' (!
SinpeMovilPaymentInfo

( =#
sinpeMovilPaymentMethod

> U
)

U V
;

V W
public 
Task 
< 
List 
< !
SinpeMovilPaymentInfo .
>. /
?/ 0
>0 19
-GetSinpeMovilPaymentInfosByPaymentInfoIDAsync2 _
(_ `
List` d
<d e
HasPaymentInfoe s
>s t
listu y
)y z
;z {
public 
Task 
< !
SinpeMovilPaymentInfo )
?) *
>* +3
'GetSinpeMovilPaymentInfoByPaymentInfoID, S
(S T
intT W
paymentInfoIDX e
)e f
;f g
} 
} ﬂ
~C:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\src\Application\PaymentMethods\ICardPaymentMethodService.cs
	namespace 	
EmprendeUCR
 
. 
Application !
.! "
PaymentMethods" 0
{ 
public 

	interface %
ICardPaymentMethodService .
{ 
Task		 
<		 
IEnumerable		 
<		 
CardPaymentMethod		 *
>		* +
>		+ ,"
GetPaymentMethodsAsync		- C
(		C D
)		D E
;		E F
Task

 
<

 
CardPaymentMethod

 
?

 
>

  %
GetPaymentMethodByIdAsync

! :
(

: ;
string

; A
name

B F
)

F G
;

G H
Task ,
 ChangeStatusToPaymentMethodAsync -
(- .
CardPaymentMethod. ?
cardPaymentMethod@ Q
)Q R
;R S
Task .
"AddPaymentInfoToPaymentMethodAsync /
(/ 0
CardPaymentMethod0 A
cardPaymentMethodB S
,S T
CardPaymentInfo 
cardPaymentInfo +
)+ ,
;, -
Task <
0DeletePaymentInfoAndRemoveFromPaymentMethodAsync =
(= >
CardPaymentMethod> O
cardPaymentMethodP a
,a b
CardPaymentInfo 
cardPaymentInfo +
)+ ,
;, -
} 
} ˙
çC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\src\Application\PaymentMethods\Implementations\CardPaymentMethodService.cs
	namespace 	
EmprendeUCR
 
. 
Application !
.! "
PaymentMethods" 0
.0 1
Implementations1 @
{ 
public 

class $
CardPaymentMethodService )
:* +%
ICardPaymentMethodService, E
{		 
private

 
readonly

 (
ICardPaymentMethodRepository

 5(
_cardPaymentMethodRepository

6 R
;

R S
public $
CardPaymentMethodService '
(' ((
ICardPaymentMethodRepository( D'
cardPaymentMethodRepositoryE `
)` a
{ 	(
_cardPaymentMethodRepository (
=) *'
cardPaymentMethodRepository+ F
;F G
} 	
public 
async 
Task 
< 
CardPaymentMethod +
?+ ,
>, -%
GetPaymentMethodByIdAsync. G
(G H
stringH N
nameO S
)S T
{ 	
return 
await (
_cardPaymentMethodRepository 5
.5 6
GetByIdAsync6 B
(B C
nameC G
)G H
;H I
} 	
public 
async 
Task 
< 
IEnumerable %
<% &
CardPaymentMethod& 7
>7 8
>8 9"
GetPaymentMethodsAsync: P
(P Q
)Q R
{ 	
return 
await (
_cardPaymentMethodRepository 5
.5 6
GetAllAsync6 A
(A B
)B C
;C D
} 	
public 
async 
Task ,
 ChangeStatusToPaymentMethodAsync :
(: ;
CardPaymentMethod; L
cardPaymentMethodM ^
)^ _
{ 	
cardPaymentMethod 
. 
ChangeStatus *
(* +
)+ ,
;, -
await (
_cardPaymentMethodRepository .
.. /
	SaveAsync/ 8
(8 9
cardPaymentMethod9 J
)J K
;K L
} 	
public 
async 
Task .
"AddPaymentInfoToPaymentMethodAsync <
(< =
CardPaymentMethod= N
cardPaymentMethodO `
,` a
CardPaymentInfob q
cardPaymentInfo	r Å
)
Å Ç
{ 	
cardPaymentMethod 
. 
AddCardPaymentInfo 0
(0 1
cardPaymentInfo1 @
)@ A
;A B
await (
_cardPaymentMethodRepository .
.. /
	SaveAsync/ 8
(8 9
cardPaymentMethod9 J
)J K
;K L
}   	
public!! 
async!! 
Task!! <
0DeletePaymentInfoAndRemoveFromPaymentMethodAsync!! J
(!!J K
CardPaymentMethod!!K \
cardPaymentMethod!!] n
,!!n o
CardPaymentInfo!!p 
cardPaymentInfo
!!Ä è
)
!!è ê
{"" 	
cardPaymentMethod## 
.## "
RemovePhonePaymentInfo## 4
(##4 5
cardPaymentInfo##5 D
)##D E
;##E F
await$$ (
_cardPaymentMethodRepository$$ .
.$$. /$
DeletePaymentInformation$$/ G
($$G H
cardPaymentInfo$$H W
)$$W X
;$$X Y
await%% (
_cardPaymentMethodRepository%% .
.%%. /
	SaveAsync%%/ 8
(%%8 9
cardPaymentMethod%%9 J
)%%J K
;%%K L
}&& 	
}'' 
}(( ª
íC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\src\Application\PaymentMethods\Implementations\SinpeIbanPaymentMethodService.cs
	namespace 	
EmprendeUCR
 
. 
Application !
.! "
PaymentMethods" 0
.0 1
Implementations1 @
{ 
public 

class )
SinpeIbanPaymentMethodService .
:/ 0*
ISinpeIbanPaymentMethodService1 O
{		 
private

 
readonly

 -
!ISinpeIbanPaymentMethodRepository

 :-
!_sinpeIbanPaymentMethodRepository

; \
;

\ ]
public )
SinpeIbanPaymentMethodService ,
(, --
!ISinpeIbanPaymentMethodRepository- N,
 sinpeIbanPaymentMethodRepositoryO o
)o p
{ 	-
!_sinpeIbanPaymentMethodRepository -
=. /,
 sinpeIbanPaymentMethodRepository0 P
;P Q
} 	
public 
async 
Task 
< "
SinpeIbanPaymentMethod 0
?0 1
>1 2%
GetPaymentMethodByIdAsync3 L
(L M
stringM S
nameT X
)X Y
{ 	
return 
await -
!_sinpeIbanPaymentMethodRepository :
.: ;
GetByIdAsync; G
(G H
nameH L
)L M
;M N
} 	
public 
async 
Task 
< 
IEnumerable %
<% &"
SinpeIbanPaymentMethod& <
>< =
>= >"
GetPaymentMethodsAsync? U
(U V
)V W
{ 	
return 
await -
!_sinpeIbanPaymentMethodRepository :
.: ;
GetAllAsync; F
(F G
)G H
;H I
} 	
public 
async 
Task ,
 ChangeStatusToPaymentMethodAsync :
(: ;"
SinpeIbanPaymentMethod; Q"
sinpeIbanPaymentMethodR h
)h i
{ 	"
sinpeIbanPaymentMethod "
." #
ChangeStatus# /
(/ 0
)0 1
;1 2
await -
!_sinpeIbanPaymentMethodRepository 3
.3 4
	SaveAsync4 =
(= >"
sinpeIbanPaymentMethod> T
)T U
;U V
} 	
public 
async 
Task .
"AddPaymentInfoToPaymentMethodAsync <
(< ="
SinpeIbanPaymentMethod= S"
sinpeIbanPaymentMethodT j
,j k!
SinpeIbanPaymentInfo	l Ä"
sinpeIbanPaymentInfo
Å ï
)
ï ñ
{ 	"
sinpeIbanPaymentMethod "
." ##
AddSinpeIbanPaymentInfo# :
(: ; 
sinpeIbanPaymentInfo; O
)O P
;P Q
await -
!_sinpeIbanPaymentMethodRepository 3
.3 4
	SaveAsync4 =
(= >"
sinpeIbanPaymentMethod> T
)T U
;U V
}   	
public!! 
async!! 
Task!! <
0DeletePaymentInfoAndRemoveFromPaymentMethodAsync!! J
(!!J K"
SinpeIbanPaymentMethod!!K a"
sinpeIbanPaymentMethod!!b x
,!!x y!
SinpeIbanPaymentInfo	!!z é"
sinpeIbanPaymentInfo
!!è £
)
!!£ §
{"" 	"
sinpeIbanPaymentMethod## "
.##" #"
RemovePhonePaymentInfo### 9
(##9 : 
sinpeIbanPaymentInfo##: N
)##N O
;##O P
await$$ -
!_sinpeIbanPaymentMethodRepository$$ 3
.$$3 4$
DeletePaymentInformation$$4 L
($$L M 
sinpeIbanPaymentInfo$$M a
)$$a b
;$$b c
await%% -
!_sinpeIbanPaymentMethodRepository%% 3
.%%3 4
	SaveAsync%%4 =
(%%= >"
sinpeIbanPaymentMethod%%> T
)%%T U
;%%U V
}&& 	
}'' 
}(( „
ìC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\src\Application\PaymentMethods\Implementations\SinpeMovilPaymentMethodService.cs
	namespace 	
EmprendeUCR
 
. 
Application !
.! "
PaymentMethods" 0
.0 1
Implementations1 @
{ 
internal 
class *
SinpeMovilPaymentMethodService 1
:2 3+
ISinpeMovilPaymentMethodService4 S
{		 
private

 
readonly

 .
"ISinpeMovilPaymentMethodRepository

 ;.
"_sinpeMovilPaymentMethodRepository

< ^
;

^ _
public *
SinpeMovilPaymentMethodService -
(- ..
"ISinpeMovilPaymentMethodRepository. P-
!sinpeMovilPaymentMethodRepositoryQ r
)r s
{ 	.
"_sinpeMovilPaymentMethodRepository .
=/ 0-
!sinpeMovilPaymentMethodRepository1 R
;R S
} 	
public 
async 
Task 
< #
SinpeMovilPaymentMethod 1
?1 2
>2 3%
GetPaymentMethodByIdAsync4 M
(M N
stringN T
nameU Y
)Y Z
{ 	
return 
await .
"_sinpeMovilPaymentMethodRepository ;
.; <
GetByIdAsync< H
(H I
nameI M
)M N
;N O
} 	
public 
async 
Task 
< 
IEnumerable %
<% &#
SinpeMovilPaymentMethod& =
>= >
>> ?"
GetPaymentMethodsAsync@ V
(V W
)W X
{ 	
return 
await .
"_sinpeMovilPaymentMethodRepository ;
.; <
GetAllAsync< G
(G H
)H I
;I J
} 	
public 
async 
Task ,
 ChangeStatusToPaymentMethodAsync :
(: ;#
SinpeMovilPaymentMethod; R#
sinpeMovilPaymentMethodS j
)j k
{ 	#
sinpeMovilPaymentMethod #
.# $
ChangeStatus$ 0
(0 1
)1 2
;2 3
await .
"_sinpeMovilPaymentMethodRepository 4
.4 5
	SaveAsync5 >
(> ?#
sinpeMovilPaymentMethod? V
)V W
;W X
} 	
public 
async 
Task .
"AddPaymentInfoToPaymentMethodAsync <
(< =#
SinpeMovilPaymentMethod= T#
sinpeMovilPaymentMethodU l
,l m"
SinpeMovilPaymentInfo	n É#
sinpeMovilPaymentInfo
Ñ ô
)
ô ö
{ 	#
sinpeMovilPaymentMethod #
.# $$
AddSinpeMovilPaymentInfo$ <
(< =!
sinpeMovilPaymentInfo= R
)R S
;S T
await   .
"_sinpeMovilPaymentMethodRepository   4
.  4 5
	SaveAsync  5 >
(  > ?#
sinpeMovilPaymentMethod  ? V
)  V W
;  W X
}!! 	
public## 
async## 
Task## <
0DeletePaymentInfoAndRemoveFromPaymentMethodAsync## J
(##J K#
SinpeMovilPaymentMethod##K b#
sinpeMovilPaymentMethod##c z
,##z {"
SinpeMovilPaymentInfo	##| ë#
sinpeMovilPaymentInfo
##í ß
)
##ß ®
{$$ 	#
sinpeMovilPaymentMethod%% #
.%%# $"
RemovePhonePaymentInfo%%$ :
(%%: ;!
sinpeMovilPaymentInfo%%; P
)%%P Q
;%%Q R
await&& .
"_sinpeMovilPaymentMethodRepository&& 4
.&&4 5$
DeletePaymentInformation&&5 M
(&&M N!
sinpeMovilPaymentInfo&&N c
)&&c d
;&&d e
await'' .
"_sinpeMovilPaymentMethodRepository'' 4
.''4 5
	SaveAsync''5 >
(''> ?#
sinpeMovilPaymentMethod''? V
)''V W
;''W X
}(( 	
})) 
}** ¶
ÉC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\src\Application\PaymentMethods\ISinpeIbanPaymentMethodService.cs
	namespace 	
EmprendeUCR
 
. 
Application !
.! "
PaymentMethods" 0
{ 
public 

	interface *
ISinpeIbanPaymentMethodService 3
{ 
Task		 
<		 
IEnumerable		 
<		 "
SinpeIbanPaymentMethod		 /
>		/ 0
>		0 1"
GetPaymentMethodsAsync		2 H
(		H I
)		I J
;		J K
Task

 
<

 "
SinpeIbanPaymentMethod

 #
?

# $
>

$ %%
GetPaymentMethodByIdAsync

& ?
(

? @
string

@ F
name

G K
)

K L
;

L M
Task ,
 ChangeStatusToPaymentMethodAsync -
(- ."
SinpeIbanPaymentMethod. D"
sinpeIbanPaymentMethodE [
)[ \
;\ ]
Task .
"AddPaymentInfoToPaymentMethodAsync /
(/ 0"
SinpeIbanPaymentMethod0 F"
sinpeIbanPaymentMethodG ]
,] ^ 
SinpeIbanPaymentInfo   
sinpeIbanPaymentInfo! 5
)5 6
;6 7
Task <
0DeletePaymentInfoAndRemoveFromPaymentMethodAsync =
(= >"
SinpeIbanPaymentMethod> T"
sinpeIbanPaymentMethodU k
,k l 
SinpeIbanPaymentInfo   
sinpeIbanPaymentInfo! 5
)5 6
;6 7
} 
} ¥
ÑC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\src\Application\PaymentMethods\ISinpeMovilPaymentMethodService.cs
	namespace 	
EmprendeUCR
 
. 
Application !
.! "
PaymentMethods" 0
{ 
public 

	interface +
ISinpeMovilPaymentMethodService 4
{ 
Task		 
<		 
IEnumerable		 
<		 #
SinpeMovilPaymentMethod		 0
>		0 1
>		1 2"
GetPaymentMethodsAsync		3 I
(		I J
)		J K
;		K L
Task

 
<

 #
SinpeMovilPaymentMethod

 $
?

$ %
>

% &%
GetPaymentMethodByIdAsync

' @
(

@ A
string

A G
name

H L
)

L M
;

M N
Task ,
 ChangeStatusToPaymentMethodAsync -
(- .#
SinpeMovilPaymentMethod. E#
sinpeMovilPaymentMethodF ]
)] ^
;^ _
Task .
"AddPaymentInfoToPaymentMethodAsync /
(/ 0#
SinpeMovilPaymentMethod0 G#
sinpeMovilPaymentMethodH _
,_ `!
SinpeMovilPaymentInfo !!
sinpeMovilPaymentInfo" 7
)7 8
;8 9
Task <
0DeletePaymentInfoAndRemoveFromPaymentMethodAsync =
(= >#
SinpeMovilPaymentMethod> U#
sinpeMovilPaymentMethodV m
,m n!
SinpeMovilPaymentInfo !!
sinpeMovilPaymentInfo" 7
)7 8
;8 9
} 
} ı4
âC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\src\Application\PermissionContext\Implementations\PermissionService.cs
	namespace		 	
EmprendeUCR		
 
.		 
Application		 !
.		! "
PermissionContext		" 3
.		3 4
Implementations		4 C
{

 
public 

class 
PermissionService "
:# $
IPermissionService% 7
{ 
private 
readonly !
IPermissionRepository .!
_permissionRepository/ D
;D E
public 
PermissionService  
(  !!
IPermissionRepository! 6 
PermissionRepository7 K
)K L
{ 	!
_permissionRepository !
=" # 
PermissionRepository$ 8
;8 9
} 	
public 
async 
Task 
< 
IList  
<  !

Is_Able_To! +
>+ ,
>, - 
getAllUserPermisions. B
(B C
)C D
{ 	
return 
await !
_permissionRepository .
.. /
getAllUserPermision/ B
(B C
)C D
;D E
} 	
public 
async 
Task 
< 
IList 
<  
Role  $
>$ %
>% &
getAllRoles' 2
(2 3
)3 4
{ 	
return 
await !
_permissionRepository .
.. /

getAllRole/ 9
(9 :
): ;
;; <
} 	
public 
async 
Task 
< 
IList 
<  

Permission  *
>* +
>+ ,
getAllPermisions- =
(= >
)> ?
{ 	
return   
await   !
_permissionRepository   .
.  . /
getAllPermision  / >
(  > ?
)  ? @
;  @ A
}!! 	
public## 
async## 
Task## 
<## 
IList## 
<##  
User##  $
>##$ %
>##% &
getAllUsers##' 2
(##2 3
)##3 4
{$$ 	
return%% 
await%% !
_permissionRepository%% .
.%%. /

getAllUser%%/ 9
(%%9 :
)%%: ;
;%%; <
}&& 	
public(( 
Administrator(( 
getAdministrator(( -
(((- .
string((. 4
email((5 :
)((: ;
{)) 	
return** !
_permissionRepository** (
.**( )
getAdministrator**) 9
(**9 :
email**: ?
)**? @
;**@ A
}++ 	
public-- 
Client-- 
	getClient-- 
(--  
string--  &
email--' ,
)--, -
{.. 	
return// !
_permissionRepository// (
.//( )
	getClient//) 2
(//2 3
email//3 8
)//8 9
;//9 :
}00 	
public22 
Entrepreneur22 
getEntrepreneur22 +
(22+ ,
string22, 2
email223 8
)228 9
{33 	
return44 !
_permissionRepository44 (
.44( )
getEntrepreneur44) 8
(448 9
email449 >
)44> ?
;44? @
}55 	
public77 
User77 
getUserByEmail77 "
(77" #
string77# )
email77* /
)77/ 0
{88 	
return99 !
_permissionRepository99 (
.99( )
getUser99) 0
(990 1
email991 6
)996 7
;997 8
}:: 	
public<< 
string<< 
getHashByEmail<< $
(<<$ %
string<<% +
email<<, 1
)<<1 2
{== 	
return>> !
_permissionRepository>> (
.>>( )
getHash>>) 0
(>>0 1
email>>1 6
)>>6 7
;>>7 8
}?? 	
publicAA 
stringAA 
getEmailByHashAA $
(AA$ %
stringAA% +
hashAA, 0
)AA0 1
{BB 	
returnCC !
_permissionRepositoryCC (
.CC( )
getEmailCC) 1
(CC1 2
hashCC2 6
)CC6 7
;CC7 8
}DD 	
publicFF 
asyncFF 
TaskFF 
<FF 
IListFF 
<FF  

Is_Able_ToFF  *
>FF* +
>FF+ , 
getPermissionsByUserFF- A
(FFA B
stringFFB H
emailFFI N
)FFN O
{GG 	
returnHH 
awaitHH !
_permissionRepositoryHH .
.HH. /
getUserPermissionsHH/ A
(HHA B
emailHHB G
)HHG H
;HHH I
}II 	
publicKK 
voidKK !
updateUserPermissionsKK )
(KK) *
stringKK* 0
emailKK1 6
,KK6 7
IListKK8 =
<KK= >

Is_Able_ToKK> H
>KKH I
permissionsKKJ U
)KKU V
{LL 	!
_permissionRepositoryMM !
.MM! "
deleteAllEntriesMM" 2
(MM2 3
emailMM3 8
)MM8 9
;MM9 :
forOO 
(OO 
intOO 
iOO 
=OO 
$numOO 
;OO 
iOO 
<OO 
permissionsOO (
.OO( )
CountOO) .
(OO. /
)OO/ 0
;OO0 1
iOO2 3
++OO3 5
)OO5 6
{PP !
_permissionRepositoryQQ %
.QQ% &
addEntryQQ& .
(QQ. /
permissionsQQ/ :
[QQ: ;
iQQ; <
]QQ< =
)QQ= >
;QQ> ?
}RR 
}SS 	
publicUU 
asyncUU 
TaskUU 
addPermissionUU '
(UU' (

Is_Able_ToUU( 2

permissionUU3 =
)UU= >
{VV 	
awaitWW !
_permissionRepositoryWW '
.WW' (
addPermissionAsyncWW( :
(WW: ;

permissionWW; E
)WWE F
;WWF G
}XX 	
publicZZ 

Is_Able_ToZZ 
searchPermissionZZ *
(ZZ* +
stringZZ+ 1
emailZZ2 7
,ZZ7 8
intZZ9 <

permissionZZ= G
,ZZG H
intZZI L
roleZZM Q
)ZZQ R
{[[ 	
return\\ !
_permissionRepository\\ (
.\\( )
getPermission\\) 6
(\\6 7
email\\7 <
,\\< =

permission\\> H
,\\H I
role\\J N
)\\N O
;\\O P
}]] 	
}^^ 
}__ à
zC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\src\Application\PermissionContext\IPermissionService.cs
	namespace 	
EmprendeUCR
 
. 
Application !
.! "
PermissionContext" 3
{		 
public

 

	interface

 
IPermissionService

 '
{ 
Task 
< 
IList 
< 

Is_Able_To 
> 
>  
getAllUserPermisions  4
(4 5
)5 6
;6 7
Task 
< 
IList 
< 
Role 
> 
> 
getAllRoles %
(% &
)& '
;' (
Task 
< 
IList 
< 

Permission 
> 
> 
getAllPermisions  0
(0 1
)1 2
;2 3
Task 
< 
IList 
< 
User 
> 
> 
getAllUsers %
(% &
)& '
;' (
Administrator 
getAdministrator &
(& '
string' -
email. 3
)3 4
;4 5
Client 
	getClient 
( 
string 
email  %
)% &
;& '
Entrepreneur 
getEntrepreneur $
($ %
string% +
email, 1
)1 2
;2 3
User 
getUserByEmail 
( 
string "
email# (
)( )
;) *
string 
getHashByEmail 
( 
string $
email% *
)* +
;+ ,
string 
getEmailByHash 
( 
string $
hash% )
)) *
;* +
Task 
< 
IList 
< 

Is_Able_To 
> 
>  
getPermissionsByUser  4
(4 5
string5 ;
email< A
)A B
;B C
void !
updateUserPermissions "
(" #
string# )
email* /
,/ 0
IList1 6
<6 7

Is_Able_To7 A
>A B
permissionsC N
)N O
;O P
Task 
addPermission 
( 

Is_Able_To %

permission& 0
)0 1
;1 2

Is_Able_To 
searchPermission #
(# $
string$ *
email+ 0
,0 1
int2 5

permission6 @
,@ A
intB E
roleF J
)J K
;K L
} 
} ˘R
ùC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\src\Application\ProductsSearchClientContext\Implementations\ProductsSearchClientService.cs
	namespace 	
EmprendeUCR
 
. 
Application !
.! "'
ProductsSearchClientContext" =
.= >
Implementations> M
{ 
public 

class '
ProductsSearchClientService ,
:- .(
IProductsSearchClientService/ K
{ 
private 
readonly +
IProductsSearchClientRepository 8+
_productsSearchClientRepository9 X
;X Y

SfTreeGrid 
< 
Category 
> 
TreeGrid %
;% &
public '
ProductsSearchClientService *
(* ++
IProductsSearchClientRepository+ J*
ProductsSearchClientRepositoryK i
)i j
{ 	+
_productsSearchClientRepository +
=, -*
ProductsSearchClientRepository. L
;L M
} 	
public 
string 
convertImageDisplay )
() *
byte* .
[. /
]/ 0
image1 6
)6 7
{ 	
if 
( 
image 
!= 
null 
) 
{ 
var 
base64 
= 
Convert $
.$ %
ToBase64String% 3
(3 4
image4 9
)9 :
;: ;
var 
fs 
= 
string 
.  
Format  &
(& '
$str' B
,B C
base64D J
)J K
;K L
return 
fs 
; 
} 
return 
$str 
; 
}   	
public"" 
List"" 
<"" 
ProductPhotos"" !
>""! "!
listAllProductsPhotos""# 8
(""8 9
)""9 :
{## 	
return$$ +
_productsSearchClientRepository$$ 2
.$$2 3
loadAllPhotos$$3 @
($$@ A
)$$A B
;$$B C
}%% 	
public'' 
async'' 
Task'' 
<'' 
IList'' 
<''  
Category''  (
>''( )
>'') *!
getAllCategoriesAsync''+ @
(''@ A
)''A B
{(( 	
return)) 
await)) +
_productsSearchClientRepository)) 8
.))8 9
getCategoriesAsync))9 K
())K L
)))L M
;))M N
}** 	
public,, 
IList,, 
<,, 
Product,, 
>,, '
getProductsListByCategoryId,, 9
(,,9 :
int,,: =

categoryID,,> H
),,H I
{-- 	
return.. +
_productsSearchClientRepository.. 2
...2 3$
getProductListByCategory..3 K
(..K L

categoryID..L V
)..V W
;..W X
}// 	
public11 
IList11 
<11 
Service11 
>11 '
getServicesListByCategoryId11 9
(119 :
int11: =

categoryID11> H
)11H I
{22 	
return33 +
_productsSearchClientRepository33 2
.332 3$
getServiceListByCategory333 K
(33K L

categoryID33L V
)33V W
;33W X
}44 	
public66 
IList66 
<66 
Product66 
>66 %
getListProductsRestricted66 7
(667 8
string668 >
product66? F
,66F G
int66H K

categoryID66L V
)66V W
{77 	
return88 +
_productsSearchClientRepository88 2
.882 3$
getListProductRestricted883 K
(88K L
product88L S
,88S T

categoryID88U _
)88_ `
;88` a
}99 	
public;; 
IList;; 
<;; 
Product;; 
>;; 
getListProducs;; ,
(;;, -
string;;- 3
product;;4 ;
);;; <
{<< 	
return== +
_productsSearchClientRepository== 2
.==2 3
getListProduc==3 @
(==@ A
product==A H
)==H I
;==I J
}>> 	
public@@ 
async@@ 
Task@@ 
Rowdrop@@ !
(@@! "

Syncfusion@@" ,
.@@, -
Blazor@@- 3
.@@3 4
Grids@@4 9
.@@9 :
RowDragEventArgs@@: J
<@@J K
Category@@K S
>@@S T
args@@U Y
,@@Y Z

SfTreeGrid@@[ e
<@@e f
Category@@f n
>@@n o
main@@p t
)@@t u
{AA 	
thisBB 
.BB 
TreeGridBB 
=BB 
mainBB  
;BB  !
varCC 
positionCC 
=CC 
argsCC 
.CC  
TargetCC  &
.CC& '
IDCC' )
;CC) *
ifDD 
(DD 
positionDD 
==DD 
$strDD *
)DD* +
{EE 
varFF 
CurrentViewDataFF #
=FF$ %
thisFF& *
.FF* +
TreeGridFF+ 3
.FF3 4!
GetCurrentViewRecordsFF4 I
(FFI J
)FFJ K
;FFK L
varGG 
TargetCategoryGG "
=GG# $
CurrentViewDataGG% 4
.GG4 5
	ElementAtGG5 >
(GG> ?
(GG? @
intGG@ C
)GGC D
argsGGD H
.GGH I
	DropIndexGGI R
)GGR S
;GGS T
varHH 
SourceCategoryHH "
=HH# $
CurrentViewDataHH% 4
.HH4 5
	ElementAtHH5 >
(HH> ?
(HH? @
intHH@ C
)HHC D
argsHHD H
.HHH I
	FromIndexHHI R
)HHR S
;HHS T
awaitII 
ChangeParentII "
(II" #
SourceCategoryII# 1
.II1 2
IdII2 4
,II4 5
TargetCategoryII6 D
.IID E
ParentIdIIE M
)IIM N
;IIN O
}JJ 
elseKK 
{LL 
argsMM 
.MM 
CancelMM 
=MM 
trueMM "
;MM" #
}NN 
}OO 	
publicQQ 
asyncQQ 
TaskQQ 
ChangeParentQQ &
(QQ& '
intQQ' *
IdQQ+ -
,QQ- .
intQQ/ 2
?QQ2 3
ParentIdQQ4 <
)QQ< =
{RR 	
awaitSS +
_productsSearchClientRepositorySS 1
.SS1 2 
changeCategoryParentSS2 F
(SSF G
IdSSG I
,SSI J
ParentIdSSK S
)SSS T
;SST U
}TT 	
publicVV 
boolVV 
verifyChildCategoryVV '
(VV' (
intVV( +
idVV, .
)VV. /
{WW 	
returnXX +
_productsSearchClientRepositoryXX 2
.XX2 3
isChildNodeXX3 >
(XX> ?
idXX? A
)XXA B
;XXB C
}YY 	
public[[ 
async[[ 
Task[[ 
<[[ 
bool[[ 
>[[ 
searchProductById[[  1
([[1 2
string[[2 8
email[[9 >
,[[> ?
int[[@ C
	idProduct[[D M
)[[M N
{\\ 	
return]] 
await]] +
_productsSearchClientRepository]] 8
.]]8 9
searchProduct]]9 F
(]]F G
email]]G L
,]]L M
	idProduct]]N W
)]]W X
;]]X Y
}^^ 	
public`` 
async`` 
Task`` 
<`` 
bool`` 
>`` "
addProductShoppingCart``  6
(``6 7
ShoppingCartHas``7 F
shoppingCart``G S
)``S T
{aa 	
returnbb 
awaitbb +
_productsSearchClientRepositorybb 8
.bb8 9

addProductbb9 C
(bbC D
shoppingCartbbD P
)bbP Q
;bbQ R
}cc 	
publicee 
IListee 
<ee 
Serviceee 
>ee 
getListServicesee -
(ee- .
stringee. 4
productee5 <
)ee< =
{ff 	
returngg +
_productsSearchClientRepositorygg 3
.gg3 4
getListServicegg4 B
(ggB C
productggC J
)ggJ K
;ggK L
}hh 	
publicjj 
IListjj 
<jj 
Servicejj 
>jj %
getListServicesRestrictedjj 7
(jj7 8
stringjj8 >
productjj? F
,jjF G
intjjH K

categoryIDjjL V
)jjV W
{kk 	
returnll +
_productsSearchClientRepositoryll 2
.ll2 3$
GetListServiceRestrictedll3 K
(llK L
productllL S
,llS T

categoryIDllU _
)ll_ `
;ll` a
}mm 	
publicoo 
IListoo 
<oo 
ProductServiceoo #
>oo# $'
GetAllProductsServicesAsyncoo% @
(oo@ A
)ooA B
{pp 	
returnqq +
_productsSearchClientRepositoryqq 2
.qq2 3
GetProductServiceqq3 D
(qqD E
)qqE F
;qqF G
}rr 	
publictt 
IListtt 
<tt 
Service_Photostt #
>tt# $
getServicePhotostt% 5
(tt5 6
)tt6 7
{uu 	
returnvv +
_productsSearchClientRepositoryvv 2
.vv2 3
getAllServicePhotosvv3 F
(vvF G
)vvG H
;vvH I
}ww 	
publicyy 
IListyy 
<yy 
Productyy 
>yy 
GetProductsByPriceyy 0
(yy0 1
intyy1 4

searchTypeyy5 ?
)yy? @
{zz 	
return{{ +
_productsSearchClientRepository{{ 2
.{{2 3
GetProductPrice{{3 B
({{B C

searchType{{C M
){{M N
;{{N O
}|| 	
public~~ 
IList~~ 
<~~ 
Service~~ 
>~~ 
GetServicesByPrice~~ 0
(~~0 1
int~~1 4

searchType~~5 ?
)~~? @
{ 	
return
ÄÄ -
_productsSearchClientRepository
ÄÄ 2
.
ÄÄ2 3
GetServiceByPrice
ÄÄ3 D
(
ÄÄD E

searchType
ÄÄE O
)
ÄÄO P
;
ÄÄP Q
}
ÅÅ 	
}
ÇÇ 
}ÉÉ ﬁ
éC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\src\Application\ProductsSearchClientContext\IProductsSearchClientService.cs
	namespace		 	
EmprendeUCR		
 
.		 
Application		 !
.		! "'
ProductsSearchClientContext		" =
{

 
public 

	interface (
IProductsSearchClientService 1
{ 
string 
convertImageDisplay "
(" #
byte# '
[' (
]( )
image* /
)/ 0
;0 1
List 
< 
ProductPhotos 
> !
listAllProductsPhotos 1
(1 2
)2 3
;3 4
Task 
< 
IList 
< 
Category 
> 
> !
getAllCategoriesAsync 3
(3 4
)4 5
;5 6
IList 
< 
Product 
> '
getProductsListByCategoryId 2
(2 3
int3 6

categoryID7 A
)A B
;B C
IList 
< 
Service 
> '
getServicesListByCategoryId 2
(2 3
int3 6

categoryID7 A
)A B
;B C
IList 
< 
Product 
> %
getListProductsRestricted 0
(0 1
string1 7
product8 ?
,? @
intA D

categoryIDE O
)O P
;P Q
IList 
< 
Product 
> 
getListProducs %
(% &
string& ,
product- 4
)4 5
;5 6
Task 
Rowdrop 
( 

Syncfusion 
.  
Blazor  &
.& '
Grids' ,
., -
RowDragEventArgs- =
<= >
Category> F
>F G
argsH L
,L M

SfTreeGridN X
<X Y
CategoryY a
>a b
mainc g
)g h
;h i
Task 
ChangeParent 
( 
int 
Id  
,  !
int" %
?% &
ParentId' /
)/ 0
;0 1
bool 
verifyChildCategory  
(  !
int! $
id% '
)' (
;( )
Task 
< 
bool 
> 
searchProductById $
($ %
string% +
email, 1
,1 2
int3 6
	idProduct7 @
)@ A
;A B
Task 
< 
bool 
> "
addProductShoppingCart )
() *
ShoppingCartHas* 9
shoppingCart: F
)F G
;G H
IList 
< 
Service 
> 
getListServices &
(& '
string' -
product. 5
)5 6
;6 7
IList 
< 
Service 
> %
getListServicesRestricted 0
(0 1
string1 7
product8 ?
,? @
intA D

categoryIDE O
)O P
;P Q
IList 
< 
ProductService 
> '
GetAllProductsServicesAsync 9
(9 :
): ;
;; <
IList 
< 
Service_Photos 
> 
getServicePhotos .
(. /
)/ 0
;0 1
IList 
< 
Product 
> 
GetProductsByPrice )
() *
int* -

searchType. 8
)8 9
;9 :
IList   
<   
Service   
>   
GetServicesByPrice   )
(  ) *
int  * -

searchType  . 8
)  8 9
;  9 :
}!! 
}"" ≤Q
ÉC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\src\Application\ProfileContext\Implementations\ProfileService.cs
	namespace 	
EmprendeUCR
 
. 
Application !
.! "
ProfileContext" 0
.0 1
Implementations1 @
{		 
public

 

class

 
ProfileService

 
:

  !
IProfileService

" 1
{ 
private 
readonly 
IProfileRepository +
_profileRepository, >
;> ?
public 
ProfileService 
( 
IProfileRepository 0
profileRepository1 B
)B C
{ 	
_profileRepository 
=  
profileRepository! 2
;2 3
} 	
public 
async 
Task 
< 
User 
> 
GetUser  '
(' (
string( .
email/ 4
)4 5
{ 	
return 
await 
_profileRepository +
.+ ,
GetUserAsync, 8
(8 9
email9 >
)> ?
;? @
} 	
public 
async 
Task 
< 
IList 
<  
Entrepreneur  ,
>, -
>- .
GetUsers. 6
(6 7
)7 8
{ 	
return 
await 
_profileRepository ,
., -
GetUsersAsync- :
(: ;
); <
;< =
} 	
public 
async 
Task 
< 
Members !
>! "
	GetMember# ,
(, -
string- 3
email4 9
)9 :
{ 	
return 
await 
_profileRepository +
.+ ,
GetMemberAsync, :
(: ;
email; @
)@ A
;A B
} 	
public!! 
async!! 
Task!! 
<!! 
Client!!  
>!!  !
	GetClient!!" +
(!!+ ,
string!!, 2
email!!3 8
)!!8 9
{"" 	
return## 
await## 
_profileRepository## +
.##+ ,
GetClientAsync##, :
(##: ;
email##; @
)##@ A
;##A B
}$$ 	
public&& 
async&& 
Task&& 
<&& 
Entrepreneur&& &
>&&& '
GetEntrepreneur&&( 7
(&&7 8
string&&8 >
email&&? D
)&&D E
{'' 	
return(( 
await(( 
_profileRepository(( +
.((+ , 
GetEntrepreneurAsync((, @
(((@ A
email((A F
)((F G
;((G H
})) 	
public++ 
async++ 
Task++ 
<++ 
Administrator++ '
>++' (
GetAdministrator++) 9
(++9 :
string++: @
email++A F
)++F G
{,, 	
return-- 
await-- 
_profileRepository-- +
.--+ ,!
GetAdministratorAsync--, A
(--A B
email--B G
)--G H
;--H I
}.. 	
public00 
async00 
Task00 
<00 
IList00 
<00  
Likes00  %
>00% &
>00& '
GetLikes00( 0
(000 1
string001 7
email008 =
)00= >
{11 	
return22 
await22 
_profileRepository22 +
.22+ ,
GetLikes22, 4
(224 5
email225 :
)22: ;
;22; <
}33 	
public55 
async55 
Task55 
<55 
Phones55  
>55  !
GetPhone55" *
(55* +
string55+ 1
email552 7
)557 8
{66 	
return77 
await77 
_profileRepository77 +
.77+ ,
GetPhoneAsync77, 9
(779 :
email77: ?
)77? @
;77@ A
}88 	
public:: 
string:: 
GetCategoryTitle:: &
(::& '
int::' *

categoryId::+ 5
)::5 6
{;; 	
return<< 
_profileRepository<< %
.<<% &!
GetCategoryTitleAsync<<& ;
(<<; <

categoryId<<< F
)<<F G
;<<G H
}== 	
public?? 
IList?? 
<?? 
Category?? 
>?? 
GetParentCategories?? 2
(??2 3
)??3 4
{@@ 	
returnAA 
_profileRepositoryAA %
.AA% &
GetFatherCategoriesAA& 9
(AA9 :
)AA: ;
;AA; <
}BB 	
publicDD 
IListDD 
<DD 
CategoryDD 
>DD 
GetCategoryChildrenDD 2
(DD2 3
intDD3 6
parentIdDD7 ?
)DD? @
{EE 	
returnFF 
_profileRepositoryFF %
.FF% &
GetChildCategoriesFF& 8
(FF8 9
parentIdFF9 A
)FFA B
;FFB C
}GG 	
publicII 
IListII 
<II 
CategoryII 
>II 
GetCategoriesII ,
(II, -
)II- .
{JJ 	
returnKK 
_profileRepositoryKK %
.KK% &
GetAllCategoriesKK& 6
(KK6 7
)KK7 8
;KK8 9
}LL 	
publicNN 
IListNN 
<NN 
ProvinceNN 
>NN 
GetProvincesNN +
(NN+ ,
)NN, -
{OO 	
returnPP 
_profileRepositoryPP %
.PP% &
GetAllProvincesPP& 5
(PP5 6
)PP6 7
;PP7 8
}QQ 	
publicSS 
IListSS 
<SS 
CantonSS 
>SS 

GetCantonsSS '
(SS' (
stringSS( .
provinceSS/ 7
)SS7 8
{TT 	
returnUU 
_profileRepositoryUU %
.UU% &
GetProvinceCantonsUU& 8
(UU8 9
provinceUU9 A
)UUA B
;UUB C
}VV 	
publicXX 
IListXX 
<XX 
DistrictXX 
>XX 
GetDistrictsXX +
(XX+ ,
stringXX, 2
cantonXX3 9
)XX9 :
{YY 	
returnZZ 
_profileRepositoryZZ %
.ZZ% &
GetCantonDistrictsZZ& 8
(ZZ8 9
cantonZZ9 ?
)ZZ? @
;ZZ@ A
}[[ 	
public]] 
async]] 
Task]] 
<]] 
bool]] 
>]] 
UpdatePhone]]  +
(]]+ ,
string]], 2
email]]3 8
,]]8 9
string]]: @
phone]]A F
)]]F G
{^^ 	
return__ 
await__ 
_profileRepository__ +
.__+ ,
PhoneUpdate__, 7
(__7 8
email__8 =
,__= >
phone__? D
)__D E
;__E F
}`` 	
publicbb 
asyncbb 
Taskbb 
<bb 
boolbb 
>bb 

UpdateUserbb  *
(bb* +
Userbb+ /
ubb0 1
)bb1 2
{cc 	
returndd 
awaitdd 
_profileRepositorydd +
.dd+ ,

UserUpdatedd, 6
(dd6 7
udd7 8
)dd8 9
;dd9 :
}ee 	
publicgg 
asyncgg 
Taskgg 
<gg 
boolgg 
>gg 
UpdateAdministratorgg  3
(gg3 4
Administratorgg4 A
aggB C
)ggC D
{hh 	
returnii 
awaitii 
_profileRepositoryii +
.ii+ ,
AdministratorUpdateii, ?
(ii? @
aii@ A
)iiA B
;iiB C
}jj 	
publicll 
asyncll 
Taskll 
<ll 
boolll 
>ll 
UpdateMemberll  ,
(ll, -
Membersll- 4
mll5 6
)ll6 7
{mm 	
returnnn 
awaitnn 
_profileRepositorynn +
.nn+ ,
MemberUpdatenn, 8
(nn8 9
mnn9 :
)nn: ;
;nn; <
}oo 	
publicqq 
asyncqq 
Taskqq 
<qq 
boolqq 
>qq 
UpdateClientqq  ,
(qq, -
Clientqq- 3
cqq4 5
)qq5 6
{rr 	
returnss 
awaitss 
_profileRepositoryss +
.ss+ ,
ClientUpdatess, 8
(ss8 9
css9 :
)ss: ;
;ss; <
}tt 	
publicvv 
asyncvv 
Taskvv 
<vv 
boolvv 
>vv 
UpdateEntrepreneurvv  2
(vv2 3
Entrepreneurvv3 ?
evv@ A
)vvA B
{ww 	
returnxx 
awaitxx 
_profileRepositoryxx +
.xx+ ,
EntrepreneurUpdatexx, >
(xx> ?
exx? @
)xx@ A
;xxA B
}yy 	
public{{ 
async{{ 
Task{{ 
<{{ 
bool{{ 
>{{ 
AddLikes{{  (
({{( )
Likes{{) .
l{{/ 0
){{0 1
{|| 	
return}} 
await}} 
_profileRepository}} +
.}}+ ,
AddMemberLikes}}, :
(}}: ;
l}}; <
)}}< =
;}}= >
}~~ 	
public 
async 
Task 
< 
bool 
> 
	AddReport  )
() *
Report* 0
r1 2
)2 3
{
ÄÄ 	
return
ÅÅ 
await
ÅÅ  
_profileRepository
ÅÅ +
.
ÅÅ+ ,
	AddReport
ÅÅ, 5
(
ÅÅ5 6
r
ÅÅ6 7
)
ÅÅ7 8
;
ÅÅ8 9
}
ÇÇ 	
public
ÖÖ 
async
ÖÖ 
Task
ÖÖ 
<
ÖÖ 
bool
ÖÖ 
>
ÖÖ 
RemoveLikes
ÖÖ  +
(
ÖÖ+ ,
Likes
ÖÖ, 1
l
ÖÖ2 3
)
ÖÖ3 4
{
ÜÜ 	
return
áá 
await
áá  
_profileRepository
áá +
.
áá+ ,
RemoveMemberLikes
áá, =
(
áá= >
l
áá> ?
)
áá? @
;
áá@ A
}
àà 	
}
ää 
}ãã ı#
tC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\src\Application\ProfileContext\IProfileService.cs
	namespace		 	
EmprendeUCR		
 
.		 
Application		 !
.		! "
ProfileContext		" 0
{

 
public 

	interface 
IProfileService $
{ 
Task 
< 
User 
> 
GetUser 
( 
string !
email" '
)' (
;( )
Task 
< 
IList 
< 
Entrepreneur 
>  
>  !
GetUsers" *
(* +
)+ ,
;, -
Task 
< 
Members 
> 
	GetMember 
(  
string  &
email' ,
), -
;- .
Task 
< 
Client 
> 
	GetClient 
( 
string %
email& +
)+ ,
;, -
Task 
< 
Entrepreneur 
> 
GetEntrepreneur *
(* +
string+ 1
email2 7
)7 8
;8 9
Task 
< 
Administrator 
> 
GetAdministrator ,
(, -
string- 3
email4 9
)9 :
;: ;
Task 
< 
IList 
< 
Likes 
> 
> 
GetLikes #
(# $
string$ *
email+ 0
)0 1
;1 2
Task 
< 
Phones 
> 
GetPhone 
( 
string $
email% *
)* +
;+ ,
string 
GetCategoryTitle 
(  
int  #

categoryId$ .
). /
;/ 0
IList 
< 
Category 
> 
GetParentCategories +
(+ ,
), -
;- .
IList 
< 
Category 
> 
GetCategoryChildren +
(+ ,
int, /
parentId0 8
)8 9
;9 :
IList 
< 
Category 
> 
GetCategories %
(% &
)& '
;' (
IList 
< 
Province 
> 
GetProvinces $
($ %
)% &
;& '
IList 
< 
Canton 
> 

GetCantons  
(  !
string! '
province( 0
)0 1
;1 2
IList 
< 
District 
> 
GetDistricts $
($ %
string% +
canton, 2
)2 3
;3 4
Task 
< 
bool 
> 
UpdatePhone 
( 
string %
email& +
,+ ,
string- 3
phone4 9
)9 :
;: ;
Task 
< 
bool 
> 

UpdateUser 
( 
User "
u# $
)$ %
;% &
Task 
< 
bool 
> 
UpdateAdministrator &
(& '
Administrator' 4
a5 6
)6 7
;7 8
Task 
< 
bool 
> 
UpdateMember 
(  
Members  '
m( )
)) *
;* +
Task   
<   
bool   
>   
UpdateClient   
(    
Client    &
c  ' (
)  ( )
;  ) *
Task!! 
<!! 
bool!! 
>!! 
UpdateEntrepreneur!! %
(!!% &
Entrepreneur!!& 2
e!!3 4
)!!4 5
;!!5 6
Task"" 
<"" 
bool"" 
>"" 
AddLikes"" 
("" 
Likes"" !
l""" #
)""# $
;""$ %
Task## 
<## 
bool## 
>## 
RemoveLikes## 
(## 
Likes## $
l##% &
)##& '
;##' (
Task$$ 
<$$ 
bool$$ 
>$$ 
	AddReport$$ 
($$ 
Report$$ #
r$$$ %
)$$% &
;$$& '
}%% 
}&& ¥Á
ÖC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\src\Application\RegisterContext\Implementations\RegisterService.cs
	namespace 	
EmprendeUCR
 
. 
Application !
.! "
RegisterContext" 1
.1 2
Implementations2 A
{ 
public 

class 
RegisterService  
:! "
IRegisterService# 3
{ 
private 
readonly 
IRegisterRepository ,
_RegisterRepository- @
;@ A
public 
RegisterService 
( 
IRegisterRepository 2
registerRepository3 E
)E F
{ 	
_RegisterRepository 
=  !
registerRepository" 4
;4 5
} 	
byte 
[ 
] 
Key 
= 
{ 
$num 
, 
$num 
, 
$num "
," #
$num$ &
,& '
$num( +
,+ ,
$num- /
,/ 0
$num1 3
,3 4
$num5 8
,8 9
$num: =
,= >
$num? B
,B C
$numD F
,F G
$numH J
,J K
$numL N
,N O
$numP R
,R S
$numT W
,W X
$numY [
,[ \
$num] _
,_ `
$numa d
,d e
$numf i
,i j
$numk n
,n o
$nump r
,r s
$numt w
,w x
$numy |
,| }
$num	~ Å
,
Å Ç
$num
É Ö
,
Ö Ü
$num
á â
,
â ä
$num
ã é
,
é è
$num
ê í
,
í ì
$num
î ó
,
ó ò
$num
ô ú
,
ú ù
$num
û °
,
° ¢
$num
£ ¶
}
ß ®
;
® ©
byte 
[ 
] 
IV 
= 
{ 
$num 
, 
$num 
, 
$num "
," #
$num$ '
,' (
$num) ,
,, -
$num. 0
,0 1
$num2 5
,5 6
$num7 :
,: ;
$num< >
,> ?
$num@ C
,C D
$numE H
,H I
$numJ L
,L M
$numN Q
,Q R
$numS V
,V W
$numX Z
,Z [
$num\ _
}` a
;a b
public 
async 
Task 
< 
bool 
> 
insertNewUser  -
(- .
User. 2
user3 7
)7 8
{ 	
return 
await 
_RegisterRepository ,
., -
addUserAsync- 9
(9 :
user: >
)> ?
;? @
} 	
public!! 
bool!! 
verifyUserExistence!! '
(!!' (
Register!!( 0
newRegister!!1 <
)!!< =
{"" 	
return## 
_RegisterRepository## &
.##& '
verifyUserRecord##' 7
(##7 8
newRegister##8 C
)##C D
;##D E
}$$ 	
public'' 
async'' 
Task'' 
<'' 
bool'' 
>''  
insertNewCredentials''  4
(''4 5
Credentials''5 @
credentials''A L
)''L M
{(( 	
return)) 
await)) 
_RegisterRepository)) ,
.)), -
addCredentialsAsync))- @
())@ A
credentials))A L
)))L M
;))M N
}** 	
public-- 
async-- 
Task-- 
<-- 
bool-- 
>-- &
insertNewEmailConfirmation--  :
(--: ;
EmailConfirmation--; L
emailConfirmation--M ^
)--^ _
{.. 	
return// 
await// 
_RegisterRepository// ,
.//, -%
addEmailConfirmationAsync//- F
(//F G
emailConfirmation//G X
)//X Y
;//Y Z
}00 	
public33 
string33 
getMailBody33 !
(33! "
string33" (
	hash_mail33) 2
,332 3
int334 7
	type_user338 A
)33A B
{44 	
string55 
url55 
=55 
$str55 
;55 
string66 
result66 
=66 
$str66 
;66 
if77 
(77 
	type_user77 
==77 
$num77 
)77 
{88 
url99 
=99 
$str99 0
+991 2
$str993 L
+99M N
	hash_mail99O X
+99Y Z
$str99[ i
;99i j
result;; 
=;; 
string;; 
.;;  
Format;;  &
(;;& '
$str;>' -
+>>. /
$char>>0 3
+>>4 5
url>>6 9
+>>: ;
$char>>< ?
+>>@ A
$str??# @
,??@ A
url??B E
,??E F
	hash_mail??G P
)??P Q
;??Q R
}@@ 
ifAA 
(AA 
	type_userAA 
==AA 
$numAA 
)AA 
{BB 
urlCC 
=CC 
$strCC 0
+CC1 2
$strCC3 L
+CCM N
	hash_mailCCO X
+CCY Z
$strCC[ o
;CCo p
resultEE 
=EE 
stringEE 
.EE  
FormatEE  &
(EE& '
$strEH' -
+HH. /
$charHH0 3
+HH4 5
urlHH6 9
+HH: ;
$charHH< ?
+HH@ A
$strII# @
,II@ A
urlIIB E
,IIE F
	hash_mailIIG P
)IIP Q
;IIQ R
}JJ 
ifKK 
(KK 
	type_userKK 
==KK 
$numKK 
)KK 
{LL 
urlMM 
=MM 
$strMM 0
+MM1 2
$strMM3 L
+MMM N
	hash_mailMMO X
+MMY Z
$strMM[ p
;MMp q
resultOO 
=OO 
stringOO 
.OO  
FormatOO  &
(OO& '
$strOR' -
+RR. /
$charRR0 3
+RR4 5
urlRR6 9
+RR: ;
$charRR< ?
+RR@ A
$strSS# @
,SS@ A
urlSSB E
,SSE F
	hash_mailSSG P
)SSP Q
;SSQ R
}TT 
returnUU 
resultUU 
;UU 
}VV 	
publicYY 
asyncYY 
TaskYY 
<YY 
stringYY  
>YY  !
	sendEmailYY" +
(YY+ ,
MailYY, 0
	mailClassYY1 :
)YY: ;
{ZZ 	
try[[ 
{\\ 
using]] 
(]] 
MailMessage]] "
mail]]# '
=]]( )
new]]* -
MailMessage]]. 9
(]]9 :
)]]: ;
)]]; <
{^^ 
mail__ 
.__ 
From__ 
=__ 
new__  #
MailAddress__$ /
(__/ 0
	mailClass__0 9
.__9 :

FromMailId__: D
)__D E
;__E F
	mailClassaa 
.aa 
	ToMailIdsaa '
.aa' (
ForEachaa( /
(aa/ 0
xaa0 1
=>aa2 4
{bb 
Consolecc 
.cc  
	WriteLinecc  )
(cc) *
xcc* +
)cc+ ,
;cc, -
maildd 
.dd 
Todd 
.dd  
Adddd  #
(dd# $
xdd$ %
)dd% &
;dd& '
}ee 
)ee 
;ee 
mailgg 
.gg 
Bodygg 
=gg 
	mailClassgg  )
.gg) *
Bodygg* .
;gg. /
mailhh 
.hh 
Subjecthh  
=hh! "
	mailClasshh# ,
.hh, -
Subjecthh- 4
;hh4 5
mailii 
.ii 

IsBodyHtmlii #
=ii$ %
	mailClassii& /
.ii/ 0

IsBodyHtmlii0 :
;ii: ;
	mailClasskk 
.kk 
Attachementskk *
.kk* +
ForEachkk+ 2
(kk2 3
xkk3 4
=>kk5 7
{ll 
mailmm 
.mm 
Attachmentsmm (
.mm( )
Addmm) ,
(mm, -
newmm- 0

Attachmentmm1 ;
(mm; <
xmm< =
)mm= >
)mm> ?
;mm? @
}nn 
)nn 
;nn 
usingpp 
(pp 

SmtpClientpp %
smtppp& *
=pp+ ,
newpp- 0

SmtpClientpp1 ;
(pp; <
$strpp< L
,ppL M
$numppN Q
)ppQ R
)ppR S
{qq 
smtprr 
.rr 
Credentialsrr (
=rr) *
newrr+ .
Systemrr/ 5
.rr5 6
Netrr6 9
.rr9 :
NetworkCredentialrr: K
(rrK L
	mailClassrrL U
.rrU V

FromMailIdrrV `
,rr` a
	mailClassrrb k
.rrk l
FromMailIdPasswordrrl ~
)rr~ 
;	rr Ä
smtpss 
.ss 
	EnableSslss &
=ss' (
truess) -
;ss- .
awaittt 
smtptt "
.tt" #
SendMailAsynctt# 0
(tt0 1
mailtt1 5
)tt5 6
;tt6 7
returnuu 
$struu 0
;uu0 1
}vv 
}ww 
}xx 
catchyy 
(yy 
	Exceptionyy 
exyy 
)yy  
{zz 
return{{ 
ex{{ 
.{{ 
Message{{ !
;{{! "
}|| 
}}} 	
public
ÄÄ 
string
ÄÄ 
	hashEmail
ÄÄ 
(
ÄÄ  
string
ÄÄ  &
email
ÄÄ' ,
)
ÄÄ, -
{
ÅÅ 	
string
ÇÇ 
	hashEmail
ÇÇ 
=
ÇÇ 
$str
ÇÇ !
;
ÇÇ! "
if
ÉÉ 
(
ÉÉ 
string
ÉÉ 
.
ÉÉ 
IsNullOrEmpty
ÉÉ $
(
ÉÉ$ %
email
ÉÉ% *
)
ÉÉ* +
)
ÉÉ+ ,
{
ÑÑ 
	hashEmail
ÖÖ 
=
ÖÖ 
$str
ÖÖ 
;
ÖÖ 
}
ÜÜ 
else
áá 
{
àà 
string
ââ 
salt
ââ 
=
ââ 
getSalt
ââ %
(
ââ% &
)
ââ& '
;
ââ' (
var
ää 
passwordBytes
ää !
=
ää" #
Encoding
ää$ ,
.
ää, -
UTF8
ää- 1
.
ää1 2
GetBytes
ää2 :
(
ää: ;
salt
ää; ?
+
ää@ A
email
ääB G
)
ääG H
;
ääH I
	hashEmail
ãã 
=
ãã 
Convert
ãã #
.
ãã# $
ToBase64String
ãã$ 2
(
ãã2 3
passwordBytes
ãã3 @
)
ãã@ A
;
ããA B
}
åå 
return
çç 
	hashEmail
çç 
;
çç 
}
éé 	
public
ëë 
string
ëë 
getSalt
ëë 
(
ëë 
)
ëë 
{
íí 	
var
ìì 
chars
ìì 
=
ìì 
$str
ìì X
;
ììX Y
var
îî 
stringChars
îî 
=
îî 
new
îî !
char
îî" &
[
îî& '
$num
îî' )
]
îî) *
;
îî* +
var
ïï 
random
ïï 
=
ïï 
new
ïï 
Random
ïï #
(
ïï# $
)
ïï$ %
;
ïï% &
for
ññ 
(
ññ 
int
ññ 
i
ññ 
=
ññ 
$num
ññ 
;
ññ 
i
ññ 
<
ññ 
stringChars
ññ  +
.
ññ+ ,
Length
ññ, 2
;
ññ2 3
i
ññ4 5
++
ññ5 7
)
ññ7 8
{
óó 
stringChars
òò 
[
òò 
i
òò 
]
òò 
=
òò  
chars
òò! &
[
òò& '
random
òò' -
.
òò- .
Next
òò. 2
(
òò2 3
chars
òò3 8
.
òò8 9
Length
òò9 ?
)
òò? @
]
òò@ A
;
òòA B
}
ôô 
string
öö 
finalString
öö 
=
öö  
new
öö! $
String
öö% +
(
öö+ ,
stringChars
öö, 7
)
öö7 8
;
öö8 9
return
õõ 
finalString
õõ 
;
õõ 
}
úú 	
public
üü 
string
üü 
encryptPassword
üü %
(
üü% &
string
üü& ,
password
üü- 5
)
üü5 6
{
†† 	
string
°° 
encriptPassword
°° "
=
°°# $
$str
°°% '
;
°°' (
if
££ 
(
££ 
!
££ 
string
££ 
.
££ 
IsNullOrEmpty
££ %
(
££% &
password
££& .
)
££. /
)
££/ 0
{
§§ 
byte
•• 
[
•• 
]
•• 
encrypt
•• 
=
••  &
encryptStringToBytes_Aes
••! 9
(
••9 :
password
••: B
,
••B C
Key
••D G
,
••G H
IV
••I K
)
••K L
;
••L M
encriptPassword
¶¶ 
=
¶¶  !
Convert
¶¶" )
.
¶¶) *
ToBase64String
¶¶* 8
(
¶¶8 9
encrypt
¶¶9 @
)
¶¶@ A
;
¶¶A B
}
ßß 
return
®® 
encriptPassword
®® "
;
®®" #
}
©© 	
public
¨¨ 
byte
¨¨ 
[
¨¨ 
]
¨¨ &
encryptStringToBytes_Aes
¨¨ .
(
¨¨. /
string
¨¨/ 5
password
¨¨6 >
,
¨¨> ?
byte
¨¨@ D
[
¨¨D E
]
¨¨E F
Key
¨¨G J
,
¨¨J K
byte
¨¨L P
[
¨¨P Q
]
¨¨Q R
IV
¨¨S U
)
¨¨U V
{
≠≠ 	
if
ÆÆ 
(
ÆÆ 
password
ÆÆ 
==
ÆÆ 
null
ÆÆ  
||
ÆÆ! #
password
ÆÆ$ ,
.
ÆÆ, -
Length
ÆÆ- 3
<=
ÆÆ4 6
$num
ÆÆ7 8
)
ÆÆ8 9
throw
ØØ 
new
ØØ #
ArgumentNullException
ØØ /
(
ØØ/ 0
$str
ØØ0 :
)
ØØ: ;
;
ØØ; <
if
∞∞ 
(
∞∞ 
Key
∞∞ 
==
∞∞ 
null
∞∞ 
||
∞∞ 
Key
∞∞ "
.
∞∞" #
Length
∞∞# )
<=
∞∞* ,
$num
∞∞- .
)
∞∞. /
throw
±± 
new
±± #
ArgumentNullException
±± /
(
±±/ 0
$str
±±0 5
)
±±5 6
;
±±6 7
if
≤≤ 
(
≤≤ 
IV
≤≤ 
==
≤≤ 
null
≤≤ 
||
≤≤ 
IV
≤≤  
.
≤≤  !
Length
≤≤! '
<=
≤≤( *
$num
≤≤+ ,
)
≤≤, -
throw
≥≥ 
new
≥≥ #
ArgumentNullException
≥≥ /
(
≥≥/ 0
$str
≥≥0 4
)
≥≥4 5
;
≥≥5 6
byte
¥¥ 
[
¥¥ 
]
¥¥ 
	encrypted
¥¥ 
;
¥¥ 
using
∂∂ 
(
∂∂ 
Aes
∂∂ 
aesAlg
∂∂ 
=
∂∂ 
Aes
∂∂  #
.
∂∂# $
Create
∂∂$ *
(
∂∂* +
)
∂∂+ ,
)
∂∂, -
{
∑∑ 
aesAlg
∏∏ 
.
∏∏ 
Key
∏∏ 
=
∏∏ 
Key
∏∏  
;
∏∏  !
aesAlg
ππ 
.
ππ 
IV
ππ 
=
ππ 
IV
ππ 
;
ππ 
ICryptoTransform
ªª  
	encryptor
ªª! *
=
ªª+ ,
aesAlg
ªª- 3
.
ªª3 4
CreateEncryptor
ªª4 C
(
ªªC D
aesAlg
ªªD J
.
ªªJ K
Key
ªªK N
,
ªªN O
aesAlg
ªªP V
.
ªªV W
IV
ªªW Y
)
ªªY Z
;
ªªZ [
using
ΩΩ 
(
ΩΩ 
MemoryStream
ΩΩ #
	msEncrypt
ΩΩ$ -
=
ΩΩ. /
new
ΩΩ0 3
MemoryStream
ΩΩ4 @
(
ΩΩ@ A
)
ΩΩA B
)
ΩΩB C
{
ææ 
using
øø 
(
øø 
CryptoStream
øø '
	csEncrypt
øø( 1
=
øø2 3
new
øø4 7
CryptoStream
øø8 D
(
øøD E
	msEncrypt
øøE N
,
øøN O
	encryptor
øøP Y
,
øøY Z
CryptoStreamMode
øø[ k
.
øøk l
Write
øøl q
)
øøq r
)
øør s
{
¿¿ 
using
¡¡ 
(
¡¡ 
StreamWriter
¡¡ +
	swEncrypt
¡¡, 5
=
¡¡6 7
new
¡¡8 ;
StreamWriter
¡¡< H
(
¡¡H I
	csEncrypt
¡¡I R
)
¡¡R S
)
¡¡S T
{
¬¬ 
	swEncrypt
√√ %
.
√√% &
Write
√√& +
(
√√+ ,
password
√√, 4
)
√√4 5
;
√√5 6
}
ƒƒ 
	encrypted
≈≈ !
=
≈≈" #
	msEncrypt
≈≈$ -
.
≈≈- .
ToArray
≈≈. 5
(
≈≈5 6
)
≈≈6 7
;
≈≈7 8
}
∆∆ 
}
«« 
}
»» 
return
…… 
	encrypted
…… 
;
…… 
}
   	
public
ÕÕ 
async
ÕÕ 
Task
ÕÕ 
<
ÕÕ 
IList
ÕÕ 
<
ÕÕ  
Category
ÕÕ  (
>
ÕÕ( )
>
ÕÕ) * 
getCategoryParents
ÕÕ+ =
(
ÕÕ= >
)
ÕÕ> ?
{
ŒŒ 	
return
œœ 
await
œœ !
_RegisterRepository
œœ ,
.
œœ, -

getParents
œœ- 7
(
œœ7 8
)
œœ8 9
;
œœ9 :
}
–– 	
public
”” 
async
”” 
Task
”” 
<
”” 
IList
”” 
<
””  
Category
””  (
>
””( )
>
””) *#
getChildrenOfCategory
””+ @
(
””@ A
int
””A D
id
””E G
)
””G H
{
‘‘ 	
return
’’ 
await
’’ !
_RegisterRepository
’’ ,
.
’’, -
getChildrenOf
’’- :
(
’’: ;
id
’’; =
)
’’= >
;
’’> ?
}
÷÷ 	
public
ŸŸ 
async
ŸŸ 
Task
ŸŸ 
<
ŸŸ 
EmailConfirmation
ŸŸ +
>
ŸŸ+ ,"
getEmailConfirmation
ŸŸ- A
(
ŸŸA B
string
ŸŸB H
	hash_code
ŸŸI R
)
ŸŸR S
{
⁄⁄ 	
return
€€ 
await
€€ !
_RegisterRepository
€€ ,
.
€€, -"
getConfirmationEmail
€€- A
(
€€A B
	hash_code
€€B K
)
€€K L
;
€€L M
}
‹‹ 	
public
ﬁﬁ 
async
ﬁﬁ 
Task
ﬁﬁ 
<
ﬁﬁ 
bool
ﬁﬁ 
>
ﬁﬁ &
getUserConfirmationEmail
ﬁﬁ  8
(
ﬁﬁ8 9
string
ﬁﬁ9 ?
email
ﬁﬁ@ E
)
ﬁﬁE F
{
ﬂﬂ 	
return
‡‡ 
await
‡‡ !
_RegisterRepository
‡‡ ,
.
‡‡, -!
getUserConfirmEmail
‡‡- @
(
‡‡@ A
email
‡‡A F
)
‡‡F G
;
‡‡G H
}
·· 	
public
‰‰ 
bool
‰‰ "
verifyExpirationDate
‰‰ (
(
‰‰( )
EmailConfirmation
‰‰) :
email
‰‰; @
)
‰‰@ A
{
ÂÂ 	
bool
ÊÊ 
verify
ÊÊ 
=
ÊÊ 
false
ÊÊ 
;
ÊÊ  
DateTime
ÁÁ 
fecha
ÁÁ 
=
ÁÁ 
DateTime
ÁÁ %
.
ÁÁ% &
Now
ÁÁ& )
;
ÁÁ) *
if
ËË 
(
ËË 
email
ËË 
.
ËË 
Expiration_Date
ËË %
<
ËË& '
fecha
ËË( -
)
ËË- .
{
ÈÈ 
verify
ÍÍ 
=
ÍÍ 
true
ÍÍ 
;
ÍÍ 
}
ÎÎ 
return
ÏÏ 
verify
ÏÏ 
;
ÏÏ 
}
ÌÌ 	
public
ÔÔ 
async
ÔÔ 
Task
ÔÔ 
<
ÔÔ 
IList
ÔÔ 
<
ÔÔ  
Province
ÔÔ  (
>
ÔÔ( )
>
ÔÔ) *
listProvinces
ÔÔ+ 8
(
ÔÔ8 9
)
ÔÔ9 :
{
 	
return
ÒÒ 
await
ÒÒ !
_RegisterRepository
ÒÒ ,
.
ÒÒ, -
getAllProvinces
ÒÒ- <
(
ÒÒ< =
)
ÒÒ= >
;
ÒÒ> ?
}
ÚÚ 	
public
ÙÙ 
async
ÙÙ 
Task
ÙÙ 
<
ÙÙ 
IList
ÙÙ 
<
ÙÙ  
District
ÙÙ  (
>
ÙÙ( )
>
ÙÙ) *
listDistricts
ÙÙ+ 8
(
ÙÙ8 9
)
ÙÙ9 :
{
ıı 	
return
ˆˆ 
await
ˆˆ !
_RegisterRepository
ˆˆ ,
.
ˆˆ, -
getAllDistricts
ˆˆ- <
(
ˆˆ< =
)
ˆˆ= >
;
ˆˆ> ?
}
˜˜ 	
public
˘˘ 
async
˘˘ 
Task
˘˘ 
<
˘˘ 
IList
˘˘ 
<
˘˘  
Canton
˘˘  &
>
˘˘& '
>
˘˘' (
listCantons
˘˘) 4
(
˘˘4 5
)
˘˘5 6
{
˙˙ 	
return
˚˚ 
await
˚˚ !
_RegisterRepository
˚˚ ,
.
˚˚, -
getAllCantons
˚˚- :
(
˚˚: ;
)
˚˚; <
;
˚˚< =
}
¸¸ 	
public
˛˛ 
async
˛˛ 
Task
˛˛ 
<
˛˛ 
IList
˛˛ 
<
˛˛  
Category
˛˛  (
>
˛˛( )
>
˛˛) *
listCategories
˛˛+ 9
(
˛˛9 :
)
˛˛: ;
{
ˇˇ 	
return
ÄÄ 
await
ÄÄ !
_RegisterRepository
ÄÄ ,
.
ÄÄ, -
getAllCategories
ÄÄ- =
(
ÄÄ= >
)
ÄÄ> ?
;
ÄÄ? @
}
ÅÅ 	
public
ÉÉ 
async
ÉÉ 
Task
ÉÉ 
<
ÉÉ 
bool
ÉÉ 
>
ÉÉ 
insertNewPhone
ÉÉ  .
(
ÉÉ. /
Phones
ÉÉ/ 5
phone
ÉÉ6 ;
)
ÉÉ; <
{
ÑÑ 	
return
ÖÖ 
await
ÖÖ !
_RegisterRepository
ÖÖ ,
.
ÖÖ, -
addPhoneAsync
ÖÖ- :
(
ÖÖ: ;
phone
ÖÖ; @
)
ÖÖ@ A
;
ÖÖA B
}
ÜÜ 	
public
àà 
async
àà 
Task
àà 
<
àà 
bool
àà 
>
àà 

updateUser
àà  *
(
àà* +
User
àà+ /
user
àà0 4
)
àà4 5
{
ââ 	
return
ää 
await
ää !
_RegisterRepository
ää ,
.
ää, -
updateUserAsync
ää- <
(
ää< =
user
ää= A
)
ääA B
;
ääB C
}
ãã 	
public
çç 
async
çç 
Task
çç 
<
çç 
bool
çç 
>
çç 
insertNewMember
çç  /
(
çç/ 0
Members
çç0 7
members
çç8 ?
)
çç? @
{
éé 	
return
èè 
await
èè !
_RegisterRepository
èè ,
.
èè, -
addMembersAsync
èè- <
(
èè< =
members
èè= D
)
èèD E
;
èèE F
}
êê 	
public
íí 
async
íí 
Task
íí 
<
íí 
bool
íí 
>
íí 
insertNewClient
íí  /
(
íí/ 0
Client
íí0 6
client
íí7 =
)
íí= >
{
ìì 	
return
îî 
await
îî !
_RegisterRepository
îî ,
.
îî, -
addClientAsync
îî- ;
(
îî; <
client
îî< B
)
îîB C
;
îîC D
}
ïï 	
public
óó 
async
óó 
Task
óó 
<
óó 
bool
óó 
>
óó #
insertNewShoppingCart
óó  5
(
óó5 6
ShoppingCart
óó6 B
shoppingcart
óóC O
)
óóO P
{
òò 	
return
ôô 
await
ôô !
_RegisterRepository
ôô ,
.
ôô, -"
addShoppingCartAsync
ôô- A
(
ôôA B
shoppingcart
ôôB N
)
ôôN O
;
ôôO P
}
öö 	
public
úú 
async
úú 
Task
úú 
<
úú 
bool
úú 
>
úú 
insertNewLike
úú  -
(
úú- .
Likes
úú. 3
like
úú4 8
)
úú8 9
{
ùù 	
return
ûû 
await
ûû !
_RegisterRepository
ûû ,
.
ûû, -
addLikesAsync
ûû- :
(
ûû: ;
like
ûû; ?
)
ûû? @
;
ûû@ A
}
üü 	
public
°° 
async
°° 
Task
°° 
<
°° 
bool
°° 
>
°° #
insertNewEntrepreneur
°°  5
(
°°5 6
Entrepreneur
°°6 B
entrepreneur
°°C O
)
°°O P
{
¢¢ 	
return
££ 
await
££ !
_RegisterRepository
££ ,
.
££, -"
addEntrepreneurAsync
££- A
(
££A B
entrepreneur
££B N
)
££N O
;
££O P
}
§§ 	
public
¶¶ 
async
¶¶ 
Task
¶¶ 
<
¶¶ 
bool
¶¶ 
>
¶¶ $
insertNewAdministrator
¶¶  6
(
¶¶6 7
Administrator
¶¶7 D
administrator
¶¶E R
)
¶¶R S
{
ßß 	
return
®® 
await
®® !
_RegisterRepository
®® ,
.
®®, -#
addAdministratorAsync
®®- B
(
®®B C
administrator
®®C P
)
®®P Q
;
®®Q R
}
©© 	
public
´´ 
IList
´´ 
<
´´ 
Canton
´´ 
>
´´ &
getListCantonsByProvince
´´ 5
(
´´5 6
string
´´6 <
province
´´= E
)
´´E F
{
¨¨ 	
return
≠≠ !
_RegisterRepository
≠≠ &
.
≠≠& '
getListCantons
≠≠' 5
(
≠≠5 6
province
≠≠6 >
)
≠≠> ?
;
≠≠? @
}
ÆÆ 	
public
∞∞ 
IList
∞∞ 
<
∞∞ 
District
∞∞ 
>
∞∞ &
getListDistrictsByCanton
∞∞ 7
(
∞∞7 8
string
∞∞8 >
canton
∞∞? E
)
∞∞E F
{
±± 	
return
≤≤ !
_RegisterRepository
≤≤ &
.
≤≤& '
getListDistrics
≤≤' 6
(
≤≤6 7
canton
≤≤7 =
)
≤≤= >
;
≤≤> ?
}
≥≥ 	
public
µµ 
async
µµ 
Task
µµ 
<
µµ 
bool
µµ 
>
µµ '
addNewActiveAdministrator
µµ  9
(
µµ9 :"
ActiveAdministrators
µµ: N!
activeAdministrator
µµO b
)
µµb c
{
∂∂ 	
return
∑∑ 
await
∑∑ !
_RegisterRepository
∑∑ ,
.
∑∑, -$
addActiveAdministrator
∑∑- C
(
∑∑C D!
activeAdministrator
∑∑D W
)
∑∑W X
;
∑∑X Y
}
∏∏ 	
public
∫∫ 
async
∫∫ 
Task
∫∫ 
<
∫∫ 
bool
∫∫ 
>
∫∫ %
verifyPastAdminRegister
∫∫  7
(
∫∫7 8
string
∫∫8 >
email
∫∫? D
)
∫∫D E
{
ªª 	
return
ºº 
await
ºº !
_RegisterRepository
ºº ,
.
ºº, -
verifyPastAdmin
ºº- <
(
ºº< =
email
ºº= B
)
ººB C
;
ººC D
}
ΩΩ 	
public
øø 
bool
øø 
AddLikes
øø 
(
øø 
Likes
øø "
l
øø# $
)
øø$ %
{
¿¿ 	
return
¡¡ !
_RegisterRepository
¡¡ &
.
¡¡& '
AddMemberLikes
¡¡' 5
(
¡¡5 6
l
¡¡6 7
)
¡¡7 8
;
¡¡8 9
}
¬¬ 	
public
ƒƒ 
bool
ƒƒ 
verifyUserTypes
ƒƒ #
(
ƒƒ# $
string
ƒƒ$ *
email
ƒƒ+ 0
,
ƒƒ0 1
int
ƒƒ2 5
userType
ƒƒ6 >
)
ƒƒ> ?
{
≈≈ 	
return
∆∆ !
_RegisterRepository
∆∆ &
.
∆∆& '
verifyUserType
∆∆' 5
(
∆∆5 6
email
∆∆6 ;
,
∆∆; <
userType
∆∆= E
)
∆∆E F
;
∆∆F G
}
«« 	
public
»» 
EmailConfirmation
»»  )
getEmailConfirmationByEmail
»»! <
(
»»< =
string
»»= C
email
»»D I
)
»»I J
{
…… 	
return
   !
_RegisterRepository
   &
.
  & '"
getEmailConfirmation
  ' ;
(
  ; <
email
  < A
)
  A B
;
  B C
}
ÀÀ 	
public
ÃÃ 
async
ÃÃ 
Task
ÃÃ 
<
ÃÃ 
string
ÃÃ  
>
ÃÃ  !
getUserPassword
ÃÃ" 1
(
ÃÃ1 2
string
ÃÃ2 8
email
ÃÃ9 >
)
ÃÃ> ?
{
ÕÕ 	
return
ŒŒ 
await
ŒŒ !
_RegisterRepository
ŒŒ ,
.
ŒŒ, -
GetPassword
ŒŒ- 8
(
ŒŒ8 9
email
ŒŒ9 >
)
ŒŒ> ?
;
ŒŒ? @
}
œœ 	
public
—— 
async
—— 
Task
—— 
<
—— 
bool
—— 
>
—— $
verifyMembersExistence
——  6
(
——6 7
string
——7 =
email
——> C
)
——C D
{
““ 	
return
”” 
await
”” !
_RegisterRepository
”” ,
.
””, -
verifyMembers
””- :
(
””: ;
email
””; @
)
””@ A
;
””A B
}
‘‘ 	
}
’’ 
}÷÷ ø6
vC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\src\Application\RegisterContext\IRegisterService.cs
	namespace		 	
EmprendeUCR		
 
.		 
Application		 !
.		! "
RegisterContext		" 1
{

 
public 

	interface 
IRegisterService %
{ 
Task 
< 
bool 
> 
insertNewUser  
(  !
User! %
user& *
)* +
;+ ,
bool 
verifyUserExistence  
(  !
Register! )
newRegister* 5
)5 6
;6 7
Task 
< 
bool 
>  
insertNewCredentials '
(' (
Credentials( 3
credentials4 ?
)? @
;@ A
Task 
< 
bool 
> &
insertNewEmailConfirmation -
(- .
EmailConfirmation. ?
emailConfirmation@ Q
)Q R
;R S
Task 
< 
bool 
> 
insertNewPhone !
(! "
Phones" (
phone) .
). /
;/ 0
string 
getMailBody 
( 
string !
hasEmail" *
,* +
int, /
TypeUser0 8
)8 9
;9 :
Task 
< 
string 
> 
	sendEmail 
( 
Mail #
	mailClass$ -
)- .
;. /
string 
encryptPassword 
( 
string %
password& .
). /
;/ 0
byte 
[ 
] $
encryptStringToBytes_Aes '
(' (
string( .
password/ 7
,7 8
byte9 =
[= >
]> ?
Key@ C
,C D
byteE I
[I J
]J K
IVL N
)N O
;O P
string 
getSalt 
( 
) 
; 
string 
	hashEmail 
( 
string 
email  %
)% &
;& '
Task 
< 
IList 
< 
Category 
> 
> 
getCategoryParents 0
(0 1
)1 2
;2 3
Task 
< 
IList 
< 
Category 
> 
> !
getChildrenOfCategory 3
(3 4
int4 7
id8 :
): ;
;; <
Task 
< 
EmailConfirmation 
>  
getEmailConfirmation  4
(4 5
string5 ;
	hash_code< E
)E F
;F G
Task 
< 
bool 
> $
getUserConfirmationEmail +
(+ ,
string, 2
email3 8
)8 9
;9 :
bool  
verifyExpirationDate !
(! "
EmailConfirmation" 3
email4 9
)9 :
;: ;
Task 
< 
IList 
< 
District 
> 
> 
listDistricts +
(+ ,
), -
;- .
Task 
< 
IList 
< 
Canton 
> 
> 
listCantons '
(' (
)( )
;) *
Task 
< 
IList 
< 
Province 
> 
> 
listProvinces +
(+ ,
), -
;- .
Task   
<   
IList   
<   
Category   
>   
>   
listCategories   ,
(  , -
)  - .
;  . /
Task!! 
<!! 
bool!! 
>!! 

updateUser!! 
(!! 
User!! "
user!!# '
)!!' (
;!!( )
Task"" 
<"" 
bool"" 
>"" 
insertNewMember"" "
(""" #
Members""# *
members""+ 2
)""2 3
;""3 4
Task## 
<## 
bool## 
>## 
insertNewClient## "
(##" #
Client### )
client##* 0
)##0 1
;##1 2
Task$$ 
<$$ 
bool$$ 
>$$ !
insertNewShoppingCart$$ (
($$( )
ShoppingCart$$) 5
shoppingcart$$6 B
)$$B C
;$$C D
Task%% 
<%% 
bool%% 
>%% 
insertNewLike%%  
(%%  !
Likes%%! &
like%%' +
)%%+ ,
;%%, -
Task&& 
<&& 
bool&& 
>&& !
insertNewEntrepreneur&& (
(&&( )
Entrepreneur&&) 5
entrepreneur&&6 B
)&&B C
;&&C D
Task'' 
<'' 
bool'' 
>'' "
insertNewAdministrator'' )
('') *
Administrator''* 7
administrator''8 E
)''E F
;''F G
IList(( 
<(( 
Canton(( 
>(( $
getListCantonsByProvince(( .
(((. /
string((/ 5
province((6 >
)((> ?
;((? @
IList)) 
<)) 
District)) 
>)) $
getListDistrictsByCanton)) 0
())0 1
string))1 7
canton))8 >
)))> ?
;))? @
Task** 
<** 
bool** 
>** %
addNewActiveAdministrator** ,
(**, - 
ActiveAdministrators**- A
activeAdministrator**B U
)**U V
;**V W
bool++ 
AddLikes++ 
(++ 
Likes++ 
l++ 
)++ 
;++ 
Task,, 
<,, 
bool,, 
>,, #
verifyPastAdminRegister,, *
(,,* +
string,,+ 1
email,,2 7
),,7 8
;,,8 9
bool-- 
verifyUserTypes-- 
(-- 
string-- #
email--$ )
,--) *
int--+ .
userType--/ 7
)--7 8
;--8 9
EmailConfirmation.. '
getEmailConfirmationByEmail.. 5
(..5 6
string..6 <
email..= B
)..B C
;..C D
Task// 
<// 
string// 
>// 
getUserPassword// $
(//$ %
string//% +
email//, 1
)//1 2
;//2 3
Task00 
<00 
bool00 
>00 "
verifyMembersExistence00 )
(00) *
string00* 0
email001 6
)006 7
;007 8
}11 
}22 ß5
ÅC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\src\Application\Reports\Implementations\CreateReportService.cs
	namespace 	
EmprendeUCR
 
. 
Application !
.! "
Reports" )
.) *
Implementations* 9
{		 
public

 

class

 
CreateReportService

 $
:

% &
IReportService

& 4
{ 
private 
readonly 
IReportService '
_context( 0
;0 1
public 
CreateReportService "
(" #
IReportService# 1
context2 9
)9 :
{ 	
_context 
= 
context 
; 
} 	
public 
async 
Task 
< 
IEnumerable %
<% &
Report& ,
>, -
>- .
GetReportsAsync/ >
(> ?
)? @
{ 	
return 
await 
_context !
.! "
GetReportsAsync" 1
(1 2
)2 3
;3 4
} 	
public 
async 
Task 
	SaveAsync #
(# $
)$ %
{ 	
await 
_context 
. 
	SaveAsync $
($ %
)% &
;& '
} 	
public 
async 
Task 
< 
Report  
?  !
>! "
GetReportByIdAsync# 5
(5 6
int6 9
id: <
)< =
{ 	
return 
await 
_context !
.! "
GetReportByIdAsync" 4
(4 5
id5 7
)7 8
;8 9
} 	
public 
async 
Task 
AddReportAsync (
(( )
Report) /
report0 6
)6 7
{ 	
await 
_context 
. 
AddReportAsync )
() *
report* 0
)0 1
;1 2
}   	
private,, 
bool,, 
TitleNotValid,, "
;,," #
private-- 
bool-- 
DescriptionNotValid-- (
;--( )
public.. 
bool.. 
AddDialogVisible.. $
;..$ %
public// 
string// 
Title// 
;// 
public00 
string00 
Content00 
;00 
public11 
bool11 
ContentNotValid11 #
;11# $
public22 
bool22  
CreateReportDisabled22 (
;22( )
public33 
string33 
user33 
;33 
public;; 
void;; "
OpenCreateReportDialog;; *
(;;* +
);;+ ,
{<< 	
this== 
.== 
AddDialogVisible== !
===" #
true==$ (
;==( )
this>> 
.>>  
CreateReportDisabled>> %
=>>& '
true>>( ,
;>>, -
}?? 	
publicHH 
voidHH #
CloseCreateReportDialogHH +
(HH+ ,
)HH, -
{II 	
thisJJ 
.JJ 
AddDialogVisibleJJ !
=JJ" #
falseJJ$ )
;JJ) *!
ResetCreateReportDataKK !
(KK! "
)KK" #
;KK# $
}LL 	
publicTT 
asyncTT 
voidTT 
CreateReportTT &
(TT& '
)TT' (
{UU 	
thisVV 
.VV 
AddDialogVisibleVV !
=VV" #
falseVV$ )
;VV) *
ReportWW 
reportWW 
=WW 
newWW 
ReportWW  &
(WW& '
)WW' (
;WW( )
reportXX 
.XX 
TitleXX 
=XX 
TitleXX  
;XX  !
reportYY 
.YY 
ContentYY 
=YY 
ContentYY $
;YY$ %
reportZZ 
.ZZ 
UserZZ 
=ZZ 
userZZ 
;ZZ 
await[[ 
AddReportAsync[[  
([[  !
report[[! '
)[[' (
;[[( )!
ResetCreateReportData\\ !
(\\! "
)\\" #
;\\# $
}]] 	
publicee 
voidee !
ResetCreateReportDataee )
(ee) *
)ee* +
{ff 	
AddDialogVisiblegg 
=gg 
falsegg $
;gg$ %
Titlehh 
=hh 
nullhh 
;hh 
Contentii 
=ii 
nullii 
;ii  
CreateReportDisabledjj  
=jj! "
falsejj# (
;jj( )
TitleNotValidkk 
=kk 
falsekk !
;kk! "
}ll 	
publicss 
voidss 
ValidateTitless !
(ss! "
	Microsoftss" +
.ss+ ,

AspNetCoress, 6
.ss6 7

Componentsss7 A
.ssA B
ChangeEventArgsssB Q
argsssR V
)ssV W
{tt 	
TitleNotValiduu 
=uu 
trueuu  
;uu  !
Titlevv 
=vv 
(vv 
Stringvv 
)vv 
argsvv  
.vv  !
Valuevv! &
;vv& '
ifww 
(ww 
Titleww 
.ww 
Lengthww 
>ww 
$numww  
)ww  !
{xx 
TitleNotValidyy 
=yy 
falseyy  %
;yy% &
}zz  
CreateReportDisabled{{  
={{! "
TitleNotValid{{# 0
||{{1 3
DescriptionNotValid{{4 G
;{{G H
}|| 	
public}} 
void}} 
ValidateDescription}} '
(}}' (
	Microsoft}}( 1
.}}1 2

AspNetCore}}2 <
.}}< =

Components}}= G
.}}G H
ChangeEventArgs}}H W
args}}X \
)}}\ ]
{~~ 	
ContentNotValid 
= 
true "
;" #
Content
ÄÄ 
=
ÄÄ 
(
ÄÄ 
String
ÄÄ 
)
ÄÄ 
args
ÄÄ "
.
ÄÄ" #
Value
ÄÄ# (
;
ÄÄ( )
if
ÅÅ 
(
ÅÅ 
Content
ÅÅ 
.
ÅÅ 
Length
ÅÅ 
>
ÅÅ  
$num
ÅÅ! "
)
ÅÅ" #
{
ÇÇ 
ContentNotValid
ÉÉ 
=
ÉÉ  !
false
ÉÉ" '
;
ÉÉ' (
}
ÑÑ "
CreateReportDisabled
ÖÖ  
=
ÖÖ! "
TitleNotValid
ÖÖ# 0
||
ÖÖ1 3!
DescriptionNotValid
ÖÖ4 G
;
ÖÖG H
}
ÜÜ 	
}
àà 
}ââ ∆
lC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\src\Application\Reports\IReportService.cs
	namespace 	
EmprendeUCR
 
. 
Application !
.! "
Reports" )
{ 
public 

	interface 
IReportService #
{$ %
Task 
< 
IEnumerable 
< 
Report 
>  
>  !
GetReportsAsync" 1
(1 2
)2 3
;3 4
Task		 
<		 
Report		 
?		 
>		 
GetReportByIdAsync		 (
(		( )
int		) ,
id		- /
)		/ 0
;		0 1
Task 
AddReportAsync 
( 
Report "
report# )
)) *
;* +
Task 
	SaveAsync 
( 
) 
; 
} 
} 