Œ
mC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\src\Domain\Categories\Entities\Category.cs
	namespace 	
EmprendeUCR
 
. 
Domain 
. 

Categories '
.' (
Entities( 0
{ 
public		 

class		 
Category		 
{

 
public 
int 
Id 
{ 
get 
; 
set  
;  !
}" #
public 
int 
ParentId 
{ 
get !
;! "
private# *
set+ .
;. /
}0 1
public 
string 
Title 
{ 
get !
;! "
private# *
set+ .
;. /
}0 1
public 
string 
Description !
{" #
get$ '
;' (
private) 0
set1 4
;4 5
}6 7
public 
IEnumerable 
< 
Product_Service *
>* +
ProductServices, ;
{< =
get> A
;A B
setC F
;F G
}H I
public 
Category 
( 
string 
title $
,$ %
string& ,
description- 8
,8 9
int: =
parentid> F
)F G
{ 	
ParentId 
= 
parentid 
;  
Title 
= 
title 
; 
Description 
= 
description %
;% &
} 	
	protected 
Category 
( 
) 
{ 	
Description 
= 
null 
; 
ParentId 
= 
$num 
; 
Title 
= 
null 
; 
ProductServices 
= 
null "
!" #
;# $
}   	
public"" 
void"" 
ChangeTitle"" 
(""  
string""  &
title""' ,
)"", -
{## 	
Title$$ 
=$$ 
title$$ 
;$$ 
}%% 	
public&& 
void&& 
ChangeDescription&& %
(&&% &
string&&& ,
description&&- 8
)&&8 9
{'' 	
Description(( 
=(( 
description(( %
;((% &
})) 	
public** 
void** 
ChangeParentId** "
(**" #
int**# &
parentid**' /
)**/ 0
{++ 	
ParentId,, 
=,, 
parentid,, 
;,,  
}-- 	
}.. 
}// •
|C:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\src\Domain\Categories\Repositories\ICategoryRepository.cs
	namespace 	
EmprendeUCR
 
. 
Domain 
. 

Categories '
.' (
Repositories( 4
{ 
public 

	interface 
ICategoryRepository (
{		 
Task

 
	SaveAsync

 
(

 
Category

 
category

  (
)

( )
;

) *
Task 
< 
IEnumerable 
< 
Category !
>! "
>" #
GetAllAsync$ /
(/ 0
)0 1
;1 2
Task 
< 
Category 
? 
> 
GetByIdAsync $
($ %
int% (
id) +
)+ ,
;, -
} 
} æ
dC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\src\Domain\Chats\Entities\Chat.cs
	namespace 	
EmprendeUCR
 
. 
Domain 
. 
Chats "
." #
Entities# +
{ 
public 

partial 
class 
Chat 
{		 
[

 	
Key

	 
]

 
public 
int 
ID 
{ 
get 
; 
private $
set% (
;( )
}* +
public 
Chat 
( 
int 
id 
) 
{ 	
ID 
= 
id 
; 
} 	
public 
Chat 
( 
) 
{ 	
ID 
= 
$num 
; 
} 	
} 
} ◊
gC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\src\Domain\Chats\Entities\Message.cs
	namespace		 	
EmprendeUCR		
 
.		 
Domain		 
.		 
Chats		 "
.		" #
Entities		# +
{

 
public 

partial 
class 
Message  
{ 
public 
Chat 
Chat 
; 
[ 	
Key	 
] 
public 
int 
Chat_ID 
{ 
get  
;  !
private" )
set* -
;- .
}/ 0
[ 	
Key	 
] 
public 
DateTimeOffset 
? 
Message_Date +
{, -
get. 1
;1 2
private3 :
set; >
;> ?
}@ A
public 
string 
? 
Writer_User_Email (
{) *
get+ .
;. /
private0 7
set8 ;
;; <
}= >
public 
string 
? 
Reader_User_Email (
{) *
get+ .
;. /
private0 7
set8 ;
;; <
}= >
public 
string 
? 
Content 
{  
get! $
;$ %
private& -
set. 1
;1 2
}3 4
public 
int 
Seen 
{ 
get 
; 
private &
set' *
;* +
}, -
public 
Message 
( 
int 
chatID !
,! "
string# )
writerUserEmail* 9
,9 :
string; A
readerUserEmailB Q
,Q R
stringS Y
contentZ a
)a b
{ 	
Chat_ID 
= 
chatID 
; 
Message_Date 
= 
DateTimeOffset )
.) *
Now* -
;- .
Writer_User_Email 
= 
writerUserEmail  /
;/ 0
Reader_User_Email 
= 
readerUserEmail  /
;/ 0
Content 
= 
content 
; 
Seen 
= 
$num 
; 
} 	
public   
Message   
(   
)   
{!! 	
Chat_ID"" 
="" 
$num"" 
;"" 
Message_Date## 
=## 
null## 
;##  
Writer_User_Email$$ 
=$$ 
null$$  $
;$$$ %
Reader_User_Email%% 
=%% 
null%%  $
;%%$ %
Content&& 
=&& 
null&& 
;&& 
Seen'' 
='' 
$num'' 
;'' 
}(( 	
public)) 
void)) 

AssignChat)) 
()) 
Chat)) #
chat))$ (
)))( )
{** 	
Chat++ 
=++ 
chat++ 
;++ 
},, 	
}-- 
}.. ‹
lC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\src\Domain\Chats\Entities\UtilizesChat.cs
	namespace 	
EmprendeUCR
 
. 
Domain 
. 
Chats "
." #
Entities# +
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
UtilizesChat

 %
{ 
public 
Chat 
Chat 
; 
[ 	
Key	 
] 
public 
int 
Chat_ID 
{ 
get  
;  !
private" )
set* -
;- .
}/ 0
[ 	
Key	 
] 
public 
string 
? 

User_Email !
{" #
get$ '
;' (
private) 0
set1 4
;4 5
}6 7
public 
UtilizesChat 
( 
int 
chatID  &
,& '
string( .
	userEmail/ 8
)8 9
{ 	
Chat_ID 
= 
chatID 
; 

User_Email 
= 
	userEmail "
;" #
} 	
public 
UtilizesChat 
( 
) 
{ 	
Chat_ID 
= 
$num 
; 

User_Email 
= 
null 
; 
} 	
public 
void 

AssignChat 
( 
Chat #
chat$ (
)( )
{ 	
Chat 
= 
chat 
; 
} 	
} 
}   ñ
sC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\src\Domain\Chats\Repositories\IChatRepository.cs
	namespace 	
EmprendeUCR
 
. 
Domain 
. 
Chats "
." #
Repositories# /
{ 
public 

	interface 
IChatRepository $
{ 
Task		 
	SaveAsync		 
(		 
Chat		 
chat		  
)		  !
;		! "
Task

 
<

 
IEnumerable

 
<

 
Chat

 
>

 
>

 
GetAllAsync

  +
(

+ ,
)

, -
;

- .
Task 
< 
Chat 
? 
> 
GetByIdAsync  
(  !
int! $
id% '
)' (
;( )
Task 
< 
Chat 
? 
> 
AddChat 
( 
) 
; 
} 
} ◊
vC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\src\Domain\Chats\Repositories\IMessageRepository.cs
	namespace 	
EmprendeUCR
 
. 
Domain 
. 
Chats "
." #
Repositories# /
{ 
public 

	interface 
IMessageRepository '
{		 
Task

 
	SaveAsync

 
(

 
Message

 
message

 &
)

& '
;

' (
Task 
< 
IEnumerable 
< 
Message  
>  !
>! "
GetAllAsync# .
(. /
)/ 0
;0 1
Task 
< 
Message 
? 
> 
GetByIdAsync #
(# $
int$ '
chatID( .
,. /
DateTimeOffset0 >
date? C
)C D
;D E
Task 

AddMessage 
( 
Message 
message  '
)' (
;( )
} 
} Å	
{C:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\src\Domain\Chats\Repositories\IUtilizesChatRepository.cs
	namespace 	
EmprendeUCR
 
. 
Domain 
. 
Chats "
." #
Repositories# /
{ 
public 

	interface #
IUtilizesChatRepository ,
{		 
Task

 
	SaveAsync

 
(

 
UtilizesChat

 #
utilizesChat

$ 0
)

0 1
;

1 2
Task 
< 
IEnumerable 
< 
UtilizesChat %
>% &
>& '
GetAllAsync( 3
(3 4
)4 5
;5 6
Task 
< 
UtilizesChat 
? 
> 
GetByIdAsync (
(( )
int) ,
chatID- 3
,3 4
string5 ;
	userEmail< E
)E F
;F G
Task 
AddUtilizesChat 
( 
UtilizesChat )
utilizesChat* 6
)6 7
;7 8
} 
} ∫

âC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\src\Domain\ConfirmAdminContext\Repositories\IConfirmAdminRepository.cs
	namespace 	
EmprendeUCR
 
. 
Domain 
. 
ConfirmAdminContext 0
.0 1
Repositories1 =
{		 
public

 

	interface

 #
IConfirmAdminRepository

 ,
{ 
IList 
<  
ActiveAdministrators "
>" #!
getAdministratorsVoid$ 9
(9 :
): ;
;; <
Task 
< 
User 
> 
getAdminUser 
(  
string  &
email' ,
), -
;- .
Task 
< 
bool 
> 
acceptAdmin 
(  
ActiveAdministrators 3
admin4 9
)9 :
;: ;
Task 
< 
bool 
> 
declineAdmin 
(   
ActiveAdministrators  4
admin5 :
): ;
;; <
Task 
< 
bool 
> 

deteleUser 
( 
string $
email% *
)* +
;+ ,
} 
} ø

wC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\src\Domain\Core\CoreEntities\ActiveAdministrators.cs
	namespace 	
EmprendeUCR
 
. 
Domain 
. 
Core !
.! "
CoreEntities" .
{ 
public 

class  
ActiveAdministrators %
{ 
public 
string 
Email 
{ 
get !
;! "
set# &
;& '
}( )
public 
DateTime 
Creation_Date %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
public		 
bool		 
Response		 
{		 
get		 "
;		" #
set		$ '
;		' (
}		) *
public

 
bool

 
Confirm

 
{

 
get

 !
;

! "
set

# &
;

& '
}

( )
public 
bool 
Active 
{ 
get  
;  !
set" %
;% &
}' (
public 
DateTime 
Response_Date %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
} 
} •
pC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\src\Domain\Core\CoreEntities\Administrator.cs
	namespace 	
EmprendeUCR
 
. 
Domain 
. 
Core !
.! "
CoreEntities" .
{ 
public 

class 
Administrator 
{ 
public 
string 

User_Email  
{! "
get# &
;& '
set( +
;+ ,
}- .
} 
} ˆ
oC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\src\Domain\Core\CoreEntities\BannedAcount.cs
	namespace 	
EmprendeUCR
 
. 
Domain 
. 
Core !
.! "
CoreEntities" .
{ 
public		 

class		 
BannedAcount		 
{

 
public 
string 
	UserEmail 
{  !
get! $
;$ %
set& )
;) *
}* +
public 
DateTime 
	BeginDate !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
DateTime 

FinishDate "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
int 
Type 
{ 
get 
; 
set "
;" #
}$ %
} 
} Í
iC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\src\Domain\Core\CoreEntities\Canton.cs
	namespace 	
EmprendeUCR
 
. 
Domain 
. 
Core !
.! "
CoreEntities" .
{ 
public 

class 
Canton 
{ 
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
public 
string 
Province_Name #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 
Canton 
( 
string 
name !
,! "
string# )
province* 2
)2 3
{		 	
Name

 
=

 
name

 
;

 
Province_Name 
= 
province $
;$ %
} 	
public 
Canton 
( 
) 
{ 
} 	
} 
} 
kC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\src\Domain\Core\CoreEntities\Category.cs
	namespace 	
EmprendeUCR
 
. 
Domain 
. 
Core !
.! "
CoreEntities" .
{ 
public 

class 
Category 
{ 
public 
int 
Id 
{ 
get 
; 
set  
;  !
}" #
public 
string 
Title 
{ 
get !
;! "
set# &
;& '
}( )
public		 
int		 
?		 
ParentId		 
{		 
get		 "
;		" #
set		$ '
;		' (
}		) *
public 
string 
Description !
{" #
get$ '
;' (
set) ,
;, -
}. /
} 
} ó
iC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\src\Domain\Core\CoreEntities\Client.cs
	namespace 	
EmprendeUCR
 
. 
Domain 
. 
Core !
.! "
CoreEntities" .
{ 
public 

class 
Client 
{ 
public 
string 

User_Email  
{! "
get# &
;& '
set( +
;+ ,
}- .
} 
} Ω
nC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\src\Domain\Core\CoreEntities\Credentials.cs
	namespace 	
EmprendeUCR
 
. 
Domain 
. 
Core !
.! "
CoreEntities" .
{ 
public 

class 
Credentials 
{ 
public 
string 

User_Email  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
string 
Password 
{  
get! $
;$ %
set& )
;) *
}+ ,
} 
} ’
kC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\src\Domain\Core\CoreEntities\District.cs
	namespace 	
EmprendeUCR
 
. 
Domain 
. 
Core !
.! "
CoreEntities" .
{ 
public 

class 
District 
{ 
public 
string 
Name 
{ 
get 
; 
set "
;" #
}$ %
public 
string 
Province_Name  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
string 
Canton_Name 
{  
get! $
;$ %
set& )
;) *
}+ ,
} 
}		 Ï
tC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\src\Domain\Core\CoreEntities\EmailConfirmation.cs
	namespace 	
EmprendeUCR
 
. 
Domain 
. 
Core !
.! "
CoreEntities" .
{ 
public 

class 
EmailConfirmation "
{ 
public 
string 
Email 
{ 
get !
;! "
set# &
;& '
}( )
public 
string 
	Hash_Code 
{  !
get" %
;% &
set' *
;* +
}, -
public		 
DateTime		 
Creation_Date		 %
{		& '
get		( +
;		+ ,
set		- 0
;		0 1
}		2 3
public

 
DateTime

 
Expiration_Date

 '
{

( )
get

* -
;

- .
set

/ 2
;

2 3
}

4 5
public 
EmailConfirmation  
(  !
string! '
email( -
,- .
string/ 5
hash6 :
,: ;
DateTime< D
creationE M
,M N
DateTimeO W

expirationX b
)b c
{ 	
Email 
= 
email 
; 
	Hash_Code 
= 
hash 
; 
Creation_Date 
= 
creation $
;$ %
Expiration_Date 
= 

expiration (
;( )
} 	
public 
EmailConfirmation  
(  !
)! "
{ 	
} 	
} 
} ã
oC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\src\Domain\Core\CoreEntities\Entrepreneur.cs
	namespace 	
EmprendeUCR
 
. 
Domain 
. 
Core !
.! "
CoreEntities" .
{ 
public 

class 
Entrepreneur 
{ 
public		 
string		 

User_Email		  
{		! "
get		# &
;		& '
set		( +
;		+ ,
}		- .
public

 
string

 
Presentation

 "
{

# $
get

% (
;

( )
set

* -
;

- .
}

/ 0
private 
readonly 
List 
< 
HasPaymentInfo ,
>, -
_hasPaymentInfoList. A
;A B
public 
IReadOnlyCollection "
<" #
HasPaymentInfo# 1
>1 2
HasPaymentInfoList3 E
;E F
} 
public 

class (
RegisterValidatorEntrepeneur -
:. /
AbstractValidator0 A
<A B
EntrepreneurB N
>N O
{ 
public (
RegisterValidatorEntrepeneur +
(+ ,
), -
{ 	
RuleFor 
( 
x 
=> 
x 
. 
Presentation '
)' (
. 
NotEmpty 
( 
) 
. 
WithMessage '
(' (
$str( D
)D E
;E F
} 	
} 
} –
mC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\src\Domain\Core\CoreEntities\Is_Able_To.cs
	namespace 	
EmprendeUCR
 
. 
Domain 
. 
Core !
.! "
CoreEntities" .
{ 
public 
class 

Is_Able_To 
{ 
public 
string	 
Email 
{ 
get 
; 
set  
;  !
}" #
public 
int	 
Role_Id 
{ 
get 
; 
set 
;  
}! "
public 
int	 
Permission_Id 
{ 
get  
;  !
set" %
;% &
}' (
} 
}		 ˇ
kC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\src\Domain\Core\CoreEntities\Is_Offer.cs
	namespace 	
EmprendeUCR
 
. 
Domain 
. 
Core !
.! "
CoreEntities" .
{ 
public 

class 
Is_Offer 
{ 
public 
int 
Offer_ID 
{ 
get !
;! "
set# &
;& '
}( )
public

	 
int

 
Code_ID

 
{

 
get

 !
;

! "
set

# &
;

& '
}

( )
public 
string 

User_Email  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
int 
Category_ID 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
int 
Amount 
{ 
get 
;  
set! $
;$ %
}& '
} 
} Ì	
hC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\src\Domain\Core\CoreEntities\Likes.cs
	namespace 	
EmprendeUCR
 
. 
Domain 
. 
Core !
.! "
CoreEntities" .
{ 
public 

class 
Likes 
{ 
public 
string 
Members_Email #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 
int 
Category_Id 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
Likes 
( 
string 
memberEmail '
,' (
int) ,

categoryId- 7
)7 8
{		 	
Members_Email

 
=

 
memberEmail

 '
;

' (
Category_Id 
= 

categoryId $
;$ %
} 	
public 
Likes 
( 
) 
{ 	
Category_Id 
= 
int 
. 
MinValue &
;& '
} 	
} 
} ∑
gC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\src\Domain\Core\CoreEntities\Mail.cs
	namespace 	
EmprendeUCR
 
. 
Domain 
. 
Core !
.! "
CoreEntities" .
{ 
public 

class 
Mail 
{ 
public 
string 

FromMailId  
{! "
get# &
;& '
set( +
;+ ,
}- .
=/ 0
$str1 I
;I J
public 
string 
FromMailIdPassword (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
=7 8
$str9 F
;F G
public		 
List		 
<		 
string		 
>		 
	ToMailIds		 %
{		& '
get		( +
;		+ ,
set		- 0
;		0 1
}		2 3
=		4 5
new		6 9
List		: >
<		> ?
string		? E
>		E F
(		F G
)		G H
;		H I
public

 
string

 
Subject

 
{

 
get

  #
;

# $
set

% (
;

( )
}

* +
=

, -
$str

. 0
;

0 1
public 
string 
Body 
{ 
get  
;  !
set" %
;% &
}' (
=) *
$str+ -
;- .
public 
bool 

IsBodyHtml 
{  
get! $
;$ %
set& )
;) *
}+ ,
=- .
true/ 3
;3 4
public 
List 
< 
string 
> 
Attachements (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
=7 8
new9 <
List= A
<A B
stringB H
>H I
(I J
)J K
;K L
} 
} Ú
jC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\src\Domain\Core\CoreEntities\Members.cs
	namespace 	
EmprendeUCR
 
. 
Domain 
. 
Core !
.! "
CoreEntities" .
{ 
public 

class 
Members 
{ 
public 
string 

User_Email  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
int 
Score 
{ 
get 
; 
set  #
;# $
}% &
public		 
double		 
Lat		 
{		 
get		 
;		  
set		! $
;		$ %
}		& '
public

 
double

 
Long
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
public 
string 
	Direction 
{  !
get" %
;% &
set' *
;* +
}, -
} 
public 

class &
RegisterValidatorDirection +
:, -
AbstractValidator. ?
<? @
Members@ G
>G H
{ 
public &
RegisterValidatorDirection )
() *
)* +
{ 	
RuleFor 
( 
x 
=> 
x 
. 
	Direction $
)$ %
. 
NotEmpty 
( 
) 
. 
WithMessage '
(' (
$str( E
)E F
;F G
} 	
} 
} ë	
hC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\src\Domain\Core\CoreEntities\Offer.cs
	namespace 	
EmprendeUCR
 
. 
Domain 
. 
Core !
.! "
CoreEntities" .
{ 
public 

class 
Offer 
{ 
public 
int 
Offer_ID 
{ 
get !
;! "
set# &
;& '
}( )
public 
DateTime 
Initial_Date $
{% &
get' *
;* +
set, /
;/ 0
}1 2
public 
DateTime 
Expire_Date #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public		 
string		 
Offer_Description		 '
{		( )
get		* -
;		- .
set		/ 2
;		2 3
}		4 5
public

 
int

 
Discount

 
{

 
get

 !
;

! "
set

# &
;

& '
}

( )
} 
} Œ
mC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\src\Domain\Core\CoreEntities\Permission.cs
	namespace 	
EmprendeUCR
 
. 
Domain 
. 
Core !
.! "
CoreEntities" .
{ 
public 
class 

Permission 
{ 
public 
int	 
Id 
{ 
get 
; 
set 
; 
} 
public 
int	 
Role_Id 
{ 
get 
; 
set 
;  
}! "
public		 
string			 
Description		 
{		 
get		 !
;		! "
set		# &
;		& '
}		( )
public 

Permission
 
( 
int 
id 
, 
int  
roleId! '
,' (
string) /
description0 ;
); <
{ 	
Id 
= 
id 

;
 
Role_Id 

= 
roleId 
; 
Description 
= 
description 
; 
} 	
public 

Permission	 
( 
) 
{ 
Id 
= 
int 
. 
MinValue 
; 
Role_Id 

= 
int 
. 
MinValue 
; 
} 
} 
} Ê
iC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\src\Domain\Core\CoreEntities\Phones.cs
	namespace 	
EmprendeUCR
 
. 
Domain 
. 
Core !
.! "
CoreEntities" .
{ 
public 

class 
Phones 
{ 
public 
string 

User_Email  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
string 
Phone_Number "
{# $
get% (
;( )
set* -
;- .
}/ 0
}		 
public 

class #
RegisterValidatorPhones (
:) *
AbstractValidator+ <
<< =
Phones= C
>C D
{ 
public #
RegisterValidatorPhones &
(& '
)' (
{ 	
RuleFor 
( 
x 
=> 
x 
. 
Phone_Number '
)' (
. 
Length 
( 
$num 
) 
. 
WithMessage &
(& '
$str' Z
)Z [
. 
Matches 
( 
$str #
)# $
.$ %
WithMessage% 0
(0 1
$str1 c
)c d
;d e
} 	
} 
} ˝
jC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\src\Domain\Core\CoreEntities\Product.cs
	namespace 	
EmprendeUCR
 
. 
Domain 
. 
Core !
.! "
CoreEntities" .
{ 
public 

class 
Product 
{ 
const 
int 
maxPrice 
= 
$num '
;' (
public 
int 
Code_ID 
{ 
get  
;  !
set" %
;% &
}' (
public 
string 
Product_Name "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
string 
Product_Description )
{* +
get, /
;/ 0
set1 4
;4 5
}6 7
public		 
int		 
Price		 
{		 
get		 
;		 
set		  #
;		# $
}		% &
public

 
string

 
Entrepreneur_Email

 (
{

) *
get

+ .
;

. /
set

0 3
;

3 4
}

5 6
public 
int 
Category_ID 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
bool 
setPrice 
( 
int  
price! &
)& '
{ 	
bool 
response 
= 
false !
;! "
if 
( 
price 
> 
$num 
&& 
price "
<=# %
maxPrice& .
). /
{ 
response 
= 
true 
;  
this 
. 
Price 
= 
price "
;" #
} 
return 
response 
; 
} 	
public 
int 
getPrice 
( 
) 
{ 	
return 
this 
. 
Price 
; 
} 	
public   
bool   
	setCodeID   
(   
int   !
code_id  " )
)  ) *
{!! 	
bool"" 
response"" 
="" 
false"" !
;""! "
if## 
(## 
code_id## 
>=## 
$num## 
)## 
{$$ 
response'' 
='' 
true'' 
;''  
this(( 
.(( 
Code_ID(( 
=(( 
code_id(( &
;((& '
})) 
return** 
response** 
;** 
},, 	
public.. 
int.. 
	getCodeID.. 
(.. 
).. 
{// 	
return00 
this00 
.00 
Code_ID00 
;00  
}11 	
public44 
bool44 
setCategory44 
(44  
int44  #
cat_id44$ *
)44* +
{55 	
bool66 
response66 
=66 
false66 !
;66! "
if77 
(77 
cat_id77 
>=77 
$num77 
)77 
{77 
response:: 
=:: 
true:: 
;::  
this;; 
.;; 
Category_ID;;  
=;;! "
cat_id;;# )
;;;) *
}<< 
return== 
response== 
;== 
}?? 	
publicAA 
intAA 
getCategoryAA 
(AA 
)AA  
{BB 	
returnCC 
thisCC 
.CC 
Category_IDCC #
;CC# $
}DD 	
}KK 
}MM Ü

pC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\src\Domain\Core\CoreEntities\ProductPhotos.cs
	namespace 	
EmprendeUCR
 
. 
Domain 
. 
Core !
.! "
CoreEntities" .
{ 
public		 

class		 
ProductPhotos		 
{

 
public 
int 
Product_Photos_ID $
{% &
get' *
;* +
set, /
;/ 0
}1 2
public 
int 
Code_ID 
{ 
get  
;  !
set" %
;% &
}' (
public 
string 
Entrepreneur_Email (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
public 
int 
Category_ID 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
byte 
[ 
] 
Photos 
{ 
get "
;" #
set$ '
;' (
}) *
public 
Product 
product 
; 
} 
} Å
qC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\src\Domain\Core\CoreEntities\ProductService.cs
	namespace 	
EmprendeUCR
 
. 
Domain 
. 
Core !
.! "
CoreEntities" .
{ 
public		 

class		 
ProductService		 
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
public 
string 
Entrepreneur_Email (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
public 
int 
Category_ID 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
Byte 
Availability  
{! "
get# &
;& '
set( +
;+ ,
}- .
} 
} ï
kC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\src\Domain\Core\CoreEntities\Province.cs
	namespace 	
EmprendeUCR
 
. 
Domain 
. 
Core !
.! "
CoreEntities" .
{ 
public 

class 
Province 
{ 
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
} 
} †
gC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\src\Domain\Core\CoreEntities\Role.cs
	namespace 	
EmprendeUCR
 
. 
Domain 
. 
Core !
.! "
CoreEntities" .
{ 
public 
class 
Role 
{ 
public 
int	 
Id 
{ 
get 
; 
set 
; 
} 
public 
string	 
Type 
{ 
get 
; 
set 
;  
}! "
} 
} ô
jC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\src\Domain\Core\CoreEntities\Service.cs
	namespace 	
EmprendeUCR
 
. 
Domain 
. 
Core !
.! "
CoreEntities" .
{ 
public		 

class		 
Service		 
{

 
const 
int 
maxPrice 
= 
$num '
;' (
public 
int 
Code_ID 
{ 
get  
;  !
set" %
;% &
}' (
public 
string 
Entrepreneur_Email (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
public 
int 
Category_ID 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
string 
Service_Name "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
string 
Service_Description )
{* +
get, /
;/ 0
set1 4
;4 5
}6 7
public 
int 
Price_per_hour !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
bool 
setPrice 
( 
int  
price! &
)& '
{ 	
bool 
response 
= 
false !
;! "
if 
( 
price 
>= 
$num 
&& 
price #
<=$ &
maxPrice' /
)/ 0
{ 
response 
= 
true 
;  
this 
. 
Price_per_hour #
=$ %
price& +
;+ ,
} 
return 
response 
; 
} 	
public 
int 
getPrice 
( 
) 
{   	
return!! 
this!! 
.!! 
Price_per_hour!! &
;!!& '
}"" 	
public&& 
bool&& 
	setCodeID&& 
(&& 
int&& !
code_id&&" )
)&&) *
{'' 	
bool(( 
response(( 
=(( 
false(( !
;((! "
if)) 
()) 
code_id)) 
>=)) 
$num)) 
))) 
{** 
response-- 
=-- 
true-- 
;--  
this.. 
... 
Code_ID.. 
=.. 
code_id.. &
;..& '
}// 
return00 
response00 
;00 
}22 	
public44 
int44 
	getCodeID44 
(44 
)44 
{55 	
return66 
this66 
.66 
Code_ID66 
;66  
}77 	
public;; 
bool;; 
setCategory;; 
(;;  
int;;  #
cat_id;;$ *
);;* +
{<< 	
bool== 
response== 
=== 
false== !
;==! "
if>> 
(>> 
cat_id>> 
>=>> 
$num>> 
)>> 
{?? 
responseBB 
=BB 
trueBB 
;BB  
thisCC 
.CC 
Category_IDCC  
=CC! "
cat_idCC# )
;CC) *
}DD 
returnEE 
responseEE 
;EE 
}GG 	
publicII 
intII 
getCategoryII 
(II 
)II  
{JJ 	
returnKK 
thisKK 
.KK 
Category_IDKK #
;KK# $
}LL 	
}OO 
}PP ª	
qC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\src\Domain\Core\CoreEntities\Service_Photos.cs
	namespace 	
EmprendeUCR
 
. 
Domain 
. 
Core !
.! "
CoreEntities" .
{ 
public 

class 
Service_Photos 
{ 
public 
int 
Service_Photos_ID $
{% &
get' *
;* +
set, /
;/ 0
}1 2
public		 
int		 
Code_ID		 
{		 
get		  
;		  !
set		" %
;		% &
}		' (
public 
byte 
[ 
] 
Photos 
{ 
get "
;" #
set$ '
;' (
}) *
public 
string 
Entrepreneur_Email (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
public 
int 
Category_ID 
{  
get! $
;$ %
set& )
;) *
}+ ,
} 
} û
oC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\src\Domain\Core\CoreEntities\ShoppingCart.cs
	namespace 	
EmprendeUCR
 
. 
Domain 
. 
Core !
.! "
CoreEntities" .
{ 
public		 

class		 
ShoppingCart		 
{

 
public 
string 
Email 
{ 
get !
;! "
set# &
;& '
}( )
} 
} ˛
rC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\src\Domain\Core\CoreEntities\ShoppingCartHas.cs
	namespace 	
EmprendeUCR
 
. 
Domain 
. 
Core !
.! "
CoreEntities" .
{ 
public		 

class		 
ShoppingCartHas		  
{

 
public 
string 
Email 
{ 
get !
;! "
set# &
;& '
}( )
public 
int 
Code_ID 
{ 
get  
;  !
set" %
;% &
}' (
public 
string 
Entrepreneur_Email (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
public 
int 
Category_ID 
{  
get! $
;$ %
set& )
;) *
}+ ,
} 
} ‡)
gC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\src\Domain\Core\CoreEntities\User.cs
	namespace 	
EmprendeUCR
 
. 
Domain 
. 
Core !
.! "
CoreEntities" .
{ 
public 

class 
User 
{ 
public 
string	 
Email 
{ 
get 
; 
set  
;  !
}" #
public		 
string			 
Name		 
{		 
get		 
;		 
set		 
;		  
}		! "
public

 
string

	 
F_Last_Name

 
{

 
get

 !
;

! "
set

# &
;

& '
}

( )
public 
string	 
S_Last_Name 
{ 
get !
;! "
set# &
;& '
}( )
public 
byte	 
[ 
] 
Photo 
{ 
get 
; 
set  
;  !
}" #
public 
DateTime	 

Birth_Date 
{ 
get "
;" #
set$ '
;' (
}) *
=+ ,
DateTime- 5
.5 6
Now6 9
;9 :
public 
string	 
Province_Name 
{ 
get  #
;# $
set% (
;( )
}* +
=, -
$str. 0
;0 1
public 
string	 
Canton_Name 
{ 
get !
;! "
set# &
;& '
}( )
=* +
$str, .
;. /
public 
string	 
District_Name 
{ 
get  #
;# $
set% (
;( )
}* +
=, -
$str. 0
;0 1
public 
bool	 
Email_Confirmation  
{! "
get# &
;& '
set( +
;+ ,
}- .
=/ 0
false1 6
;6 7
} 
public 

class 
RegisterValidator "
:# $
AbstractValidator% 6
<6 7
User7 ;
>; <
{ 
public 
RegisterValidator  
(  !
)! "
{ 	
RuleFor 
( 
x 
=> 
x 
. 
Name 
)  
. 
NotEmpty 
( 
) 
. 
WithMessage '
(' (
$str( >
)> ?
. 
Matches 
( 
$str '
)' (
.( )
WithMessage) 4
(4 5
$str5 Z
)Z [
;[ \
RuleFor 
( 
x 
=> 
x 
. 
F_Last_Name &
)& '
. 
NotEmpty 
( 
) 
. 
WithMessage '
(' (
$str( G
)G H
.   
Matches   
(   
$str   '
)  ' (
.  ( )
WithMessage  ) 4
(  4 5
$str  5 c
)  c d
;  d e
RuleFor## 
(## 
x## 
=>## 
x## 
.## 
S_Last_Name## &
)##& '
.$$ 
NotEmpty$$ 
($$ 
)$$ 
.$$ 
WithMessage$$ '
($$' (
$str$$( H
)$$H I
.%% 
Matches%% 
(%% 
$str%% '
)%%' (
.%%( )
WithMessage%%) 4
(%%4 5
$str%%5 d
)%%d e
;%%e f
RuleFor(( 
((( 
x(( 
=>(( 
x(( 
.(( 

Birth_Date(( %
)((% &
.)) 
Must)) 
()) 
ValidAge)) 
))) 
.))  
WithMessage))  +
())+ ,
$str)), Q
)))Q R
;))R S
}++ 	
	protected-- 
bool-- 
ValidAge-- 
(--  
DateTime--  (
date--) -
)--- .
{.. 	
int// 
currentYear// 
=// 
DateTime// &
.//& '
Now//' *
.//* +
Year//+ /
;/// 0
int00 
	birthYear00 
=00 
date00  
.00  !
Year00! %
;00% &
int11 
age11 
=11 
currentYear11 !
-11" #
	birthYear11$ -
;11- .
if66 
(66 
	birthYear66 
<=66 
currentYear66 (
&&66) +
	birthYear66, 5
>666 7
(668 9
currentYear669 D
-66E F
$num66G J
)66J K
&&66L N
age66O R
>=66S U
$num66V X
)66X Y
{77 
return88 
true88 
;88 
}99 
return;; 
false;; 
;;; 
}<< 	
}== 
}>> ∏
lC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\src\Domain\Core\Entities\AggregateRoot.cs
	namespace 	
EmprendeUCR
 
. 
Domain 
. 
Core !
.! "
Entities" *
{ 
public 

abstract 
class 
AggregateRoot '
:( )
Entity* 0
{ 
} 
} ⁄
eC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\src\Domain\Core\Entities\Entity.cs
	namespace 	
EmprendeUCR
 
. 
Domain 
. 
Core !
.! "
Entities" *
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
} ¶
pC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\src\Domain\Core\Exceptions\DomainException.cs
	namespace 	
EmprendeUCR
 
. 
Domain 
. 
Core !
.! "

Exceptions" ,
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
} –
|C:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\src\Domain\Core\Exceptions\InvalidValueObjectException.cs
	namespace 	
EmprendeUCR
 
. 
Domain 
. 
Core !
.! "

Exceptions" ,
{ 
public		 

class		 '
InvalidValueObjectException		 ,
:		- .
DomainException		/ >
{

 
public '
InvalidValueObjectException *
(* +
string+ 1
?1 2
message3 :
): ;
:< =
base> B
(B C
messageC J
)J K
{ 	
} 	
} 
} ñ 
rC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\src\Domain\Core\Helpers\ValidationExtensions.cs
	namespace 	
EmprendeUCR
 
. 
Domain 
. 
Core !
.! "
Helpers" )
{ 
public 

static 
class  
ValidationExtensions ,
{ 
public 
static 
TSuccess 
Success &
<& '
TFail' ,
,, -
TSuccess. 6
>6 7
(7 8
this8 <

Validation= G
<G H
TFailH M
,M N
TSuccessO W
>W X
resultY _
)_ `
where		 
TFail		 
:		 
notnull		 
where

 
TSuccess

 
:

 
notnull

  
{ 	
if 
( 
result 
. 
IsFail 
) 
throw 
new %
InvalidOperationException 3
(3 4
$str4 C
)C D
;D E
return 
result 
. 
SuccessToList '
(' (
)( )
.) *
First* /
(/ 0
)0 1
;1 2
} 	
public 
static 
TFail 
Fail  
<  !
TFail! &
,& '
TSuccess( 0
>0 1
(1 2
this2 6

Validation7 A
<A B
TFailB G
,G H
TSuccessI Q
>Q R
resultS Y
)Y Z
where 
TFail 
: 
notnull 
where 
TSuccess 
: 
notnull  
{ 	
if 
( 
result 
. 
	IsSuccess  
)  !
throw 
new %
InvalidOperationException 3
(3 4
$str4 C
)C D
;D E
return 
result 
. 

FailToList $
($ %
)% &
.& '
First' ,
(, -
)- .
;. /
} 	
public 
static 
TSuccess 
Validate '
<' (
TFail( -
,- .
TSuccess/ 7
>7 8
(8 9
this9 =

Validation> H
<H I
TFailI N
,N O
TSuccessP X
>X Y
resultZ `
)` a
where 
TFail 
: 
notnull 
where 
TSuccess 
: 
notnull  
{ 	
if 
( 
result 
. 
IsFail 
) 
throw 
new '
InvalidValueObjectException 5
(5 6
result6 <
.< =
Fail= A
(A B
)B C
.C D
ToStringD L
(L M
)M N
)N O
;O P
return 
result 
. 
Success !
(! "
)" #
;# $
} 	
public   
static   
TFail   
?   
FailOrDefault   *
<  * +
TFail  + 0
,  0 1
TSuccess  2 :
>  : ;
(  ; <
this  < @

Validation  A K
<  K L
TFail  L Q
,  Q R
TSuccess  S [
>  [ \
result  ] c
)  c d
where!! 
TFail!! 
:!! 
notnull!! 
where"" 
TSuccess"" 
:"" 
notnull""  
{## 	
return$$ 
result$$ 
.$$ 
IsFail$$  
?$$! "
result$$# )
.$$) *
Fail$$* .
($$. /
)$$/ 0
:$$1 2
default$$3 :
;$$: ;
}%% 	
}&& 
}'' â
nC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\src\Domain\Core\Repositories\IRepository.cs
	namespace 	
EmprendeUCR
 
. 
Domain 
. 
Core !
.! "
Repositories" .
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
 ¸	
nC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\src\Domain\Core\Repositories\IUnitOfWork.cs
	namespace 	
EmprendeUCR
 
. 
Domain 
. 
Core !
.! "
Repositories" .
{ 
public 

	interface 
IUnitOfWork  
:! "
IDisposable# .
{ 
Task		 !
BeginTransactionAsync		 "
(		" #
)		# $
;		$ %
Task

 "
CommitTransactionAsync

 #
(

# $
)

$ %
;

% &
void 
RollbackTransaction  
(  !
)! "
;" #
Task 
< 
int 
> 
SaveChangesAsync "
(" #
CancellationToken# 4
cancellationToken5 F
=G H
defaultI P
(P Q
CancellationTokenQ b
)b c
)c d
;d e
Task 
SaveEntitiesAsync 
( 
CancellationToken 0
cancellationToken1 B
=C D
defaultE L
(L M
CancellationTokenM ^
)^ _
)_ `
;` a
} 
} ô
qC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\src\Domain\Core\ValueObjects\RequiredString.cs
	namespace 	
EmprendeUCR
 
. 
Domain 
. 
Core !
.! "
ValueObjects" .
{ 
public

 
class

 
RequiredString

 
:

 
ValueObject

 )
{ 
public 
const 
int 
	MaxLength "
=# $
$num% )
;) *
public 
string 
Value 
{ 
get !
;! "
}# $
private 
RequiredString 
( 
string %
value& +
)+ ,
{ 	
Value 
= 
value 
; 
} 	
private 
RequiredString 
( 
)  
{ 	
Value 
= 
null 
! 
; 
} 	
public 
static 

Validation  
<  !
ValidationError! 0
,0 1
RequiredString2 @
>@ A
	TryCreate 
( 
string 
? 
value 
)  
{ 	
if 
( 
string 
. 
IsNullOrWhiteSpace )
() *
value* /
)/ 0
)0 1
return 
new 
IsNullOrWhitespace -
(- .
). /
;/ 0
if 
( 
value 
. 
Length 
> 
	MaxLength (
)( )
return 
new 
TooLong "
(" #
	MaxLength# ,
), -
;- .
return 
new 
RequiredString %
(% &
value& +
)+ ,
;, -
} 	
	protected 
override 
IEnumerable &
<& '
object' -
>- .!
GetEqualityComponents/ D
(D E
)E F
{   	
yield!! 
return!! 
Value!! 
;!! 
}"" 	
public## 
override## 
string## 
ToString## '
(##' (
)##( )
{$$ 	
return%% 
Value%% 
;%% 
}&& 	
public'' 
abstract'' 
record'' 
ValidationError'' .
;''. /
public(( 
record(( 
IsNullOrWhitespace(( (
:(() *
ValidationError((+ :
;((: ;
public)) 
record)) 
TooLong)) 
()) 
int)) !
	MaxLength))" +
)))+ ,
:))- .
ValidationError))/ >
;))> ?
}** 
}++ ¯
nC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\src\Domain\Core\ValueObjects\ValueObject.cs
	namespace 	
EmprendeUCR
 
. 
Domain 
. 
Core !
.! "
ValueObjects" .
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
} ™
èC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\src\Domain\EntrepreneurContext\Entities\Product_Services\Products\Product.cs
	namespace 	
EmprendeUCR
 
. 
Domain 
. 
Entrepreneurs *
.* +
Entities+ 3
.3 4
Product_Services4 D
.D E
ProductsE M
{ 
public 

class 
Product 
{ 
public 
int 
Code_ID 
{ 
get  
;  !
set" %
;% &
}' (
public 
RequiredProductName "
Product_Name# /
{0 1
get2 5
;5 6
set7 :
;: ;
}< =
public &
RequiredProductDescription )
Product_Description* =
{> ?
get@ C
;C D
setE H
;H I
}J K
public 
int 
Price 
{ 
get 
; 
set  #
;# $
}% &
public 
IEnumerable 
< 
ProductPhotos (
>( )
Photos* 0
{1 2
get3 6
;6 7
set8 ;
;; <
}= >
private11 
Product11 
(11 
)11 
{22 	
Product_Name33 
=33 
null33 
!33  
;33  !
Product_Description44 
=44  !
null44" &
!44& '
;44' (
Price55 
=55 
$num55 
!55 
;55 
Photos77 
=77 
null77 
!77 
;77 
}88 	
}FF 
}GG ¯

ïC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\src\Domain\EntrepreneurContext\Entities\Product_Services\Products\ProductPhotos.cs
	namespace 	
EmprendeUCR
 
. 
Domain 
. 
Entrepreneurs *
.* +
Entities+ 3
.3 4
Product_Services4 D
.D E
ProductsE M
{		 
public

 

class

 
ProductPhotos

 
{ 
[ 	
Key	 
] 
public 
int 
Product_Photos_ID $
{% &
get' *
;* +
set, /
;/ 0
}1 2
public 
Product 
Product 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
byte 
[ 
] 
Photos 
{ 
get "
;" #
set$ '
;' (
}) *
public 
int 
Code_ID 
{ 
get  
;  !
set" %
;% &
}' (
public 
Product 
product 
; 
private 
ProductPhotos 
( 
) 
{ 	
} 	
} 
} â
éC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\src\Domain\EntrepreneurContext\Entities\Product_Services\Product_Service.cs
	namespace

 	
EmprendeUCR


 
.

 
Domain

 
.

 
Entrepreneurs

 *
.

* +
Entities

+ 3
.

3 4
Product_Services

4 D
{ 
public 

class 
Product_Service  
{ 
public 
int 
Code_ID 
{ 
get  
;  !
set" %
;% &
}' (
public 
Category 
Category  
{! "
get# &
;& '
set( +
;+ ,
}- .
private   
Product_Service   
(    
)    !
{!! 	
Code_ID"" 
="" 
$num"" 
;"" 
Category## 
=## 
null## 
;## 
}'' 	
}CC 
}DD æ	
äC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\src\Domain\EntrepreneurContext\Repositories\IProductPhotosRepository.cs
	namespace 	
EmprendeUCR
 
. 
Domain 
. 
EntrepreneurContext 0
.0 1
Repositories1 =
{		 
public

 

	interface

 $
IProductPhotosRepository

 -
{ 
Task 
	SaveAsync 
( 
ProductPhotos $
ProductPhotos% 2
)2 3
;3 4
Task 
< 
List 
< 
ProductPhotos 
>  
>  !
GetAllAsync" -
(- .
). /
;/ 0
Task 
< 
ProductPhotos 
? 
> 
GetByIdAsync )
() *
long* .
id/ 1
)1 2
;2 3
Task 
< 
List 
< 
ProductPhotos 
>  
>  !"
GetAllByProductIDAsync" 8
(8 9
long9 =
id> @
)@ A
;A B
} 
} ö	
ÑC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\src\Domain\EntrepreneurContext\Repositories\IProductRepository.cs
	namespace		 	
EmprendeUCR		
 
.		 
Domain		 
.		 
EntrepreneurContext		 0
.		0 1
Repositories		1 =
{

 
public 

	interface 
IProductRepository '
{ 
Task 
	SaveAsync 
( 
Product 
product &
)& '
;' (
Task 
< 
List 
< 
Product 
> 
> 
GetAllAsync '
(' (
)( )
;) *
Task 
< 
List 
< 
Product 
> 
> !
GetAllByCategoryAsync 1
(1 2
int2 5

categoryId6 @
)@ A
;A B
Task 
< 
Product 
? 
> 
GetByIdAsync #
(# $
long$ (
id) +
)+ ,
;, -
} 
} ⁄
ãC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\src\Domain\EntrepreneurContext\Repositories\IProductServiceRepository.cs
	namespace 	
EmprendeUCR
 
. 
Domain 
. 
EntrepreneurContext 0
.0 1
Repositories1 =
{		 
public

 

	interface

 %
IProductServiceRepository

 .
{ 
Task 
	SaveAsync 
( 
Product_Service &
product_service' 6
)6 7
;7 8
Task 
< 
List 
< 
Product_Service !
>! "
>" #
GetAllAsync$ /
(/ 0
)0 1
;1 2
Task 
< 
Product_Service 
? 
> 
GetByIdAsync +
(+ ,
long, 0
id1 3
)3 4
;4 5
} 
} ˛
åC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\src\Domain\EntrepreneurContext\ValueObjects\RequiredProductDescription.cs
	namespace 	
EmprendeUCR
 
. 
Domain 
. 
Entrepreneurs *
.* +
ValueObjects+ 7
{		 
public

 

class

 &
RequiredProductDescription

 +
:

, -
ValueObject

. 9
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
private &
RequiredProductDescription *
(* +
string+ 1
value2 7
)7 8
{ 	
Value 
= 
value 
; 
} 	
private &
RequiredProductDescription *
(* +
)+ ,
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
,0 1&
RequiredProductDescription2 L
>L M
	TryCreateN W
(W X
stringX ^
?^ _
value` e
)e f
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
new## &
RequiredProductDescription## 1
(##1 2
value##2 7
)##7 8
;##8 9
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
}44 ‘
ÖC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\src\Domain\EntrepreneurContext\ValueObjects\RequiredProductName.cs
	namespace 	
EmprendeUCR
 
. 
Domain 
. 
Entrepreneurs *
.* +
ValueObjects+ 7
{		 
public

 

class

 
RequiredProductName

 $
:

% &
ValueObject

' 2
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
private 
RequiredProductName #
(# $
string$ *
value+ 0
)0 1
{ 	
Value 
= 
value 
; 
} 	
private 
RequiredProductName #
(# $
)$ %
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
,0 1
RequiredProductName2 E
>E F
	TryCreateG P
(P Q
stringQ W
?W X
valueY ^
)^ _
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
new## 
RequiredProductName## *
(##* +
value##+ 0
)##0 1
;##1 2
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
}44 »
çC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\src\Domain\HomePageClientContext\Repositories\IDisplayProductRepository.cs
	namespace 	
EmprendeUCR
 
. 
Domain 
. !
HomePageClientContext 2
.2 3
Repositories3 ?
{		 
public

 

	interface

 %
IDisplayProductRepository

 .
{ 
User 
GetUserByEmail 
( 
string "
email# (
)( )
;) *
} 
} Õ
çC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\src\Domain\HomePageClientContext\Repositories\IHomePageClientRepository.cs
	namespace 	
EmprendeUCR
 
. 
Domain 
. !
HomePageClientContext 2
.2 3
Repositories3 ?
{		 
public

 

	interface

 %
IHomePageClientRepository

 .
{ 
IList 
< 
Product 
> 
getNewProducts %
(% &
)& '
;' (
IList 
< 
Product 
> 
getOfferProducts '
(' (
)( )
;) *
IList 
< 
Product 
> "
getRecommendedProducts -
(- .
string. 4
	userEmail5 >
)> ?
;? @
IList 
< 
ProductPhotos 
> 
loadAllPhotos *
(* +
)+ ,
;, -
Task 
< 
IList 
< 
Category 
> 
> 
getCategoriesAsync 0
(0 1
)1 2
;2 3
Task  
changeCategoryParent !
(! "
int" %
Id& (
,( )
int* -
?- .
ParentId/ 7
)7 8
;8 9
bool 
isChildNode 
( 
int 
Id 
)  
;  !
Task 
< 
bool 
> 
searchProduct  
(  !
string! '
email( -
,- .
int/ 2
	idProduct3 <
)< =
;= >
Task 
< 
bool 
> 

addProduct 
( 
ShoppingCartHas -
product. 5
)5 6
;6 7
Task 
< 
IList 
< 
Offer 
> 
> 
	GetOffers $
($ %
)% &
;& '
Task 
< 
List 
< 
ProductService  
>  !
>! "
GetAllProducts# 1
(1 2
)2 3
;3 4
IList 
< 
Product 
>  
GetPurchasedProducts +
(+ ,
string, 2
email3 8
)8 9
;9 :
IList 
< 
Is_Offer 
> 
GetAllIs_Offer &
(& '
)' (
;( )
IList 
< 
Service_Photos 
> 
GetAllServicePhotos 2
(2 3
)3 4
;4 5
User 
GetUserByEmail 
( 
string "
email# (
)( )
;) *
Task 
< 
Is_Offer 
> 
GetIs_OfferAsync '
(' (
int( +
Is_Offer_Id, 7
)7 8
;8 9
List 
< 
Is_Offer 
> 0
$GetAllIs_OfferRelatedToOfferNOTAsync ;
(; <
Offer< A
offerB G
)G H
;H I
}   
}!! ˜
{C:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\src\Domain\LoginContext\Repositories\ILoginRepository.cs
	namespace 	
EmprendeUCR
 
. 
Domain 
. 
LoginContext )
.) *
Repositories* 6
{ 
public 

	interface 
ILoginRepository %
{ 
Task		 
<		 
bool		 
>		 
verifyUserType		 !
(		! "
string		" (
email		) .
,		. /
int		0 3
userType		4 <
)		< =
;		= >
Task

 
<

 
string

 
>

 
GetPassword

  
(

  !
string

! '
email

( -
)

- .
;

. /
EmailConfirmation  
getEmailConfirmation .
(. /
string/ 5
	hash_code6 ?
)? @
;@ A
void #
updateEmailConfirmation $
($ %
EmailConfirmation% 6
confirmation7 C
)C D
;D E
Task 
< 
EmailConfirmation 
> '
GetEmailConfirmationByEmail  ;
(; <
string< B
emailC H
)H I
;I J
bool 
CredentialsUpdate 
( 
Credentials *
c+ ,
), -
;- .
Task 
<  
ActiveAdministrators !
>! ""
getActiveAdministrator# 9
(9 :
string: @
emailA F
)F G
;G H
Task 
< 
BannedAcount 
> 
CheckBanned &
(& '
string' -
email. 3
)3 4
;4 5
Task 
< 
User 
> 
getUser 
( 
string !
email" '
)' (
;( )
Credentials 
getCredentials "
(" #
string# )
email* /
)/ 0
;0 1
} 
} î,
vC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\src\Domain\PaymentInfos\Entities\CardPaymentInfo.cs
	namespace 	
EmprendeUCR
 
. 
Domain 
. 
PaymentInfos )
.) *
Entities* 2
{ 
public 

partial 
class 
CardPaymentInfo (
{ 
public		 
const		 
int		 "
MinLength_Payment_Name		 /
=		0 1
$num		2 3
;		3 4
public

 
const

 
int

 "
MaxLength_Payment_Name

 /
=

0 1
$num

2 4
;

4 5
public 
const 
int !
Account_Number_Length .
=/ 0
$num1 3
;3 4
public 
CardPaymentMethod  
CardPaymentMethod! 2
;2 3
[ 	
Key	 
] 
public 
string 
Account_Number $
{% &
get' *
;* +
private, 3
set4 7
;7 8
}9 :
public 
int 
Payment_Info_ID "
{# $
get% (
;( )
private* 1
set2 5
;5 6
}7 8
public 
string 
? 
Name_Payment_Method *
{+ ,
get- 0
;0 1
private2 9
set: =
;= >
}? @
public 
CardPaymentInfo 
( 
string %
accountNumber& 3
,3 4
int5 8
paymentInfoID9 F
,F G
stringH N
paymentMethodNameO `
)` a
{ 	
Account_Number 
= 
accountNumber *
;* +
Payment_Info_ID 
= 
paymentInfoID +
;+ ,
Name_Payment_Method 
=  !
paymentMethodName" 3
;3 4
} 	
public 
CardPaymentInfo 
( 
)  
{ 	
Account_Number 
= 
$str 
;  
Payment_Info_ID 
= 
$num 
;  
Name_Payment_Method 
=  !
null" &
;& '
} 	
public 
void 
AssignPaymentMethod '
(' (
CardPaymentMethod( 9
cardPaymentMethod: K
)K L
{ 	
CardPaymentMethod   
=   
cardPaymentMethod    1
;  1 2
}!! 	
public## 
static## 

Validation##  
<##  !
ValidationError##! 0
,##0 1
string##2 8
>##8 9
	TryCreate##: C
(##C D
string##D J
?##J K
name##L P
)##P Q
{$$ 	
if%% 
(%% 
name%% 
is%% 
null%% 
)%% 
return&& 
new&& 

NameIsNull&& %
(&&% &
)&&& '
;&&' (
if(( 
((( 
name(( 
.(( 
Length(( 
==(( 
$num((  
)((  !
return)) 
new)) 
NameTooSmall)) '
())' ("
MinLength_Payment_Name))( >
)))> ?
;))? @
if++ 
(++ 
name++ 
.++ 
Length++ 
>++ "
MaxLength_Payment_Name++ 4
)++4 5
return,, 
new,, 

NameTooBig,, %
(,,% &"
MaxLength_Payment_Name,,& <
),,< =
;,,= >
return.. 
name.. 
;.. 
}// 	
public00 
static00 

Validation00  
<00  !
ValidationError00! 0
,000 1
string002 8
>008 9
TryCreateAccount00: J
(00J K
string00K Q
?00Q R
account00S Z
)00Z [
{11 	
if22 
(22 
account22 
is22 
null22 
)22  
return33 
new33 
AccountNull33 &
(33& '
)33' (
;33( )
if55 
(55 
account55 
.55 
Length55 
!=55 !!
Account_Number_Length55" 7
)557 8
return66 
new66 
AccountInvalid66 )
(66) *!
Account_Number_Length66* ?
)66? @
;66@ A
return88 
account88 
;88 
}99 	
public:: 
abstract:: 
record:: 
ValidationError:: .
;::. /
public;; 
record;; 

NameIsNull;;  
:;;! "
ValidationError;;# 2
;;;2 3
public<< 
record<< 
NameTooSmall<< "
(<<" #
int<<# &
	MinLenght<<' 0
)<<0 1
:<<2 3
ValidationError<<4 C
;<<C D
public== 
record== 

NameTooBig==  
(==  !
int==! $
	MaxLength==% .
)==. /
:==0 1
ValidationError==2 A
;==A B
public>> 
record>> 
AccountNull>> !
:>>" #
ValidationError>>$ 3
;>>3 4
public?? 
record?? 
AccountInvalid?? $
(??$ %
int??% (
	MinLenght??) 2
)??2 3
:??4 5
ValidationError??6 E
;??E F
}@@ 
}AA Î	
uC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\src\Domain\PaymentInfos\Entities\HasPaymentInfo.cs
	namespace 	
EmprendeUCR
 
. 
Domain 
. 
PaymentInfos )
.) *
Entities* 2
{ 
public 

partial 
class 
HasPaymentInfo '
{		 
public

 
string

 
Entrepreneur_Email

 (
{

) *
get

+ .
;

. /
set

0 3
;

3 4
}

5 6
public 
int 
Payment_Info_ID "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
HasPaymentInfo 
( 
string $
entrepreneur_Email% 7
,7 8
int9 <
payment_Info_ID= L
)L M
{ 	
Entrepreneur_Email 
=  
entrepreneur_Email! 3
;3 4
Payment_Info_ID 
= 
payment_Info_ID -
;- .
} 	
public 
HasPaymentInfo 
( 
) 
{  !
}" #
} 
} ≠

rC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\src\Domain\PaymentInfos\Entities\PaymentInfo.cs
	namespace 	
EmprendeUCR
 
. 
Domain 
. 
PaymentInfos )
.) *
Entities* 2
{ 
public 

partial 
class 
PaymentInfo $
{ 
[ 	
Key	 
] 
public		 
int		 
ID		 
{		 
get		 
;		 
private		 $
set		% (
;		( )
}		* +
public 
PaymentInfo 
( 
int 
id !
)! "
{ 	
ID 
= 
id 
; 
} 	
public 
PaymentInfo 
( 
) 
{ 	
ID 
= 
$num 
; 
} 	
private 
readonly 
List 
< 
HasPaymentInfo ,
>, -
_hasPaymentInfoList. A
;A B
public 
IReadOnlyCollection "
<" #
HasPaymentInfo# 1
>1 2
HasPaymentInfoList3 E
;E F
} 
} ∆,
{C:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\src\Domain\PaymentInfos\Entities\SinpeIbanPaymentInfo.cs
	namespace 	
EmprendeUCR
 
. 
Domain 
. 
PaymentInfos )
.) *
Entities* 2
{ 
public		 

partial		 
class		  
SinpeIbanPaymentInfo		 -
{

 
public 
const 
int "
MinLength_Payment_Name /
=0 1
$num2 3
;3 4
public 
const 
int "
MaxLength_Payment_Name /
=0 1
$num2 4
;4 5
public 
const 
int !
Account_Number_Length .
=/ 0
$num1 3
;3 4
public "
SinpeIbanPaymentMethod %"
SinpeIbanPaymentMethod& <
;< =
[ 	
Key	 
] 
public 
string 
Account_Number $
{% &
get' *
;* +
private, 3
set4 7
;7 8
}9 :
public 
int 
Payment_Info_ID "
{# $
get% (
;( )
private* 1
set2 5
;5 6
}7 8
public 
string 
? 
Name_Payment_Method *
{+ ,
get- 0
;0 1
private2 9
set: =
;= >
}? @
public  
SinpeIbanPaymentInfo #
(# $
string$ *
accountNumber+ 8
,8 9
int: =
paymentInfoID> K
,K L
stringM S
paymentMethodNameT e
)e f
{ 	
Account_Number 
= 
accountNumber *
;* +
Payment_Info_ID 
= 
paymentInfoID +
;+ ,
Name_Payment_Method 
=  !
paymentMethodName" 3
;3 4
} 	
public  
SinpeIbanPaymentInfo #
(# $
)$ %
{ 	
Account_Number 
= 
$str 
;  
Payment_Info_ID 
= 
$num 
;  
Name_Payment_Method 
=  !
null" &
;& '
}   	
public!! 
void!! 
AssignPaymentMethod!! '
(!!' ("
SinpeIbanPaymentMethod!!( >"
sinpeIbanPaymentMethod!!? U
)!!U V
{"" 	"
SinpeIbanPaymentMethod## "
=### $"
sinpeIbanPaymentMethod##% ;
;##; <
}$$ 	
public%% 
static%% 

Validation%%  
<%%  !
ValidationError%%! 0
,%%0 1
string%%2 8
>%%8 9
	TryCreate%%: C
(%%C D
string%%D J
?%%J K
name%%L P
)%%P Q
{&& 	
if'' 
('' 
name'' 
is'' 
null'' 
)'' 
return(( 
new(( 

NameIsNull(( %
(((% &
)((& '
;((' (
if** 
(** 
name** 
.** 
Length** 
==** 
$num**  
)**  !
return++ 
new++ 
NameTooSmall++ '
(++' ("
MinLength_Payment_Name++( >
)++> ?
;++? @
if-- 
(-- 
name-- 
.-- 
Length-- 
>-- "
MaxLength_Payment_Name-- 4
)--4 5
return.. 
new.. 

NameTooBig.. %
(..% &"
MaxLength_Payment_Name..& <
)..< =
;..= >
return00 
name00 
;00 
}11 	
public22 
static22 

Validation22  
<22  !
ValidationError22! 0
,220 1
string222 8
>228 9
TryCreateAccount22: J
(22J K
string22K Q
?22Q R
account22S Z
)22Z [
{33 	
if44 
(44 
account44 
is44 
null44 
)44  
return55 
new55 
AccountNull55 &
(55& '
)55' (
;55( )
if77 
(77 
account77 
.77 
Length77 
!=77 !!
Account_Number_Length77" 7
)777 8
return88 
new88 
AccountInvalid88 )
(88) *!
Account_Number_Length88* ?
)88? @
;88@ A
return:: 
account:: 
;:: 
};; 	
public<< 
abstract<< 
record<< 
ValidationError<< .
;<<. /
public== 
record== 

NameIsNull==  
:==! "
ValidationError==# 2
;==2 3
public>> 
record>> 
NameTooSmall>> "
(>>" #
int>># &
	MinLenght>>' 0
)>>0 1
:>>2 3
ValidationError>>4 C
;>>C D
public?? 
record?? 

NameTooBig??  
(??  !
int??! $
	MaxLength??% .
)??. /
:??0 1
ValidationError??2 A
;??A B
public@@ 
record@@ 
AccountNull@@ !
:@@" #
ValidationError@@$ 3
;@@3 4
publicAA 
recordAA 
AccountInvalidAA $
(AA$ %
intAA% (
	MinLenghtAA) 2
)AA2 3
:AA4 5
ValidationErrorAA6 E
;AAE F
}DD 
}EE ±
|C:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\src\Domain\PaymentInfos\Entities\SinpeMovilPaymentInfo.cs
	namespace 	
EmprendeUCR
 
. 
Domain 
. 
PaymentInfos )
.) *
Entities* 2
{ 
public 

partial 
class !
SinpeMovilPaymentInfo .
{		 
public

 #
SinpeMovilPaymentMethod

 &#
SinpeMovilPaymentMethod

' >
;

> ?
[ 	
Key	 
] 
public 
int 
Phone_Number 
{  !
get" %
;% &
private' .
set/ 2
;2 3
}4 5
public 
int 
Payment_Info_ID "
{# $
get% (
;( )
private* 1
set2 5
;5 6
}7 8
public 
string 
? 
Name_Payment_Method *
{+ ,
get- 0
;0 1
private2 9
set: =
;= >
}? @
public !
SinpeMovilPaymentInfo $
($ %
int% (
phoneNumber) 4
,4 5
int6 9
paymentInfoID: G
,G H
stringI O
paymentMethodNameP a
)a b
{ 	
Phone_Number 
= 
phoneNumber &
;& '
Payment_Info_ID 
= 
paymentInfoID +
;+ ,
Name_Payment_Method 
=  !
paymentMethodName" 3
;3 4
} 	
public !
SinpeMovilPaymentInfo $
($ %
)% &
{ 	
Phone_Number 
= 
$num 
; 
Payment_Info_ID 
= 
$num 
;  
Name_Payment_Method 
=  !
null" &
;& '
} 	
public 
void 
AssignPaymentMethod '
(' (#
SinpeMovilPaymentMethod( ?#
sinpeMovilPaymentMethod@ W
)W X
{ 	#
SinpeMovilPaymentMethod #
=$ %#
sinpeMovilPaymentMethod& =
;= >
} 	
} 
}   À

ÖC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\src\Domain\PaymentInfos\Repositories\ICardPaymentInfoRepository.cs
	namespace 	
EmprendeUCR
 
. 
Domain 
. 
PaymentInfos )
.) *
Repositories* 6
{ 
public 

	interface &
ICardPaymentInfoRepository /
{ 
Task		 
	SaveAsync		 
(		 
CardPaymentInfo		 & 
sinpeIbanPaymentInfo		' ;
)		; <
;		< =
Task

 
<

 
IEnumerable

 
<

 
CardPaymentInfo

 (
>

( )
>

) *
GetAllAsync

+ 6
(

6 7
)

7 8
;

8 9
Task 
< 
CardPaymentInfo 
? 
> 
GetByIdAsync +
(+ ,
string, 2
accountNumber3 @
)@ A
;A B
Task 
AddPaymentInfo 
( 
CardPaymentInfo + 
sinpeIbanPaymentInfo, @
)@ A
;A B
Task 
< 
CardPaymentInfo 
? 
> 
GetByPaymentInfoID 1
(1 2
int2 5
id6 8
)8 9
;9 :
} 
} ñ
zC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\src\Domain\PaymentInfos\Repositories\IHasPaymentInfo.cs
	namespace 	
EmprendeUCR
 
. 
Domain 
. 
PaymentInfos )
.) *
Repositories* 6
{ 
public 

	interface %
IHasPaymentInfoRepository .
{ 
Task		 
	SaveAsync		 
(		 
HasPaymentInfo		 %
hasPaymentInfo		& 4
)		4 5
;		5 6
Task

 
<

 
IEnumerable

 
<

 
HasPaymentInfo

 '
>

' (
>

( )
GetAllAsync

* 5
(

5 6
)

6 7
;

7 8
Task 
AddHasPaymentInfo 
( 
HasPaymentInfo -
hasPaymentInfo. <
)< =
;= >
} 
} ‹	
ÅC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\src\Domain\PaymentInfos\Repositories\IPaymentInfoRepository.cs
	namespace 	
EmprendeUCR
 
. 
Domain 
. 
PaymentInfos )
.) *
Repositories* 6
{ 
public 

	interface "
IPaymentInfoRepository +
{ 
Task		 
	SaveAsync		 
(		 
PaymentInfo		 "
paymentInfo		# .
)		. /
;		/ 0
Task

 
<

 
IEnumerable

 
<

 
PaymentInfo

 $
>

$ %
>

% &
GetAllAsync

' 2
(

2 3
)

3 4
;

4 5
Task 
< 
PaymentInfo 
? 
> 
GetByIdAsync '
(' (
int( +
id, .
). /
;/ 0
Task 
< 
PaymentInfo 
? 
> 
AddPaymentInfo )
() *
)* +
;+ ,
Task 
RemovePaymentInfo 
( 
int "
id# %
)% &
;& '
} 
} Ó

äC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\src\Domain\PaymentInfos\Repositories\ISinpeIbanPaymentInfoRepository.cs
	namespace 	
EmprendeUCR
 
. 
Domain 
. 
PaymentInfos )
.) *
Repositories* 6
{ 
public 

	interface +
ISinpeIbanPaymentInfoRepository 4
{ 
Task		 
	SaveAsync		 
(		  
SinpeIbanPaymentInfo		 + 
sinpeIbanPaymentInfo		, @
)		@ A
;		A B
Task

 
<

 
IEnumerable

 
<

  
SinpeIbanPaymentInfo

 -
>

- .
>

. /
GetAllAsync

0 ;
(

; <
)

< =
;

= >
Task 
<  
SinpeIbanPaymentInfo !
?! "
>" #
GetByIdAsync$ 0
(0 1
string1 7
accountNumber8 E
)E F
;F G
Task 
AddPaymentInfo 
(  
SinpeIbanPaymentInfo 0 
sinpeIbanPaymentInfo1 E
)E F
;F G
Task 
<  
SinpeIbanPaymentInfo !
?! "
>" #
GetByPaymentInfoID$ 6
(6 7
int7 :
id; =
)= >
;> ?
} 
} Ú

ãC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\src\Domain\PaymentInfos\Repositories\ISinpeMovilPaymentInfoRepository.cs
	namespace 	
EmprendeUCR
 
. 
Domain 
. 
PaymentInfos )
.) *
Repositories* 6
{ 
public 

	interface ,
 ISinpeMovilPaymentInfoRepository 5
{ 
Task		 
	SaveAsync		 
(		 !
SinpeMovilPaymentInfo		 ,!
sinpeMovilPaymentInfo		- B
)		B C
;		C D
Task

 
<

 
IEnumerable

 
<

 !
SinpeMovilPaymentInfo

 .
>

. /
>

/ 0
GetAllAsync

1 <
(

< =
)

= >
;

> ?
Task 
< !
SinpeMovilPaymentInfo "
?" #
># $
GetByIdAsync% 1
(1 2
int2 5
phoneNumber6 A
)A B
;B C
Task 
AddPaymentInfo 
( !
SinpeMovilPaymentInfo 1!
sinpeMovilPaymentInfo2 G
)G H
;H I
Task 
< !
SinpeMovilPaymentInfo "
?" #
># $
GetByPaymentInfoID% 7
(7 8
int8 ;
id< >
)> ?
;? @
} 
} ˜.
zC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\src\Domain\PaymentMethods\Entities\CardPaymentMethod.cs
	namespace

 	
EmprendeUCR


 
.

 
Domain

 
.

 
PaymentMethods

 +
.

+ ,
Entities

, 4
{ 
public 

partial 
class 
CardPaymentMethod *
{ 
public 
IReadOnlyCollection "
<" #
CardPaymentInfo# 2
>2 3
CardPaymentInfos4 D
;D E
private 
readonly 
List 
< 
CardPaymentInfo -
>- .
_cardPaymentInfos/ @
;@ A
[ 	
Key	 
] 
public 
string 
Name 
{ 
get  
;  !
private" )
set* -
;- .
}/ 0
public 
bool 
Status 
{ 
get  
;  !
private" )
set* -
;- .
}/ 0
public 
CardPaymentMethod  
(  !
string! '
name( ,
,, -
bool. 2
status3 9
)9 :
{ 	
Name 
= 
name 
; 
Status 
= 
status 
; 
_cardPaymentInfos 
= 
new  #
List$ (
<( )
CardPaymentInfo) 8
>8 9
(9 :
): ;
;; <
} 	
public 
void 
ChangeStatus  
(  !
)! "
{ 	
Status 
= 
! 
Status 
; 
} 	
public 

Validation 
< 
ValidationError )
,) *
string+ 1
>1 2
AddCardPaymentInfo3 E
(E F
CardPaymentInfoF U
cardPaymentInfoV e
)e f
{ 	
if   
(   
_cardPaymentInfos   !
.  ! "
Exists  " (
(  ( )
p  ) *
=>  + -
p  . /
.  / 0
Account_Number  0 >
==  ? A
cardPaymentInfo  B Q
.  Q R
Account_Number  R `
)  ` a
)  a b
{!! 
throw"" 
new"" 
DomainException"" )
("") *
$str""* [
)""[ \
;""\ ]
}## 
_cardPaymentInfos$$ 
.$$ 
Add$$ !
($$! "
cardPaymentInfo$$" 1
)$$1 2
;$$2 3
cardPaymentInfo%% 
.%% 
AssignPaymentMethod%% /
(%%/ 0
this%%0 4
)%%4 5
;%%5 6
return&& 
this&& 
.&& 
Name&& 
;&& 
}'' 	
public)) 

Validation)) 
<)) 
ValidationError)) )
,))) *
string))+ 1
>))1 2"
RemovePhonePaymentInfo))3 I
())I J
CardPaymentInfo))J Y
cardPaymentInfo))Z i
)))i j
{** 	
if++ 
(++ 
_cardPaymentInfos++ !
.++! "
Exists++" (
(++( )
p++) *
=>+++ -
p++. /
==++0 2
cardPaymentInfo++3 B
)++B C
)++C D
{,, 
_cardPaymentInfos-- !
.--! "
Remove--" (
(--( )
cardPaymentInfo--) 8
)--8 9
;--9 :
cardPaymentInfo.. 
...  
AssignPaymentMethod..  3
(..3 4
null..4 8
)..8 9
;..9 :
}// 
return00 
new00 #
CardPaymentInfoNotFound00 .
(00. /
)00/ 0
;000 1
}11 	
public22 
static22 

Validation22  
<22  !
ValidationError22! 0
,220 1
string222 8
>228 9
TryCreateName22: G
(22G H
string22H N
?22N O
name22P T
)22T U
{22V W
if44 
(44 
name44 
==44 
$str44 
)44 
return55 
name55 
;55 
else66 
if66 
(66 
name66 
==66 
$str66 )
)66) *
return77 
name77 
;77 
else88 
{99 
return:: 
new:: 
NameIsNotFound:: )
(::) *
)::* +
;::+ ,
};; 
}<< 	
public== 
static== 

Validation==  
<==  !
ValidationError==! 0
,==0 1
bool==2 6
>==6 7 
TryCreateValidStatus==8 L
(==L M
bool==M Q
status==R X
)==X Y
{>> 	
if@@ 
(@@ 
status@@ 
==@@ 
true@@ 
)@@  
returnAA 
statusAA 
;AA 
elseBB 
ifBB 
(BB 
statusBB 
==BB 
falseBB $
)BB$ %
returnCC 
statusCC 
;CC 
elseDD 
{EE 
returnFF 
newFF 
InvalidStatusFF (
(FF( )
)FF) *
;FF* +
}GG 
}HH 	
publicJJ 
abstractJJ 
recordJJ 
ValidationErrorJJ .
;JJ. /
publicKK 
recordKK 
NameIsNotFoundKK $
:KK% &
ValidationErrorKK' 6
;KK6 7
publicLL 
recordLL 
InvalidStatusLL #
:LL$ %
ValidationErrorLL& 5
;LL5 6
publicNN 
recordNN #
CardPaymentInfoNotFoundNN -
:NN. /
ValidationErrorNN0 ?
;NN? @
}OO 
}PP ø
C:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\src\Domain\PaymentMethods\Entities\SinpeIbanPaymentMethod.cs
	namespace 	
EmprendeUCR
 
. 
Domain 
. 
PaymentMethods +
.+ ,
Entities, 4
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
 "
SinpeIbanPaymentMethod

 /
{ 
public 
IReadOnlyCollection "
<" # 
SinpeIbanPaymentInfo# 7
>7 8!
SinpeIbanPaymentInfos9 N
;N O
private 
readonly 
List 
<  
SinpeIbanPaymentInfo 2
>2 3"
_sinpeIbanPaymentInfos4 J
;J K
[ 	
Key	 
] 
public 
string 
Name 
{ 
get  
;  !
private" )
set* -
;- .
}/ 0
public 
bool 
Status 
{ 
get  
;  !
private" )
set* -
;- .
}/ 0
public "
SinpeIbanPaymentMethod %
(% &
string& ,
name- 1
,1 2
bool3 7
status8 >
)> ?
{ 	
Name 
= 
name 
; 
Status 
= 
status 
; "
_sinpeIbanPaymentInfos "
=# $
new% (
List) -
<- . 
SinpeIbanPaymentInfo. B
>B C
(C D
)D E
;E F
} 	
public 
void 
ChangeStatus  
(  !
)! "
{ 	
Status 
= 
! 
Status 
; 
} 	
public 
void #
AddSinpeIbanPaymentInfo +
(+ , 
SinpeIbanPaymentInfo, @ 
sinpeIbanPaymentInfoA U
)U V
{ 	
if 
( "
_sinpeIbanPaymentInfos &
.& '
Exists' -
(- .
p. /
=>0 2
p3 4
.4 5
Account_Number5 C
==D F 
sinpeIbanPaymentInfoG [
.[ \
Account_Number\ j
)j k
)k l
throw 
new 
DomainException )
() *
$str* [
)[ \
;\ ]"
_sinpeIbanPaymentInfos "
." #
Add# &
(& ' 
sinpeIbanPaymentInfo' ;
); <
;< = 
sinpeIbanPaymentInfo    
.    !
AssignPaymentMethod  ! 4
(  4 5
this  5 9
)  9 :
;  : ;
}!! 	
public## 
void## "
RemovePhonePaymentInfo## *
(##* + 
SinpeIbanPaymentInfo##+ ? 
sinpeIbanPaymentInfo##@ T
)##T U
{$$ 	
if%% 
(%% "
_sinpeIbanPaymentInfos%% &
.%%& '
Exists%%' -
(%%- .
p%%. /
=>%%0 2
p%%3 4
==%%5 7 
sinpeIbanPaymentInfo%%8 L
)%%L M
)%%M N
{&& "
_sinpeIbanPaymentInfos'' &
.''& '
Remove''' -
(''- . 
sinpeIbanPaymentInfo''. B
)''B C
;''C D 
sinpeIbanPaymentInfo(( $
.(($ %
AssignPaymentMethod((% 8
(((8 9
null((9 =
)((= >
;((> ?
})) 
}** 	
}++ 
},, ‘
ÄC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\src\Domain\PaymentMethods\Entities\SinpeMovilPaymentMethod.cs
	namespace 	
EmprendeUCR
 
. 
Domain 
. 
PaymentMethods +
.+ ,
Entities, 4
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
 #
SinpeMovilPaymentMethod

 0
{ 
public 
IReadOnlyCollection "
<" #!
SinpeMovilPaymentInfo# 8
>8 9"
SinpeMovilPaymentInfos: P
;P Q
private 
readonly 
List 
< !
SinpeMovilPaymentInfo 3
>3 4#
_sinpeMovilPaymentInfos5 L
;L M
[ 	
Key	 
] 
public 
string 
Name 
{ 
get  
;  !
private" )
set* -
;- .
}/ 0
public 
bool 
Status 
{ 
get  
;  !
private" )
set* -
;- .
}/ 0
public #
SinpeMovilPaymentMethod &
(& '
string' -
name. 2
,2 3
bool4 8
status9 ?
)? @
{ 	
Name 
= 
name 
; 
Status 
= 
status 
; #
_sinpeMovilPaymentInfos #
=$ %
new& )
List* .
<. /!
SinpeMovilPaymentInfo/ D
>D E
(E F
)F G
;G H
} 	
public 
void 
ChangeStatus  
(  !
)! "
{ 	
Status 
= 
! 
Status 
; 
} 	
public 
void $
AddSinpeMovilPaymentInfo ,
(, -!
SinpeMovilPaymentInfo- B!
sinpeMovilPaymentInfoC X
)X Y
{ 	
if 
( #
_sinpeMovilPaymentInfos '
.' (
Exists( .
(. /
p/ 0
=>1 3
p4 5
.5 6
Phone_Number6 B
==C E!
sinpeMovilPaymentInfoF [
.[ \
Phone_Number\ h
)h i
)i j
throw 
new 
DomainException )
() *
$str* [
)[ \
;\ ]#
_sinpeMovilPaymentInfos   #
.  # $
Add  $ '
(  ' (!
sinpeMovilPaymentInfo  ( =
)  = >
;  > ?!
sinpeMovilPaymentInfo!! !
.!!! "
AssignPaymentMethod!!" 5
(!!5 6
this!!6 :
)!!: ;
;!!; <
}"" 	
public$$ 
void$$ "
RemovePhonePaymentInfo$$ *
($$* +!
SinpeMovilPaymentInfo$$+ @!
sinpeMovilPaymentInfo$$A V
)$$V W
{%% 	
if&& 
(&& #
_sinpeMovilPaymentInfos&& '
.&&' (
Exists&&( .
(&&. /
p&&/ 0
=>&&1 3
p&&4 5
==&&6 8!
sinpeMovilPaymentInfo&&9 N
)&&N O
)&&O P
{'' #
_sinpeMovilPaymentInfos(( '
.((' (
Remove((( .
(((. /!
sinpeMovilPaymentInfo((/ D
)((D E
;((E F!
sinpeMovilPaymentInfo)) )
.))) *
AssignPaymentMethod))* =
())= >
null))> B
)))B C
;))C D
}** 
}++ 	
},, 
}-- à	
âC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\src\Domain\PaymentMethods\Repositories\ICardPaymentMethodRepository.cs
	namespace 	
EmprendeUCR
 
. 
Domain 
. 
PaymentMethods +
.+ ,
Repositories, 8
{ 
public 

	interface (
ICardPaymentMethodRepository 1
{ 
Task		 
	SaveAsync		 
(		 
CardPaymentMethod		 (
cardPaymentMethod		) :
)		: ;
;		; <
Task

 
<

 
IEnumerable

 
<

 
CardPaymentMethod

 *
>

* +
>

+ ,
GetAllAsync

- 8
(

8 9
)

9 :
;

: ;
Task 
< 
CardPaymentMethod 
? 
>  
GetByIdAsync! -
(- .
string. 4
name5 9
)9 :
;: ;
Task $
DeletePaymentInformation %
(% &
CardPaymentInfo& 5
cardPaymentInfo6 E
)E F
;F G
} 
} ∞	
éC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\src\Domain\PaymentMethods\Repositories\ISinpeIbanPaymentMethodRepository.cs
	namespace 	
EmprendeUCR
 
. 
Domain 
. 
PaymentMethods +
.+ ,
Repositories, 8
{ 
public 

	interface -
!ISinpeIbanPaymentMethodRepository 6
{ 
Task		 
	SaveAsync		 
(		 "
SinpeIbanPaymentMethod		 -"
sinpeIbanPaymentMethod		. D
)		D E
;		E F
Task

 
<

 
IEnumerable

 
<

 "
SinpeIbanPaymentMethod

 /
>

/ 0
>

0 1
GetAllAsync

2 =
(

= >
)

> ?
;

? @
Task 
< "
SinpeIbanPaymentMethod #
?# $
>$ %
GetByIdAsync& 2
(2 3
string3 9
name: >
)> ?
;? @
Task $
DeletePaymentInformation %
(% & 
SinpeIbanPaymentInfo& : 
sinpeIbanPaymentInfo; O
)O P
;P Q
} 
} ∏	
èC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\src\Domain\PaymentMethods\Repositories\ISinpeMovilPaymentMethodRepository.cs
	namespace 	
EmprendeUCR
 
. 
Domain 
. 
PaymentMethods +
.+ ,
Repositories, 8
{ 
public 

	interface .
"ISinpeMovilPaymentMethodRepository 7
{ 
Task		 
	SaveAsync		 
(		 #
SinpeMovilPaymentMethod		 .#
sinpeMovilPaymentMethod		/ F
)		F G
;		G H
Task

 
<

 
IEnumerable

 
<

 #
SinpeMovilPaymentMethod

 0
>

0 1
>

1 2
GetAllAsync

3 >
(

> ?
)

? @
;

@ A
Task 
< #
SinpeMovilPaymentMethod $
?$ %
>% &
GetByIdAsync' 3
(3 4
string4 :
name; ?
)? @
;@ A
Task $
DeletePaymentInformation %
(% &!
SinpeMovilPaymentInfo& ;!
sinpeMovilPaymentInfo< Q
)Q R
;R S
} 
} È
ÖC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\src\Domain\PermissionContext\Repositories\IPermissionRepository.cs
	namespace 	
EmprendeUCR
 
. 
Domain 
. 
PermissionContext .
.. /
Repositories/ ;
{		 
public

 

	interface

 !
IPermissionRepository

 *
{ 
Task 
< 
IList 
< 

Is_Able_To 
> 
> 
getAllUserPermision  3
(3 4
)4 5
;5 6
Task 
< 
IList 
< 
Role 
> 
> 

getAllRole $
($ %
)% &
;& '
Task 
< 
IList 
< 

Permission 
> 
> 
getAllPermision  /
(/ 0
)0 1
;1 2
Task 
< 
IList 
< 
User 
> 
> 

getAllUser $
($ %
)% &
;& '
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
User 
getUser 
( 
string 
email !
)! "
;" #
string 
getHash 
( 
string 
email #
)# $
;$ %
string 
getEmail 
( 
string 
hash #
)# $
;$ %
Task 
< 
IList 
< 

Is_Able_To 
> 
> 
getUserPermissions  2
(2 3
string3 9
email: ?
)? @
;@ A
IList 
< 

Is_Able_To 
> 
getPermissions (
(( )
string) /
email0 5
)5 6
;6 7
void 
addEntry 
( 

Is_Able_To  
newEntry! )
)) *
;* +
void 
deleteAllEntries 
( 
string $
email% *
)* +
;+ ,
Task 
addPermissionAsync 
(  

Is_Able_To  *

permission+ 5
)5 6
;6 7

Is_Able_To 
getPermission  
(  !
string! '
email( -
,- .
int/ 2

permission3 =
,= >
int? B
roleC G
)G H
;H I
} 
} •
ôC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\src\Domain\ProductsSearchClientContext\Repositories\IProductsSearchClientRepository.cs
	namespace 	
EmprendeUCR
 
. 
Domain 
. '
ProductsSearchClientContext 8
.8 9
Repositories9 E
{		 
public

 

	interface

 +
IProductsSearchClientRepository

 4
{ 
List 
< 
ProductPhotos 
> 
loadAllPhotos )
() *
)* +
;+ ,
Task 
< 
IList 
< 
Category 
> 
> 
getCategoriesAsync 0
(0 1
)1 2
;2 3
IList 
< 
Product 
> $
getProductListByCategory /
(/ 0
int0 3

categoryID4 >
)> ?
;? @
IList 
< 
Service 
> $
getServiceListByCategory /
(/ 0
int0 3

categoryID4 >
)> ?
;? @
IList 
< 
Product 
> $
getListProductRestricted /
(/ 0
string0 6
product7 >
,> ?
int@ C

categoryIDD N
)N O
;O P
IList 
< 
Product 
> 
getListProduc $
($ %
string% +
product, 3
)3 4
;4 5
Task  
changeCategoryParent !
(! "
int" %
Id& (
,( )
int* -
?- .
ParentId/ 7
)7 8
;8 9
bool 
isChildNode 
( 
int 
Id 
)  
;  !
Task 
< 
bool 
> 
searchProduct  
(  !
string! '
email( -
,- .
int/ 2
	idProduct3 <
)< =
;= >
Task 
< 
bool 
> 

addProduct 
( 
ShoppingCartHas -
product. 5
)5 6
;6 7
IList 
< 
Service 
> 
getListService %
(% &
string& ,
product- 4
)4 5
;5 6
IList 
< 
Service 
> $
GetListServiceRestricted /
(/ 0
string0 6
product7 >
,> ?
int@ C

categoryIDD N
)N O
;O P
IList 
< 
ProductService 
> 
GetProductService /
(/ 0
)0 1
;1 2
IList 
< 
Service_Photos 
> 
getAllServicePhotos 1
(1 2
)2 3
;3 4
IList 
< 
Product 
> 
GetProductPrice &
(& '
int' *

searchType+ 5
)5 6
;6 7
IList 
< 
Service 
> 
GetServiceByPrice (
(( )
int) ,

searchType- 7
)7 8
;8 9
} 
} ö&
C:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\src\Domain\ProfileContext\Repositories\IProfileRepository.cs
	namespace 	
EmprendeUCR
 
. 
Domain 
. 
ProfileContext +
.+ ,
Repositories, 8
{ 
public 

	interface 
IProfileRepository '
{ 
Task		 
<		 
User		 
>		 
GetUserAsync		 
(		  
string		  &
email		' ,
)		, -
;		- .
Task 
< 
IList 
< 
Entrepreneur 
>  
>  !
GetUsersAsync" /
(/ 0
)0 1
;1 2
Task 
< 
Members 
> 
GetMemberAsync $
($ %
string% +
email, 1
)1 2
;2 3
Task 
< 
Client 
> 
GetClientAsync #
(# $
string$ *
email+ 0
)0 1
;1 2
Task 
< 
Entrepreneur 
>  
GetEntrepreneurAsync /
(/ 0
string0 6
email7 <
)< =
;= >
Task 
< 
Administrator 
> !
GetAdministratorAsync 1
(1 2
string2 8
email9 >
)> ?
;? @
Task 
< 
IList 
< 
Likes 
> 
> 
GetLikes #
(# $
string$ *
email+ 0
)0 1
;1 2
Task 
< 
Phones 
> 
GetPhoneAsync "
(" #
string# )
email* /
)/ 0
;0 1
string !
GetCategoryTitleAsync $
($ %
int% (

categoryId) 3
)3 4
;4 5
IList 
< 
Category 
> 
GetFatherCategories +
(+ ,
), -
;- .
IList 
< 
Category 
> 
GetChildCategories *
(* +
int+ .
parentId/ 7
)7 8
;8 9
IList 
< 
Category 
> 
GetAllCategories (
(( )
)) *
;* +
IList 
< 
Province 
> 
GetAllProvinces '
(' (
)( )
;) *
IList 
< 
Canton 
> 
GetProvinceCantons (
(( )
string) /
province0 8
)8 9
;9 :
IList 
< 
District 
> 
GetCantonDistricts *
(* +
string+ 1
canton2 8
)8 9
;9 :
Task 
< 
bool 
> 
PhoneUpdate 
( 
string %
email& +
,+ ,
string- 3
phone4 9
)9 :
;: ;
Task 
< 
bool 
> 

UserUpdate 
( 
User "
u# $
)$ %
;% &
Task 
< 
bool 
> 
AdministratorUpdate &
(& '
Administrator' 4
a5 6
)6 7
;7 8
Task 
< 
bool 
> 
MemberUpdate 
(  
Members  '
m( )
)) *
;* +
Task 
< 
bool 
> 
ClientUpdate 
(  
Client  &
c' (
)( )
;) *
Task 
< 
bool 
> 
EntrepreneurUpdate %
(% &
Entrepreneur& 2
e3 4
)4 5
;5 6
Task 
< 
bool 
> 
AddMemberLikes !
(! "
Likes" '
l( )
)) *
;* +
Task   
<   
bool   
>   
RemoveMemberLikes   $
(  $ %
Likes  % *
l  + ,
)  , -
;  - .
Task!! 
<!! 
bool!! 
>!! 
	AddReport!! 
(!! 
Report!! #
r!!$ %
)!!% &
;!!& '
Task"" 
<"" 
bool"" 
>"" 
RemoveReport"" 
(""  
Report""  &
r""' (
)""( )
;"") *
}## 
}$$ ñ
rC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\src\Domain\RegisterContext\Entities\Register.cs
	namespace 	
EmprendeUCR
 
. 
Domain 
. 
RegisterContext ,
., -
Entities- 5
{ 
public 

class 
Register 
: 
AggregateRoot )
{ 
public 
string 
Email 
{ 
get !
;! "
set# &
;& '
}( )
public		 
string		 
Password		 
{		  
get		! $
;		$ %
set		& )
;		) *
}		+ ,
public

 
string

 
ConfirmPassword

 %
{

& '
get

( +
;

+ ,
set

- 0
;

0 1
}

2 3
} 
public 

class 
RegisterValidator "
:# $
AbstractValidator% 6
<6 7
Register7 ?
>? @
{ 
public 
RegisterValidator  
(  !
)! "
{ 	
RuleFor 
( 
x 
=> 
x 
. 
Email  
)  !
. 
NotEmpty 
( 
) 
. 
WithMessage '
(' (
$str( >
)> ?
. 
EmailAddress 
( 
) 
.  
WithMessage  +
(+ ,
$str, W
)W X
;X Y
RuleFor 
( 
x 
=> 
x 
. 
Password #
)# $
. 
NotEmpty 
( 
) 
. 
WithMessage '
(' (
$str( B
)B C
. 
MinimumLength 
( 
$num  
)  !
.! "
WithMessage" -
(- .
$str. a
)a b
. 
Matches 
( 
$str !
)! "
." #
WithMessage# .
(. /
$str/ i
)i j
. 
Matches 
( 
$str !
)! "
." #
WithMessage# .
(. /
$str/ i
)i j
. 
Matches 
( 
$str !
)! "
." #
WithMessage# .
(. /
$str/ _
)_ `
;` a
RuleFor 
( 
x 
=> 
x 
. 
ConfirmPassword *
)* +
. 
NotEmpty 
( 
) 
. 
WithMessage '
(' (
$str( R
)R S
. 
Equal 
( 
x 
=> 
x 
. 
Password &
)& '
.' (
WithMessage( 3
(3 4
$str4 R
)R S
;S T
} 	
}   
}!! Ô-
ÅC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\src\Domain\RegisterContext\Repositories\IRegisterRepository.cs
	namespace 	
EmprendeUCR
 
. 
Domain 
. 
RegisterContext ,
., -
Repositories- 9
{ 
public		 

	interface		 
IRegisterRepository		 (
:		) *
IRepository		+ 6
<		6 7
Register		7 ?
>		? @
{

 
Task 
< 
bool 
> 
addUserAsync 
(  
User  $
user% )
)) *
;* +
bool 
verifyUserRecord 
( 
Register &
newRegister' 2
)2 3
;3 4
Task 
< 
bool 
> 
addCredentialsAsync &
(& '
Credentials' 2
credentials3 >
)> ?
;? @
Task 
< 
bool 
> 
addPhoneAsync  
(  !
Phones! '
phones( .
). /
;/ 0
Task 
< 
bool 
> %
addEmailConfirmationAsync ,
(, -
EmailConfirmation- >
emailConfirmation? P
)P Q
;Q R
Task 
< 
IList 
< 
Category 
> 
> 

getParents (
(( )
)) *
;* +
Task 
< 
IList 
< 
Category 
> 
> 
getChildrenOf +
(+ ,
int, /
parentId0 8
)8 9
;9 :
Task 
< 
EmailConfirmation 
>  
getConfirmationEmail  4
(4 5
string5 ;
	hash_code< E
)E F
;F G
Task 
< 
bool 
> 
getUserConfirmEmail &
(& '
string' -
email. 3
)3 4
;4 5
Task 
< 
IList 
< 
District 
> 
> 
getAllDistricts -
(- .
). /
;/ 0
Task 
< 
IList 
< 
Canton 
> 
> 
getAllCantons )
() *
)* +
;+ ,
Task 
< 
IList 
< 
Province 
> 
> 
getAllProvinces -
(- .
). /
;/ 0
Task 
< 
IList 
< 
Category 
> 
> 
getAllCategories .
(. /
)/ 0
;0 1
Task 
< 
bool 
> 
updateUserAsync "
(" #
User# '
user( ,
), -
;- .
Task 
< 
bool 
> 
addMembersAsync "
(" #
Members# *
members+ 2
)2 3
;3 4
Task 
< 
bool 
> 
addClientAsync !
(! "
Client" (
client) /
)/ 0
;0 1
Task 
< 
bool 
>  
addShoppingCartAsync '
(' (
ShoppingCart( 4
shoppingCart5 A
)A B
;B C
Task 
< 
bool 
> 
addLikesAsync  
(  !
Likes! &
likes' ,
), -
;- .
Task 
< 
bool 
>  
addEntrepreneurAsync '
(' (
Entrepreneur( 4
entrepreneur5 A
)A B
;B C
Task 
< 
bool 
> !
addAdministratorAsync (
(( )
Administrator) 6
administrator7 D
)D E
;E F
IList 
< 
Canton 
> 
getListCantons $
($ %
string% +
province, 4
)4 5
;5 6
IList   
<   
District   
>   
getListDistrics   '
(  ' (
string  ( .
canton  / 5
)  5 6
;  6 7
Task!! 
<!! 
bool!! 
>!! "
addActiveAdministrator!! )
(!!) * 
ActiveAdministrators!!* >
activeAdministrator!!? R
)!!R S
;!!S T
bool"" 
AddMemberLikes"" 
("" 
Likes"" !
l""" #
)""# $
;""$ %
Task## 
<## 
bool## 
>## 
verifyPastAdmin## "
(##" #
string### )
email##* /
)##/ 0
;##0 1
bool$$ 
verifyUserType$$ 
($$ 
string$$ "
email$$# (
,$$( )
int$$* -
userType$$. 6
)$$6 7
;$$7 8
EmailConfirmation%%  
getEmailConfirmation%% .
(%%. /
string%%/ 5
email%%6 ;
)%%; <
;%%< =
Task&& 
<&& 
string&& 
>&& 
GetPassword&&  
(&&  !
string&&! '
email&&( -
)&&- .
;&&. /
Task'' 
<'' 
bool'' 
>'' 
verifyMembers''  
(''  !
string''! '
email''( -
)''- .
;''. /
}(( 
})) ⁄
hC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\src\Domain\Reports\Entities\Report.cs
	namespace 	
EmprendeUCR
 
. 
Domain 
. 
Reports $
.$ %
Entities% -
{ 
public 

class 
Report 
{ 
[ 	
Key	 
] 
public 
int 
ID 
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
}( )
public 
string 
Content 
{ 
get  #
;# $
set% (
;( )
}* +
public 
string 
User 
{ 
get  
;  !
set" %
;% &
}' (
public 
Report 
( 
string 
title "
," #
string# )
content* 1
,1 2
string2 8
user9 =
,= >
int> A
idB D
)D E
{E F
Title 
= 
title 
; 
Content 
= 
content 
; 
User 
= 
user 
; 
ID 
= 
id 
; 
} 	
public 
Report 
( 
) 
{ 	
ID   
=   
$num   
;   
Title!! 
=!! 
null!! 
;!! 
Content"" 
="" 
null"" 
;"" 
User## 
=## 
null## 
;## 
}$$ 	
public%% 
void%% 
ChangeContent%% !
(%%! "
string%%" (
content%%) 0
)%%0 1
{%%1 2
Content&& 
=&& 
content&& 
;&& 
}'' 	
public(( 
void(( 
ChangeTitle(( 
(((  
string((  &
title((' ,
)((, -
{((- .
Title)) 
=)) 
title)) 
;)) 
}** 	
public++ 
void++ 
SetUser++ 
(++ 
string++ "
user++# '
)++' (
{++( )
User,, 
=,, 
user,, 
;,, 
}-- 	
}.. 
}// ì
wC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\src\Domain\Reports\Repositories\IReportRepository.cs
	namespace 	
EmprendeUCR
 
. 
Domain 
. 
Reports $
.$ %
Repositories% 1
{ 
public 

	interface 
IReportRepository &
{ 
Task		 
	SaveAsync		 
(		 
Report		 
report		 $
)		$ %
;		% &
Task

 
<

 
IEnumerable

 
<

 
Report

 
>

  
>

  !
GetAllAsync

" -
(

- .
)

. /
;

/ 0
Task 
< 
Report 
? 
> 
GetByIdAsync "
(" #
int# &
id' )
)) *
;* +
} 
} 