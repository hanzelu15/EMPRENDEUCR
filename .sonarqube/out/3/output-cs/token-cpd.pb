õ
vC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\src\Infrastructure\Categories\CategoriesDbContex.cs
	namespace 	
EmprendeUCR
 
. 
Infrastructure $
.$ %

Categories% /
{ 
public		 

class		 
CategoriesDbContext		 $
:		% & 
ApplicationDbContext		' ;
{

 
public 
CategoriesDbContext "
(" #
DbContextOptions# 3
<3 4
CategoriesDbContext4 G
>G H
optionsI P
,P Q
ILoggerR Y
<Y Z
CategoriesDbContextZ m
>m n
loggero u
)u v
: 
base 
( 
options 
, 
logger "
)" #
{ 	
} 	
public 
DbSet 
< 
Category 
> 

Categories )
{* +
get, /
;/ 0
set1 4
;4 5
}6 7
=8 9
null: >
!> ?
;? @
	protected 
override 
void 
OnModelCreating  /
(/ 0
ModelBuilder0 <
modelBuilder= I
)I J
{ 	
base 
. 
OnModelCreating  
(  !
modelBuilder! -
)- .
;. /
modelBuilder 
. 
ApplyConfiguration +
(+ ,
new, /
CategoriesMap0 =
(= >
)> ?
)? @
;@ A
} 	
} 
} ø	
ÄC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\src\Infrastructure\Categories\EntityMappings\CategoriesMap.cs
	namespace 	
EmprendeUCR
 
. 
Infrastructure $
.$ %

Categories% /
./ 0
EntityMappings0 >
{ 
class		 	
CategoriesMap		
 
:		 $
IEntityTypeConfiguration		 2
<		2 3
Category		3 ;
>		; <
{

 
public 
void 
	Configure 
( 
EntityTypeBuilder /
</ 0
Category0 8
>8 9
builder: A
)A B
{ 	
builder 
. 
ToTable 
( 
$str &
)& '
;' (
builder 
. 
HasKey 
( 
c 
=> 
c  !
.! "
Id" $
)$ %
;% &
builder 
. 
Property 
( 
c 
=> !
c" #
.# $
Title$ )
)) *
;* +
} 	
} 
} ≥
ÖC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\src\Infrastructure\Categories\Repositories\CategoriesRepository.cs
	namespace

 	
EmprendeUCR


 
.

 
Infrastructure

 $
.

$ %

Categories

% /
.

/ 0
Repositories

0 <
{ 
internal 
class  
CategoriesRepository '
:( )
ICategoryRepository* =
{ 
private 
readonly 
CategoriesDbContext ,

_dbContext- 7
;7 8
public 
IUnitOfWork 

UnitOfWork %
=>& (

_dbContext) 3
;3 4
public  
CategoriesRepository #
(# $
CategoriesDbContext$ 7

unitOfWork8 B
)B C
{ 	

_dbContext 
= 

unitOfWork #
;# $
} 	
public 
async 
Task 
< 
IEnumerable %
<% &
Category& .
>. /
>/ 0
GetAllAsync1 <
(< =
)= >
{ 	
return 
await 

_dbContext #
.# $

Categories$ .
. 
Select 
( 
c 
=> 
new 
Category %
(% &
c& '
.' (
Title( -
,- .
c/ 0
.0 1
Description1 <
,< =
c> ?
.? @
ParentId@ H
)H I
)I J
. 
ToListAsync 
( 
) 
; 
} 	
public 
async 
Task 
< 
Category "
>" #
GetByIdAsync$ 0
(0 1
int1 4
Id5 7
)7 8
{ 	
return 
await 

_dbContext #
.# $

Categories$ .
. 
FirstOrDefaultAsync  
(  !
t! "
=># %
t& '
.' (
Id( *
==+ -
Id. 0
)0 1
;1 2
} 	
public"" 
async"" 
Task"" 
	SaveAsync"" #
(""# $
Category""$ ,

categories""- 7
)""7 8
{## 	

_dbContext$$ 
.$$ 
Update$$ 
($$ 

categories$$ (
)$$( )
;$$) *
await%% 

_dbContext%% 
.%% 
SaveEntitiesAsync%% .
(%%. /
)%%/ 0
;%%0 1
}&& 	
}'' 
}(( ê
tC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\src\Infrastructure\Chats\TheChat\ChatDbContext.cs
	namespace 	
EmprendeUCR
 
. 
Infrastructure $
.$ %
Chats% *
.* +
TheChat+ 2
{ 
public		 

class		 
ChatDbContext		 
:		   
ApplicationDbContext		! 5
{

 
public 
ChatDbContext 
( 
DbContextOptions -
<- .
ChatDbContext. ;
>; <
options= D
,D E
ILoggerF M
<M N
ChatDbContextN [
>[ \
logger] c
)c d
: 
base 
( 
options 
, 
logger "
)" #
{ 	
} 	
public 
DbSet 
< 
Chat 
> 
Chat 
{  !
get" %
;% &
set' *
;* +
}, -
=. /
null0 4
!4 5
;5 6
	protected 
override 
void 
OnModelCreating  /
(/ 0
ModelBuilder0 <
modelBuilder= I
)I J
{ 	
base 
. 
OnModelCreating  
(  !
modelBuilder! -
)- .
;. /
modelBuilder 
. 
ApplyConfiguration +
(+ ,
new, /
ChatMap0 7
(7 8
)8 9
)9 :
;: ;
} 	
} 
} ©
}C:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\src\Infrastructure\Chats\TheChat\EntityMappings\ChatMap.cs
	namespace 	
EmprendeUCR
 
. 
Infrastructure $
.$ %
Chats% *
.* +
TheChat+ 2
.2 3
EntityMappings3 A
{ 
public		 

class		 
ChatMap		 
:		 $
IEntityTypeConfiguration		 3
<		3 4
Chat		4 8
>		8 9
{

 
public 
void 
	Configure 
( 
EntityTypeBuilder /
</ 0
Chat0 4
>4 5
builder6 =
)= >
{ 	
builder 
. 
ToTable 
( 
$str "
)" #
;# $
builder 
. 
HasKey 
( 
p 
=> 
p  !
.! "
ID" $
)$ %
;% &
} 	
} 
} £
ÇC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\src\Infrastructure\Chats\TheChat\Repositories\ChatRepository.cs
	namespace		 	
EmprendeUCR		
 
.		 
Infrastructure		 $
.		$ %
Chats		% *
.		* +
TheChat		+ 2
.		2 3
Repositories		3 ?
{

 
internal 
class 
ChatRepository !
:" #
IChatRepository$ 3
{ 
private 
readonly 
ChatDbContext &

_dbContext' 1
;1 2
public 
IUnitOfWork 

UnitOfWork %
=>& (

_dbContext) 3
;3 4
public 
ChatRepository 
( 
ChatDbContext +

unitOfWork, 6
)6 7
{ 	

_dbContext 
= 

unitOfWork #
;# $
} 	
public 
async 
Task 
< 
IEnumerable %
<% &
Chat& *
>* +
>+ ,
GetAllAsync- 8
(8 9
)9 :
{ 	
return 
await 

_dbContext #
.# $
Chat$ (
. 
Select 
( 
p 
=> 
new 
Chat !
(! "
p" #
.# $
ID$ &
)& '
)' (
. 
ToListAsync 
( 
) 
; 
} 	
public 
async 
Task 
< 
Chat 
? 
>  
GetByIdAsync! -
(- .
int. 1
id2 4
)4 5
{ 	
return 
await 

_dbContext #
.# $
Chat$ (
. 
FirstOrDefaultAsync  
(  !
p! "
=># %
p& '
.' (
ID( *
==+ -
id. 0
)0 1
;1 2
} 	
public"" 
async"" 
Task"" 
	SaveAsync"" #
(""# $
Chat""$ (
chat"") -
)""- .
{## 	

_dbContext$$ 
.$$ 
Update$$ 
($$ 
chat$$ "
)$$" #
;$$# $
await%% 

_dbContext%% 
.%% 
SaveEntitiesAsync%% .
(%%. /
)%%/ 0
;%%0 1
}&& 	
public'' 
async'' 
Task'' 
<'' 
Chat'' 
?'' 
>''  
AddChat''! (
(''( )
)'') *
{(( 	
Chat)) 
chat)) 
=)) 
new)) 
Chat))  
())  !
)))! "
;))" #
await** 

_dbContext** 
.** 
AddAsync** %
(**% &
chat**& *
)*** +
;**+ ,
await++ 

_dbContext++ 
.++ 
SaveChangesAsync++ -
(++- .
)++. /
;++/ 0
return,, 
chat,, 
;,, 
}-- 	
}.. 
}// ∑	
ÉC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\src\Infrastructure\Chats\TheMessage\EntityMappings\MessageMap.cs
	namespace 	
EmprendeUCR
 
. 
Infrastructure $
.$ %
Chats% *
.* +

TheMessage+ 5
.5 6
EntityMappings6 D
{ 
public		 

class		 

MessageMap		 
:		 $
IEntityTypeConfiguration		 6
<		6 7
Message		7 >
>		> ?
{

 
public 
void 
	Configure 
( 
EntityTypeBuilder /
</ 0
Message0 7
>7 8
builder9 @
)@ A
{ 	
builder 
. 
ToTable 
( 
$str %
)% &
;& '
builder 
. 
HasKey 
( 
p 
=> 
new  #
{# $
p% &
.& '
Chat_ID' .
,. /
p0 1
.1 2
Message_Date2 >
}> ?
)? @
;@ A
} 	
} 
} Æ
zC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\src\Infrastructure\Chats\TheMessage\MessageDbContext.cs
	namespace 	
EmprendeUCR
 
. 
Infrastructure $
.$ %
Chats% *
.* +

TheMessage+ 5
{ 
public		 

class		 
MessageDbContext		 !
:		" # 
ApplicationDbContext		$ 8
{

 
public 
MessageDbContext 
(  
DbContextOptions  0
<0 1
MessageDbContext1 A
>A B
optionsC J
,J K
ILoggerL S
<S T
MessageDbContextT d
>d e
loggerf l
)l m
: 
base 
( 
options 
, 
logger "
)" #
{ 	
} 	
public 
DbSet 
< 
Message 
> 
Message %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
=4 5
null6 :
!: ;
;; <
	protected 
override 
void 
OnModelCreating  /
(/ 0
ModelBuilder0 <
modelBuilder= I
)I J
{ 	
base 
. 
OnModelCreating  
(  !
modelBuilder! -
)- .
;. /
modelBuilder 
. 
ApplyConfiguration +
(+ ,
new, /

MessageMap0 :
(: ;
); <
)< =
;= >
} 	
} 
} ü
àC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\src\Infrastructure\Chats\TheMessage\Repositories\MessageRepository.cs
	namespace 	
EmprendeUCR
 
. 
Infrastructure $
.$ %
Chats% *
.* +

TheMessage+ 5
.5 6
Repositories6 B
{ 
internal 
class 
MessageRepository $
:% &
IMessageRepository' 9
{ 
private 
readonly 
MessageDbContext )

_dbContext* 4
;4 5
public 
IUnitOfWork 

UnitOfWork %
=>& (

_dbContext) 3
;3 4
public 
MessageRepository  
(  !
MessageDbContext! 1

unitOfWork2 <
)< =
{ 	

_dbContext 
= 

unitOfWork #
;# $
} 	
public 
async 
Task 
< 
IEnumerable %
<% &
Message& -
>- .
>. /
GetAllAsync0 ;
(; <
)< =
{ 	
return 
await 

_dbContext #
.# $
Message$ +
. 
Select 
( 
p 
=> 
new 
Message $
($ %
p% &
.& '
Chat_ID' .
,. /
p0 1
.1 2
Writer_User_Email2 C
,C D
pE F
.F G
Reader_User_EmailG X
,X Y
pZ [
.[ \
Content\ c
)c d
)d e
. 
ToListAsync 
( 
) 
; 
} 	
public 
async 
Task 
< 
Message !
?! "
>" #
GetByIdAsync$ 0
(0 1
int1 4
chatID5 ;
,; <
DateTimeOffset= K
dateL P
)P Q
{ 	
return 
await 

_dbContext #
.# $
Message$ +
. 
FirstOrDefaultAsync  
(  !
p! "
=># %
p& '
.' (
Chat_ID( /
==0 2
chatID3 9
&&: <
p= >
.> ?
Message_Date? K
==L N
dateO S
)S T
;T U
}   	
public$$ 
async$$ 
Task$$ 
	SaveAsync$$ #
($$# $
Message$$$ +
message$$, 3
)$$3 4
{%% 	

_dbContext&& 
.&& 
Update&& 
(&& 
message&& %
)&&% &
;&&& '
await'' 

_dbContext'' 
.'' 
SaveEntitiesAsync'' .
(''. /
)''/ 0
;''0 1
}(( 	
public** 
async** 
Task** 

AddMessage** $
(**$ %
Message**% ,
message**- 4
)**4 5
{++ 	
await,, 

_dbContext,, 
.,, 
AddAsync,, %
(,,% &
message,,& -
),,- .
;,,. /
await-- 

_dbContext-- 
.-- 
SaveChangesAsync-- -
(--- .
)--. /
;--/ 0
}.. 	
}// 
}00 ”	
çC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\src\Infrastructure\Chats\TheUtilizesChat\EntityMappings\UtilizesChatMap.cs
	namespace 	
EmprendeUCR
 
. 
Infrastructure $
.$ %
Chats% *
.* +
TheUtilizesChat+ :
.: ;
EntityMappings; I
{ 
public		 

class		 
UtilizesChatMap		  
:		! "$
IEntityTypeConfiguration		# ;
<		; <
UtilizesChat		< H
>		H I
{

 
public 
void 
	Configure 
( 
EntityTypeBuilder /
</ 0
UtilizesChat0 <
>< =
builder> E
)E F
{ 	
builder 
. 
ToTable 
( 
$str +
)+ ,
;, -
builder 
. 
HasKey 
( 
p 
=> 
new  #
{$ %
p& '
.' (
Chat_ID( /
,/ 0
p1 2
.2 3

User_Email3 =
}> ?
)? @
;@ A
} 	
} 
} Ó
íC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\src\Infrastructure\Chats\TheUtilizesChat\Repositories\UtilizesChatRepository.cs
	namespace

 	
EmprendeUCR


 
.

 
Infrastructure

 $
.

$ %
Chats

% *
.

* +
TheUtilizesChat

+ :
.

: ;
Repositories

; G
{ 
internal 
class "
UtilizesChatRepository )
:* +#
IUtilizesChatRepository, C
{ 
private 
readonly !
UtilizesChatDbContext .

_dbContext/ 9
;9 :
public 
IUnitOfWork 

UnitOfWork %
=>& (

_dbContext) 3
;3 4
public "
UtilizesChatRepository %
(% &!
UtilizesChatDbContext& ;

unitOfWork< F
)F G
{ 	

_dbContext 
= 

unitOfWork #
;# $
} 	
public 
async 
Task 
< 
IEnumerable %
<% &
UtilizesChat& 2
>2 3
>3 4
GetAllAsync5 @
(@ A
)A B
{ 	
return 
await 

_dbContext #
.# $
UtilizesChat$ 0
. 
Select 
( 
p 
=> 
new 
UtilizesChat )
() *
p* +
.+ ,
Chat_ID, 3
,3 4
p5 6
.6 7

User_Email7 A
)A B
)B C
. 
ToListAsync 
( 
) 
; 
} 	
public 
async 
Task 
< 
UtilizesChat &
?& '
>' (
GetByIdAsync) 5
(5 6
int6 9
chatID: @
,@ A
stringB H
	userEmailI R
)R S
{ 	
return 
await 

_dbContext #
.# $
UtilizesChat$ 0
. 
FirstOrDefaultAsync  
(  !
p! "
=># %
p& '
.' (
Chat_ID( /
==0 2
chatID3 9
&&: <
p= >
.> ?

User_Email? I
==J L
	userEmailM V
)V W
;W X
} 	
public"" 
async"" 
Task"" 
	SaveAsync"" #
(""# $
UtilizesChat""$ 0
utilizesChat""1 =
)""= >
{## 	

_dbContext$$ 
.$$ 
Update$$ 
($$ 
utilizesChat$$ *
)$$* +
;$$+ ,
await%% 

_dbContext%% 
.%% 
SaveEntitiesAsync%% .
(%%. /
)%%/ 0
;%%0 1
}&& 	
public(( 
async(( 
Task(( 
AddUtilizesChat(( )
((() *
UtilizesChat((* 6
utilizesChat((7 C
)((C D
{)) 	
await** 

_dbContext** 
.** 
AddAsync** %
(**% &
utilizesChat**& 2
)**2 3
;**3 4
await++ 

_dbContext++ 
.++ 
SaveChangesAsync++ -
(++- .
)++. /
;++/ 0
},, 	
}-- 
}.. ·
ÑC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\src\Infrastructure\Chats\TheUtilizesChat\UtilizesChatDbContext.cs
	namespace 	
EmprendeUCR
 
. 
Infrastructure $
.$ %
Chats% *
.* +
TheUtilizesChat+ :
{ 
public		 

class		 !
UtilizesChatDbContext		 &
:		' ( 
ApplicationDbContext		) =
{

 
public !
UtilizesChatDbContext $
($ %
DbContextOptions% 5
<5 6!
UtilizesChatDbContext6 K
>K L
optionsM T
,T U
ILoggerV ]
<] ^!
UtilizesChatDbContext^ s
>s t
loggeru {
){ |
: 
base 
( 
options 
, 
logger "
)" #
{ 	
} 	
public 
DbSet 
< 
UtilizesChat !
>! "
UtilizesChat# /
{0 1
get2 5
;5 6
set7 :
;: ;
}< =
=> ?
null@ D
!D E
;E F
	protected 
override 
void 
OnModelCreating  /
(/ 0
ModelBuilder0 <
modelBuilder= I
)I J
{ 	
base 
. 
OnModelCreating  
(  !
modelBuilder! -
)- .
;. /
modelBuilder 
. 
ApplyConfiguration +
(+ ,
new, /
UtilizesChatMap0 ?
(? @
)@ A
)A B
;B C
} 	
} 
} £
ÇC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\src\Infrastructure\ConfirmAdminContext\ConfirmAdminDbContext.cs
	namespace 	
EmprendeUCR
 
. 
Infrastructure $
.$ %
ConfirmAdminContext% 8
{ 
public 

partial 
class !
ConfirmAdminDbContext .
:/ 0 
ApplicationDbContext1 E
{ 
public !
ConfirmAdminDbContext $
($ %
DbContextOptions% 5
<5 6!
ConfirmAdminDbContext6 K
>K L
optionsM T
,T U
ILoggerV ]
<] ^!
ConfirmAdminDbContext^ s
>s t
loggeru {
){ |
: 	
base
 
( 
options 
, 
logger 
) 
{ 	
} 	
	protected 
override 
void 
OnConfiguring  -
(- .#
DbContextOptionsBuilder. E
optionsBuilderF T
)T U
{ 	
optionsBuilder 
. 
LogTo  
(  !
message! (
=>) +
Debug, 1
.1 2
	WriteLine2 ;
(; <
message< C
)C D
)D E
;E F
} 	
public 
virtual 
DbSet 
<  
ActiveAdministrators 1
>1 2 
ActiveAdministrators3 G
{H I
getJ M
;M N
setO R
;R S
}T U
public 
virtual 
DbSet 
< 
User !
>! "
User# '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
public 
virtual 
DbSet 
< 
Mail !
>! "
Mail# '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
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
modelBuilder"" 
."" 
Ignore"" 
<""  
Mail""  $
>""$ %
(""% &
)""& '
;""' (
modelBuilder## 
.## 
ApplyConfiguration## +
(##+ ,
new##, /#
ActiveAdministratorsMap##0 G
(##G H
)##H I
)##I J
;##J K
modelBuilder$$ 
.$$ 
ApplyConfiguration$$ +
($$+ ,
new$$, /
UserMap$$0 7
($$7 8
)$$8 9
)$$9 :
;$$: ;
}%% 	
}&& 
}'' «0
êC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\src\Infrastructure\ConfirmAdminContext\Repositories\ConfirmAdminRepository.cs
	namespace 	
EmprendeUCR
 
. 
Infrastructure $
.$ %
ConfirmAdminContext% 8
.8 9
Repositories9 E
{ 
public 

class "
ConfirmAdminRepository '
:( )#
IConfirmAdminRepository* A
{ 
private 
readonly !
ConfirmAdminDbContext .

_dbContext/ 9
;9 :
public 
IUnitOfWork 

UnitOfWork %
=>& (

_dbContext) 3
;3 4
public "
ConfirmAdminRepository %
(% &!
ConfirmAdminDbContext& ;
	dbContext< E
)E F
{ 	

_dbContext 
= 
	dbContext "
;" #
} 	
public 
IList 
<  
ActiveAdministrators )
>) *!
getAdministratorsVoid+ @
(@ A
)A B
{C D
return 

_dbContext 
.  
ActiveAdministrators 2
.2 3
Where3 8
(8 9
l9 :
=>; =
l> ?
.? @
Response@ H
==I K
falseL Q
)Q R
.R S
ToListS Y
(Y Z
)Z [
;[ \
} 	
public 
async 
Task 
< 
User 
> 
getAdminUser  ,
(, -
string- 3
email4 9
)9 :
{; <
return 
await 

_dbContext #
.# $
User$ (
.( )
FirstOrDefaultAsync) <
(< =
c= >
=>? A
cB C
.C D
EmailD I
.I J
EqualsJ P
(P Q
emailQ V
)V W
)W X
;X Y
} 	
public 
async 
Task 
< 
bool 
> 
acceptAdmin  +
(+ , 
ActiveAdministrators, @
adminA F
)F G
{H I
bool   
updated   
=   
false    
;    ! 
ActiveAdministrators!!  
activeAdmin!!! ,
=!!- .

_dbContext!!/ 9
.!!9 : 
ActiveAdministrators!!: N
.!!N O
Find!!O S
(!!S T
admin!!T Y
.!!Y Z
Email!!Z _
)!!_ `
;!!` a
if"" 
("" 
activeAdmin"" 
!="" 
null"" #
)""# $
{## 
activeAdmin$$ 
.$$ 
Response$$ $
=$$% &
true$$' +
;$$+ ,
activeAdmin%% 
.%% 
Confirm%% #
=%%$ %
true%%& *
;%%* +
activeAdmin&& 
.&& 
Active&& "
=&&# $
true&&% )
;&&) *

_dbContext(( 
.((  
ActiveAdministrators(( /
.((/ 0
Update((0 6
(((6 7
activeAdmin((7 B
)((B C
;((C D
await)) 

_dbContext))  
.))  !
SaveChangesAsync))! 1
())1 2
)))2 3
;))3 4
updated** 
=** 
true** 
;** 
}++ 
return,, 
updated,, 
;,, 
}-- 	
public.. 
async.. 
Task.. 
<.. 
bool.. 
>.. 
declineAdmin..  ,
(.., - 
ActiveAdministrators..- A
admin..B G
)..G H
{..I J
bool// 
updated// 
=// 
false//  
;//  ! 
ActiveAdministrators00  
activeAdmin00! ,
=00- .

_dbContext00/ 9
.009 : 
ActiveAdministrators00: N
.00N O
Find00O S
(00S T
admin00T Y
.00Y Z
Email00Z _
)00_ `
;00` a
if11 
(11 
activeAdmin11 
!=11 
null11 #
)11# $
{22 
activeAdmin33 
.33 
Response33 $
=33% &
true33' +
;33+ ,
activeAdmin44 
.44 
Confirm44 #
=44$ %
false44& +
;44+ ,
activeAdmin55 
.55 
Active55 "
=55# $
false55% *
;55* +

_dbContext77 
.77  
ActiveAdministrators77 /
.77/ 0
Update770 6
(776 7
activeAdmin777 B
)77B C
;77C D
await88 

_dbContext88  
.88  !
SaveChangesAsync88! 1
(881 2
)882 3
;883 4
updated99 
=99 
true99 
;99 
}:: 
return;; 
updated;; 
;;; 
}<< 	
public>> 
async>> 
Task>> 
<>> 
bool>> 
>>> 

deteleUser>>  *
(>>* +
string>>+ 1
email>>2 7
)>>7 8
{>>9 :
bool?? 
deleted?? 
=?? 
false??  
;??  !
User@@ 
user@@ 
=@@ 

_dbContext@@ "
.@@" #
User@@# '
.@@' (
Find@@( ,
(@@, -
email@@- 2
)@@2 3
;@@3 4
ifAA 
(AA 
userAA 
!=AA 
nullAA 
)AA 
{BB 

_dbContextCC 
.CC 
UserCC 
.CC  
RemoveCC  &
(CC& '
userCC' +
)CC+ ,
;CC, -
awaitDD 

_dbContextDD  
.DD  !
SaveChangesAsyncDD! 1
(DD1 2
)DD2 3
;DD3 4
deletedEE 
=EE 
trueEE 
;EE 
}FF 
returnGG 
deletedGG 
;GG 
}HH 	
}II 
}JJ °"
rC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\src\Infrastructure\Core\ApplicationDbContext.cs
	namespace 	
EmprendeUCR
 
. 
Infrastructure $
.$ %
Core% )
{		 
public

 

class

  
ApplicationDbContext

 %
:

& '
	DbContext

( 1
,

1 2
IUnitOfWork

3 >
{ 
private 
readonly 
ILogger  
<  ! 
ApplicationDbContext! 5
>5 6
_logger7 >
;> ?
private !
IDbContextTransaction %
?% &
_currentTransaction' :
;: ;
public !
IDbContextTransaction $
?$ %!
GetCurrentTransaction& ;
(; <
)< =
=>> @
_currentTransactionA T
;T U
public 
bool  
HasActiveTransaction (
=>) +
_currentTransaction, ?
!=@ B
nullC G
;G H
public 
async 
Task !
BeginTransactionAsync /
(/ 0
)0 1
{ 	
if 
( 
_currentTransaction #
!=$ &
null' +
)+ ,
return- 3
;3 4
_currentTransaction 
=  !
await" '
Database( 0
.0 1!
BeginTransactionAsync1 F
(F G
)G H
;H I
} 	
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
:d e
basef j
(j k
optionsk r
)r s
{ 	
_logger 
= 
logger 
; 
} 	
public 
async 
Task "
CommitTransactionAsync 0
(0 1
)1 2
{ 	
if 
( 
_currentTransaction #
==$ &
null' +
)+ ,
throw- 2
new3 6%
InvalidOperationException7 P
(P Q
$"Q S
$strS s
"s t
)t u
;u v
try 
{ 
await 
SaveChangesAsync &
(& '
)' (
;( )
await 
_currentTransaction )
.) *
CommitAsync* 5
(5 6
)6 7
;7 8
}   
catch!! 
{"" 
RollbackTransaction## #
(### $
)##$ %
;##% &
throw$$ 
;$$ 
}%% 
finally&& 
{'' 
if(( 
((( 
_currentTransaction(( '
!=((( *
null((+ /
)((/ 0
{)) 
_currentTransaction** '
.**' (
Dispose**( /
(**/ 0
)**0 1
;**1 2
_currentTransaction++ '
=++( )
null++* .
;++. /
},, 
}-- 
}.. 	
public00 
void00 
RollbackTransaction00 '
(00' (
)00( )
{11 	
try22 
{33 
_currentTransaction44 #
?44# $
.44$ %
Rollback44% -
(44- .
)44. /
;44/ 0
}55 
finally66 
{77 
if88 
(88 
_currentTransaction88 '
!=88( *
null88+ /
)88/ 0
{99 
_currentTransaction:: '
.::' (
Dispose::( /
(::/ 0
)::0 1
;::1 2
_currentTransaction;; '
=;;( )
null;;* .
;;;. /
}<< 
}== 
}>> 	
public@@ 
async@@ 
Task@@ 
SaveEntitiesAsync@@ +
(@@+ ,
CancellationToken@@, =
cancellationToken@@> O
=@@P Q
default@@R Y
)@@Y Z
{AA 	
awaitDD 
baseDD 
.DD 
SaveChangesAsyncDD '
(DD' (
cancellationTokenDD( 9
)DD9 :
;DD: ;
}EE 	
}FF 
}GG Ì
ÑC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\src\Infrastructure\Core\EntityMappings\ActiveAdministratorsMap.cs
	namespace

 	
EmprendeUCR


 
.

 
Infrastructure

 $
.

$ %
Core

% )
.

) *
EntityMappings

* 8
{ 
class 	#
ActiveAdministratorsMap
 !
:" #$
IEntityTypeConfiguration$ <
<< = 
ActiveAdministrators= Q
>Q R
{ 
public 
void 
	Configure 
( 
EntityTypeBuilder /
</ 0 
ActiveAdministrators0 D
>D E
builderF M
)M N
{ 	
builder 
. 
ToTable 
( 
$str 2
)2 3
. 
HasKey 
( 
admin 
=>  
admin! &
.& '
Email' ,
), -
;- .
builder 
. 
Property 
( 
admin "
=># %
admin& +
.+ ,
Email, 1
)1 2
. 

IsRequired 
( 
) 
. 
HasMaxLength 
( 
$num !
)! "
. 
HasColumnName 
( 
$str &
)& '
;' (
builder 
. 
Property 
( 
admin "
=># %
admin& +
.+ ,
Creation_Date, 9
)9 :
. 

IsRequired 
( 
) 
. 
HasColumnName 
( 
$str .
). /
;/ 0
builder 
. 
Property 
( 
admin "
=># %
admin& +
.+ ,
Response, 4
)4 5
. 

IsRequired 
( 
) 
. 
HasColumnName 
( 
$str )
)) *
;* +
builder   
.   
Property   
(   
admin   "
=>  # %
admin  & +
.  + ,
Confirm  , 3
)  3 4
.!! 

IsRequired!! 
(!! 
)!! 
."" 
HasColumnName"" 
("" 
$str"" (
)""( )
;"") *
builder$$ 
.$$ 
Property$$ 
($$ 
admin$$ "
=>$$# %
admin$$& +
.$$+ ,
Active$$, 2
)$$2 3
.%% 

IsRequired%% 
(%% 
)%% 
.&& 
HasColumnName&& 
(&& 
$str&& '
)&&' (
;&&( )
builder(( 
.(( 
Property(( 
((( 
admin(( "
=>((# %
admin((& +
.((+ ,
Response_Date((, 9
)((9 :
.)) 
HasColumnName)) 
()) 
$str)) .
))). /
;))/ 0
}** 	
}++ 
},, ≥
}C:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\src\Infrastructure\Core\EntityMappings\AdministratorMap.cs
	namespace 	
EmprendeUCR
 
. 
Infrastructure $
.$ %
Core% )
.) *
EntityMappings* 8
{ 
class 	
AdministratorMap
 
: $
IEntityTypeConfiguration 5
<5 6
Administrator6 C
>C D
{ 
public		 
void		 
	Configure		 
(		 
EntityTypeBuilder		 /
<		/ 0
Administrator		0 =
>		= >
builder		? F
)		F G
{

 	
builder 
. 
ToTable 
( 
$str +
)+ ,
. 
HasKey 
( 
admin 
=>  
admin! &
.& '

User_Email' 1
)1 2
;2 3
builder 
. 
Property 
( 
admin "
=># %
admin& +
.+ ,

User_Email, 6
)6 7
. 

IsRequired 
( 
) 
. 
HasMaxLength 
( 
$num !
)! "
. 
HasColumnName 
( 
$str +
)+ ,
;, -
} 	
} 
} À
|C:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\src\Infrastructure\Core\EntityMappings\BannedAcountMap.cs
	namespace 	
EmprendeUCR
 
. 
Infrastructure $
.$ %
Core% )
.) *
EntityMappings* 8
{ 
public 

class 
BannedAcountMap  
:! "$
IEntityTypeConfiguration# ;
<; <
BannedAcount< H
>H I
{ 
public		 
void		 
	Configure		 
(		 
EntityTypeBuilder		 /
<		/ 0
BannedAcount		0 <
>		< =
builder		> E
)		E F
{

 	
builder 
. 
ToTable 
( 
$str ,
), -
;- .
builder 
. 
HasKey 
( 
b 
=> 
b  !
.! "
	UserEmail" +
)+ ,
;, -
builder 
. 
Property 
( 
b 
=> !
b" #
.# $
	UserEmail$ -
)- .
. 
HasMaxLength 
( 
$num "
)" #
. 
HasColumnName 
( 
$str *
)* +
;+ ,
builder 
. 
Property 
( 
b 
=> !
b" #
.# $
	BeginDate$ -
)- .
. 
HasColumnName 
( 
$str *
)* +
;+ ,
builder 
. 
Property 
( 
b 
=> !
b" #
.# $

FinishDate$ .
). /
. 
HasColumnName 
( 
$str +
)+ ,
;, -
builder 
. 
Property 
( 
b 
=> !
b" #
.# $
Type$ (
)( )
. 
HasColumnName 
( 
$str %
)% &
;& '
} 	
} 
} Ø
vC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\src\Infrastructure\Core\EntityMappings\CantonMap.cs
	namespace 	
EmprendeUCR
 
. 
Infrastructure $
.$ %
Core% )
.) *
EntityMappings* 8
{ 
public 

class 
	CantonMap 
: $
IEntityTypeConfiguration 5
<5 6
Canton6 <
>< =
{ 
public		 
void		 
	Configure		 
(		 
EntityTypeBuilder		 /
<		/ 0
Canton		0 6
>		6 7
builder		8 ?
)		? @
{

 	
builder 
. 
ToTable 
( 
$str $
)$ %
;% &
builder 
. 
HasKey 
( 
e 
=> 
new  #
{$ %
e& '
.' (
Name( ,
,, -
e. /
./ 0
Province_Name0 =
}= >
)? @
;@ A
builder 
. 
Property 
( 
e 
=> !
e" #
.# $
Name$ (
)( )
. 
HasColumnName 
( 
$str %
)% &
. 

IsRequired 
( 
) 
; 
builder 
. 
Property 
( 
e 
=> !
e" #
.# $
Province_Name$ 1
)1 2
. 
HasColumnName 
( 
$str .
). /
. 

IsRequired 
( 
) 
; 
} 	
} 
} ¿
xC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\src\Infrastructure\Core\EntityMappings\CategoryMap.cs
	namespace

 	
EmprendeUCR


 
.

 
Infrastructure

 $
.

$ %
Core

% )
.

) *
EntityMappings

* 8
{ 
public 

class 
CategoryMap 
: $
IEntityTypeConfiguration 7
<7 8
Category8 @
>@ A
{ 
public 
void 
	Configure 
( 
EntityTypeBuilder /
</ 0
Category0 8
>8 9
builder: A
)A B
{ 	
builder 
. 
ToTable 
( 
$str &
)& '
;' (
builder 
. 
HasKey 
( 
e 
=> 
new  #
{$ %
e& '
.' (
Id( *
}* +
)+ ,
;, -
builder 
. 
Property 
( 
e 
=> !
e" #
.# $
Id$ &
)& '
. 
HasColumnName 
( 
$str #
)# $
. 

IsRequired 
( 
) 
; 
builder 
. 
Property 
( 
e 
=> !
e" #
.# $
ParentId$ ,
), -
. 
HasColumnName 
( 
$str )
)) *
;* +
builder 
. 
Property 
( 
e 
=> !
e" #
.# $
Title$ )
)) *
. 
HasColumnName 
( 
$str &
)& '
. 

IsRequired 
( 
) 
. 
HasMaxLength 
( 
$num  
)  !
;! "
builder   
.   
Property   
(   
e   
=>   !
e  " #
.  # $
Description  $ /
)  / 0
.!! 
HasColumnName!! 
(!! 
$str!! ,
)!!, -
."" 
HasMaxLength"" 
("" 
$num""  
)""  !
;""! "
}## 	
}$$ 
}%% Ø
vC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\src\Infrastructure\Core\EntityMappings\ClientMap.cs
	namespace 	
EmprendeUCR
 
. 
Infrastructure $
.$ %
Core% )
.) *
EntityMappings* 8
{ 
public 

class 
	ClientMap 
: $
IEntityTypeConfiguration 5
<5 6
Client6 <
>< =
{ 
public		 
void		 
	Configure		 
(		 
EntityTypeBuilder		 /
<		/ 0
Client		0 6
>		6 7
builder		8 ?
)		? @
{

 	
builder 
. 
ToTable 
( 
$str $
)$ %
. 
HasKey 
( 
client 
=> !
client" (
.( )

User_Email) 3
)3 4
;4 5
builder 
. 
Property 
( 
client #
=>$ &
client' -
.- .

User_Email. 8
)8 9
. 

IsRequired 
(  
)  !
. 
HasMaxLength !
(! "
$num" %
)% &
. 
HasColumnName "
(" #
$str# /
)/ 0
;0 1
} 	
} 
} Ò
{C:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\src\Infrastructure\Core\EntityMappings\CredentialsMap.cs
	namespace 	
EmprendeUCR
 
. 
Infrastructure $
.$ %
Core% )
.) *
EntityMappings* 8
{ 
class 	
CredentialsMap
 
: $
IEntityTypeConfiguration 3
<3 4
Credentials4 ?
>? @
{ 
public		 
void		 
	Configure		 
(		 
EntityTypeBuilder		 /
<		/ 0
Credentials		0 ;
>		; <
builder		= D
)		D E
{

 	
builder 
. 
ToTable 
( 
$str )
)) *
;* +
builder 
. 
HasKey 
( 
c 
=> 
c  !
.! "

User_Email" ,
), -
;- .
builder 
. 
Property 
( 
e 
=> !
e" #
.# $

User_Email$ .
). /
. 
HasMaxLength 
( 
$num !
)! "
. 

IsRequired 
( 
) 
. 
HasColumnName 
( 
$str +
)+ ,
;, -
builder 
. 
Property 
( 
e 
=> !
e" #
.# $
Password$ ,
), -
. 
HasMaxLength 
( 
$num !
)! "
. 

IsRequired 
( 
) 
. 
HasColumnName 
( 
$str )
)) *
;* +
} 	
} 
} Ÿ
xC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\src\Infrastructure\Core\EntityMappings\DistrictMap.cs
	namespace 	
EmprendeUCR
 
. 
Infrastructure $
.$ %
Core% )
.) *
EntityMappings* 8
{ 
public 

class 
DistrictMap 
: $
IEntityTypeConfiguration 7
<7 8
District8 @
>@ A
{ 
public		 
void		 
	Configure		 
(		 
EntityTypeBuilder		 /
<		/ 0
District		0 8
>		8 9
builder		: A
)		A B
{

 	
builder 
. 
ToTable 
( 
$str &
)& '
;' (
builder 
. 
HasKey 
( 
e 
=> 
new  #
{$ %
e& '
.' (
Name( ,
,, -
e. /
./ 0
Province_Name0 =
,= >
e? @
.@ A
Canton_NameA L
}M N
)O P
;P Q
builder 
. 
Property 
( 
e 
=> !
e" #
.# $
Name$ (
)( )
. 
HasColumnName 
( 
$str %
)% &
. 

IsRequired 
( 
) 
; 
builder 
. 
Property 
( 
e 
=> !
e" #
.# $
Province_Name$ 1
)1 2
. 
HasColumnName 
( 
$str .
). /
. 

IsRequired 
( 
) 
; 
builder 
. 
Property 
( 
e 
=> !
e" #
.# $
Canton_Name$ /
)/ 0
. 
HasColumnName 
( 
$str ,
), -
. 

IsRequired 
( 
) 
; 
} 	
} 
} ø
ÅC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\src\Infrastructure\Core\EntityMappings\EmailConfirmationMap.cs
	namespace 	
EmprendeUCR
 
. 
Infrastructure $
.$ %
Core% )
.) *
EntityMappings* 8
{ 
class 	 
EmailConfirmationMap
 
:  $
IEntityTypeConfiguration! 9
<9 :
EmailConfirmation: K
>K L
{ 
public		 
void		 
	Configure		 
(		 
EntityTypeBuilder		 /
<		/ 0
EmailConfirmation		0 A
>		A B
builder		C J
)		J K
{

 	
builder 
. 
ToTable 
( 
$str 0
)0 1
;1 2
builder 
. 
HasKey 
( 
c 
=> 
c  !
.! "
Email" '
)' (
;( )
builder 
. 
Property 
( 
e 
=> !
e" #
.# $
Email$ )
)) *
. 
HasMaxLength 
( 
$num !
)! "
. 

IsRequired 
( 
) 
. 
HasColumnName 
( 
$str &
)& '
;' (
builder 
. 
Property 
( 
e 
=> !
e" #
.# $
	Hash_Code$ -
)- .
. 
HasMaxLength 
( 
$num !
)! "
. 

IsRequired 
( 
) 
. 
HasColumnName 
( 
$str *
)* +
;+ ,
builder 
. 
Property 
( 
e 
=> !
e" #
.# $
Expiration_Date$ 3
)3 4
. 

IsRequired 
( 
) 
. 
HasColumnName 
( 
$str 0
)0 1
;1 2
builder 
. 
Property 
( 
e 
=> !
e" #
.# $
Creation_Date$ 1
)1 2
. 

IsRequired 
( 
) 
. 
HasColumnName 
( 
$str .
). /
;/ 0
}   	
}!! 
}"" Ø
|C:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\src\Infrastructure\Core\EntityMappings\EntrepreneurMap.cs
	namespace 	
EmprendeUCR
 
. 
Infrastructure $
.$ %
Core% )
.) *
EntityMappings* 8
{ 
class 	
EntrepreneurMap
 
: $
IEntityTypeConfiguration 4
<4 5
Entrepreneur5 A
>A B
{ 
public		 
void		 
	Configure		 
(		 
EntityTypeBuilder		 /
<		/ 0
Entrepreneur		0 <
>		< =
builder		> E
)		E F
{

 	
builder 
. 
ToTable 
( 
$str *
)* +
. 
HasKey 
( 
entre 
=>  
entre! &
.& '

User_Email' 1
)1 2
;2 3
builder 
. 
Property 
( 
entre "
=># %
entre& +
.+ ,

User_Email, 6
)6 7
. 

IsRequired 
(  
)  !
. 
HasMaxLength !
(! "
$num" %
)% &
. 
HasColumnName "
(" #
$str# /
)/ 0
;0 1
} 	
} 
} ¥
zC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\src\Infrastructure\Core\EntityMappings\Is_Able_ToMap.cs
	namespace 	
EmprendeUCR
 
. 
Infrastructure $
.$ %
Core% )
.) *
EntityMappings* 8
{ 
public 

class 
Is_Able_ToMap 
:  $
IEntityTypeConfiguration! 9
<9 :

Is_Able_To: D
>D E
{ 
public		 
void		 
	Configure		 
(		 
EntityTypeBuilder		 /
<		/ 0

Is_Able_To		0 :
>		: ;
builder		< C
)		C D
{

 	
builder 
. 
ToTable 
( 
$str (
)( )
;) *
builder 
. 
HasKey 
( 
e 
=> 
new  #
{$ %
e& '
.' (
Email( -
,- .
e/ 0
.0 1
Role_Id1 8
,8 9
e: ;
.; <
Permission_Id< I
}J K
)L M
;M N
builder 
. 
Property 
( 
e 
=> !
e" #
.# $
Email$ )
)) *
. 

IsRequired 
(  
)  !
. 
HasMaxLength !
(! "
$num" %
)% &
. 
HasColumnName "
(" #
$str# *
)* +
;+ ,
builder 
. 
Property 
( 
e 
=> !
e" #
.# $
Role_Id$ +
)+ ,
. 

IsRequired 
(  
)  !
. 
HasColumnName "
(" #
$str# ,
), -
;- .
builder 
. 
Property 
( 
e 
=> !
e" #
.# $
Permission_Id$ 1
)1 2
. 

IsRequired 
(  
)  !
. 
HasColumnName "
(" #
$str# 2
)2 3
;3 4
} 	
} 
} Ã
xC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\src\Infrastructure\Core\EntityMappings\Is_OfferMap.cs
	namespace 	
EmprendeUCR
 
. 
Infrastructure $
.$ %
Core% )
.) *
EntityMappings* 8
{ 
class 	
Is_OfferMap
 
: $
IEntityTypeConfiguration 0
<0 1
Is_Offer1 9
>9 :
{ 
public		 
void		 
	Configure		 
(		 
EntityTypeBuilder		 /
<		/ 0
Is_Offer		0 8
>		8 9
builder		: A
)		A B
{

 	
builder 
. 
ToTable 
( 
$str &
)& '
;' (
builder 
. 
HasKey 
( 
b 
=> 
new  #
{$ %
b& '
.' (
Offer_ID( 0
,0 1
b2 3
.3 4
Code_ID4 ;
,; <
b= >
.> ?

User_Email? I
,I J
bK L
.L M
Category_IDM X
}Y Z
)Z [
;[ \
builder 
. 
Property 
( 
e 
=> !
e" #
.# $
Offer_ID$ ,
), -
. 

IsRequired 
( 
) 
. 
HasColumnName 
( 
$str )
)) *
;* +
builder 
. 
Property 
( 
e 
=> !
e" #
.# $
Code_ID$ +
)+ ,
. 

IsRequired 
( 
) 
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
.# $

User_Email$ .
). /
. 

IsRequired 
( 
) 
. 
HasMaxLength 
( 
$num  
)  !
. 
HasColumnName 
( 
$str *
)* +
;+ ,
builder 
. 
Property 
( 
e 
=> !
e" #
.# $
Category_ID$ /
)/ 0
. 

IsRequired 
( 
) 
. 
HasColumnName 
( 
$str ,
), -
;- .
builder   
.   
Property   
(   
e   
=>   !
e  " #
.  # $
Amount  $ *
)  * +
.!! 
HasColumnName!! 
(!! 
$str!! '
)!!' (
;!!( )
}"" 	
}## 
}$$ í
uC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\src\Infrastructure\Core\EntityMappings\LikesMap.cs
	namespace 	
EmprendeUCR
 
. 
Infrastructure $
.$ %
Core% )
.) *
EntityMappings* 8
{ 
public 

class 
LikesMap 
: $
IEntityTypeConfiguration 4
<4 5
Likes5 :
>: ;
{ 
public		 
void		 
	Configure		 
(		 
EntityTypeBuilder		 /
<		/ 0
Likes		0 5
>		5 6
builder		7 >
)		> ?
{

 	
builder 
. 
ToTable 
( 
$str #
)# $
;$ %
builder 
. 
HasKey 
( 
e 
=> 
new  #
{$ %
e& '
.' (
Members_Email( 5
,5 6
e7 8
.8 9
Category_Id9 D
}E F
)G H
;H I
builder 
. 
Property 
( 
e 
=> !
e" #
.# $
Members_Email$ 1
)1 2
. 
HasColumnName 
( 
$str .
). /
. 

IsRequired 
( 
) 
. 
HasMaxLength 
( 
$num !
)! "
;" #
builder 
. 
Property 
( 
e 
=> !
e" #
.# $
Category_Id$ /
)/ 0
. 
HasColumnName 
( 
$str ,
), -
. 

IsRequired 
( 
) 
; 
} 	
} 
} ä
wC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\src\Infrastructure\Core\EntityMappings\MembersMap.cs
	namespace 	
EmprendeUCR
 
. 
Infrastructure $
.$ %
Core% )
.) *
EntityMappings* 8
{ 
class 	

MembersMap
 
: $
IEntityTypeConfiguration /
</ 0
Members0 7
>7 8
{ 
public		 
void		 
	Configure		 
(		 
EntityTypeBuilder		 /
<		/ 0
Members		0 7
>		7 8
builder		9 @
)		@ A
{

 	
builder 
. 
ToTable 
( 
$str %
)% &
;& '
builder 
. 
HasKey 
( 
$str '
)' (
;( )
builder 
. 
Property 
( 
e 
=> !
e" #
.# $

User_Email$ .
). /
. 

IsRequired 
( 
) 
. 
HasMaxLength 
( 
$num !
)! "
. 
HasColumnName 
( 
$str +
)+ ,
;, -
builder 
. 
Property 
( 
e 
=> !
e" #
.# $
Score$ )
)) *
. 
HasColumnName 
( 
$str &
)& '
;' (
builder 
. 
Property 
( 
e 
=> !
e" #
.# $
Lat$ '
)' (
. 
HasColumnName 
( 
$str $
)$ %
;% &
builder 
. 
Property 
( 
e 
=> !
e" #
.# $
Long$ (
)( )
. 
HasColumnName 
( 
$str %
)% &
;& '
builder 
. 
Property 
( 
e 
=> !
e" #
.# $
	Direction$ -
)- .
. 
HasMaxLength 
( 
$num !
)! "
. 
HasColumnName 
( 
$str *
)* +
;+ ,
}   	
}!! 
}"" ë
uC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\src\Infrastructure\Core\EntityMappings\OfferMap.cs
	namespace

 	
EmprendeUCR


 
.

 
Infrastructure

 $
.

$ %
Core

% )
.

) *
EntityMappings

* 8
{ 
class 	
OfferMap
 
: $
IEntityTypeConfiguration -
<- .
Offer. 3
>3 4
{ 
public 
void 
	Configure 
( 
EntityTypeBuilder /
</ 0
Offer0 5
>5 6
builder7 >
)> ?
{ 	
builder 
. 
ToTable 
( 
$str #
)# $
;$ %
builder 
. 
HasKey 
( 
$str %
)% &
;& '
builder 
. 
Property 
( 
e 
=> !
e" #
.# $
Offer_ID$ ,
), -
. 

IsRequired 
( 
) 
. 
HasColumnName 
( 
$str )
)) *
;* +
builder 
. 
Property 
( 
e 
=> !
e" #
.# $
Initial_Date$ 0
)0 1
. 

IsRequired 
( 
) 
. 
HasColumnName 
( 
$str -
)- .
;. /
builder 
. 
Property 
( 
e 
=> !
e" #
.# $
Expire_Date$ /
)/ 0
. 

IsRequired 
( 
) 
. 
HasColumnName 
( 
$str +
)+ ,
;, -
builder   
.   
Property   
(   
e   
=>   !
e  " #
.  # $
Offer_Description  $ 5
)  5 6
.!! 
HasMaxLength!! 
(!! 
$num!!  
)!!  !
."" 
HasColumnName"" 
("" 
$str"" 1
)""1 2
;""2 3
builder## 
.## 
Property## 
(## 
e## 
=>## !
e##" #
.### $
Discount##$ ,
)##, -
.$$ 

IsRequired$$ 
($$ 
)$$ 
.%% 
HasColumnName%% 
(%% 
$str%% (
)%%( )
;%%) *
}'' 	
}(( 
})) ‰
zC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\src\Infrastructure\Core\EntityMappings\PermissionMap.cs
	namespace 	
EmprendeUCR
 
. 
Infrastructure $
.$ %
Core% )
.) *
EntityMappings* 8
{ 
public 

class 
PermissionMap 
:  $
IEntityTypeConfiguration! 9
<9 :

Permission: D
>D E
{ 
public		 
void		 
	Configure		 
(		 
EntityTypeBuilder		 /
<		/ 0

Permission		0 :
>		: ;
builder		< C
)		C D
{

 	
builder 
. 
ToTable 
( 
$str (
)( )
;) *
builder 
. 
HasKey 
( 
e 
=> 
new  #
{$ %
e& '
.' (
Id( *
,* +
e, -
.- .
Role_Id. 5
}6 7
)8 9
;9 :
builder 
. 
Property 
( 
e 
=> !
e" #
.# $
Id$ &
)& '
. 

IsRequired 
(  
)  !
. 
HasColumnName "
(" #
$str# '
)' (
;( )
builder 
. 
Property 
( 
e 
=> !
e" #
.# $
Role_Id$ +
)+ ,
. 

IsRequired 
(  
)  !
. 
HasColumnName "
(" #
$str# ,
), -
;- .
builder 
. 
Property 
( 
e 
=> !
e" #
.# $
Description$ /
)/ 0
. 

IsRequired 
(  
)  !
. 
HasMaxLength !
(! "
$num" %
)% &
. 
HasColumnName "
(" #
$str# 0
)0 1
;1 2
} 	
} 
} û
vC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\src\Infrastructure\Core\EntityMappings\PhonesMap.cs
	namespace 	
EmprendeUCR
 
. 
Infrastructure $
.$ %
Core% )
.) *
EntityMappings* 8
{ 
class 	
	PhonesMap
 
: $
IEntityTypeConfiguration .
<. /
Phones/ 5
>5 6
{ 
public		 
void		 
	Configure		 
(		 
EntityTypeBuilder		 /
<		/ 0
Phones		0 6
>		6 7
builder		8 ?
)		? @
{		A B
builder 
. 
ToTable 
( 
$str &
)' (
;( )
builder 
. 
HasKey 
( 
$str '
)' (
;( )
builder 
. 
Property 
( 
e 
=> !
e" #
.# $

User_Email$ .
). /
. 

IsRequired 
( 
) 
. 
HasMaxLength 
( 
$num !
)! "
. 
HasColumnName 
( 
$str +
)+ ,
;, -
builder 
. 
Property 
( 
e 
=> !
e" #
.# $
Phone_Number$ 0
)0 1
. 

IsRequired 
( 
) 
. 
HasMaxLength 
( 
$num 
)  
. 
HasColumnName 
( 
$str -
)- .
;. /
} 	
} 
} §
wC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\src\Infrastructure\Core\EntityMappings\ProductMap.cs
	namespace 	
EmprendeUCR
 
. 
Infrastructure $
.$ %
Core% )
.) *
EntityMappings* 8
{ 
class 	

ProductMap
 
: $
IEntityTypeConfiguration /
</ 0
Product0 7
>7 8
{ 
public		 
void		 
	Configure		 
(		 
EntityTypeBuilder		 /
<		/ 0
Product		0 7
>		7 8
builder		9 @
)		@ A
{

 	
builder 
. 
ToTable 
( 
$str %
)% &
;& '
builder 
. 
HasKey 
( 
b 
=> 
new  #
{$ %
b& '
.' (
Code_ID( /
,/ 0
b1 2
.2 3
Entrepreneur_Email3 E
,E F
bG H
.H I
Category_IDI T
}T U
)U V
;V W
builder 
. 
Property 
( 
e 
=> !
e" #
.# $
Code_ID$ +
)+ ,
. 
HasColumnName 
( 
$str $
)$ %
. 

IsRequired 
( 
) 
; 
builder 
. 
Property 
( 
e 
=> !
e" #
.# $
Product_Name$ 0
)0 1
. 
HasColumnName 
( 
$str )
)) *
. 
HasMaxLength 
( 
$num 
) 
; 
builder 
. 
Property 
( 
e 
=> !
e" #
.# $
Product_Description$ 7
)7 8
. 
HasColumnName 
( 
$str 0
)0 1
. 
HasMaxLength 
( 
$num 
) 
; 
builder 
. 
Property 
( 
e 
=> !
e" #
.# $
Price$ )
)) *
. 
HasColumnName 
( 
$str "
)" #
;# $
builder 
. 
Property 
( 
e 
=> !
e" #
.# $
Entrepreneur_Email$ 6
)6 7
. 
HasColumnName 
( 
$str /
)/ 0
. 
HasMaxLength 
( 
$num 
) 
.   

IsRequired   
(   
)   
;   
builder"" 
."" 
Property"" 
("" 
e"" 
=>"" !
e""" #
.""# $
Category_ID""$ /
)""/ 0
.## 
HasColumnName## 
(## 
$str## (
)##( )
.$$ 

IsRequired$$ 
($$ 
)$$ 
;$$ 
}%% 	
}&& 
}'' ñ
}C:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\src\Infrastructure\Core\EntityMappings\ProductPhotosMap.cs
	namespace

 	
EmprendeUCR


 
.

 
Infrastructure

 $
.

$ %
Core

% )
.

) *
EntityMappings

* 8
{ 
public 

class 
ProductPhotosMap !
:" #$
IEntityTypeConfiguration$ <
<< =
ProductPhotos= J
>J K
{ 
public 
void 
	Configure 
( 
EntityTypeBuilder /
</ 0
ProductPhotos0 =
>= >
builder? F
)F G
{ 	
builder 
. 
ToTable 
( 
$str ,
), -
;- .
builder 
. 
HasKey 
( 
b 
=> 
new  #
{$ %
b& '
.' (
Code_ID( /
,/ 0
b1 2
.2 3
Category_ID3 >
,> ?
b@ A
.A B
Entrepreneur_EmailB T
,T U
bV W
.W X
Product_Photos_IDX i
}j k
)k l
;l m
builder 
. 
Property 
( 
e 
=> !
e" #
.# $
Product_Photos_ID$ 5
)5 6
. 
HasColumnName 
( 
$str 2
)2 3
. 

IsRequired 
( 
) 
; 
builder 
. 
Property 
( 
e 
=> !
e" #
.# $
Code_ID$ +
)+ ,
. 
HasColumnName 
( 
$str (
)( )
. 

IsRequired 
( 
) 
; 
builder 
. 
Property 
( 
e 
=> !
e" #
.# $
Photos$ *
)* +
. 
HasColumnName 
( 
$str '
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
Entrepreneur_Email$ 6
)6 7
. 
HasColumnName 
( 
$str 3
)3 4
.   
HasMaxLength   
(   
$num   !
)  ! "
.!! 

IsRequired!! 
(!! 
)!! 
;!! 
builder## 
.## 
Property## 
(## 
e## 
=>## !
e##" #
.### $
Category_ID##$ /
)##/ 0
.$$ 
HasColumnName$$ 
($$ 
$str$$ ,
)$$, -
.%% 

IsRequired%% 
(%% 
)%% 
;%% 
}&& 	
}'' 
}(( ¿

~C:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\src\Infrastructure\Core\EntityMappings\ProductServiceMap.cs
	namespace

 	
EmprendeUCR


 
.

 
Infrastructure

 $
.

$ %
Core

% )
.

) *
EntityMappings

* 8
{ 
public 

class 
ProductServiceMap "
:# $$
IEntityTypeConfiguration% =
<= >
ProductService> L
>L M
{ 
public 
void 
	Configure 
( 
EntityTypeBuilder /
</ 0
ProductService0 >
>> ?
builder@ G
)G H
{ 	
builder 
. 
ToTable 
( 
$str -
)- .
;. /
builder 
. 
HasKey 
( 
$str $
)$ %
;% &
builder 
. 
Property 
( 
e 
=> !
e" #
.# $
Code_ID$ +
)+ ,
. 

IsRequired 
( 
) 
. 
HasColumnName 
( 
$str %
)% &
;& '
}(( 	
})) 
}** •

xC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\src\Infrastructure\Core\EntityMappings\ProvinceMap.cs
	namespace 	
EmprendeUCR
 
. 
Infrastructure $
.$ %
Core% )
.) *
EntityMappings* 8
{ 
public 

class 
ProvinceMap 
: $
IEntityTypeConfiguration 7
<7 8
Province8 @
>@ A
{ 
public		 
void		 
	Configure		 
(		 
EntityTypeBuilder		 /
<		/ 0
Province		0 8
>		8 9
builder		: A
)		A B
{

 	
builder 
. 
ToTable 
( 
$str &
)& '
;' (
builder 
. 
HasKey 
( 
$str !
)! "
;" #
builder 
. 
Property 
( 
e 
=> !
e" #
.# $
Name$ (
)( )
. 
HasColumnName 
( 
$str %
)% &
. 

IsRequired 
( 
) 
; 
} 	
} 
} ∞
vC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\src\Infrastructure\Core\EntityMappings\ReportMap.cs
	namespace 	
EmprendeUCR
 
. 
Infrastructure $
.$ %
Core% )
.) *
EntityMappings* 8
{ 
public 

class 
	ReportMap 
: $
IEntityTypeConfiguration 5
<5 6
Report6 <
>< =
{		 
public

 
void

 
	Configure

 
(

 
EntityTypeBuilder

 /
<

/ 0
Report

0 6
>

6 7
builder

8 ?
)

? @
{ 	
builder 
. 
ToTable 
( 
$str $
)$ %
;% &
builder 
. 
HasKey 
( 
e 
=> 
new  #
{$ %
e& '
.' (
ID( *
}+ ,
), -
;- .
builder 
. 
Property 
( 
e 
=> !
e" #
.# $
ID$ &
)& '
. 
HasColumnName 
( 
$str #
)# $
. 

IsRequired 
( 
) 
; 
builder 
. 
Property 
( 
e 
=> !
e" #
.# $
User$ (
)( )
. 
HasColumnName 
( 
$str %
)% &
;& '
builder 
. 
Property 
( 
e 
=> !
e" #
.# $
Title$ )
)) *
. 
HasColumnName 
( 
$str &
)& '
. 

IsRequired 
( 
) 
. 
HasMaxLength 
( 
$num !
)! "
;" #
builder 
. 
Property 
( 
e 
=> !
e" #
.# $
Content$ +
)+ ,
. 
HasColumnName 
( 
$str (
)( )
. 
HasMaxLength 
( 
$num "
)" #
;# $
} 	
}   
}!! ¸
tC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\src\Infrastructure\Core\EntityMappings\RoleMap.cs
	namespace 	
EmprendeUCR
 
. 
Infrastructure $
.$ %
Core% )
.) *
EntityMappings* 8
{ 
public 

class 
RoleMap 
: $
IEntityTypeConfiguration 3
<3 4
Role4 8
>8 9
{ 
public		 
void		 
	Configure		 
(		 
EntityTypeBuilder		 /
<		/ 0
Role		0 4
>		4 5
builder		6 =
)		= >
{

 	
builder 
. 
ToTable 
( 
$str "
)" #
;# $
builder 
. 
HasKey 
( 
e 
=> 
e  !
.! "
Id" $
)$ %
;% &
builder 
. 
Property 
( 
e 
=> !
e" #
.# $
Id$ &
)& '
. 

IsRequired 
(  
)  !
. 
HasColumnName "
(" #
$str# '
)' (
;( )
builder 
. 
Property 
( 
e 
=> !
e" #
.# $
Type$ (
)( )
. 

IsRequired 
(  
)  !
. 
HasMaxLength !
(! "
$num" $
)$ %
. 
HasColumnName "
(" #
$str# )
)) *
;* +
} 	
} 
} Ú
wC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\src\Infrastructure\Core\EntityMappings\ServiceMap.cs
	namespace 	
EmprendeUCR
 
. 
Infrastructure $
.$ %
Core% )
.) *
EntityMappings* 8
{ 
class 	

ServiceMap
 
: $
IEntityTypeConfiguration /
</ 0
Service0 7
>7 8
{ 
public		 
void		 
	Configure		 
(		 
EntityTypeBuilder		 /
<		/ 0
Service		0 7
>		7 8
builder		9 @
)		@ A
{

 	
builder 
. 
ToTable 
( 
$str %
)% &
;& '
builder 
. 
HasKey 
( 
b 
=> 
new  #
{$ %
b& '
.' (
Entrepreneur_Email( :
,: ;
b< =
.= >
Code_ID> E
,E F
bG H
.H I
Category_IDI T
}T U
)U V
;V W
builder 
. 
Property 
( 
e 
=> !
e" #
.# $
Code_ID$ +
)+ ,
. 
HasColumnName 
( 
$str $
)$ %
. 

IsRequired 
( 
) 
; 
builder 
. 
Property 
( 
e 
=> !
e" #
.# $
Entrepreneur_Email$ 6
)6 7
. 
HasColumnName 
( 
$str /
)/ 0
. 
HasMaxLength 
( 
$num 
) 
. 

IsRequired 
( 
) 
; 
builder 
. 
Property 
( 
e 
=> !
e" #
.# $
Category_ID$ /
)/ 0
. 
HasColumnName 
( 
$str (
)( )
. 

IsRequired 
( 
) 
; 
builder 
. 
Property 
( 
e 
=> !
e" #
.# $
Service_Name$ 0
)0 1
. 
HasColumnName 
( 
$str )
)) *
. 
HasMaxLength 
( 
$num 
) 
. 

IsRequired 
( 
) 
; 
builder   
.   
Property   
(   
e   
=>   !
e  " #
.  # $
Service_Description  $ 7
)  7 8
.!! 
HasColumnName!! 
(!! 
$str!! 0
)!!0 1
."" 
HasMaxLength"" 
("" 
$num"" 
)"" 
;"" 
builder$$ 
.$$ 
Property$$ 
($$ 
e$$ 
=>$$ !
e$$" #
.$$# $
Price_per_hour$$$ 2
)$$2 3
.%% 
HasColumnName%% 
(%% 
$str%% +
)%%+ ,
;%%, -
}&& 	
}'' 
}(( ö
~C:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\src\Infrastructure\Core\EntityMappings\Service_PhotosMap.cs
	namespace 	
EmprendeUCR
 
. 
Infrastructure $
.$ %
Core% )
.) *
EntityMappings* 8
{ 
public 

class 
Service_PhotosMap "
:# $$
IEntityTypeConfiguration% =
<= >
Service_Photos> L
>L M
{ 
public		 
void		 
	Configure		 
(		 
EntityTypeBuilder		 /
<		/ 0
Service_Photos		0 >
>		> ?
builder		@ G
)		G H
{

 	
builder 
. 
ToTable 
( 
$str ,
), -
;- .
builder 
. 
HasKey 
( 
b 
=> 
new  #
{$ %
b& '
.' (
Service_Photos_ID( 9
,9 :
b; <
.< =
Code_ID= D
,D E
bF G
.G H
Entrepreneur_EmailH Z
,Z [
b\ ]
.] ^
Category_ID^ i
}j k
)k l
;l m
builder 
. 
Property 
( 
e 
=> !
e" #
.# $
Service_Photos_ID$ 5
)5 6
. 
HasColumnName 
( 
$str 2
)2 3
. 

IsRequired 
( 
) 
; 
builder 
. 
Property 
( 
e 
=> !
e" #
.# $
Code_ID$ +
)+ ,
. 
HasColumnName 
( 
$str (
)( )
. 

IsRequired 
( 
) 
; 
builder 
. 
Property 
( 
e 
=> !
e" #
.# $
Photos$ *
)* +
. 
HasColumnName 
( 
$str &
)& '
;' (
builder 
. 
Property 
( 
e 
=> !
e" #
.# $
Entrepreneur_Email$ 6
)6 7
. 
HasColumnName 
( 
$str 0
)0 1
. 
HasMaxLength 
( 
$num 
) 
. 

IsRequired 
( 
) 
; 
builder 
. 
Property 
( 
e 
=> !
e" #
.# $
Category_ID$ /
)/ 0
.   
HasColumnName   
(   
$str   +
)  + ,
.!! 

IsRequired!! 
(!! 
)!! 
;!! 
}"" 	
}## 
}$$ π
C:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\src\Infrastructure\Core\EntityMappings\ShoppingCartHasMap.cs
	namespace

 	
EmprendeUCR


 
.

 
Infrastructure

 $
.

$ %
Core

% )
.

) *
EntityMappings

* 8
{ 
class 	
ShoppingCartHasMap
 
: $
IEntityTypeConfiguration 7
<7 8
ShoppingCartHas8 G
>G H
{ 
public 
void 
	Configure 
( 
EntityTypeBuilder /
</ 0
ShoppingCartHas0 ?
>? @
builderA H
)H I
{ 	
builder 
. 
ToTable 
( 
$str /
)/ 0
;0 1
builder 
. 
HasKey 
( 
b 
=> 
new  #
{$ %
b& '
.' (
Category_ID( 3
,3 4
b5 6
.6 7
Code_ID7 >
,> ?
b@ A
.A B
Entrepreneur_EmailB T
,T U
bV W
.W X
EmailX ]
}] ^
)^ _
;_ `
builder 
. 
Property 
( 
e 
=> !
e" #
.# $
Email$ )
)) *
. 
HasColumnName 
( 
$str &
)& '
. 

IsRequired 
( 
) 
. 
HasMaxLength 
( 
$num !
)! "
;" #
builder 
. 
Property 
( 
e 
=> !
e" #
.# $
Code_ID$ +
)+ ,
. 
HasColumnName 
( 
$str (
)( )
. 

IsRequired 
( 
) 
; 
builder 
. 
Property 
( 
e 
=> !
e" #
.# $
Category_ID$ /
)/ 0
. 
HasColumnName 
( 
$str ,
), -
. 

IsRequired 
( 
) 
; 
builder   
.   
Property   
(   
e   
=>   !
e  " #
.  # $
Entrepreneur_Email  $ 6
)  6 7
.!! 
HasColumnName!! 
(!! 
$str!! 3
)!!3 4
."" 
HasMaxLength"" 
("" 
$num"" !
)""! "
.## 

IsRequired## 
(## 
)## 
;## 
}$$ 	
}%% 
}&& è
|C:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\src\Infrastructure\Core\EntityMappings\ShoppingCartMap.cs
	namespace

 	
EmprendeUCR


 
.

 
Infrastructure

 $
.

$ %
Core

% )
.

) *
EntityMappings

* 8
{ 
public 

class 
ShoppingCartMap  
:! "$
IEntityTypeConfiguration# ;
<; <
ShoppingCart< H
>H I
{ 
public 
void 
	Configure 
( 
EntityTypeBuilder /
</ 0
ShoppingCart0 <
>< =
builder> E
)E F
{ 	
builder 
. 
ToTable 
( 
$str +
)+ ,
;, -
builder 
. 
HasKey 
( 
$str "
)" #
;# $
builder 
. 
Property 
( 
e 
=> !
e" #
.# $
Email$ )
)) *
. 
HasColumnName 
( 
$str &
)& '
. 

IsRequired 
( 
) 
. 
HasMaxLength 
( 
$num !
)! "
;" #
} 	
} 
} Ω"
tC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\src\Infrastructure\Core\EntityMappings\UserMap.cs
	namespace 	
EmprendeUCR
 
. 
Infrastructure $
.$ %
Core% )
.) *
EntityMappings* 8
{ 
class 	
UserMap
 
: $
IEntityTypeConfiguration ,
<, -
User- 1
>1 2
{ 
public		 
void		 
	Configure		 
(		 
EntityTypeBuilder		 /
<		/ 0
User		0 4
>		4 5
builder		6 =
)		= >
{

 	
builder 
. 
ToTable 
( 
$str "
)" #
;# $
builder 
. 
HasKey 
( 
$str "
)" #
;# $
builder 
. 
Property 
( 
e 
=> !
e" #
.# $
Email$ )
)) *
. 
HasColumnName 
( 
$str &
)& '
. 

IsRequired 
( 
) 
. 
HasMaxLength 
( 
$num !
)! "
;" #
builder 
. 
Property 
( 
e 
=> !
e" #
.# $
Name$ (
)( )
. 
HasColumnName 
( 
$str %
)% &
. 
HasMaxLength 
( 
$num  
)  !
;! "
builder 
. 
Property 
( 
e 
=> !
e" #
.# $
F_Last_Name$ /
)/ 0
. 
HasColumnName 
( 
$str ,
), -
. 
HasMaxLength 
( 
$num  
)  !
;! "
builder 
. 
Property 
( 
e 
=> !
e" #
.# $
S_Last_Name$ /
)/ 0
. 
HasColumnName 
( 
$str ,
), -
. 
HasMaxLength 
( 
$num  
)  !
;! "
builder   
.   
Property   
(   
e   
=>   !
e  " #
.  # $

Birth_Date  $ .
)  . /
.!! 
HasColumnName!! 
(!! 
$str!! +
)!!+ ,
;!!, -
builder## 
.## 
Property## 
(## 
e## 
=>## !
e##" #
.### $
Province_Name##$ 1
)##1 2
.$$ 
HasColumnName$$ 
($$ 
$str$$ .
)$$. /
.%% 
HasMaxLength%% 
(%% 
$num%%  
)%%  !
;%%! "
builder'' 
.'' 
Property'' 
('' 
e'' 
=>'' !
e''" #
.''# $
Canton_Name''$ /
)''/ 0
.(( 
HasColumnName(( 
((( 
$str(( ,
)((, -
.)) 
HasMaxLength)) 
()) 
$num))  
)))  !
;))! "
builder++ 
.++ 
Property++ 
(++ 
e++ 
=>++ !
e++" #
.++# $
District_Name++$ 1
)++1 2
.,, 
HasColumnName,, 
(,, 
$str,, .
),,. /
.-- 
HasMaxLength-- 
(-- 
$num--  
)--  !
;--! "
builder// 
.// 
Property// 
(// 
e// 
=>// !
e//" #
.//# $
Email_Confirmation//$ 6
)//6 7
.00 
HasColumnName00 
(00 
$str00 3
)003 4
;004 5
builder22 
.22 
Property22 
(22 
e22 
=>22 !
e22" #
.22# $
Photo22$ )
)22) *
.33 
HasColumnName33 
(33 
$str33 &
)33& '
;33' (
}44 	
}55 
}66 ¸:
lC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\src\Infrastructure\DependencyInjection.cs
	namespace## 	
EmprendeUCR##
 
.## 
Infrastructure## $
{$$ 
public%% 

static%% 
class%% 
DependencyInjection%% +
{&& 
public'' 
static'' 
IServiceCollection'' ("
AddInfrastructureLayer'') ?
(''? @
this(( 
IServiceCollection(( 
services((  (
,((( )
string)) 
connectionString)) 
)))  
{** 	
services++ 
.++ 
AddDbContext++ !
<++! "#
PaymentMethodsDbContext++" 9
>++9 :
(++: ;
options++; B
=>++C E
options++F M
.++M N
UseSqlServer++N Z
(++Z [
connectionString++[ k
)++k l
)++l m
;++m n
services,, 
.,, 
	AddScoped,, 
<,, .
"ISinpeMovilPaymentMethodRepository,, A
,,,A B-
!SinpeMovilPaymentMethodRepository,,C d
>,,d e
(,,e f
),,f g
;,,g h
services-- 
.-- 
	AddScoped-- 
<-- -
!ISinpeIbanPaymentMethodRepository-- @
,--@ A,
 SinpeIbanPaymentMethodRepository--B b
>--b c
(--c d
)--d e
;--e f
services.. 
... 
	AddScoped.. 
<.. (
ICardPaymentMethodRepository.. ;
,..; <'
CardPaymentMethodRepository..= X
>..X Y
(..Y Z
)..Z [
;..[ \
services// 
.// 
AddDbContext// !
<//! " 
PaymentInfoDbContext//" 6
>//6 7
(//7 8
options//8 ?
=>//@ B
options//C J
.//J K
UseSqlServer//K W
(//W X
connectionString//X h
)//h i
)//i j
;//j k
services00 
.00 
	AddScoped00 
<00 "
IPaymentInfoRepository00 5
,005 6!
PaymentInfoRepository007 L
>00L M
(00M N
)00N O
;00O P
services11 
.11 
AddDbContext11 !
<11! "*
SinpeMovilPaymentInfoDbContext11" @
>11@ A
(11A B
options11B I
=>11J L
options11M T
.11T U
UseSqlServer11U a
(11a b
connectionString11b r
)11r s
)11s t
;11t u
services22 
.22 
	AddScoped22 
<22 ,
 ISinpeMovilPaymentInfoRepository22 ?
,22? @+
SinpeMovilPaymentInfoRepository22A `
>22` a
(22a b
)22b c
;22c d
services33 
.33 
AddDbContext33 !
<33! ")
SinpeIbanPaymentInfoDbContext33" ?
>33? @
(33@ A
options33A H
=>33I K
options33L S
.33S T
UseSqlServer33T `
(33` a
connectionString33a q
)33q r
)33r s
;33s t
services44 
.44 
	AddScoped44 
<44 +
ISinpeIbanPaymentInfoRepository44 >
,44> ?*
SinpeIbanPaymentInfoRepository44@ ^
>44^ _
(44_ `
)44` a
;44a b
services55 
.55 
AddDbContext55 !
<55! "$
CardPaymentInfoDbContext55" :
>55: ;
(55; <
options55< C
=>55D F
options55G N
.55N O
UseSqlServer55O [
(55[ \
connectionString55\ l
)55l m
)55m n
;55n o
services66 
.66 
	AddScoped66 
<66 &
ICardPaymentInfoRepository66 9
,669 :%
CardPaymentInfoRepository66; T
>66T U
(66U V
)66V W
;66W X
services77 
.77 
AddDbContext77 !
<77! "#
HasPaymentInfoDbContext77" 9
>779 :
(77: ;
options77; B
=>77C E
options77F M
.77M N
UseSqlServer77N Z
(77Z [
connectionString77[ k
)77k l
)77l m
;77m n
services88 
.88 
	AddScoped88 
<88 %
IHasPaymentInfoRepository88 8
,888 9$
HasPaymentInfoRepository88: R
>88R S
(88S T
)88T U
;88U V
services;; 
.;; 
AddDbContext;; !
<;;! "
ChatDbContext;;" /
>;;/ 0
(;;0 1
options;;1 8
=>;;9 ;
options;;< C
.;;C D
UseSqlServer;;D P
(;;P Q
connectionString;;Q a
);;a b
);;b c
;;;c d
services<< 
.<< 
	AddScoped<< 
<<< 
IChatRepository<< .
,<<. /
ChatRepository<<0 >
><<> ?
(<<? @
)<<@ A
;<<A B
services== 
.== 
AddDbContext== !
<==! "
MessageDbContext==" 2
>==2 3
(==3 4
options==4 ;
=>==< >
options==? F
.==F G
UseSqlServer==G S
(==S T
connectionString==T d
)==d e
)==e f
;==f g
services>> 
.>> 
	AddScoped>> 
<>> 
IMessageRepository>> 1
,>>1 2
MessageRepository>>3 D
>>>D E
(>>E F
)>>F G
;>>G H
services?? 
.?? 
AddDbContext?? !
<??! "!
UtilizesChatDbContext??" 7
>??7 8
(??8 9
options??9 @
=>??A C
options??D K
.??K L
UseSqlServer??L X
(??X Y
connectionString??Y i
)??i j
)??j k
;??k l
services@@ 
.@@ 
	AddScoped@@ 
<@@ #
IUtilizesChatRepository@@ 6
,@@6 7"
UtilizesChatRepository@@8 N
>@@N O
(@@O P
)@@P Q
;@@Q R
servicesBB 
.BB 
	AddScopedBB 
<BB 
IProductRepositoryBB 1
,BB1 2
ProductRepositoryBB3 D
>BBD E
(BBE F
)BBF G
;BBG H
servicesCC 
.CC 
AddDbContextCC !
<CC! "
CategoriesDbContextCC" 5
>CC5 6
(CC6 7
optionsCC7 >
=>CC? A
optionsCCB I
.CCI J
UseSqlServerCCJ V
(CCV W
connectionStringCCW g
)CCg h
)CCh i
;CCi j
servicesDD 
.DD 
	AddScopedDD 
<DD 
ICategoryRepositoryDD 2
,DD2 3 
CategoriesRepositoryDD4 H
>DDH I
(DDI J
)DDJ K
;DDK L
servicesEE 
.EE 
AddDbContextEE !
<EE! ""
EntrepreneursDbContextEE" 8
>EE8 9
(EE9 :
optionsEE: A
=>EEB D
optionsEEE L
.EEL M
UseSqlServerEEM Y
(EEY Z
connectionStringEEZ j
)EEj k
)EEk l
;EEl m
servicesFF 
.FF 
	AddScopedFF 
<FF %
IProductServiceRepositoryFF 8
,FF8 9$
ProductServiceRepositoryFF: R
>FFR S
(FFS T
)FFT U
;FFU V
returnHH 
servicesHH 
;HH 
}II 	
}JJ 
}KK ÿ
ÄC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\src\Infrastructure\Entrepreneurs\EntityMappings\ProductMap.cs
	namespace 	
EmprendeUCR
 
. 
Infrastructure $
.$ %
Entrepreneurs% 2
.2 3
EntityMappings3 A
{		 
public

 

class

 

ProductMap

 
:

 $
IEntityTypeConfiguration

 6
<

6 7
Product

7 >
>

> ?
{ 
public 
void 
	Configure 
( 
EntityTypeBuilder /
</ 0
Product0 7
>7 8
builder9 @
)@ A
{ 	
builder 
. 
ToTable 
( 
$str %
)% &
;& '
builder 
. 
HasKey 
( 
t 
=> 
t  !
.! "
Code_ID" )
)) *
;* +
builder 
. 
Property 
( 
t 
=> !
t" #
.# $
Product_Name$ 0
)0 1
. 
HasConversion 
( 
r  
=>! #
r$ %
.% &
Value& +
,+ ,
s 
=> 
RequiredProductName ,
., -
	TryCreate- 6
(6 7
s7 8
)8 9
.9 :
Success: A
(A B
)B C
)C D
;D E
builder 
. 
Property 
( 
t 
=> !
t" #
.# $
Product_Description$ 7
)7 8
. 
HasConversion 
( 
r  
=>! #
r$ %
.% &
Value& +
,+ ,
s 
=> &
RequiredProductDescription 3
.3 4
	TryCreate4 =
(= >
s> ?
)? @
.@ A
SuccessA H
(H I
)I J
)J K
;K L
builder 
. 
Property 
( 
p 
=> !
p" #
.# $
Price$ )
)) *
;* +
} 	
} 
} ¸
ÖC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\src\Infrastructure\Entrepreneurs\EntityMappings\ProductPhotoMap.cs
	namespace 	
EmprendeUCR
 
. 
Infrastructure $
.$ %
Entrepreneurs% 2
.2 3
EntityMappings3 A
{		 
public

 

class

 
ProductPhotoMap

  
:

! "$
IEntityTypeConfiguration

# ;
<

; <
ProductPhotos

< I
>

I J
{ 
public 
void 
	Configure 
( 
EntityTypeBuilder /
</ 0
ProductPhotos0 =
>= >
builder? F
)F G
{ 	
builder 
. 
ToTable 
( 
$str ,
), -
;- .
builder 
. 
HasKey 
( 
$str .
). /
;/ 0
builder 
. 
Property 
( 
e 
=> !
e" #
.# $
Product_Photos_ID$ 5
)5 6
. 

IsRequired 
( 
) 
. 
HasColumnName 
( 
$str /
)/ 0
;0 1
builder 
. 
HasOne 
( 
p 
=> 
p  !
.! "
Product" )
)) *
.* +
WithMany+ 3
(3 4
c4 5
=>6 8
c9 :
.: ;
Photos; A
)A B
.B C
HasForeignKeyC P
(P Q
$strQ Z
)Z [
;[ \
} 	
} 
} Ñ
áC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\src\Infrastructure\Entrepreneurs\EntityMappings\ProductServiceMap.cs
	namespace

 	
EmprendeUCR


 
.

 
Infrastructure

 $
.

$ %
Entrepreneurs

% 2
.

2 3
EntityMappings

3 A
{ 
public 

class 
ProductServiceMap "
:# $$
IEntityTypeConfiguration% =
<= >
Product_Service> M
>M N
{ 
public 
void 
	Configure 
( 
EntityTypeBuilder /
</ 0
Product_Service0 ?
>? @
builderA H
)H I
{ 	
builder 
. 
ToTable 
( 
$str -
)- .
;. /
builder 
. 
HasKey 
( 
$str $
)$ %
;% &
builder 
. 
Property 
( 
e 
=> !
e" #
.# $
Code_ID$ +
)+ ,
. 

IsRequired 
( 
) 
. 
HasColumnName 
( 
$str %
)% &
;& '
builder 
. 
HasOne 
( 
p 
=> 
p  !
.! "
Category" *
)* +
.+ ,
WithMany, 4
(4 5
c5 6
=>7 9
c: ;
.; <
ProductServices< K
)K L
.L M
HasForeignKeyM Z
(Z [
$str[ h
)h i
;i j
}// 	
}00 
}11 £
}C:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\src\Infrastructure\Entrepreneurs\EntrepreneursDbContext.cs
	namespace 	
EmprendeUCR
 
. 
Infrastructure $
.$ %
Entrepreneurs% 2
{ 
public 

class "
EntrepreneursDbContext '
:( ) 
ApplicationDbContext* >
{ 
public "
EntrepreneursDbContext %
(% &
DbContextOptions& 6
options7 >
,> ?
ILogger@ G
<G H"
EntrepreneursDbContextH ^
>^ _
logger` f
)f g
:h i
basej n
(n o
optionso v
,v w
loggerx ~
)~ 
{ 	
} 	
public 
DbSet 
< 
Product 
> 
Products &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
=5 6
null7 ;
!; <
;< =
public 
DbSet 
< 
Product_Service $
>$ %
ProductServices& 5
{6 7
get8 ;
;; <
set= @
;@ A
}B C
=D E
nullF J
!J K
;K L
public 
DbSet 
< 
ProductPhotos "
>" #
ProductPhotos$ 1
{2 3
get4 7
;7 8
set9 <
;< =
}> ?
=@ A
nullB F
!F G
;G H
	protected 
override 
void 
OnModelCreating  /
(/ 0
ModelBuilder0 <
modelBuilder= I
)I J
{ 	
base 
. 
OnModelCreating  
(  !
modelBuilder! -
)- .
;. /
modelBuilder 
. 
ApplyConfiguration +
(+ ,
new, /

ProductMap0 :
(: ;
); <
)< =
;= >
modelBuilder 
. 
ApplyConfiguration +
(+ ,
new, /
ProductServiceMap0 A
(A B
)B C
)C D
;D E
modelBuilder   
.   
ApplyConfiguration   +
(  + ,
new  , /
ProductPhotoMap  0 ?
(  ? @
)  @ A
)  A B
;  B C
}!! 	
}"" 
}## µ
ãC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\src\Infrastructure\Entrepreneurs\Repositories\ProductPhotosRepository.cs
	namespace 	
EmprendeUCR
 
. 
Infrastructure $
.$ %
Entrepreneurs% 2
.2 3
Repositories3 ?
{ 
internal 
class #
ProductPhotosRepository *
:+ ,$
IProductPhotosRepository- E
{ 
private 
readonly "
EntrepreneursDbContext /

_dbContext0 :
;: ;
public 
IUnitOfWork 

UnitOfWork %
=>& (

_dbContext) 3
;3 4
public #
ProductPhotosRepository &
(& '"
EntrepreneursDbContext' =

unitOfWork> H
)H I
{ 	

_dbContext 
= 

unitOfWork #
;# $
} 	
public 
async 
Task 
< 
List 
< 
ProductPhotos ,
>, -
>- ."
GetAllByProductIDAsync/ E
(E F
longF J
idK M
)M N
{ 	
return 
await 

_dbContext #
.# $
ProductPhotos$ 1
.1 2
Where2 7
(7 8
p8 9
=>9 ;
p< =
.= >
Code_ID> E
==F H
idI K
)K L
.L M
ToListAsyncM X
(X Y
)Y Z
;Z [
} 	
public 
async 
Task 
< 
List 
< 
ProductPhotos ,
>, -
>- .
GetAllAsync/ :
(: ;
); <
{ 	
return 
await 

_dbContext #
.# $
ProductPhotos$ 1
.1 2
ToListAsync2 =
(= >
)> ?
;? @
}   	
public"" 
async"" 
Task"" 
<"" 
ProductPhotos"" '
?""' (
>""( )
GetByIdAsync""* 6
(""6 7
long""7 ;
id""< >
)""> ?
{## 	
return$$ 
await$$ 

_dbContext$$ #
.$$# $
ProductPhotos$$$ 1
.&& 
FirstOrDefaultAsync&& $
(&&$ %
t&&% &
=>&&' )
t&&* +
.&&+ ,
Product_Photos_ID&&, =
==&&> @
id&&A C
)&&C D
;&&D E
}'' 	
public,, 
async,, 
Task,, 
	SaveAsync,, #
(,,# $
ProductPhotos,,$ 1
ProductPhotos,,2 ?
),,? @
{-- 	

_dbContext.. 
... 
Update.. 
(.. 
ProductPhotos.. +
)..+ ,
;.., -
await00 

_dbContext00 
.00 
SaveEntitiesAsync00 .
(00. /
)00/ 0
;000 1
}11 	
}22 
}33 ≈
ÖC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\src\Infrastructure\Entrepreneurs\Repositories\ProductRepository.cs
	namespace 	
EmprendeUCR
 
. 
Domain 
. 
EntrepreneurContext 0
.0 1
Repositories1 =
{ 
internal 
class 
ProductRepository $
:% &
IProductRepository' 9
{ 
private 
readonly "
EntrepreneursDbContext /

_dbContext0 :
;: ;
public 
IUnitOfWork 

UnitOfWork %
=>& (

_dbContext) 3
;3 4
public 
ProductRepository  
(  !"
EntrepreneursDbContext! 7

unitOfWork8 B
)B C
{ 	

_dbContext 
= 

unitOfWork #
;# $
} 	
public 
async 
Task 
< 
List 
< 
Product &
>& '
>' (
GetAllAsync) 4
(4 5
)5 6
{ 	
return 
await 

_dbContext #
.# $
Products$ ,
., -
Include- 4
(4 5
p5 6
=>7 9
p: ;
.; <
Photos< B
)B C
.C D
ToListAsyncD O
(O P
)P Q
;Q R
} 	
public 
async 
Task 
< 
List 
< 
Product &
>& '
>' (!
GetAllByCategoryAsync) >
(> ?
int? B

categoryIdC M
)M N
{ 	
return 
await 

_dbContext #
.# $
Products$ ,
.   
ToListAsync   
(   
)   
;   
}!! 	
public## 
async## 
Task## 
<## 
Product## !
?##! "
>##" #
GetByIdAsync##$ 0
(##0 1
long##1 5
id##6 8
)##8 9
{$$ 	
return%% 
await%% 

_dbContext%% #
.%%# $
Products%%$ ,
.'' 
FirstOrDefaultAsync'' $
(''$ %
t''% &
=>''' )
t''* +
.''+ ,
Code_ID'', 3
==''4 6
id''7 9
)''9 :
;'': ;
}(( 	
public-- 
async-- 
Task-- 
	SaveAsync-- #
(--# $
Product--$ +
product--, 3
)--3 4
{.. 	

_dbContext// 
.// 
Update// 
(// 
product// %
)//% &
;//& '
await11 

_dbContext11 
.11 
SaveEntitiesAsync11 .
(11. /
)11/ 0
;110 1
}22 	
}:: 
};; Ø
åC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\src\Infrastructure\Entrepreneurs\Repositories\ProductServiceRepository.cs
	namespace 	
EmprendeUCR
 
. 
Infrastructure $
.$ %
Entrepreneurs% 2
.2 3
Repositories3 ?
{ 
internal 
class $
ProductServiceRepository +
:, -%
IProductServiceRepository. G
{ 
private 
readonly "
EntrepreneursDbContext /

_dbContext0 :
;: ;
public 
IUnitOfWork 

UnitOfWork %
=>& (

_dbContext) 3
;3 4
public $
ProductServiceRepository '
(' ("
EntrepreneursDbContext( >

unitOfWork? I
)I J
{ 	

_dbContext 
= 

unitOfWork #
;# $
} 	
public 
async 
Task 
< 
List 
< 
Product_Service .
>. /
>/ 0
GetAllAsync1 <
(< =
)= >
{ 	
return 
await 

_dbContext #
.# $
ProductServices$ 3
.3 4
Include4 ;
(; <
p< =
=>> @
pA B
.B C
CategoryC K
)K L
.L M
ToListAsyncM X
(X Y
)Y Z
;Z [
} 	
public 
async 
Task 
< 
Product_Service )
>) *
GetByIdAsync+ 7
(7 8
long8 <
id= ?
)? @
{ 	
return 
await 

_dbContext #
.# $
ProductServices$ 3
.3 4
FirstOrDefaultAsync4 G
(G H
tH I
=>J L
tM N
.N O
Code_IDO V
==W Y
idZ \
)\ ]
;] ^
} 	
public   
async   
Task   
	SaveAsync   #
(  # $
Product_Service  $ 3
product_service  4 C
)  C D
{!! 	

_dbContext"" 
."" 
Update"" 
("" 
product_service"" -
)""- .
;"". /
await$$ 

_dbContext$$ 
.$$ 
SaveEntitiesAsync$$ .
($$. /
)$$/ 0
;$$0 1
}%% 	
}&& 
}'' ¯
ÜC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\src\Infrastructure\HomePageClientContext\DisplayProductDbContext.cs
	namespace 	
EmprendeUCR
 
. 
Infrastructure $
.$ %!
HomePageClientContext% :
{ 
public 

partial 
class #
DisplayProductDbContext 0
:1 2 
ApplicationDbContext3 G
{ 
public #
DisplayProductDbContext &
(& '
DbContextOptions' 7
<7 8#
DisplayProductDbContext8 O
>O P
optionsQ X
,X Y
ILoggerZ a
<a b#
DisplayProductDbContextb y
>y z
logger	{ Å
)
Å Ç
: 
base 
( 
options 
, 
logger "
)" #
{ 	
} 	
	protected 
override 
void 
OnConfiguring  -
(- .#
DbContextOptionsBuilder. E
optionsBuilderF T
)T U
{ 	
optionsBuilder 
. 
LogTo  
(  !
message! (
=>) +
Debug, 1
.1 2
	WriteLine2 ;
(; <
message< C
)C D
)D E
;E F
} 	
public 
virtual 
DbSet 
< 
User !
>! "
User# '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
	protected 
override 
void 
OnModelCreating  /
(/ 0
ModelBuilder0 <
modelBuilder= I
)I J
{ 	
base   
.   
OnModelCreating    
(    !
modelBuilder  ! -
)  - .
;  . /
modelBuilder!! 
.!! 
ApplyConfiguration!! +
(!!+ ,
new!!, /
UserMap!!0 7
(!!7 8
)!!8 9
)!!9 :
;!!: ;
}"" 	
}## 
}$$ Ú.
ÜC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\src\Infrastructure\HomePageClientContext\HomePageClientDbContext.cs
	namespace 	
EmprendeUCR
 
. 
Infrastructure $
.$ %!
HomePageClientContext% :
{ 
public 

partial 
class #
HomePageClientDbContext 0
:1 2 
ApplicationDbContext3 G
{ 
public #
HomePageClientDbContext &
(& '
DbContextOptions' 7
<7 8#
HomePageClientDbContext8 O
>O P
optionsQ X
,X Y
ILoggerZ a
<a b#
HomePageClientDbContextb y
>y z
logger	{ Å
)
Å Ç
: 
base 
( 
options 
, 
logger "
)" #
{ 	
} 	
	protected 
override 
void 
OnConfiguring  -
(- .#
DbContextOptionsBuilder. E
optionsBuilderF T
)T U
{ 	
optionsBuilder 
. 
LogTo  
(  !
message! (
=>) +
Debug, 1
.1 2
	WriteLine2 ;
(; <
message< C
)C D
)D E
;E F
} 	
public 
virtual 
DbSet 
< 
ProductPhotos *
>* +
ProductPhotos, 9
{: ;
get< ?
;? @
setA D
;D E
}F G
public 
virtual 
DbSet 
< 
Product $
>$ %
Product& -
{. /
get0 3
;3 4
set5 8
;8 9
}: ;
public 
virtual 
DbSet 
< 
Category %
>% &
Category' /
{0 1
get2 5
;5 6
set7 :
;: ;
}< =
public 
virtual 
DbSet 
< 
ShoppingCart )
>) *
ShoppingCart+ 7
{8 9
get: =
;= >
set? B
;B C
}D E
public 
virtual 
DbSet 
< 
ShoppingCartHas ,
>, -
ShoppingCartHas. =
{> ?
get@ C
;C D
setE H
;H I
}J K
public   
virtual   
DbSet   
<   
Offer   "
>  " #
Offer  $ )
{  * +
get  , /
;  / 0
set  1 4
;  4 5
}  6 7
public!! 
virtual!! 
DbSet!! 
<!! 
ProductService!! +
>!!+ ,
ProductService!!- ;
{!!< =
get!!> A
;!!A B
set!!C F
;!!F G
}!!H I
public## 
virtual## 
DbSet## 
<## 
Is_Offer## %
>##% &
Is_Offer##' /
{##0 1
get##2 5
;##5 6
set##7 :
;##: ;
}##< =
public%% 
virtual%% 
DbSet%% 
<%% 
Service_Photos%% +
>%%+ ,
Service_Photos%%- ;
{%%< =
get%%> A
;%%A B
set%%C F
;%%F G
}%%H I
public&& 
virtual&& 
DbSet&& 
<&& 
User&& !
>&&! "
User&&# '
{&&( )
get&&* -
;&&- .
set&&/ 2
;&&2 3
}&&4 5
	protected)) 
override)) 
void)) 
OnModelCreating))  /
())/ 0
ModelBuilder))0 <
modelBuilder))= I
)))I J
{** 	
base++ 
.++ 
OnModelCreating++  
(++  !
modelBuilder++! -
)++- .
;++. /
modelBuilder-- 
.-- 
ApplyConfiguration-- +
(--+ ,
new--, /
ProductPhotosMap--0 @
(--@ A
)--A B
)--B C
;--C D
modelBuilder// 
.// 
ApplyConfiguration// +
(//+ ,
new//, /

ProductMap//0 :
(//: ;
)//; <
)//< =
;//= >
modelBuilder00 
.00 
ApplyConfiguration00 +
(00+ ,
new00, /
CategoryMap000 ;
(00; <
)00< =
)00= >
;00> ?
modelBuilder22 
.22 
ApplyConfiguration22 +
(22+ ,
new22, /
ShoppingCartMap220 ?
(22? @
)22@ A
)22A B
;22B C
modelBuilder33 
.33 
ApplyConfiguration33 +
(33+ ,
new33, /
ShoppingCartHasMap330 B
(33B C
)33C D
)33D E
;33E F
modelBuilder44 
.44 
ApplyConfiguration44 +
(44+ ,
new44, /
OfferMap440 8
(448 9
)449 :
)44: ;
;44; <
modelBuilder55 
.55 
ApplyConfiguration55 +
(55+ ,
new55, /
ProductServiceMap550 A
(55A B
)55B C
)55C D
;55D E
modelBuilder66 
.66 
ApplyConfiguration66 +
(66+ ,
new66, /
Is_OfferMap660 ;
(66; <
)66< =
)66= >
;66> ?
modelBuilder77 
.77 
ApplyConfiguration77 +
(77+ ,
new77, /
Service_PhotosMap770 A
(77A B
)77B C
)77C D
;77D E
modelBuilder88 
.88 
ApplyConfiguration88 +
(88+ ,
new88, /
UserMap880 7
(887 8
)888 9
)889 :
;88: ;
}99 	
}:: 
};; Ï
îC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\src\Infrastructure\HomePageClientContext\Repositories\DisplayProductRepository.cs
	namespace 	
EmprendeUCR
 
. 
Infrastructure $
.$ %!
HomePageClientContext% :
.: ;
Repositories; G
{ 
public 

class $
DisplayProductRepository )
:* +%
IDisplayProductRepository, E
{ 
private 
readonly #
DisplayProductDbContext 0

_dbContext1 ;
;; <
public 
IUnitOfWork 

UnitOfWork %
=>& (

_dbContext) 3
;3 4
public $
DisplayProductRepository '
(' (#
DisplayProductDbContext( ?
	dbContext@ I
)I J
{ 	

_dbContext 
= 
	dbContext "
;" #
} 	
public 
User 
GetUserByEmail "
(" #
string# )
email* /
)/ 0
{ 	
return 

_dbContext 
. 
User "
." #
FirstOrDefault# 1
(1 2
user2 6
=>7 9
user: >
.> ?
Email? D
.D E
EqualsE K
(K L
emailL Q
)Q R
)R S
;S T
} 	
} 
} ΩS
îC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\src\Infrastructure\HomePageClientContext\Repositories\HomePageClientRepository.cs
	namespace 	
EmprendeUCR
 
. 
Infrastructure $
.$ %!
HomePageClientContext% :
.: ;
Repositories; G
{ 
public 

class $
HomePageClientRepository )
:* +%
IHomePageClientRepository, E
{ 
private 
readonly #
HomePageClientDbContext 0

_dbContext1 ;
;; <
public 
IUnitOfWork 

UnitOfWork %
=>& (

_dbContext) 3
;3 4
public $
HomePageClientRepository '
(' (#
HomePageClientDbContext( ?
	dbContext@ I
)I J
{ 	

_dbContext 
= 
	dbContext "
;" #
} 	
public 
IList 
< 
Product 
> 
getNewProducts ,
(, -
)- .
{ 	
return 

_dbContext 
. 
Product %
.% &

FromSqlRaw& 0
(0 1
$str1 F
)F G
.G H
ToArrayH O
(O P
)P Q
;Q R
} 	
public 
IList 
< 
Product 
> 
getOfferProducts .
(. /
)/ 0
{ 	
return 

_dbContext 
. 
Product %
.% &

FromSqlRaw& 0
(0 1
$str1 H
)H I
.I J
ToArrayJ Q
(Q R
)R S
;S T
} 	
public 
IList 
< 
Product 
> "
getRecommendedProducts 4
(4 5
string5 ;
	userEmail< E
)E F
{   	
return!! 

_dbContext!! 
.!! 
Product!! %
.!!% &

FromSqlRaw!!& 0
(!!0 1
$str!!1 Q
+!!R S
	userEmail!!T ]
+!!^ _
$str!!` d
)!!d e
.!!e f
ToArray!!f m
(!!m n
)!!n o
;!!o p
}"" 	
public## 
IList## 
<## 
ProductPhotos## "
>##" #
loadAllPhotos##$ 1
(##1 2
)##2 3
{$$ 	
return%% 

_dbContext%% 
.%% 
ProductPhotos%% +
.%%+ ,
ToList%%, 2
(%%2 3
)%%3 4
;%%4 5
}&& 	
public(( 
async(( 
Task(( 
<(( 
IList(( 
<((  
Category((  (
>((( )
>(() *
getCategoriesAsync((+ =
(((= >
)((> ?
{)) 	
return** 
await** 

_dbContext** #
.**# $
Category**$ ,
.**, -
ToListAsync**- 8
(**8 9
)**9 :
;**: ;
}++ 	
public-- 
async-- 
Task--  
changeCategoryParent-- .
(--. /
int--/ 2
Id--3 5
,--5 6
int--7 :
?--: ;
ParentId--< D
)--D E
{.. 	
Category// 
source// 
=// 

_dbContext// (
.//( )
Category//) 1
.//1 2
Find//2 6
(//6 7
Id//7 9
)//9 :
;//: ;
source00 
.00 
ParentId00 
=00 
ParentId00 &
;00& '

_dbContext11 
.11 
Category11 
.11  
Update11  &
(11& '
source11' -
)11- .
;11. /
await22 

_dbContext22 
.22 
SaveChangesAsync22 -
(22- .
)22. /
;22/ 0
}33 	
public55 
bool55 
isChildNode55 
(55  
int55  #
Id55$ &
)55& '
{66 	
bool77 
isChild77 
=77 
false77  
;77  !
if88 
(88 

_dbContext88 
.88 
Category88 #
.88# $
Where88$ )
(88) *
c88* +
=>88, .
c88/ 0
.880 1
ParentId881 9
.889 :
Equals88: @
(88@ A
Id88A C
)88C D
)88D E
.88E F
Count88F K
(88K L
)88L M
==88N P
$num88Q R
)88R S
{99 
isChild:: 
=:: 
true:: 
;:: 
};; 
return<< 
isChild<< 
;<< 
}== 	
public>> 
async>> 
Task>> 
<>> 
bool>> 
>>> 
searchProduct>>  -
(>>- .
string>>. 4
email>>5 :
,>>: ;
int>>< ?
	idProduct>>@ I
)>>I J
{?? 	
ShoppingCartHas@@ 
existing@@ $
=@@% &
await@@' ,

_dbContext@@- 7
.@@7 8
ShoppingCartHas@@8 G
.@@G H
FirstOrDefaultAsync@@H [
(@@[ \
c@@\ ]
=>@@^ `
c@@a b
.@@b c
Email@@c h
.@@h i
Equals@@i o
(@@o p
email@@p u
)@@u v
&&@@w y
c@@z {
.@@{ |
Code_ID	@@| É
==
@@Ñ Ü
	idProduct
@@á ê
)
@@ê ë
;
@@ë í
ifAA 
(AA 
existingAA 
!=AA 
nullAA  
)AA  !
{BB 
returnCC 
trueCC 
;CC 
}DD 
returnEE 
falseEE 
;EE 
}FF 	
publicGG 
asyncGG 
TaskGG 
<GG 
boolGG 
>GG 

addProductGG  *
(GG* +
ShoppingCartHasGG+ :
productGG; B
)GGB C
{HH 	
awaitII 

_dbContextII 
.II 
AddAsyncII %
(II% &
productII& -
)II- .
;II. /
awaitJJ 

_dbContextJJ 
.JJ 
SaveChangesAsyncJJ -
(JJ- .
)JJ. /
;JJ/ 0
returnKK 
trueKK 
;KK 
}LL 	
publicNN 
asyncNN 
TaskNN 
<NN 
IListNN 
<NN  
OfferNN  %
>NN% &
>NN& '
	GetOffersNN( 1
(NN1 2
)NN2 3
{OO 	
returnRR 

_dbContextRR 
.RR 
OfferRR #
.RR# $

FromSqlRawRR$ .
(RR. /
$strRR/ _
)RR_ `
.RR` a
ToArrayRRa h
(RRh i
)RRi j
;RRj k
}SS 	
publicUU 
asyncUU 
TaskUU 
<UU 
ListUU 
<UU 
ProductServiceUU -
>UU- .
>UU. /
GetAllProductsUU0 >
(UU> ?
)UU? @
{VV 	
returnWW 
awaitWW 

_dbContextWW #
.WW# $
ProductServiceWW$ 2
.WW2 3
ToListAsyncWW3 >
(WW> ?
)WW? @
;WW@ A
}XX 	
publicZZ 
IListZZ 
<ZZ 
ProductZZ 
>ZZ  
GetPurchasedProductsZZ 2
(ZZ2 3
stringZZ3 9
emailZZ: ?
)ZZ? @
{[[ 	
return\\ 

_dbContext\\ 
.\\ 
Product\\ %
.\\% &

FromSqlRaw\\& 0
(\\0 1
$str\\1 X
+\\Y Z
email\\[ `
+\\a b
$str\\c g
)\\g h
.\\h i
ToArray\\i p
(\\p q
)\\q r
;\\r s
}]] 	
public__ 
IList__ 
<__ 
Is_Offer__ 
>__ 
GetAllIs_Offer__ -
(__- .
)__. /
{`` 	
returnaa 

_dbContextaa 
.aa 
Is_Offeraa &
.aa& '

FromSqlRawaa' 1
(aa1 2
$straa2 B
)aaB C
.aaC D
ToArrayaaD K
(aaK L
)aaL M
;aaM N
}bb 	
publicdd 
IListdd 
<dd 
Service_Photosdd #
>dd# $
GetAllServicePhotosdd% 8
(dd8 9
)dd9 :
{ee 	
returnff 

_dbContextff 
.ff 
Service_Photosff ,
.ff, -
ToListff- 3
(ff3 4
)ff4 5
;ff5 6
}gg 	
publicii 
Userii 
GetUserByEmailii "
(ii" #
stringii# )
emailii* /
)ii/ 0
{jj 	
returnkk 

_dbContextkk 
.kk 
Userkk "
.kk" #
FirstOrDefaultkk# 1
(kk1 2
userkk2 6
=>kk7 9
userkk: >
.kk> ?
Emailkk? D
.kkD E
EqualskkE K
(kkK L
emailkkL Q
)kkQ R
)kkR S
;kkS T
}mm 	
publicnn 
asyncnn 
Tasknn 
<nn 
Is_Offernn "
>nn" #
GetIs_OfferAsyncnn$ 4
(nn4 5
intnn5 8
Is_Offer_Idnn9 D
)nnD E
{oo 	
Is_Offerpp 
offerpp 
=pp 
awaitpp "

_dbContextpp# -
.pp- .
Is_Offerpp. 6
.pp6 7
FirstOrDefaultAsyncpp7 J
(ppJ K
cppK L
=>ppM O
cppP Q
.ppQ R
Offer_IDppR Z
.ppZ [
Equalspp[ a
(ppa b
Is_Offer_Idppb m
)ppm n
)ppn o
;ppo p
returnrr 
offerrr 
;rr 
}ss 	
publictt 
Listtt 
<tt 
Is_Offertt 
>tt 0
$GetAllIs_OfferRelatedToOfferNOTAsynctt B
(ttB C
OfferttC H
offerttI N
)ttN O
{uu 	
returnvv 

_dbContextvv 
.vv 
Is_Offervv &
.vv& '
Wherevv' ,
(vv, -
is_Offervv- 5
=>vv6 8
Stringvv9 ?
.vv? @
Equalsvv@ F
(vvF G
offervvG L
.vvL M
Offer_IDvvM U
,vvU V
is_OffervvW _
.vv_ `
Offer_IDvv` h
)vvh i
)vvi j
.vvj k
ToListvvk q
(vvq r
)vvr s
;vvs t
}ww 	
}xx 
}yy å(
tC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\src\Infrastructure\LoginContext\LoginDbContext.cs
	namespace 	
EmprendeUCR
 
. 
Infrastructure $
.$ %
LoginContext% 1
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
 
LoginDbContext

 '
:

( ) 
ApplicationDbContext

* >
{ 
public 
LoginDbContext 
( 
DbContextOptions .
<. /
LoginDbContext/ =
>= >
options? F
,F G
ILoggerH O
<O P
LoginDbContextP ^
>^ _
logger` f
)f g
: 
base 
( 
options 
, 
logger "
)" #
{ 	
} 	
	protected 
override 
void 
OnConfiguring  -
(- .#
DbContextOptionsBuilder. E
optionsBuilderF T
)T U
{ 	
optionsBuilder 
. 
LogTo  
(  !
message! (
=>) +
Debug, 1
.1 2
	WriteLine2 ;
(; <
message< C
)C D
)D E
;E F
} 	
public 
virtual 
DbSet 
< 
User !
>! "
User# '
{( )
get* -
;- .
set/ 2
;2 3
}3 4
public 
virtual 
DbSet 
< 
Client #
># $
Client% +
{, -
get. 1
;1 2
set3 6
;6 7
}7 8
public 
virtual 
DbSet 
< 
Entrepreneur )
>) *
Entrepreneur+ 7
{8 9
get: =
;= >
set? B
;B C
}C D
public 
virtual 
DbSet 
< 
Administrator *
>* +
Administrator, 9
{: ;
get< ?
;? @
setA D
;D E
}E F
public 
virtual 
DbSet 
< 
Credentials (
>( )
Credentials* 5
{6 7
get8 ;
;; <
set= @
;@ A
}A B
public 
virtual 
DbSet 
< 
EmailConfirmation .
>. /
EmailConfirmation0 A
{B C
getD G
;G H
setI L
;L M
}M N
public 
virtual 
DbSet 
<  
ActiveAdministrators 1
>1 2 
ActiveAdministrators3 G
{H I
getJ M
;M N
setO R
;R S
}T U
public 
virtual 
DbSet 
< 
BannedAcount )
>) *
BannedAcount+ 7
{8 9
get: =
;= >
set? B
;B C
}D E
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
modelBuilder"" 
."" 
ApplyConfiguration"" +
(""+ ,
new"", /
UserMap""0 7
(""7 8
)""8 9
)""9 :
;"": ;
modelBuilder## 
.## 
ApplyConfiguration## +
(##+ ,
new##, /
	ClientMap##0 9
(##9 :
)##: ;
)##; <
;##< =
modelBuilder$$ 
.$$ 
ApplyConfiguration$$ +
($$+ ,
new$$, /
EntrepreneurMap$$0 ?
($$? @
)$$@ A
)$$A B
;$$B C
modelBuilder%% 
.%% 
ApplyConfiguration%% +
(%%+ ,
new%%, /
AdministratorMap%%0 @
(%%@ A
)%%A B
)%%B C
;%%C D
modelBuilder&& 
.&& 
ApplyConfiguration&& +
(&&+ ,
new&&, /
CredentialsMap&&0 >
(&&> ?
)&&? @
)&&@ A
;&&A B
modelBuilder'' 
.'' 
ApplyConfiguration'' +
(''+ ,
new'', / 
EmailConfirmationMap''0 D
(''D E
)''E F
)''F G
;''G H
modelBuilder(( 
.(( 
ApplyConfiguration(( +
(((+ ,
new((, /#
ActiveAdministratorsMap((0 G
(((G H
)((H I
)((I J
;((J K
modelBuilder)) 
.)) 
ApplyConfiguration)) +
())+ ,
new)), /
BannedAcountMap))0 ?
())? @
)))@ A
)))A B
;))B C
}** 	
}++ 
},, –K
ÇC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\src\Infrastructure\LoginContext\Repositories\LoginRepository.cs
	namespace		 	
EmprendeUCR		
 
.		 
Infrastructure		 $
.		$ %
LoginContext		% 1
.		1 2
Repositories		2 >
{

 
public 

class 
LoginRepository  
:! "
ILoginRepository# 3
{ 
private 
readonly 
LoginDbContext '

_dbContext( 2
;2 3
public 
IUnitOfWork 

UnitOfWork %
=>& (

_dbContext) 3
;3 4
public 
LoginRepository 
( 
LoginDbContext -
	dbContext. 7
)7 8
{ 	

_dbContext 
= 
	dbContext "
;" #
} 	
public 
async 
Task 
< 
bool 
> 
verifyUserType  .
(. /
string/ 5
email6 ;
,; <
int= @
userTypeA I
)I J
{ 	
bool 
exists 
= 
false 
;  
switch 
( 
userType 
) 
{ 
case 
$num 
: 
if 
( 
await 

_dbContext (
.( )
Client) /
./ 0
	FindAsync0 9
(9 :
email: ?
)? @
!=A C
nullD H
)H I
{ 
exists 
=  
true! %
;% &
} 
break   
;   
case"" 
$num"" 
:"" 
if## 
(## 
await## 

_dbContext## (
.##( )
Entrepreneur##) 5
.##5 6
	FindAsync##6 ?
(##? @
email##@ E
)##E F
!=##G I
null##J N
)##N O
{$$ 
exists%% 
=%%  
true%%! %
;%%% &
}&& 
break'' 
;'' 
case)) 
$num)) 
:)) 
if** 
(** 
await** 

_dbContext** (
.**( )
Administrator**) 6
.**6 7
	FindAsync**7 @
(**@ A
email**A F
)**F G
!=**H J
null**K O
)**O P
{++ 
exists,, 
=,,  
true,,! %
;,,% &
}-- 
break.. 
;.. 
}// 
return00 
exists00 
;00 
}11 	
public33 
async33 
Task33 
<33 
string33  
>33  !
GetPassword33" -
(33- .
string33. 4
email335 :
)33: ;
{44 	
Credentials55 
credentials55 #
=55$ %
await55& +

_dbContext55, 6
.556 7
Credentials557 B
.55B C
FirstOrDefaultAsync55C V
(55V W
c55W X
=>55Y [
c55\ ]
.55] ^

User_Email55^ h
.55h i
Equals55i o
(55o p
email55p u
)55u v
)55v w
;55w x
if66 
(66 
credentials66 
==66 
null66 #
)66# $
{77 
return88 
$str88 
;88 
}99 
else:: 
{;; 
return<< 
credentials<< "
.<<" #
Password<<# +
.<<+ ,
ToString<<, 4
(<<4 5
)<<5 6
;<<6 7
}== 
}>> 	
public@@ 
async@@ 
Task@@ 
<@@ 
EmailConfirmation@@ +
>@@+ ,'
GetEmailConfirmationByEmail@@- H
(@@H I
string@@I O
email@@P U
)@@U V
{AA 	
returnBB 
awaitBB 

_dbContextBB #
.BB# $
EmailConfirmationBB$ 5
.BB5 6
FirstOrDefaultAsyncBB6 I
(BBI J
cBBJ K
=>BBL N
cBBO P
.BBP Q
EmailBBQ V
.BBV W
EqualsBBW ]
(BB] ^
emailBB^ c
)BBc d
)BBd e
;BBe f
}CC 	
publicEE 
EmailConfirmationEE   
getEmailConfirmationEE! 5
(EE5 6
stringEE6 <
	hash_codeEE= F
)EEF G
{FF 	
returnGG 

_dbContextGG 
.GG 
EmailConfirmationGG /
.GG/ 0
FirstOrDefaultGG0 >
(GG> ?
cGG? @
=>GGA C
cGGD E
.GGE F
	Hash_CodeGGF O
.GGO P
EqualsGGP V
(GGV W
	hash_codeGGW `
)GG` a
)GGa b
;GGb c
}HH 	
publicJJ 
voidJJ #
updateEmailConfirmationJJ +
(JJ+ ,
EmailConfirmationJJ, =
confirmationJJ> J
)JJJ K
{KK 	
EmailConfirmationLL 
email_confirmationLL 0
=LL1 2

_dbContextLL3 =
.LL= >
EmailConfirmationLL> O
.LLO P
FirstOrDefaultLLP ^
(LL^ _
cLL_ `
=>LLa c
cLLd e
.LLe f
EmailLLf k
.LLk l
EqualsLLl r
(LLr s
confirmationLLs 
.	LL Ä
Email
LLÄ Ö
)
LLÖ Ü
)
LLÜ á
;
LLá à
ifMM 
(MM 
email_confirmationMM "
!=MM# %
nullMM& *
)MM* +
{NN 
email_confirmationOO "
.OO" #
EmailOO# (
=OO) *
confirmationOO+ 7
.OO7 8
EmailOO8 =
;OO= >
email_confirmationPP "
.PP" #
	Hash_CodePP# ,
=PP- .
confirmationPP/ ;
.PP; <
	Hash_CodePP< E
;PPE F
email_confirmationQQ "
.QQ" #
Creation_DateQQ# 0
=QQ1 2
confirmationQQ3 ?
.QQ? @
Creation_DateQQ@ M
;QQM N
email_confirmationRR "
.RR" #
Expiration_DateRR# 2
=RR3 4
confirmationRR5 A
.RRA B
Expiration_DateRRB Q
;RRQ R

_dbContextSS 
.SS 
UpdateSS !
(SS! "
email_confirmationSS" 4
)SS4 5
;SS5 6

_dbContextTT 
.TT 
SaveChangesTT &
(TT& '
)TT' (
;TT( )
}UU 
}VV 	
publicXX 
boolXX 
CredentialsUpdateXX %
(XX% &
CredentialsXX& 1
cXX2 3
)XX3 4
{YY 	
CredentialsZZ 
credentialsZZ #
=ZZ$ %

_dbContextZZ& 0
.ZZ0 1
CredentialsZZ1 <
.ZZ< =
FirstOrDefaultZZ= K
(ZZK L
cZZL M
=>ZZN P
cZZQ R
.ZZR S

User_EmailZZS ]
.ZZ] ^
EqualsZZ^ d
(ZZd e
cZZe f
.ZZf g

User_EmailZZg q
)ZZq r
)ZZr s
;ZZs t
if[[ 
([[ 
credentials[[ 
!=[[ 
null[[ #
)[[# $
{\\ 

_dbContext]] 
.]] 
Update]] !
(]]! "
c]]" #
)]]# $
;]]$ %

_dbContext^^ 
.^^ 
SaveChanges^^ &
(^^& '
)^^' (
;^^( )
}`` 
returnaa 
trueaa 
;aa 
}bb 	
publicdd 
asyncdd 
Taskdd 
<dd  
ActiveAdministratorsdd .
>dd. /"
getActiveAdministratordd0 F
(ddF G
stringddG M
emailddN S
)ddS T
{ee 	
returnff 
awaitff 

_dbContextff #
.ff# $ 
ActiveAdministratorsff$ 8
.ff8 9
FirstOrDefaultAsyncff9 L
(ffL M
cffM N
=>ffO Q
cffR S
.ffS T
EmailffT Y
.ffY Z
EqualsffZ `
(ff` a
emailffa f
)fff g
)ffg h
;ffh i
}gg 	
publicii 
asyncii 
Taskii 
<ii 
BannedAcountii &
>ii& '
CheckBannedii( 3
(ii3 4
stringii4 :
emailii; @
)ii@ A
{jj 	
returnkk 
awaitkk 

_dbContextkk #
.kk# $
BannedAcountkk$ 0
.kk0 1
FirstOrDefaultAsynckk1 D
(kkD E
ckkE F
=>kkG I
ckkJ K
.kkK L
	UserEmailkkL U
.kkU V
EqualskkV \
(kk\ ]
emailkk] b
)kkb c
)kkc d
;kkd e
}ll 	
publicnn 
asyncnn 
Tasknn 
<nn 
Usernn 
>nn 
getUsernn  '
(nn' (
stringnn( .
emailnn/ 4
)nn4 5
{oo 	
returnpp 
awaitpp 

_dbContextpp #
.pp# $
Userpp$ (
.pp( )
	FindAsyncpp) 2
(pp2 3
emailpp3 8
)pp8 9
;pp9 :
}qq 	
publicss 
Credentialsss 
getCredentialsss )
(ss) *
stringss* 0
emailss1 6
)ss6 7
{tt 	
returnuu 

_dbContextuu 
.uu 
Credentialsuu )
.uu) *
Finduu* .
(uu. /
emailuu/ 4
)uu4 5
;uu5 6
}vv 	
}ww 
}xx Ù
ÉC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\src\Infrastructure\PaymentInfos\Card\CardPaymentInfoDbContext.cs
	namespace 	
EmprendeUCR
 
. 
Infrastructure $
.$ %
PaymentInfos% 1
.1 2
Card2 6
{ 
public 

class $
CardPaymentInfoDbContext )
:* + 
ApplicationDbContext, @
{		 
public

 $
CardPaymentInfoDbContext

 '
(

' (
DbContextOptions

( 8
<

8 9$
CardPaymentInfoDbContext

9 Q
>

Q R
options

S Z
,

Z [
ILogger

\ c
<

c d$
CardPaymentInfoDbContext

d |
>

| }
logger	

~ Ñ
)


Ñ Ö
: 
base 
( 
options 
, 
logger "
)" #
{ 	
} 	
public 
DbSet 
< 
CardPaymentInfo $
>$ %
CardPaymentInfo& 5
{6 7
get8 ;
;; <
set= @
;@ A
}B C
=D E
nullF J
!J K
;K L
	protected 
override 
void 
OnModelCreating  /
(/ 0
ModelBuilder0 <
modelBuilder= I
)I J
{ 	
base 
. 
OnModelCreating  
(  !
modelBuilder! -
)- .
;. /
modelBuilder 
. 
ApplyConfiguration +
(+ ,
new, /
CardPaymentInfoMap0 B
(B C
)C D
)D E
;E F
} 	
} 
} Í
åC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\src\Infrastructure\PaymentInfos\Card\EntityMappings\CardPaymentInfoMap.cs
	namespace 	
EmprendeUCR
 
. 
Infrastructure $
.$ %
PaymentInfos% 1
.1 2
Card2 6
.6 7
EntityMappings7 E
{ 
public 

class 
CardPaymentInfoMap #
:$ %$
IEntityTypeConfiguration& >
<> ?
CardPaymentInfo? N
>N O
{		 
public

 
void

 
	Configure

 
(

 
EntityTypeBuilder

 /
<

/ 0
CardPaymentInfo

0 ?
>

? @
builder

A H
)

H I
{ 	
builder 
. 
ToTable 
( 
$str %
)% &
;& '
builder 
. 
HasKey 
( 
p 
=> 
p  !
.! "
Account_Number" 0
)0 1
;1 2
} 	
} 
} Í
ëC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\src\Infrastructure\PaymentInfos\Card\Repositories\CardPaymentInfoRepository.cs
	namespace

 	
EmprendeUCR


 
.

 
Infrastructure

 $
.

$ %
PaymentInfos

% 1
.

1 2
Card

2 6
.

6 7
Repositories

7 C
{ 
internal 
class %
CardPaymentInfoRepository ,
:- .&
ICardPaymentInfoRepository/ I
{ 
private 
readonly $
CardPaymentInfoDbContext 1

_dbContext2 <
;< =
public 
IUnitOfWork 

UnitOfWork %
=>& (

_dbContext) 3
;3 4
public %
CardPaymentInfoRepository (
(( )$
CardPaymentInfoDbContext) A

unitOfWorkB L
)L M
{ 	

_dbContext 
= 

unitOfWork #
;# $
} 	
public 
async 
Task 
< 
IEnumerable %
<% &
CardPaymentInfo& 5
>5 6
>6 7
GetAllAsync8 C
(C D
)D E
{ 	
return 
await 

_dbContext #
.# $
CardPaymentInfo$ 3
. 
Select 
( 
p 
=> 
new 
CardPaymentInfo ,
(, -
p- .
.. /
Account_Number/ =
,= >
p? @
.@ A
Payment_Info_IDA P
,P Q
pR S
.S T
Name_Payment_MethodT g
)g h
)h i
. 
ToListAsync 
( 
) 
; 
} 	
public 
async 
Task 
< 
CardPaymentInfo )
?) *
>* +
GetByIdAsync, 8
(8 9
string9 ?
accountNumber@ M
)M N
{ 	
return 
await 

_dbContext #
.# $
CardPaymentInfo$ 3
. 
FirstOrDefaultAsync  
(  !
p! "
=># %
p& '
.' (
Account_Number( 6
==7 9
accountNumber: G
)G H
;H I
} 	
public"" 
async"" 
Task"" 
	SaveAsync"" #
(""# $
CardPaymentInfo""$ 3 
sinpeIbanPaymentInfo""4 H
)""H I
{## 	

_dbContext$$ 
.$$ 
Update$$ 
($$  
sinpeIbanPaymentInfo$$ 2
)$$2 3
;$$3 4
await%% 

_dbContext%% 
.%% 
SaveEntitiesAsync%% .
(%%. /
)%%/ 0
;%%0 1
}&& 	
public(( 
async(( 
Task(( 
AddPaymentInfo(( (
(((( )
CardPaymentInfo(() 8 
sinpeIbanPaymentInfo((9 M
)((M N
{)) 	
await** 

_dbContext** 
.** 
AddAsync** %
(**% & 
sinpeIbanPaymentInfo**& :
)**: ;
;**; <
await++ 

_dbContext++ 
.++ 
SaveChangesAsync++ -
(++- .
)++. /
;++/ 0
},, 	
public-- 
async-- 
Task-- 
<-- 
CardPaymentInfo-- )
?--) *
>--* +
GetByPaymentInfoID--, >
(--> ?
int--? B
id--C E
)--E F
{.. 	
return// 
await// 

_dbContext// #
.//# $
CardPaymentInfo//$ 3
.00 
FirstOrDefaultAsync00  
(00  !
p00! "
=>00# %
p00& '
.00' (
Payment_Info_ID00( 7
.007 8
Equals008 >
(00> ?
id00? A
)00A B
)00B C
;00C D
}11 	
}33 
}44 ˘	
ñC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\src\Infrastructure\PaymentInfos\HasPaymentInfos\EntityMappings\HasPaymentInfoMap.cs
	namespace 	
EmprendeUCR
 
. 
Infrastructure $
.$ %
PaymentInfos% 1
.1 2
HasPaymentInfos2 A
.A B
EntityMappingsB P
{ 
public 

class 
HasPaymentInfoMap "
:# $$
IEntityTypeConfiguration% =
<= >
HasPaymentInfo> L
>L M
{ 
public 
void 
	Configure 
( 
EntityTypeBuilder /
</ 0
HasPaymentInfo0 >
>> ?
builder@ G
)G H
{		 	
builder

 
.

 
ToTable

 
(

 
$str

 .
)

. /
;

/ 0
builder 
. 
HasKey 
( 
p 
=> 
new  #
{$ %
p& '
.' (
Entrepreneur_Email( :
,: ;
p< =
.= >
Payment_Info_ID> M
}N O
)O P
;P Q
} 	
} 
} Ç
çC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\src\Infrastructure\PaymentInfos\HasPaymentInfos\HasPaymentInfoDbContext.cs
	namespace 	
EmprendeUCR
 
. 
Infrastructure $
.$ %
PaymentInfos% 1
.1 2
HasPaymentInfos2 A
{ 
public 

class #
HasPaymentInfoDbContext (
:) * 
ApplicationDbContext+ ?
{		 
public

 #
HasPaymentInfoDbContext

 &
(

& '
DbContextOptions

' 7
<

7 8#
HasPaymentInfoDbContext

8 O
>

O P
options

Q X
,

X Y
ILogger

Z a
<

a b#
HasPaymentInfoDbContext

b y
>

y z
logger	

{ Å
)


Å Ç
: 
base 
( 
options 
, 
logger "
)" #
{ 	
} 	
public 
DbSet 
< 
HasPaymentInfo #
># $
HasPaymentInfo% 3
{4 5
get6 9
;9 :
set; >
;> ?
}@ A
=B C
nullD H
!H I
;I J
	protected 
override 
void 
OnModelCreating  /
(/ 0
ModelBuilder0 <
modelBuilder= I
)I J
{ 	
base 
. 
OnModelCreating  
(  !
modelBuilder! -
)- .
;. /
modelBuilder 
. 
ApplyConfiguration +
(+ ,
new, /
HasPaymentInfoMap0 A
(A B
)B C
)C D
;D E
} 	
} 
} œ
õC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\src\Infrastructure\PaymentInfos\HasPaymentInfos\Repositories\HasPaymentInfoRepository.cs
	namespace		 	
EmprendeUCR		
 
.		 
Infrastructure		 $
.		$ %
PaymentInfos		% 1
.		1 2
HasPaymentInfos		2 A
.		A B
Repositories		B N
{

 
internal 
class $
HasPaymentInfoRepository +
:, -%
IHasPaymentInfoRepository. G
{ 
private 
readonly #
HasPaymentInfoDbContext 0

_dbContext1 ;
;; <
public 
IUnitOfWork 

UnitOfWork %
=>& (

_dbContext) 3
;3 4
public $
HasPaymentInfoRepository '
(' (#
HasPaymentInfoDbContext( ?

unitOfWork@ J
)J K
{ 	

_dbContext 
= 

unitOfWork #
;# $
} 	
public 
async 
Task 
	SaveAsync #
(# $
HasPaymentInfo$ 2
hasPaymentInfo3 A
)A B
{ 	

_dbContext 
. 
Update 
( 
hasPaymentInfo ,
), -
;- .
await 

_dbContext 
. 
SaveEntitiesAsync .
(. /
)/ 0
;0 1
} 	
public 
async 
Task 
AddHasPaymentInfo +
(+ ,
HasPaymentInfo, :
hasPaymentInfo; I
)I J
{ 	
await 

_dbContext 
. 
AddAsync %
(% &
hasPaymentInfo& 4
)4 5
;5 6
await 

_dbContext 
. 
SaveChangesAsync -
(- .
). /
;/ 0
} 	
public 
async 
Task 
< 
IEnumerable %
<% &
HasPaymentInfo& 4
>4 5
>5 6
GetAllAsync7 B
(B C
)C D
{ 	
return   
await   

_dbContext   #
.  # $
HasPaymentInfo  $ 2
.!! 
Select!! 
(!! 
p!! 
=>!! 
new!! 
HasPaymentInfo!! +
(!!+ ,
p!!, -
.!!- .
Entrepreneur_Email!!. @
,!!@ A
p!!A B
.!!B C
Payment_Info_ID!!C R
)!!R S
)!!S T
."" 
ToListAsync"" 
("" 
)"" 
;"" 
}## 	
}$$ 
}%% Í
ñC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\src\Infrastructure\PaymentInfos\PaymentInformation\EntityMappings\PaymentInfoMap.cs
	namespace 	
EmprendeUCR
 
. 
Infrastructure $
.$ %
PaymentInfos% 1
.1 2
PaymentInformation2 D
.D E
EntityMappingsE S
{ 
public 

class 
PaymentInfoMap 
:  !$
IEntityTypeConfiguration" :
<: ;
PaymentInfo; F
>F G
{		 
public

 
void

 
	Configure

 
(

 
EntityTypeBuilder

 /
<

/ 0
PaymentInfo

0 ;
>

; <
builder

= D
)

D E
{ 	
builder 
. 
ToTable 
( 
$str *
)* +
;+ ,
builder 
. 
HasKey 
( 
p 
=> 
p  !
.! "
ID" $
)$ %
;% &
} 	
} 
} Ì
çC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\src\Infrastructure\PaymentInfos\PaymentInformation\PaymentInfoDbContext.cs
	namespace 	
EmprendeUCR
 
. 
Infrastructure $
.$ %
PaymentInfos% 1
.1 2
PaymentInformation2 D
{ 
public 

class  
PaymentInfoDbContext %
:& ' 
ApplicationDbContext( <
{		 
public

  
PaymentInfoDbContext

 #
(

# $
DbContextOptions

$ 4
<

4 5 
PaymentInfoDbContext

5 I
>

I J
options

K R
,

R S
ILogger

T [
<

[ \ 
PaymentInfoDbContext

\ p
>

p q
logger

r x
)

x y
: 
base 
( 
options 
, 
logger "
)" #
{ 	
} 	
public 
DbSet 
< 
PaymentInfo  
>  !
PaymentInfo" -
{. /
get0 3
;3 4
set5 8
;8 9
}: ;
=< =
null> B
!B C
;C D
	protected 
override 
void 
OnModelCreating  /
(/ 0
ModelBuilder0 <
modelBuilder= I
)I J
{ 	
base 
. 
OnModelCreating  
(  !
modelBuilder! -
)- .
;. /
modelBuilder 
. 
ApplyConfiguration +
(+ ,
new, /
PaymentInfoMap0 >
(> ?
)? @
)@ A
;A B
} 	
} 
} ¿
õC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\src\Infrastructure\PaymentInfos\PaymentInformation\Repositories\PaymentInfoRepository.cs
	namespace		 	
EmprendeUCR		
 
.		 
Infrastructure		 $
.		$ %
PaymentInfos		% 1
.		1 2
PaymentInformation		2 D
.		D E
Repositories		E Q
{

 
internal 
class !
PaymentInfoRepository (
:) *"
IPaymentInfoRepository+ A
{ 
private 
readonly  
PaymentInfoDbContext -

_dbContext. 8
;8 9
public 
IUnitOfWork 

UnitOfWork %
=>& (

_dbContext) 3
;3 4
public !
PaymentInfoRepository $
($ % 
PaymentInfoDbContext% 9

unitOfWork: D
)D E
{ 	

_dbContext 
= 

unitOfWork #
;# $
} 	
public 
async 
Task 
< 
IEnumerable %
<% &
PaymentInfo& 1
>1 2
>2 3
GetAllAsync4 ?
(? @
)@ A
{ 	
return 
await 

_dbContext #
.# $
PaymentInfo$ /
. 
Select 
( 
p 
=> 
new 
PaymentInfo (
(( )
p) *
.* +
ID+ -
)- .
). /
. 
ToListAsync 
( 
) 
; 
} 	
public 
async 
Task 
< 
PaymentInfo %
?% &
>& '
GetByIdAsync( 4
(4 5
int5 8
id9 ;
); <
{ 	
return 
await 

_dbContext #
.# $
PaymentInfo$ /
. 
FirstOrDefaultAsync  
(  !
p! "
=># %
p& '
.' (
ID( *
==+ -
id. 0
)0 1
;1 2
} 	
public!! 
async!! 
Task!! 
	SaveAsync!! #
(!!# $
PaymentInfo!!$ /
paymentInfo!!0 ;
)!!; <
{"" 	

_dbContext## 
.## 
Update## 
(## 
paymentInfo## )
)##) *
;##* +
await$$ 

_dbContext$$ 
.$$ 
SaveEntitiesAsync$$ .
($$. /
)$$/ 0
;$$0 1
}%% 	
public&& 
async&& 
Task&& 
<&& 
PaymentInfo&& %
?&&% &
>&&& '
AddPaymentInfo&&( 6
(&&6 7
)&&7 8
{'' 	
PaymentInfo(( 
paymentInfo(( #
=(($ %
new((& )
PaymentInfo((* 5
(((5 6
)((6 7
;((7 8
await)) 

_dbContext)) 
.)) 
AddAsync)) %
())% &
paymentInfo))& 1
)))1 2
;))2 3
await** 

_dbContext** 
.** 
SaveChangesAsync** -
(**- .
)**. /
;**/ 0
return++ 
paymentInfo++ 
;++ 
},, 	
public-- 
async-- 
Task-- 
RemovePaymentInfo-- +
(--+ ,
int--, /
id--0 2
)--2 3
{--4 5
PaymentInfo.. 
paymentInfo.. #
=..$ %
await..& +
GetByIdAsync.., 8
(..8 9
id..9 ;
)..; <
;..< =

_dbContext// 
.// 
Remove// 
(// 
paymentInfo// )
)//) *
;//* +
await00 

_dbContext00 
.00 
SaveChangesAsync00 -
(00- .
)00. /
;00/ 0
}11 	
}22 
}33 à	
ñC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\src\Infrastructure\PaymentInfos\SinpeIban\EntityMappings\SinpeIbanPaymentInfoMap.cs
	namespace 	
EmprendeUCR
 
. 
Infrastructure $
.$ %
PaymentInfos% 1
.1 2
	SinpeIban2 ;
.; <
EntityMappings< J
{ 
public 

class #
SinpeIbanPaymentInfoMap (
:) *$
IEntityTypeConfiguration+ C
<C D 
SinpeIbanPaymentInfoD X
>X Y
{		 
public

 
void

 
	Configure

 
(

 
EntityTypeBuilder

 /
<

/ 0 
SinpeIbanPaymentInfo

0 D
>

D E
builder

F M
)

M N
{ 	
builder 
. 
ToTable 
( 
$str +
)+ ,
;, -
builder 
. 
HasKey 
( 
p 
=> 
p  !
.! "
Account_Number" 0
)0 1
;1 2
} 	
} 
}  /
õC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\src\Infrastructure\PaymentInfos\SinpeIban\Repositories\SinpeIbanPaymentInfoRepository.cs
	namespace

 	
EmprendeUCR


 
.

 
Infrastructure

 $
.

$ %
PaymentInfos

% 1
.

1 2
	SinpeIban

2 ;
.

; <
Repositories

< H
{ 
internal 
class *
SinpeIbanPaymentInfoRepository 1
:2 3+
ISinpeIbanPaymentInfoRepository4 S
{ 
private 
readonly )
SinpeIbanPaymentInfoDbContext 6

_dbContext7 A
;A B
public 
IUnitOfWork 

UnitOfWork %
=>& (

_dbContext) 3
;3 4
public *
SinpeIbanPaymentInfoRepository -
(- .)
SinpeIbanPaymentInfoDbContext. K

unitOfWorkL V
)V W
{ 	

_dbContext 
= 

unitOfWork #
;# $
} 	
public 
async 
Task 
< 
IEnumerable %
<% & 
SinpeIbanPaymentInfo& :
>: ;
>; <
GetAllAsync= H
(H I
)I J
{ 	
return 
await 

_dbContext #
.# $ 
SinpeIbanPaymentInfo$ 8
. 
Select 
( 
p 
=> 
new  
SinpeIbanPaymentInfo 1
(1 2
p2 3
.3 4
Account_Number4 B
,B C
pD E
.E F
Payment_Info_IDF U
,U V
pW X
.X Y
Name_Payment_MethodY l
)l m
)m n
. 
ToListAsync 
( 
) 
; 
} 	
public 
async 
Task 
<  
SinpeIbanPaymentInfo .
?. /
>/ 0
GetByIdAsync1 =
(= >
string> D
accountNumberE R
)R S
{ 	
bool #
validationForInjections (
=) *
false+ 0
;0 1
if 
( 
accountNumber 
. 
Contains &
(& '
$str' ,
), -
)- .
{ #
validationForInjections '
=( )
true* .
;. /
}   
else!! 
if!! 
(!! 
accountNumber!! "
.!!" #
Contains!!# +
(!!+ ,
$str!!, /
)!!/ 0
)!!0 1
{"" #
validationForInjections## '
=##( )
true##* .
;##. /
}$$ 
else%% 
if%% 
(%% 
accountNumber%% "
.%%" #
Contains%%# +
(%%+ ,
$str%%, 0
)%%0 1
)%%1 2
{&& #
validationForInjections'' '
=''( )
true''* .
;''. /
}(( 
if)) 
()) 
!)) #
validationForInjections)) (
)))( )
{** 
return++ 
await++ 

_dbContext++ '
.++' ( 
SinpeIbanPaymentInfo++( <
.++< =
FirstOrDefaultAsync++= P
(++P Q
p++Q R
=>++S U
p++V W
.++W X
Account_Number++X f
==++g i
accountNumber++j w
)++w x
;++x y
},, 
return-- 
await-- 

_dbContext-- #
.--# $ 
SinpeIbanPaymentInfo--$ 8
.--8 9
	FindAsync--9 B
(--B C
$str--C N
)--N O
;--O P
}.. 	
public22 
async22 
Task22 
	SaveAsync22 #
(22# $ 
SinpeIbanPaymentInfo22$ 8 
sinpeIbanPaymentInfo229 M
)22M N
{33 	

_dbContext55 
.55 
Update55 
(55  
sinpeIbanPaymentInfo55 2
)552 3
;553 4
await66 

_dbContext66 
.66 
SaveEntitiesAsync66 .
(66. /
)66/ 0
;660 1
}77 	
public99 
async99 
Task99 
AddPaymentInfo99 (
(99( ) 
SinpeIbanPaymentInfo99) = 
sinpeIbanPaymentInfo99> R
)99R S
{:: 	
bool;; #
validationForInjections;; (
=;;) *
false;;+ 0
;;;0 1#
validationForInjections<< #
=<<$ % 
sinpeIbanPaymentInfo<<& :
.<<: ;
Account_Number<<; I
.<<I J
Contains<<J R
(<<R S
$str<<S X
)<<X Y
;<<Y Z
if== 
(== 
!== #
validationForInjections== (
)==( )
{>> 
await?? 

_dbContext??  
.??  !
AddAsync??! )
(??) * 
sinpeIbanPaymentInfo??* >
)??> ?
;??? @
await@@ 

_dbContext@@  
.@@  !
SaveChangesAsync@@! 1
(@@1 2
)@@2 3
;@@3 4
}AA 
elseBB 
{CC 
ConsoleDD 
.DD 
	WriteLineDD !
(DD! "
$strDD" =
)DD= >
;DD> ?
}EE 
}FF 	
publicGG 
asyncGG 
TaskGG 
<GG  
SinpeIbanPaymentInfoGG .
?GG. /
>GG/ 0
GetByPaymentInfoIDGG1 C
(GGC D
intGGD G
idGGH J
)GGJ K
{HH 	
returnII 
awaitII 

_dbContextII #
.II# $ 
SinpeIbanPaymentInfoII$ 8
.JJ 
FirstOrDefaultAsyncJJ  
(JJ  !
pJJ! "
=>JJ# %
pJJ& '
.JJ' (
Payment_Info_IDJJ( 7
.JJ7 8
EqualsJJ8 >
(JJ> ?
idJJ? A
)JJA B
)JJB C
;JJC D
}KK 	
}LL 
}MM ™
çC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\src\Infrastructure\PaymentInfos\SinpeIban\SinpeIbanPaymentInfoDbContext.cs
	namespace 	
EmprendeUCR
 
. 
Infrastructure $
.$ %
PaymentInfos% 1
.1 2
	SinpeIban2 ;
{ 
public 

class )
SinpeIbanPaymentInfoDbContext .
:/ 0 
ApplicationDbContext1 E
{		 
public

 )
SinpeIbanPaymentInfoDbContext

 ,
(

, -
DbContextOptions

- =
<

= >)
SinpeIbanPaymentInfoDbContext

> [
>

[ \
options

] d
,

d e
ILogger

f m
<

m n*
SinpeIbanPaymentInfoDbContext	

n ã
>


ã å
logger


ç ì
)


ì î
: 
base 
( 
options 
, 
logger "
)" #
{ 	
} 	
public 
DbSet 
<  
SinpeIbanPaymentInfo )
>) * 
SinpeIbanPaymentInfo+ ?
{@ A
getB E
;E F
setG J
;J K
}L M
=N O
nullP T
!T U
;U V
	protected 
override 
void 
OnModelCreating  /
(/ 0
ModelBuilder0 <
modelBuilder= I
)I J
{ 	
base 
. 
OnModelCreating  
(  !
modelBuilder! -
)- .
;. /
modelBuilder 
. 
ApplyConfiguration +
(+ ,
new, /#
SinpeIbanPaymentInfoMap0 G
(G H
)H I
)I J
;J K
} 	
} 
} å	
òC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\src\Infrastructure\PaymentInfos\SinpeMovil\EntityMappings\SinpeMovilPaymentInfoMap.cs
	namespace 	
EmprendeUCR
 
. 
Infrastructure $
.$ %
PaymentInfos% 1
.1 2

SinpeMovil2 <
.< =
EntityMappings= K
{ 
public 

class $
SinpeMovilPaymentInfoMap )
:* +$
IEntityTypeConfiguration, D
<D E!
SinpeMovilPaymentInfoE Z
>Z [
{		 
public

 
void

 
	Configure

 
(

 
EntityTypeBuilder

 /
<

/ 0!
SinpeMovilPaymentInfo

0 E
>

E F
builder

G N
)

N O
{ 	
builder 
. 
ToTable 
( 
$str ,
), -
;- .
builder 
. 
HasKey 
( 
p 
=> 
p  !
.! "
Phone_Number" .
). /
;/ 0
} 	
} 
} … 
ùC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\src\Infrastructure\PaymentInfos\SinpeMovil\Repositories\SinpeMovilPaymentInfoRepository.cs
	namespace		 	
EmprendeUCR		
 
.		 
Infrastructure		 $
.		$ %
PaymentInfos		% 1
.		1 2

SinpeMovil		2 <
.		< =
Repositories		= I
{

 
internal 
class +
SinpeMovilPaymentInfoRepository 2
:3 4,
 ISinpeMovilPaymentInfoRepository5 U
{ 
private 
readonly *
SinpeMovilPaymentInfoDbContext 7

_dbContext8 B
;B C
public 
IUnitOfWork 

UnitOfWork %
=>& (

_dbContext) 3
;3 4
public +
SinpeMovilPaymentInfoRepository .
(. /*
SinpeMovilPaymentInfoDbContext/ M

unitOfWorkN X
)X Y
{ 	

_dbContext 
= 

unitOfWork #
;# $
} 	
public 
async 
Task 
< 
IEnumerable %
<% &!
SinpeMovilPaymentInfo& ;
>; <
>< =
GetAllAsync> I
(I J
)J K
{ 	
return 
await 

_dbContext #
.# $!
SinpeMovilPaymentInfo$ 9
. 
Select 
( 
p 
=> 
new !
SinpeMovilPaymentInfo 2
(2 3
p3 4
.4 5
Phone_Number5 A
,A B
pC D
.D E
Payment_Info_IDE T
,T U
pV W
.W X
Name_Payment_MethodX k
)k l
)l m
. 
ToListAsync 
( 
) 
; 
} 	
public 
async 
Task 
< !
SinpeMovilPaymentInfo /
?/ 0
>0 1
GetByIdAsync2 >
(> ?
int? B
phoneNumberC N
)N O
{ 	
return 
await 

_dbContext #
.# $!
SinpeMovilPaymentInfo$ 9
. 
FirstOrDefaultAsync  
(  !
p! "
=># %
p& '
.' (
Phone_Number( 4
==5 7
phoneNumber8 C
)C D
;D E
} 	
public!! 
async!! 
Task!! 
	SaveAsync!! #
(!!# $!
SinpeMovilPaymentInfo!!$ 9!
sinpeMovilPaymentInfo!!: O
)!!O P
{"" 	

_dbContext## 
.## 
Update## 
(## !
sinpeMovilPaymentInfo## 3
)##3 4
;##4 5
await$$ 

_dbContext$$ 
.$$ 
SaveEntitiesAsync$$ .
($$. /
)$$/ 0
;$$0 1
}%% 	
public'' 
async'' 
Task'' 
AddPaymentInfo'' (
(''( )!
SinpeMovilPaymentInfo'') >!
sinpeMovilPaymentInfo''? T
)''T U
{(( 	
await)) 

_dbContext)) 
.)) 
AddAsync)) %
())% &!
sinpeMovilPaymentInfo))& ;
))); <
;))< =
await** 

_dbContext** 
.** 
SaveChangesAsync** -
(**- .
)**. /
;**/ 0
}++ 	
public,, 
async,, 
Task,, 
<,, !
SinpeMovilPaymentInfo,, /
?,,/ 0
>,,0 1
GetByPaymentInfoID,,2 D
(,,D E
int,,E H
id,,I K
),,K L
{-- 	
return.. 
await.. 

_dbContext.. #
...# $!
SinpeMovilPaymentInfo..$ 9
.// 
FirstOrDefaultAsync//  
(//  !
p//! "
=>//# %
p//& '
.//' (
Payment_Info_ID//( 7
.//7 8
Equals//8 >
(//> ?
id//? A
)//A B
)//B C
;//C D
}00 	
}11 
}22 ¥
èC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\src\Infrastructure\PaymentInfos\SinpeMovil\SinpeMovilPaymentInfoDbContext.cs
	namespace 	
EmprendeUCR
 
. 
Infrastructure $
.$ %
PaymentInfos% 1
.1 2

SinpeMovil2 <
{ 
public 

class *
SinpeMovilPaymentInfoDbContext /
:0 1 
ApplicationDbContext2 F
{		 
public

 *
SinpeMovilPaymentInfoDbContext

 -
(

- .
DbContextOptions

. >
<

> ?*
SinpeMovilPaymentInfoDbContext

? ]
>

] ^
options

_ f
,

f g
ILogger

h o
<

o p+
SinpeMovilPaymentInfoDbContext	

p é
>


é è
logger


ê ñ
)


ñ ó
: 
base 
( 
options 
, 
logger "
)" #
{ 	
} 	
public 
DbSet 
< !
SinpeMovilPaymentInfo *
>* +!
SinpeMovilPaymentInfo, A
{B C
getD G
;G H
setI L
;L M
}N O
=P Q
nullR V
!V W
;W X
	protected 
override 
void 
OnModelCreating  /
(/ 0
ModelBuilder0 <
modelBuilder= I
)I J
{ 	
base 
. 
OnModelCreating  
(  !
modelBuilder! -
)- .
;. /
modelBuilder 
. 
ApplyConfiguration +
(+ ,
new, /$
SinpeMovilPaymentInfoMap0 H
(H I
)I J
)J K
;K L
} 	
} 
} ˛	
ãC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\src\Infrastructure\PaymentMethods\EntityMappings\CardPaymentMethodMap.cs
	namespace 	
EmprendeUCR
 
. 
Infrastructure $
.$ %
PaymentMethods% 3
.3 4
EntityMappings4 B
{ 
public 

class  
CardPaymentMethodMap %
:& '$
IEntityTypeConfiguration( @
<@ A
CardPaymentMethodA R
>R S
{		 
public

 
void

 
	Configure

 
(

 
EntityTypeBuilder

 /
<

/ 0
CardPaymentMethod

0 A
>

A B
builder

C J
)

J K
{ 	
builder 
. 
ToTable 
( 
$str %
)% &
;& '
builder 
. 
HasKey 
( 
p 
=> 
p  !
.! "
Name" &
)& '
;' (
builder 
. 
Property 
( 
p 
=> !
p" #
.# $
Status$ *
)* +
;+ ,
} 	
} 
} í

êC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\src\Infrastructure\PaymentMethods\EntityMappings\SinpeIbanPaymentMethodMap.cs
	namespace 	
EmprendeUCR
 
. 
Infrastructure $
.$ %
PaymentMethods% 3
.3 4
EntityMappings4 B
{ 
public 

class %
SinpeIbanPaymentMethodMap *
:+ ,$
IEntityTypeConfiguration- E
<E F"
SinpeIbanPaymentMethodF \
>\ ]
{		 
public

 
void

 
	Configure

 
(

 
EntityTypeBuilder

 /
<

/ 0"
SinpeIbanPaymentMethod

0 F
>

F G
builder

H O
)

O P
{ 	
builder 
. 
ToTable 
( 
$str +
)+ ,
;, -
builder 
. 
HasKey 
( 
p 
=> 
p  !
.! "
Name" &
)& '
;' (
builder 
. 
Property 
( 
p 
=> !
p" #
.# $
Status$ *
)* +
;+ ,
} 	
} 
} ê
ëC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\src\Infrastructure\PaymentMethods\EntityMappings\SinpeMovilPaymentMethodMap.cs
	namespace 	
EmprendeUCR
 
. 
Infrastructure $
.$ %
PaymentMethods% 3
.3 4
EntityMappings4 B
{ 
public 

class &
SinpeMovilPaymentMethodMap +
:, -$
IEntityTypeConfiguration. F
<F G#
SinpeMovilPaymentMethodG ^
>^ _
{		 
public

 
void

 
	Configure

 
(

 
EntityTypeBuilder

 /
<

/ 0#
SinpeMovilPaymentMethod

0 G
>

G H
builder

I P
)

P Q
{ 	
builder 
. 
ToTable 
( 
$str ,
), -
;- .
builder 
. 
HasKey 
( 
p 
=> 
p  !
.! "
Name" &
)& '
;' (
builder 
. 
Property 
( 
p 
=> !
p" #
.# $
Status$ *
)* +
;+ ,
builder 
. 
HasMany 
( 
p 
=>  
p! "
." #"
SinpeMovilPaymentInfos# 9
)9 :
. 
WithOne 
( 
p 
=> 
p 
.  #
SinpeMovilPaymentMethod  7
!7 8
)8 9
;9 :
} 	
} 
} ¡
C:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\src\Infrastructure\PaymentMethods\PaymentMethodsDbContext.cs
	namespace 	
EmprendeUCR
 
. 
Infrastructure $
.$ %
PaymentMethods% 3
{ 
public 

class #
PaymentMethodsDbContext (
:) * 
ApplicationDbContext+ ?
{		 
public

 #
PaymentMethodsDbContext

 &
(

& '
DbContextOptions

' 7
<

7 8#
PaymentMethodsDbContext

8 O
>

O P
options

Q X
,

X Y
ILogger

Z a
<

a b#
PaymentMethodsDbContext

b y
>

y z
logger	

{ Å
)


Å Ç
: 
base 
( 
options 
, 
logger "
)" #
{ 	
} 	
public 
DbSet 
< #
SinpeMovilPaymentMethod ,
>, -#
SinpeMovilPaymentMethod. E
{F G
getH K
;K L
setM P
;P Q
}R S
=T U
nullV Z
!Z [
;[ \
public 
DbSet 
< "
SinpeIbanPaymentMethod +
>+ ,"
SinpeIbanPaymentMethod- C
{D E
getF I
;I J
setK N
;N O
}P Q
=R S
nullT X
!X Y
;Y Z
public 
DbSet 
< 
CardPaymentMethod &
>& '
CardPaymentMethod( 9
{: ;
get< ?
;? @
setA D
;D E
}F G
=H I
nullJ N
!N O
;O P
	protected 
override 
void 
OnModelCreating  /
(/ 0
ModelBuilder0 <
modelBuilder= I
)I J
{ 	
base 
. 
OnModelCreating  
(  !
modelBuilder! -
)- .
;. /
modelBuilder 
. 
ApplyConfiguration +
(+ ,
new, /&
SinpeMovilPaymentMethodMap0 J
(J K
)K L
)L M
;M N
modelBuilder 
. 
ApplyConfiguration +
(+ ,
new, /%
SinpeIbanPaymentMethodMap0 I
(I J
)J K
)K L
;L M
modelBuilder 
. 
ApplyConfiguration +
(+ ,
new, / 
CardPaymentMethodMap0 D
(D E
)E F
)F G
;G H
} 	
} 
} »
êC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\src\Infrastructure\PaymentMethods\Repositories\CardPaymentMethodRepository.cs
	namespace

 	
EmprendeUCR


 
.

 
Infrastructure

 $
.

$ %
PaymentMethods

% 3
.

3 4
Repositories

4 @
{ 
internal 
class '
CardPaymentMethodRepository .
:/ 0(
ICardPaymentMethodRepository1 M
{ 
private 
readonly #
PaymentMethodsDbContext 0

_dbContext1 ;
;; <
public 
IUnitOfWork 

UnitOfWork %
=>& (

_dbContext) 3
;3 4
public '
CardPaymentMethodRepository *
(* +#
PaymentMethodsDbContext+ B

unitOfWorkC M
)M N
{ 	

_dbContext 
= 

unitOfWork #
;# $
} 	
public 
async 
Task 
< 
IEnumerable %
<% &
CardPaymentMethod& 7
>7 8
>8 9
GetAllAsync: E
(E F
)F G
{ 	
return 
await 

_dbContext #
.# $
CardPaymentMethod$ 5
. 
Select 
( 
p 
=> 
new 
CardPaymentMethod .
(. /
p/ 0
.0 1
Name1 5
,5 6
p7 8
.8 9
Status9 ?
)? @
)@ A
. 
ToListAsync 
( 
) 
; 
} 	
public 
async 
Task 
< 
CardPaymentMethod +
?+ ,
>, -
GetByIdAsync. :
(: ;
string; A
nameB F
)F G
{ 	
return 
await 

_dbContext #
.# $
CardPaymentMethod$ 5
. 
FirstOrDefaultAsync  
(  !
t! "
=># %
t& '
.' (
Name( ,
==- /
name0 4
)4 5
;5 6
} 	
public"" 
async"" 
Task"" 
	SaveAsync"" #
(""# $
CardPaymentMethod""$ 5
paymentMethod""6 C
)""C D
{## 	

_dbContext$$ 
.$$ 
Update$$ 
($$ 
paymentMethod$$ +
)$$+ ,
;$$, -
await%% 

_dbContext%% 
.%% 
SaveEntitiesAsync%% .
(%%. /
)%%/ 0
;%%0 1
}&& 	
public'' 
async'' 
Task'' $
DeletePaymentInformation'' 2
(''2 3
CardPaymentInfo''3 B
cardPaymentInfo''C R
)''R S
{(( 	

_dbContext)) 
.)) 
Remove)) 
()) 
cardPaymentInfo)) -
)))- .
;)). /
await** 

_dbContext** 
.** 
SaveEntitiesAsync** .
(**. /
)**/ 0
;**0 1
}++ 	
},, 
}-- â
ïC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\src\Infrastructure\PaymentMethods\Repositories\SinpeIbanPaymentMethodRepository.cs
	namespace		 	
EmprendeUCR		
 
.		 
Infrastructure		 $
.		$ %
PaymentMethods		% 3
.		3 4
Repositories		4 @
{

 
internal 
class ,
 SinpeIbanPaymentMethodRepository 3
:4 5-
!ISinpeIbanPaymentMethodRepository6 W
{ 
private 
readonly #
PaymentMethodsDbContext 0

_dbContext1 ;
;; <
public 
IUnitOfWork 

UnitOfWork %
=>& (

_dbContext) 3
;3 4
public ,
 SinpeIbanPaymentMethodRepository /
(/ 0#
PaymentMethodsDbContext0 G

unitOfWorkH R
)R S
{ 	

_dbContext 
= 

unitOfWork #
;# $
} 	
public 
async 
Task 
< 
IEnumerable %
<% &"
SinpeIbanPaymentMethod& <
>< =
>= >
GetAllAsync? J
(J K
)K L
{ 	
return 
await 

_dbContext #
.# $"
SinpeIbanPaymentMethod$ :
. 
Select 
( 
p 
=> 
new "
SinpeIbanPaymentMethod 3
(3 4
p4 5
.5 6
Name6 :
,: ;
p< =
.= >
Status> D
)D E
)E F
. 
ToListAsync 
( 
) 
; 
} 	
public 
async 
Task 
< "
SinpeIbanPaymentMethod 0
?0 1
>1 2
GetByIdAsync3 ?
(? @
string@ F
nameG K
)K L
{ 	
return 
await 

_dbContext #
.# $"
SinpeIbanPaymentMethod$ :
. 
FirstOrDefaultAsync  
(  !
t! "
=># %
t& '
.' (
Name( ,
==- /
name0 4
)4 5
;5 6
} 	
public!! 
async!! 
Task!! 
	SaveAsync!! #
(!!# $"
SinpeIbanPaymentMethod!!$ :
paymentMethod!!; H
)!!H I
{"" 	

_dbContext## 
.## 
Update## 
(## 
paymentMethod## +
)##+ ,
;##, -
await$$ 

_dbContext$$ 
.$$ 
SaveEntitiesAsync$$ .
($$. /
)$$/ 0
;$$0 1
}%% 	
public&& 
async&& 
Task&& $
DeletePaymentInformation&& 2
(&&2 3 
SinpeIbanPaymentInfo&&3 G 
sinpeIbanPaymentInfo&&H \
)&&\ ]
{'' 	

_dbContext(( 
.(( 
Remove(( 
(((  
sinpeIbanPaymentInfo(( 2
)((2 3
;((3 4
await)) 

_dbContext)) 
.)) 
SaveEntitiesAsync)) .
()). /
)))/ 0
;))0 1
}** 	
}++ 
},, ñ
ñC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\src\Infrastructure\PaymentMethods\Repositories\SinpeMovilPaymentMethodRepository.cs
	namespace

 	
EmprendeUCR


 
.

 
Infrastructure

 $
.

$ %
PaymentMethods

% 3
.

3 4
Repositories

4 @
{ 
internal 
class -
!SinpeMovilPaymentMethodRepository 4
:5 6.
"ISinpeMovilPaymentMethodRepository7 Y
{ 
private 
readonly #
PaymentMethodsDbContext 0

_dbContext1 ;
;; <
public 
IUnitOfWork 

UnitOfWork %
=>& (

_dbContext) 3
;3 4
public -
!SinpeMovilPaymentMethodRepository 0
(0 1#
PaymentMethodsDbContext1 H

unitOfWorkI S
)S T
{ 	

_dbContext 
= 

unitOfWork #
;# $
} 	
public 
async 
Task 
< 
IEnumerable %
<% &#
SinpeMovilPaymentMethod& =
>= >
>> ?
GetAllAsync@ K
(K L
)L M
{ 	
return 
await 

_dbContext #
.# $#
SinpeMovilPaymentMethod$ ;
. 
Select 
( 
p 
=> 
new #
SinpeMovilPaymentMethod 4
(4 5
p5 6
.6 7
Name7 ;
,; <
p= >
.> ?
Status? E
)E F
)F G
. 
ToListAsync 
( 
) 
; 
} 	
public 
async 
Task 
< #
SinpeMovilPaymentMethod 1
?1 2
>2 3
GetByIdAsync4 @
(@ A
stringA G
nameH L
)L M
{ 	
return 
await 

_dbContext #
.# $#
SinpeMovilPaymentMethod$ ;
. 
FirstOrDefaultAsync  
(  !
t! "
=># %
t& '
.' (
Name( ,
==- /
name0 4
)4 5
;5 6
} 	
public"" 
async"" 
Task"" 
	SaveAsync"" #
(""# $#
SinpeMovilPaymentMethod""$ ;
paymentMethod""< I
)""I J
{## 	

_dbContext$$ 
.$$ 
Update$$ 
($$ 
paymentMethod$$ +
)$$+ ,
;$$, -
await%% 

_dbContext%% 
.%% 
SaveEntitiesAsync%% .
(%%. /
)%%/ 0
;%%0 1
}&& 	
public'' 
async'' 
Task'' $
DeletePaymentInformation'' 2
(''2 3!
SinpeMovilPaymentInfo''3 H!
sinpeMovilPaymentInfo''I ^
)''^ _
{(( 	

_dbContext)) 
.)) 
Remove)) 
()) !
sinpeMovilPaymentInfo)) 3
)))3 4
;))4 5
await** 

_dbContext** 
.** 
SaveEntitiesAsync** .
(**. /
)**/ 0
;**0 1
}++ 	
},, 
}-- ˆ'
~C:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\src\Infrastructure\PermissionContext\PermissionDbContext.cs
	namespace 	
EmprendeUCR
 
. 
Infrastructure $
.$ %
PermissionContext% 6
{ 
public 

partial 
class 
PermissionDbContext ,
:- . 
ApplicationDbContext/ C
{ 
public 
PermissionDbContext "
(" #
DbContextOptions# 3
<3 4
PermissionDbContext4 G
>G H
optionsI P
,P Q
ILoggerR Y
<Y Z
PermissionDbContextZ m
>m n
loggero u
)u v
: 	
base
 
( 
options 
, 
logger 
) 
{ 	
} 	
	protected 
override 
void 
OnConfiguring  -
(- .#
DbContextOptionsBuilder. E
optionsBuilderF T
)T U
{ 	
optionsBuilder 
. 
LogTo  
(  !
message! (
=>) +
Debug, 1
.1 2
	WriteLine2 ;
(; <
message< C
)C D
)D E
;E F
} 	
public 
virtual 
DbSet 
< 
Role !
>! "
Role# '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
public 
virtual 
DbSet 
< 

Is_Able_To '
>' (

Is_Able_To) 3
{4 5
get6 9
;9 :
set; >
;> ?
}@ A
public 
virtual 
DbSet 
< 

Permission '
>' (

Permission) 3
{4 5
get6 9
;9 :
set; >
;> ?
}@ A
public 
virtual 
DbSet 
< 
User !
>! "
User# '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
public 
virtual 
DbSet 
< 
Administrator *
>* +
Administrator, 9
{: ;
get< ?
;? @
setA D
;D E
}F G
public   
virtual   
DbSet   
<   
Client   #
>  # $
Client  % +
{  , -
get  . 1
;  1 2
set  3 6
;  6 7
}  8 9
public!! 
virtual!! 
DbSet!! 
<!! 
Entrepreneur!! )
>!!) *
Entrepreneur!!+ 7
{!!8 9
get!!: =
;!!= >
set!!? B
;!!B C
}!!D E
public"" 
virtual"" 
DbSet"" 
<"" 
EmailConfirmation"" .
>"". /
EmailConfirmation""0 A
{""B C
get""D G
;""G H
set""I L
;""L M
}""N O
	protected$$ 
override$$ 
void$$ 
OnModelCreating$$  /
($$/ 0
ModelBuilder$$0 <
modelBuilder$$= I
)$$I J
{%% 	
base&& 
.&& 
OnModelCreating&&  
(&&  !
modelBuilder&&! -
)&&- .
;&&. /
modelBuilder'' 
.'' 
ApplyConfiguration'' +
(''+ ,
new'', /
RoleMap''0 7
(''7 8
)''8 9
)''9 :
;'': ;
modelBuilder(( 
.(( 
ApplyConfiguration(( +
(((+ ,
new((, /
Is_Able_ToMap((0 =
(((= >
)((> ?
)((? @
;((@ A
modelBuilder)) 
.)) 
ApplyConfiguration)) +
())+ ,
new)), /
PermissionMap))0 =
())= >
)))> ?
)))? @
;))@ A
modelBuilder** 
.** 
ApplyConfiguration** +
(**+ ,
new**, /
UserMap**0 7
(**7 8
)**8 9
)**9 :
;**: ;
modelBuilder++ 
.++ 
ApplyConfiguration++ +
(+++ ,
new++, /
AdministratorMap++0 @
(++@ A
)++A B
)++B C
;++C D
modelBuilder,, 
.,, 
ApplyConfiguration,, +
(,,+ ,
new,,, /
	ClientMap,,0 9
(,,9 :
),,: ;
),,; <
;,,< =
modelBuilder-- 
.-- 
ApplyConfiguration-- +
(--+ ,
new--, /
EntrepreneurMap--0 ?
(--? @
)--@ A
)--A B
;--B C
modelBuilder.. 
... 
ApplyConfiguration.. +
(..+ ,
new.., / 
EmailConfirmationMap..0 D
(..D E
)..E F
)..F G
;..G H
}// 	
}11 
}22 øJ
åC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\src\Infrastructure\PermissionContext\Repositories\PermissionRepository.cs
	namespace 	
EmprendeUCR
 
. 
Infrastructure $
.$ %
PermissionContext% 6
.6 7
Repositories7 C
{ 
public 

class  
PermissionRepository %
:& '!
IPermissionRepository( =
{ 
private 
readonly 
PermissionDbContext ,

_dbContext- 7
;7 8
public 
IUnitOfWork 

UnitOfWork %
=>& (

_dbContext) 3
;3 4
public  
PermissionRepository #
(# $
PermissionDbContext$ 7
	dbContext8 A
)A B
{ 	

_dbContext 
= 
	dbContext "
;" #
} 	
public 
async 
Task 
< 
IList 
<  

Is_Able_To  *
>* +
>+ ,
getAllUserPermision- @
(@ A
)A B
{ 	
return 
await 

_dbContext #
.# $

Is_Able_To$ .
.. /
ToListAsync/ :
(: ;
); <
;< =
} 	
public 
async 
Task 
< 
IList 
<  
Role  $
>$ %
>% &

getAllRole' 1
(1 2
)2 3
{ 	
return 
await 

_dbContext #
.# $
Role$ (
.( )
ToListAsync) 4
(4 5
)5 6
;6 7
} 	
public!! 
async!! 
Task!! 
<!! 
IList!! 
<!!  

Permission!!  *
>!!* +
>!!+ ,
getAllPermision!!- <
(!!< =
)!!= >
{"" 	
return## 
await## 

_dbContext## #
.### $

Permission##$ .
.##. /
ToListAsync##/ :
(##: ;
)##; <
;##< =
}$$ 	
public&& 
async&& 
Task&& 
<&& 
IList&& 
<&&  
User&&  $
>&&$ %
>&&% &

getAllUser&&' 1
(&&1 2
)&&2 3
{'' 	
return(( 
await(( 

_dbContext(( #
.((# $
User(($ (
.((( )
ToListAsync(() 4
(((4 5
)((5 6
;((6 7
})) 	
public++ 
Administrator++ 
getAdministrator++ -
(++- .
string++. 4
email++5 :
)++: ;
{,, 	
return-- 

_dbContext-- 
.-- 
Administrator-- +
.--+ ,
FirstOrDefault--, :
(--: ;
e--; <
=>--= ?
e--@ A
.--A B

User_Email--B L
.--L M
Equals--M S
(--S T
email--T Y
)--Y Z
)--Z [
;--[ \
}.. 	
public00 
Client00 
	getClient00 
(00  
string00  &
email00' ,
)00, -
{11 	
return22 

_dbContext22 
.22 
Client22 $
.22$ %
FirstOrDefault22% 3
(223 4
e224 5
=>226 8
e229 :
.22: ;

User_Email22; E
.22E F
Equals22F L
(22L M
email22M R
)22R S
)22S T
;22T U
}33 	
public55 
Entrepreneur55 
getEntrepreneur55 +
(55+ ,
string55, 2
email553 8
)558 9
{66 	
return77 

_dbContext77 
.77 
Entrepreneur77 *
.77* +
FirstOrDefault77+ 9
(779 :
e77: ;
=>77< >
e77? @
.77@ A

User_Email77A K
.77K L
Equals77L R
(77R S
email77S X
)77X Y
)77Y Z
;77Z [
}88 	
public:: 
User:: 
getUser:: 
(:: 
string:: "
email::# (
)::( )
{;; 	
return<< 

_dbContext<< 
.<< 
User<< "
.<<" #
FirstOrDefault<<# 1
(<<1 2
e<<2 3
=><<4 6
e<<7 8
.<<8 9
Email<<9 >
.<<> ?
Equals<<? E
(<<E F
email<<F K
)<<K L
)<<L M
;<<M N
}== 	
public?? 
string?? 
getHash?? 
(?? 
string?? $
email??% *
)??* +
{@@ 	
EmailConfirmationAA 
emailConfirmationAA /
=AA0 1

_dbContextAA2 <
.AA< =
EmailConfirmationAA= N
.AAN O
FirstOrDefaultAAO ]
(AA] ^
cAA^ _
=>AA` b
cAAc d
.AAd e
EmailAAe j
.AAj k
EqualsAAk q
(AAq r
emailAAr w
)AAw x
)AAx y
;AAy z
returnBB 
emailConfirmationBB $
.BB$ %
	Hash_CodeBB% .
;BB. /
}CC 	
publicEE 
stringEE 
getEmailEE 
(EE 
stringEE %
hashEE& *
)EE* +
{FF 	
EmailConfirmationGG 
emailConfirmationGG /
=GG0 1

_dbContextGG2 <
.GG< =
EmailConfirmationGG= N
.GGN O
FirstOrDefaultGGO ]
(GG] ^
cGG^ _
=>GG` b
cGGc d
.GGd e
	Hash_CodeGGe n
.GGn o
EqualsGGo u
(GGu v
hashGGv z
)GGz {
)GG{ |
;GG| }
returnHH 
emailConfirmationHH $
.HH$ %
EmailHH% *
;HH* +
}II 	
publicKK 
asyncKK 
TaskKK 
<KK 
IListKK 
<KK  

Is_Able_ToKK  *
>KK* +
>KK+ ,
getUserPermissionsKK- ?
(KK? @
stringKK@ F
emailKKG L
)KKL M
{LL 	
returnMM 
awaitMM 

_dbContextMM #
.MM# $

Is_Able_ToMM$ .
.MM. /

FromSqlRawMM/ 9
(MM9 :
$strMM: d
+MMe f
emailMMg l
+MMm n
$strMMo r
)MMr s
.MMs t
ToArrayAsync	MMt Ä
(
MMÄ Å
)
MMÅ Ç
;
MMÇ É
}NN 	
publicPP 
IListPP 
<PP 

Is_Able_ToPP 
>PP  
getPermissionsPP! /
(PP/ 0
stringPP0 6
emailPP7 <
)PP< =
{QQ 	
returnRR 

_dbContextRR 
.RR 

Is_Able_ToRR (
.RR( )

FromSqlRawRR) 3
(RR3 4
$strRR4 ^
+RR_ `
emailRRa f
+RRg h
$strRRi l
)RRl m
.RRm n
ToArrayRRn u
(RRu v
)RRv w
;RRw x
}SS 	
publicUU 
voidUU 
addEntryUU 
(UU 

Is_Able_ToUU '
newEntryUU( 0
)UU0 1
{VV 	

_dbContextWW 
.WW 

Is_Able_ToWW !
.WW! "
AddWW" %
(WW% &
newEntryWW& .
)WW. /
;WW/ 0

_dbContextXX 
.XX 
SaveChangesXX "
(XX" #
)XX# $
;XX$ %
}YY 	
public[[ 
void[[ 
deleteAllEntries[[ $
([[$ %
string[[% +
email[[, 1
)[[1 2
{\\ 	

_dbContext]] 
.]] 

Is_Able_To]] !
.]]! "
RemoveRange]]" -
(]]- .
this]]. 2
.]]2 3
getPermissions]]3 A
(]]A B
email]]B G
)]]G H
)]]H I
;]]I J

_dbContext^^ 
.^^ 
SaveChanges^^ "
(^^" #
)^^# $
;^^$ %
}__ 	
publicaa 
asyncaa 
Taskaa 
addPermissionAsyncaa ,
(aa, -

Is_Able_Toaa- 7

permissionaa8 B
)aaB C
{bb 	
awaitcc 

_dbContextcc 
.cc 

Is_Able_Tocc '
.cc' (
AddAsynccc( 0
(cc0 1

permissioncc1 ;
)cc; <
;cc< =
awaitdd 

_dbContextdd 
.dd 
SaveChangesAsyncdd -
(dd- .
)dd. /
;dd/ 0
}ee 	
publicgg 

Is_Able_Togg 
getPermissiongg '
(gg' (
stringgg( .
emailgg/ 4
,gg4 5
intgg6 9

permissiongg: D
,ggD E
intggF I
roleggJ N
)ggN O
{hh 	
returnii 

_dbContextii 
.ii 

Is_Able_Toii (
.ii( )
FirstOrDefaultii) 7
(ii7 8
cii8 9
=>ii: <
cii= >
.ii> ?
Emailii? D
.iiD E
EqualsiiE K
(iiK L
emailiiL Q
)iiQ R
&&iiS U
cjj 
.jj 
Permission_Idjj #
==jj$ &

permissionjj' 1
&&jj2 4
cjj5 6
.jj6 7
Role_Idjj7 >
==jj? A
rolejjB F
)jjF G
;jjG H
}kk 	
}ll 
}mm ¿%
íC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\src\Infrastructure\ProductsSearchClientContext\ProductsSearchClientDbContext.cs
	namespace 	
EmprendeUCR
 
. 
Infrastructure $
.$ %'
ProductsSearchClientContext% @
{ 
public 

partial 
class )
ProductsSearchClientDbContext 6
:7 8 
ApplicationDbContext9 M
{ 
public )
ProductsSearchClientDbContext ,
(, -
DbContextOptions- =
<= >)
ProductsSearchClientDbContext> [
>[ \
options] d
,d e
ILoggerf m
<m n*
ProductsSearchClientDbContext	n ã
>
ã å
logger
ç ì
)
ì î
: 
base 
( 
options 
, 
logger "
)" #
{ 	
} 	
	protected 
override 
void 
OnConfiguring  -
(- .#
DbContextOptionsBuilder. E
optionsBuilderF T
)T U
{ 	
optionsBuilder 
. 
LogTo  
(  !
message! (
=>) +
Debug, 1
.1 2
	WriteLine2 ;
(; <
message< C
)C D
)D E
;E F
} 	
public 
virtual 
DbSet 
< 
Category %
>% &
Category' /
{1 2
get3 6
;6 7
set8 ;
;; <
}= >
public 
virtual 
DbSet 
< 
Service $
>$ %
Service& -
{. /
get0 3
;3 4
set5 8
;8 9
}: ;
public 
virtual 
DbSet 
< 
ProductPhotos *
>* +
ProductPhotos, 9
{: ;
get< ?
;? @
setA D
;D E
}F G
public 
virtual 
DbSet 
< 
Product $
>$ %
Product& -
{. /
get0 3
;3 4
set5 8
;8 9
}: ;
public 
virtual 
DbSet 
< 
ShoppingCartHas ,
>, -
ShoppingCartHas. =
{> ?
get@ C
;C D
setE H
;H I
}J K
public   
virtual   
DbSet   
<   
ProductService   +
>  + ,
ProductService  - ;
{  < =
get  > A
;  A B
set  C F
;  F G
}  H I
public"" 
virtual"" 
DbSet"" 
<"" 
Service_Photos"" +
>""+ ,
Service_Photos""- ;
{""< =
get""> A
;""A B
set""C F
;""F G
}""H I
	protected$$ 
override$$ 
void$$ 
OnModelCreating$$  /
($$/ 0
ModelBuilder$$0 <
modelBuilder$$= I
)$$I J
{%% 	
base&& 
.&& 
OnModelCreating&&  
(&&  !
modelBuilder&&! -
)&&- .
;&&. /
modelBuilder(( 
.(( 
ApplyConfiguration(( +
(((+ ,
new((, /
CategoryMap((0 ;
(((; <
)((< =
)((= >
;((> ?
modelBuilder)) 
.)) 
ApplyConfiguration)) +
())+ ,
new)), /

ServiceMap))0 :
()): ;
))); <
)))< =
;))= >
modelBuilder** 
.** 
ApplyConfiguration** +
(**+ ,
new**, /
ProductPhotosMap**0 @
(**@ A
)**A B
)**B C
;**C D
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
new,,, /
ShoppingCartHasMap,,0 B
(,,B C
),,C D
),,D E
;,,E F
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
new.., /
Service_PhotosMap..0 A
(..A B
)..B C
)..C D
;..D E
}// 	
}00 
}11 ÎP
†C:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\src\Infrastructure\ProductsSearchClientContext\Repositories\ProductsSearchClientRepository.cs
	namespace 	
EmprendeUCR
 
. 
Infrastructure $
.$ %'
ProductsSearchClientContext% @
.@ A
RepositoriesA M
{ 
public 

class *
ProductsSearchClientRepository /
:0 1+
IProductsSearchClientRepository2 Q
{ 
private 
readonly )
ProductsSearchClientDbContext 6

_dbContext7 A
;A B
public 
IUnitOfWork 

UnitOfWork %
=>& (

_dbContext) 3
;3 4
public *
ProductsSearchClientRepository -
(- .)
ProductsSearchClientDbContext. K
	dbContextL U
)U V
{ 	

_dbContext 
= 
	dbContext "
;" #
} 	
public 
List 
< 
ProductPhotos !
>! "
loadAllPhotos# 0
(0 1
)1 2
{ 	
return 

_dbContext 
. 
ProductPhotos +
.+ ,
ToList, 2
(2 3
)3 4
;4 5
} 	
public 
async 
Task 
< 
IList 
<  
Category  (
>( )
>) *
getCategoriesAsync+ =
(= >
)> ?
{ 	
return 
await 

_dbContext #
.# $
Category$ ,
., -
ToListAsync- 8
(8 9
)9 :
;: ;
} 	
public   
IList   
<   
Product   
>   $
getProductListByCategory   6
(  6 7
int  7 :

categoryID  ; E
)  E F
{!! 	
return"" 

_dbContext"" 
."" 
Product"" %
.""% &

FromSqlRaw""& 0
(""0 1
$str""1 N
+""O P

categoryID""Q [
)""[ \
.""\ ]
ToArray""] d
(""d e
)""e f
;""f g
}## 	
public%% 
IList%% 
<%% 
Service%% 
>%% $
getServiceListByCategory%% 6
(%%6 7
int%%7 :

categoryID%%; E
)%%E F
{&& 	
return'' 

_dbContext'' 
.'' 
Service'' %
.''% &

FromSqlRaw''& 0
(''0 1
$str''1 N
+''O P

categoryID''Q [
)''[ \
.''\ ]
ToArray''] d
(''d e
)''e f
;''f g
}(( 	
public** 
IList** 
<** 
Product** 
>** $
getListProductRestricted** 6
(**6 7
string**7 =
product**> E
,**E F
int**G J

categoryID**K U
)**U V
{++ 	
return,, 

_dbContext,, 
.,, 
Product,, %
.,,% &

FromSqlRaw,,& 0
(,,0 1
$str,,1 P
+,,Q R
product,,S Z
+,,[ \
$str,,] b
+,,c d

categoryID,,e o
),,o p
.,,p q
ToArray,,q x
(,,x y
),,y z
;,,z {
}-- 	
public// 
IList// 
<// 
Product// 
>// 
getListProduc// +
(//+ ,
string//, 2
product//3 :
)//: ;
{00 	
return11 

_dbContext11 
.11 
Product11 %
.11% &

FromSqlRaw11& 0
(110 1
$str111 F
+11G H
product11I P
+11Q R
$str11S W
)11W X
.11X Y
ToArray11Y `
(11` a
)11a b
;11b c
}22 	
public44 
async44 
Task44  
changeCategoryParent44 .
(44. /
int44/ 2
Id443 5
,445 6
int447 :
?44: ;
ParentId44< D
)44D E
{55 	
Category66 
source66 
=66 

_dbContext66 (
.66( )
Category66) 1
.661 2
Find662 6
(666 7
Id667 9
)669 :
;66: ;
source77 
.77 
ParentId77 
=77 
ParentId77 &
;77& '

_dbContext88 
.88 
Category88 
.88  
Update88  &
(88& '
source88' -
)88- .
;88. /
await99 

_dbContext99 
.99 
SaveChangesAsync99 -
(99- .
)99. /
;99/ 0
}:: 	
public<< 
bool<< 
isChildNode<< 
(<<  
int<<  #
Id<<$ &
)<<& '
{== 	
bool>> 
isChild>> 
=>> 
false>>  
;>>  !
if?? 
(?? 

_dbContext?? 
.?? 
Category?? #
.??# $
Where??$ )
(??) *
c??* +
=>??, .
c??/ 0
.??0 1
ParentId??1 9
.??9 :
Equals??: @
(??@ A
Id??A C
)??C D
)??D E
.??E F
Count??F K
(??K L
)??L M
==??N P
$num??Q R
)??R S
{@@ 
isChildAA 
=AA 
trueAA 
;AA 
}BB 
returnCC 
isChildCC 
;CC 
}DD 	
publicFF 
asyncFF 
TaskFF 
<FF 
boolFF 
>FF 
searchProductFF  -
(FF- .
stringFF. 4
emailFF5 :
,FF: ;
intFF< ?
	idProductFF@ I
)FFI J
{GG 	
ShoppingCartHasHH 
existingHH $
=HH% &
awaitHH' ,

_dbContextHH- 7
.HH7 8
ShoppingCartHasHH8 G
.HHG H
FirstOrDefaultAsyncHHH [
(HH[ \
cHH\ ]
=>HH^ `
cHHa b
.HHb c
EmailHHc h
.HHh i
EqualsHHi o
(HHo p
emailHHp u
)HHu v
&&HHw y
cHHz {
.HH{ |
Code_ID	HH| É
==
HHÑ Ü
	idProduct
HHá ê
)
HHê ë
;
HHë í
ifII 
(II 
existingII 
!=II 
nullII  
)II  !
{JJ 
returnKK 
trueKK 
;KK 
}LL 
returnMM 
falseMM 
;MM 
}NN 	
publicOO 
asyncOO 
TaskOO 
<OO 
boolOO 
>OO 

addProductOO  *
(OO* +
ShoppingCartHasOO+ :
productOO; B
)OOB C
{PP 	
awaitQQ 

_dbContextQQ 
.QQ 
AddAsyncQQ %
(QQ% &
productQQ& -
)QQ- .
;QQ. /
awaitRR 

_dbContextRR 
.RR 
SaveChangesAsyncRR -
(RR- .
)RR. /
;RR/ 0
returnSS 
trueSS 
;SS 
}TT 	
publicVV 
IListVV 
<VV 
ServiceVV 
>VV 
getListServiceVV ,
(VV, -
stringVV- 3
productVV4 ;
)VV; <
{WW 	
returnXX 

_dbContextXX 
.XX 
ServiceXX %
.XX% &

FromSqlRawXX& 0
(XX0 1
$strXX1 F
+XXG H
productXXI P
+XXQ R
$strXXS W
)XXW X
.XXX Y
ToArrayXXY `
(XX` a
)XXa b
;XXb c
}YY 	
public[[ 
IList[[ 
<[[ 
Service[[ 
>[[ $
GetListServiceRestricted[[ 6
([[6 7
string[[7 =
product[[> E
,[[E F
int[[G J

categoryID[[K U
)[[U V
{\\ 	
return]] 

_dbContext]] 
.]] 
Service]] %
.]]% &

FromSqlRaw]]& 0
(]]0 1
$str]]1 P
+]]Q R
product]]S Z
+]][ \
$str]]] b
+]]c d

categoryID]]e o
)]]o p
.]]p q
ToArray]]q x
(]]x y
)]]y z
;]]z {
}^^ 	
public`` 
IList`` 
<`` 
ProductService`` #
>``# $
GetProductService``% 6
(``6 7
)``7 8
{aa 	
returnbb 

_dbContextbb 
.bb 
ProductServicebb -
.bb- .
ToListbb. 4
(bb4 5
)bb5 6
;bb6 7
}cc 	
publicee 
IListee 
<ee 
Service_Photosee #
>ee# $
getAllServicePhotosee% 8
(ee8 9
)ee9 :
{ff 	
returngg 

_dbContextgg 
.gg 
Service_Photosgg ,
.gg, -
ToListgg- 3
(gg3 4
)gg4 5
;gg5 6
}hh 	
publicjj 
IListjj 
<jj 
Productjj 
>jj 
GetProductPricejj -
(jj- .
intjj. 1

searchTypejj2 <
)jj< =
{kk 	
returnll 

_dbContextll 
.ll 
Productll %
.ll% &

FromSqlRawll& 0
(ll0 1
$strll1 M
+llN O

searchTypellP Z
+ll[ \
$strll] a
)lla b
.llb c
ToArrayllc j
(llj k
)llk l
;lll m
}mm 	
publicoo 
IListoo 
<oo 
Serviceoo 
>oo 
GetServiceByPriceoo /
(oo/ 0
intoo0 3

searchTypeoo4 >
)oo> ?
{pp 	
returnqq 

_dbContextqq 
.qq 
Serviceqq %
.qq% &

FromSqlRawqq& 0
(qq0 1
$strqq1 M
+qqN O

searchTypeqqP Z
+qq[ \
$strqq] a
)qqa b
.qqb c
ToArrayqqc j
(qqj k
)qqk l
;qql m
}rr 	
}ss 
}tt Ì7
xC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\src\Infrastructure\ProfileContext\ProfileDbContext.cs
	namespace 	
EmprendeUCR
 
. 
Infrastructure $
.$ %
ProfileContext% 3
{ 
public 

partial 
class 
ProfileDbContext )
:* + 
ApplicationDbContext, @
{ 
public 
ProfileDbContext 
(  
DbContextOptions  0
<0 1
ProfileDbContext1 A
>A B
optionsC J
,J K
ILoggerL S
<S T
ProfileDbContextT d
>d e
loggerf l
)l m
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
public 
virtual 
DbSet 
< 
User !
>! "
User# '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
public 
virtual 
DbSet 
< 
Members $
>$ %
Members& -
{. /
get0 3
;3 4
set5 8
;8 9
}: ;
public 
virtual 
DbSet 
< 
Client #
># $
Client% +
{, -
get. 1
;1 2
set3 6
;6 7
}8 9
public   
virtual   
DbSet   
<   
Entrepreneur   )
>  ) *
Entrepreneur  + 7
{  8 9
get  : =
;  = >
set  ? B
;  B C
}  D E
public!! 
virtual!! 
DbSet!! 
<!! 
Administrator!! *
>!!* +
Administrator!!, 9
{!!: ;
get!!< ?
;!!? @
set!!A D
;!!D E
}!!F G
public"" 
virtual"" 
DbSet"" 
<"" 
Likes"" "
>""" #
Likes""$ )
{""* +
get"", /
;""/ 0
set""1 4
;""4 5
}""6 7
public## 
virtual## 
DbSet## 
<## 
Phones## #
>### $
Phones##% +
{##, -
get##. 1
;##1 2
set##3 6
;##6 7
}##8 9
public$$ 
virtual$$ 
DbSet$$ 
<$$ 
Category$$ %
>$$% &
Category$$' /
{$$0 1
get$$2 5
;$$5 6
set$$7 :
;$$: ;
}$$< =
public%% 
virtual%% 
DbSet%% 
<%% 
Province%% %
>%%% &
Province%%' /
{%%0 1
get%%2 5
;%%5 6
set%%7 :
;%%: ;
}%%; <
public&& 
virtual&& 
DbSet&& 
<&& 
Canton&& #
>&&# $
Canton&&% +
{&&, -
get&&. 1
;&&1 2
set&&3 6
;&&6 7
}&&7 8
public'' 
virtual'' 
DbSet'' 
<'' 
District'' %
>''% &
District''' /
{''0 1
get''2 5
;''5 6
set''7 :
;'': ;
}''; <
public(( 
virtual(( 
DbSet(( 
<(( 
EmailConfirmation(( .
>((. /
EmailConfirmation((0 A
{((B C
get((D G
;((G H
set((I L
;((L M
}((N O
public)) 
virtual)) 
DbSet)) 
<)) 
Report)) #
>))# $
Report))% +
{)), -
get)). 1
;))1 2
set))3 6
;))6 7
}))8 9
	protected++ 
override++ 
void++ 
OnModelCreating++  /
(++/ 0
ModelBuilder++0 <
modelBuilder++= I
)++I J
{,, 	
base-- 
.-- 
OnModelCreating--  
(--  !
modelBuilder--! -
)--- .
;--. /
modelBuilder// 
.// 
ApplyConfiguration// +
(//+ ,
new//, /
UserMap//0 7
(//7 8
)//8 9
)//9 :
;//: ;
modelBuilder00 
.00 
ApplyConfiguration00 +
(00+ ,
new00, /

MembersMap000 :
(00: ;
)00; <
)00< =
;00= >
modelBuilder11 
.11 
ApplyConfiguration11 +
(11+ ,
new11, /
	ClientMap110 9
(119 :
)11: ;
)11; <
;11< =
modelBuilder22 
.22 
ApplyConfiguration22 +
(22+ ,
new22, /
EntrepreneurMap220 ?
(22? @
)22@ A
)22A B
;22B C
modelBuilder33 
.33 
ApplyConfiguration33 +
(33+ ,
new33, /
AdministratorMap330 @
(33@ A
)33A B
)33B C
;33C D
modelBuilder44 
.44 
ApplyConfiguration44 +
(44+ ,
new44, /
LikesMap440 8
(448 9
)449 :
)44: ;
;44; <
modelBuilder55 
.55 
ApplyConfiguration55 +
(55+ ,
new55, /
	PhonesMap550 9
(559 :
)55: ;
)55; <
;55< =
modelBuilder66 
.66 
ApplyConfiguration66 +
(66+ ,
new66, /
ProvinceMap660 ;
(66; <
)66< =
)66= >
;66> ?
modelBuilder77 
.77 
ApplyConfiguration77 +
(77+ ,
new77, /
	CantonMap770 9
(779 :
)77: ;
)77; <
;77< =
modelBuilder88 
.88 
ApplyConfiguration88 +
(88+ ,
new88, /
DistrictMap880 ;
(88; <
)88< =
)88= >
;88> ?
modelBuilder99 
.99 
ApplyConfiguration99 +
(99+ ,
new99, /
CategoryMap990 ;
(99; <
)99< =
)99= >
;99> ?
modelBuilder:: 
.:: 
ApplyConfiguration:: +
(::+ ,
new::, /
	ReportMap::0 9
(::9 :
)::: ;
)::; <
;::< =
modelBuilder<< 
.<< 
ApplyConfiguration<< +
(<<+ ,
new<<, / 
EmailConfirmationMap<<0 D
(<<D E
)<<E F
)<<F G
;<<G H
}== 	
}>> 
}?? »v
ÜC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\src\Infrastructure\ProfileContext\Repositories\ProfileRepository.cs
	namespace 	
EmprendeUCR
 
. 
Infrastructure $
.$ %
ProfileContext% 3
.3 4
Repositories4 @
{ 
public 

class 
ProfileRepository "
:# $
IProfileRepository% 7
{ 
private 
readonly 
ProfileDbContext )

_dbContext* 4
;4 5
public 
IUnitOfWork 

UnitOfWork %
=>& (

_dbContext) 3
;3 4
public 
ProfileRepository  
(  !
ProfileDbContext! 1
	dbContext2 ;
); <
{ 	

_dbContext 
= 
	dbContext "
;" #
} 	
public 
async 
Task 
< 
User 
> 
GetUserAsync  ,
(, -
string- 3
email4 9
)9 :
{ 	
return 
await 

_dbContext #
.# $
User$ (
.( )
	FindAsync) 2
(2 3
email3 8
)8 9
;9 :
} 	
public 
async 
Task 
< 
IList  
<  !
Entrepreneur! -
>- .
>. /
GetUsersAsync0 =
(= >
)> ?
{ 	
return 
await 

_dbContext #
.# $
Entrepreneur$ 0
.0 1
ToListAsync1 <
(< =
)= >
;> ?
} 	
public!! 
async!! 
Task!! 
<!! 
Members!! !
>!!! "
GetMemberAsync!!# 1
(!!1 2
string!!2 8
email!!9 >
)!!> ?
{"" 	
return## 
await## 

_dbContext## #
.### $
Members##$ +
.##+ ,
	FindAsync##, 5
(##5 6
email##6 ;
)##; <
;##< =
}$$ 	
public&& 
async&& 
Task&& 
<&& 
Client&&  
>&&  !
GetClientAsync&&" 0
(&&0 1
string&&1 7
email&&8 =
)&&= >
{'' 	
return(( 
await(( 

_dbContext(( #
.((# $
Client(($ *
.((* +
	FindAsync((+ 4
(((4 5
email((5 :
)((: ;
;((; <
})) 	
public++ 
async++ 
Task++ 
<++ 
Entrepreneur++ &
>++& ' 
GetEntrepreneurAsync++( <
(++< =
string++= C
email++D I
)++I J
{,, 	
return-- 
await-- 

_dbContext-- #
.--# $
Entrepreneur--$ 0
.--0 1
	FindAsync--1 :
(--: ;
email--; @
)--@ A
;--A B
}.. 	
public00 
async00 
Task00 
<00 
Administrator00 '
>00' (!
GetAdministratorAsync00) >
(00> ?
string00? E
email00F K
)00K L
{11 	
return22 
await22 

_dbContext22 #
.22# $
Administrator22$ 1
.221 2
	FindAsync222 ;
(22; <
email22< A
)22A B
;22B C
}33 	
public55 
async55 
Task55 
<55 
IList55 
<55  
Likes55  %
>55% &
>55& '
GetLikes55( 0
(550 1
string551 7
email558 =
)55= >
{66 	
return77 
await77 

_dbContext77 #
.77# $
Likes77$ )
.77) *
Where77* /
(77/ 0
l770 1
=>772 4
String775 ;
.77; <
Equals77< B
(77B C
l77C D
.77D E
Members_Email77E R
,77R S
email77T Y
)77Y Z
)77Z [
.77[ \
ToListAsync77\ g
(77g h
)77h i
;77i j
}88 	
public:: 
async:: 
Task:: 
<:: 
Phones::  
>::  !
GetPhoneAsync::" /
(::/ 0
string::0 6
email::7 <
)::< =
{;; 	
return<< 
await<< 

_dbContext<< #
.<<# $
Phones<<$ *
.<<* +
	FindAsync<<+ 4
(<<4 5
email<<5 :
)<<: ;
;<<; <
}== 	
public?? 
string?? !
GetCategoryTitleAsync?? +
(??+ ,
int??, /

categoryId??0 :
)??: ;
{@@ 	
returnAA 

_dbContextAA 
.AA 
CategoryAA &
.AA& '
FindAA' +
(AA+ ,

categoryIdAA, 6
)AA6 7
.AA7 8
TitleAA8 =
;AA= >
}BB 	
publicDD 
IListDD 
<DD 
CategoryDD 
>DD 
GetFatherCategoriesDD 2
(DD2 3
)DD3 4
{EE 	
returnFF 

_dbContextFF 
.FF 
CategoryFF &
.FF& '

FromSqlRawFF' 1
(FF1 2
$strFF2 a
)FFa b
.FFb c
ToArrayFFc j
(FFj k
)FFk l
;FFl m
}GG 	
publicII 
IListII 
<II 
CategoryII 
>II 
GetChildCategoriesII 1
(II1 2
intII2 5
parentIdII6 >
)II> ?
{JJ 	
returnKK 

_dbContextKK 
.KK 
CategoryKK &
.KK& '

FromSqlRawKK' 1
(KK1 2
$strKK2 \
+KK] ^
parentIdKK_ g
)KKg h
.KKh i
ToArrayKKi p
(KKp q
)KKq r
;KKr s
}LL 	
publicNN 
IListNN 
<NN 
CategoryNN 
>NN 
GetAllCategoriesNN /
(NN/ 0
)NN0 1
{OO 	
returnPP 

_dbContextPP 
.PP 
CategoryPP &
.PP& '
ToListPP' -
(PP- .
)PP. /
;PP/ 0
}QQ 	
publicSS 
IListSS 
<SS 
ProvinceSS 
>SS 
GetAllProvincesSS .
(SS. /
)SS/ 0
{TT 	
returnUU 

_dbContextUU 
.UU 
ProvinceUU &
.UU& '
ToListUU' -
(UU- .
)UU. /
;UU/ 0
}VV 	
publicXX 
IListXX 
<XX 
CantonXX 
>XX 
GetProvinceCantonsXX /
(XX/ 0
stringXX0 6
provinceXX7 ?
)XX? @
{YY 	
returnZZ 

_dbContextZZ 
.ZZ 
CantonZZ $
.ZZ$ %

FromSqlRawZZ% /
(ZZ/ 0
$strZZ0 O
+ZZP Q
provinceZZR Z
+ZZ[ \
$strZZ] a
)ZZa b
.ZZb c
ToArrayZZc j
(ZZj k
)ZZk l
;ZZl m
}[[ 	
public]] 
IList]] 
<]] 
District]] 
>]] 
GetCantonDistricts]] 1
(]]1 2
string]]2 8
canton]]9 ?
)]]? @
{^^ 	
return__ 

_dbContext__ 
.__ 
District__ &
.__& '

FromSqlRaw__' 1
(__1 2
$str__2 Q
+__R S
canton__T Z
+__[ \
$str__] a
)__a b
.__b c
ToArray__c j
(__j k
)__k l
;__l m
}`` 	
publicbb 
asyncbb 
Taskbb 
<bb 
boolbb 
>bb 
PhoneUpdatebb  +
(bb+ ,
stringbb, 2
emailbb3 8
,bb8 9
stringbb: @
phonebbA F
)bbF G
{cc 	
Phonesdd 
	UserPhonedd 
=dd 

_dbContextdd )
.dd) *
Phonesdd* 0
.dd0 1
FirstOrDefaultdd1 ?
(dd? @
cdd@ A
=>ddB D
cddE F
.ddF G

User_EmailddG Q
.ddQ R
EqualsddR X
(ddX Y
emailddY ^
)dd^ _
)dd_ `
;dd` a
ifee 
(ee 
	UserPhoneee 
!=ee 
nullee !
)ee! "
{ff 
	UserPhonegg 
.gg 
Phone_Numbergg &
=gg' (
phonegg) .
;gg. /

_dbContexthh 
.hh 
Phoneshh !
.hh! "
Updatehh" (
(hh( )
	UserPhonehh) 2
)hh2 3
;hh3 4
awaitii 

_dbContextii  
.ii  !
SaveChangesAsyncii! 1
(ii1 2
)ii2 3
;ii3 4
}jj 
returnkk 
truekk 
;kk 
}ll 	
publicnn 
asyncnn 
Tasknn 
<nn 
boolnn 
>nn 

UserUpdatenn  *
(nn* +
Usernn+ /
unn0 1
)nn1 2
{oo 	
Userpp 
userpp 
=pp 

_dbContextpp "
.pp" #
Userpp# '
.pp' (
FirstOrDefaultpp( 6
(pp6 7
cpp7 8
=>pp9 ;
cpp< =
.pp= >
Emailpp> C
.ppC D
EqualsppD J
(ppJ K
uppK L
.ppL M
EmailppM R
)ppR S
)ppS T
;ppT U
ifqq 
(qq 
userqq 
!=qq 
nullqq 
)qq 
{rr 

_dbContextss 
.ss 
Updatess !
(ss! "
userss" &
)ss& '
;ss' (
awaittt 

_dbContexttt  
.tt  !
SaveChangesAsynctt! 1
(tt1 2
)tt2 3
;tt3 4
}uu 
returnvv 
truevv 
;vv 
}ww 	
publicyy 
asyncyy 
Taskyy 
<yy 
boolyy 
>yy 
AdministratorUpdateyy  3
(yy3 4
Administratoryy4 A
ayyB C
)yyC D
{zz 	

_dbContext{{ 
.{{ 
Administrator{{ $
.{{$ %
Update{{% +
({{+ ,
a{{, -
){{- .
;{{. /
await|| 

_dbContext|| 
.|| 
SaveChangesAsync|| -
(||- .
)||. /
;||/ 0
return}} 
true}} 
;}} 
}~~ 	
public
ÄÄ 
async
ÄÄ 
Task
ÄÄ 
<
ÄÄ 
bool
ÄÄ 
>
ÄÄ 
MemberUpdate
ÄÄ  ,
(
ÄÄ, -
Members
ÄÄ- 4
m
ÄÄ5 6
)
ÄÄ6 7
{
ÅÅ 	

_dbContext
ÇÇ 
.
ÇÇ 
Members
ÇÇ 
.
ÇÇ 
Update
ÇÇ %
(
ÇÇ% &
m
ÇÇ& '
)
ÇÇ' (
;
ÇÇ( )
await
ÉÉ 

_dbContext
ÉÉ 
.
ÉÉ 
SaveChangesAsync
ÉÉ -
(
ÉÉ- .
)
ÉÉ. /
;
ÉÉ/ 0
return
ÑÑ 
true
ÑÑ 
;
ÑÑ 
}
ÖÖ 	
public
áá 
async
áá 
Task
áá 
<
áá 
bool
áá 
>
áá 
ClientUpdate
áá  ,
(
áá, -
Client
áá- 3
c
áá4 5
)
áá5 6
{
àà 	

_dbContext
ââ 
.
ââ 
Client
ââ 
.
ââ 
Update
ââ $
(
ââ$ %
c
ââ% &
)
ââ& '
;
ââ' (
await
ää 

_dbContext
ää 
.
ää 
SaveChangesAsync
ää -
(
ää- .
)
ää. /
;
ää/ 0
return
ãã 
true
ãã 
;
ãã 
}
åå 	
public
éé 
async
éé 
Task
éé 
<
éé 
bool
éé 
>
éé  
EntrepreneurUpdate
éé  2
(
éé2 3
Entrepreneur
éé3 ?
e
éé@ A
)
ééA B
{
èè 	

_dbContext
êê 
.
êê 
Entrepreneur
êê #
.
êê# $
Update
êê$ *
(
êê* +
e
êê+ ,
)
êê, -
;
êê- .
await
ëë 

_dbContext
ëë 
.
ëë 
SaveChangesAsync
ëë -
(
ëë- .
)
ëë. /
;
ëë/ 0
return
íí 
true
íí 
;
íí 
}
ìì 	
public
ïï 
async
ïï 
Task
ïï 
<
ïï 
bool
ïï 
>
ïï 
AddMemberLikes
ïï  .
(
ïï. /
Likes
ïï/ 4
l
ïï5 6
)
ïï6 7
{
ññ 	

_dbContext
óó 
.
óó 
Likes
óó 
.
óó 
Add
óó  
(
óó  !
l
óó! "
)
óó" #
;
óó# $
await
òò 

_dbContext
òò 
.
òò 
SaveChangesAsync
òò -
(
òò- .
)
òò. /
;
òò/ 0
return
ôô 
true
ôô 
;
ôô 
}
öö 	
public
úú 
async
úú 
Task
úú 
<
úú 
bool
úú 
>
úú 
RemoveMemberLikes
úú  1
(
úú1 2
Likes
úú2 7
l
úú8 9
)
úú9 :
{
ùù 	

_dbContext
ûû 
.
ûû 
Likes
ûû 
.
ûû 
Remove
ûû #
(
ûû# $
l
ûû$ %
)
ûû% &
;
ûû& '
await
üü 

_dbContext
üü 
.
üü 
SaveChangesAsync
üü -
(
üü- .
)
üü. /
;
üü/ 0
return
†† 
true
†† 
;
†† 
}
°° 	
public
¢¢ 
async
¢¢ 
Task
¢¢ 
<
¢¢ 
bool
¢¢ 
>
¢¢ 
	AddReport
¢¢  )
(
¢¢) *
Report
¢¢* 0
r
¢¢1 2
)
¢¢2 3
{
¢¢4 5

_dbContext
££ 
.
££ 
Report
££ 
.
££ 
Add
££ !
(
££! "
r
££" #
)
££# $
;
££$ %
await
§§ 

_dbContext
§§ 
.
§§ 
SaveChangesAsync
§§ -
(
§§- .
)
§§. /
;
§§/ 0
return
•• 
true
•• 
;
•• 
}
¶¶ 	
public
ßß 
async
ßß 
Task
ßß 
<
ßß 
bool
ßß 
>
ßß 
RemoveReport
ßß  ,
(
ßß, -
Report
ßß- 3
r
ßß4 5
)
ßß5 6
{
®® 	

_dbContext
©© 
.
©© 
Report
©© 
.
©© 
Remove
©© $
(
©©$ %
r
©©% &
)
©©& '
;
©©' (
await
™™ 

_dbContext
™™ 
.
™™ 
SaveChangesAsync
™™ -
(
™™- .
)
™™. /
;
™™/ 0
return
´´ 
true
´´ 
;
´´ 
}
¨¨ 	
}
≠≠ 
}ÆÆ —C
zC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\src\Infrastructure\RegisterContext\RegisterDbContext.cs
	namespace		 	
EmprendeUCR		
 
.		 
Infrastructure		 $
.		$ %
RegisterContext		% 4
{

 
public 

partial 
class 
RegisterDbContext *
:+ , 
ApplicationDbContext- A
{ 
public 
RegisterDbContext  
(  !
DbContextOptions! 1
<1 2
RegisterDbContext2 C
>C D
optionsE L
,L M
ILoggerN U
<U V
RegisterDbContextV g
>g h
loggeri o
)o p
: 
base 
( 
options 
, 
logger !
)! "
{ 	
} 	
	protected 
override 
void 
OnConfiguring  -
(- .#
DbContextOptionsBuilder. E
optionsBuilderF T
)T U
{ 	
optionsBuilder 
. 
LogTo  
(  !
message! (
=>) +
Debug, 1
.1 2
	WriteLine2 ;
(; <
message< C
)C D
)D E
;E F
} 	
public 
virtual 
DbSet 
< 
Register %
>% &
Register' /
{0 1
get2 5
;5 6
set7 :
;: ;
}< =
public 
virtual 
DbSet 
< 
Administrator *
>* +
Administrator, 9
{: ;
get< ?
;? @
setA D
;D E
}E F
public 
virtual 
DbSet 
< 
Client #
># $
Client% +
{, -
get. 1
;1 2
set3 6
;6 7
}7 8
public 
virtual 
DbSet 
< 
Entrepreneur )
>) *
Entrepreneur+ 7
{8 9
get: =
;= >
set? B
;B C
}C D
public 
virtual 
DbSet 
< 
User !
>! "
User# '
{( )
get* -
;- .
set/ 2
;2 3
}3 4
public 
virtual 
DbSet 
< 
EmailConfirmation .
>. /
EmailConfirmation0 A
{B C
getD G
;G H
setI L
;L M
}M N
public 
virtual 
DbSet 
< 
Canton #
># $
Canton% +
{, -
get. 1
;1 2
set3 6
;6 7
}7 8
public 
virtual 
DbSet 
< 
Province %
>% &
Province' /
{0 1
get2 5
;5 6
set7 :
;: ;
}; <
public 
virtual 
DbSet 
< 
District %
>% &
District' /
{0 1
get2 5
;5 6
set7 :
;: ;
}; <
public   
virtual   
DbSet   
<   
Mail   !
>  ! "
Mail  # '
{  ( )
get  * -
;  - .
set  / 2
;  2 3
}  3 4
public!! 
virtual!! 
DbSet!! 
<!! 
Credentials!! (
>!!( )
Credentials!!* 5
{!!6 7
get!!8 ;
;!!; <
set!!= @
;!!@ A
}!!A B
public"" 
virtual"" 
DbSet"" 
<"" 
Members"" $
>""$ %
Members""& -
{"". /
get""0 3
;""3 4
set""5 8
;""8 9
}""9 :
public## 
virtual## 
DbSet## 
<## 
Likes## "
>##" #
Likes##$ )
{##* +
get##, /
;##/ 0
set##1 4
;##4 5
}##5 6
public$$ 
virtual$$ 
DbSet$$ 
<$$ 
Phones$$ #
>$$# $
Phones$$% +
{$$, -
get$$. 1
;$$1 2
set$$3 6
;$$6 7
}$$7 8
public%% 
virtual%% 
DbSet%% 
<%% 
Category%% %
>%%% &
Category%%' /
{%%0 1
get%%2 5
;%%5 6
set%%7 :
;%%: ;
}%%< =
public&& 
virtual&& 
DbSet&& 
<&& 
ShoppingCart&& )
>&&) *
ShoppingCart&&+ 7
{&&8 9
get&&: =
;&&= >
set&&? B
;&&B C
}&&D E
public'' 
virtual'' 
DbSet'' 
<''  
ActiveAdministrators'' 1
>''1 2 
ActiveAdministrators''3 G
{''H I
get''J M
;''M N
set''O R
;''R S
}''T U
	protected)) 
override)) 
void)) 
OnModelCreating))  /
())/ 0
ModelBuilder))0 <
modelBuilder))= I
)))I J
{** 	
base++ 
.++ 
OnModelCreating++  
(++  !
modelBuilder++! -
)++- .
;++. /
modelBuilder,, 
.,, 
Ignore,, 
<,,  
Mail,,  $
>,,$ %
(,,% &
),,& '
;,,' (
modelBuilder-- 
.-- 
ApplyConfiguration-- +
(--+ ,
new--, /
AdministratorMap--0 @
(--@ A
)--A B
)--B C
;--C D
modelBuilder.. 
... 
ApplyConfiguration.. +
(..+ ,
new.., /
	ClientMap..0 9
(..9 :
)..: ;
)..; <
;..< =
modelBuilder// 
.// 
ApplyConfiguration// +
(//+ ,
new//, /
EntrepreneurMap//0 ?
(//? @
)//@ A
)//A B
;//B C
modelBuilder00 
.00 
ApplyConfiguration00 +
(00+ ,
new00, /
UserMap000 7
(007 8
)008 9
)009 :
;00: ;
modelBuilder11 
.11 
ApplyConfiguration11 +
(11+ ,
new11, /

MembersMap110 :
(11: ;
)11; <
)11< =
;11= >
modelBuilder22 
.22 
ApplyConfiguration22 +
(22+ ,
new22, /
ProvinceMap220 ;
(22; <
)22< =
)22= >
;22> ?
modelBuilder33 
.33 
ApplyConfiguration33 +
(33+ ,
new33, /
	CantonMap330 9
(339 :
)33: ;
)33; <
;33< =
modelBuilder44 
.44 
ApplyConfiguration44 +
(44+ ,
new44, /
DistrictMap440 ;
(44; <
)44< =
)44= >
;44> ?
modelBuilder55 
.55 
ApplyConfiguration55 +
(55+ ,
new55, /
	PhonesMap550 9
(559 :
)55: ;
)55; <
;55< =
modelBuilder66 
.66 
ApplyConfiguration66 +
(66+ ,
new66, /
LikesMap660 8
(668 9
)669 :
)66: ;
;66; <
modelBuilder77 
.77 
ApplyConfiguration77 +
(77+ ,
new77, /
CredentialsMap770 >
(77> ?
)77? @
)77@ A
;77A B
modelBuilder88 
.88 
ApplyConfiguration88 +
(88+ ,
new88, / 
EmailConfirmationMap880 D
(88D E
)88E F
)88F G
;88G H
modelBuilder:: 
.:: 
ApplyConfiguration:: +
(::+ ,
new::, /
CategoryMap::0 ;
(::; <
)::< =
)::= >
;::> ?
modelBuilder;; 
.;; 
ApplyConfiguration;; +
(;;+ ,
new;;, /
ShoppingCartMap;;0 ?
(;;? @
);;@ A
);;A B
;;;B C
modelBuilder<< 
.<< 
ApplyConfiguration<< +
(<<+ ,
new<<, /#
ActiveAdministratorsMap<<0 G
(<<G H
)<<H I
)<<I J
;<<J K
}== 	
}>> 
}?? ˇ≥
àC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\src\Infrastructure\RegisterContext\Repositories\RegisterRepository.cs
	namespace 	
EmprendeUCR
 
. 
Infrastructure $
.$ %
RegisterContext% 4
.4 5
Repositories5 A
{ 
public 

class 
RegisterRepository #
:$ %
IRegisterRepository& 9
{ 
private 
readonly 
RegisterDbContext *

_dbContext+ 5
;5 6
public 
IUnitOfWork 

UnitOfWork %
=>& (

_dbContext) 3
;3 4
public 
RegisterRepository !
(! "
RegisterDbContext" 3
	dbContext4 =
)= >
{ 	

_dbContext 
= 
	dbContext "
;" #
} 	
public 
async 
Task 
< 
bool 
> 
addUserAsync  ,
(, -
User- 1
user2 6
)6 7
{ 	
await 

_dbContext 
. 
User !
.! "
AddAsync" *
(* +
user+ /
)/ 0
;0 1
await 

_dbContext 
. 
SaveChangesAsync -
(- .
). /
;/ 0
return 
true 
; 
} 	
public 
bool 
verifyUserRecord $
($ %
Register% -
newRegister. 9
)9 :
{   	
bool!! 
exists!! 
=!! 
false!! 
;!!  
User"" 
_user"" 
="" 

_dbContext"" #
.""# $
User""$ (
.""( )
Find"") -
("". /
newRegister""/ :
."": ;
Email""; @
)""@ A
;""A B
if## 
(## 
_user## 
!=## 
null## 
)## 
{$$ 
exists%% 
=%% 
true%% 
;%% 
}&& 
return'' 
exists'' 
;'' 
}(( 	
public** 
async** 
Task** 
<** 
bool** 
>** 
addCredentialsAsync**  3
(**3 4
Credentials**4 ?
credentials**@ K
)**K L
{++ 	
await,, 

_dbContext,, 
.,, 
Credentials,, (
.,,( )
AddAsync,,) 1
(,,1 2
credentials,,2 =
),,= >
;,,> ?
await-- 

_dbContext-- 
.-- 
SaveChangesAsync-- -
(--- .
)--. /
;--/ 0
return.. 
true.. 
;.. 
}// 	
public11 
async11 
Task11 
<11 
bool11 
>11 %
addEmailConfirmationAsync11  9
(119 :
EmailConfirmation11: K
emailConfirmation11L ]
)11] ^
{22 	
await33 

_dbContext33 
.33 
EmailConfirmation33 .
.33. /
AddAsync33/ 7
(337 8
emailConfirmation338 I
)33I J
;33J K
await44 

_dbContext44 
.44 
SaveChangesAsync44 -
(44- .
)44. /
;44/ 0
return55 
true55 
;55 
}66 	
public88 
async88 
Task88 
<88 
bool88 
>88 
addPhoneAsync88  -
(88- .
Phones88. 4
phones885 ;
)88; <
{99 	
await:: 

_dbContext:: 
.:: 
Phones:: #
.::# $
AddAsync::$ ,
(::, -
phones::- 3
)::3 4
;::4 5
await;; 

_dbContext;; 
.;; 
SaveChangesAsync;; -
(;;- .
);;. /
;;;/ 0
return<< 
true<< 
;<< 
}== 	
public?? 
async?? 
Task?? 
<?? 
IList?? 
<??  
Category??  (
>??( )
>??) *

getParents??+ 5
(??5 6
)??6 7
{@@ 	
returnAA 
awaitAA 

_dbContextAA #
.AA# $
CategoryAA$ ,
.AA, -

FromSqlRawAA- 7
(AA7 8
$strAA8 g
)AAg h
.AAh i
ToListAsyncAAi t
(AAt u
)AAu v
;AAv w
}BB 	
publicDD 
asyncDD 
TaskDD 
<DD 
IListDD 
<DD  
CategoryDD  (
>DD( )
>DD) *
getChildrenOfDD+ 8
(DD8 9
intDD9 <
parentIdDD= E
)DDE F
{EE 	
returnFF 
awaitFF 

_dbContextFF #
.FF# $
CategoryFF$ ,
.FF, -

FromSqlRawFF- 7
(FF7 8
$strFF8 b
+FFc d
parentIdFFe m
)FFm n
.FFn o
ToListAsyncFFo z
(FFz {
)FF{ |
;FF| }
}GG 	
publicII 
asyncII 
TaskII 
<II 
EmailConfirmationII +
>II+ , 
getConfirmationEmailII- A
(IIA B
stringIIB H
	hash_codeIII R
)IIR S
{JJ 	
returnKK 
awaitKK 

_dbContextKK #
.KK# $
EmailConfirmationKK$ 5
.KK5 6
FirstOrDefaultAsyncKK6 I
(KKI J
cKKJ K
=>KKL N
cKKO P
.KKP Q
	Hash_CodeKKQ Z
.KKZ [
EqualsKK[ a
(KKa b
	hash_codeKKb k
)KKk l
)KKl m
;KKm n
}LL 	
publicNN 
asyncNN 
TaskNN 
<NN 
boolNN 
>NN 
getUserConfirmEmailNN  3
(NN3 4
stringNN4 :
emailNN; @
)NN@ A
{OO 	
boolPP 

confirmadoPP 
=PP 
falsePP #
;PP# $
UserQQ 
userQQ 
=QQ 
awaitQQ 

_dbContextQQ (
.QQ( )
UserQQ) -
.QQ- .
FirstOrDefaultAsyncQQ. A
(QQA B
cQQB C
=>QQD F
cQQG H
.QQH I
EmailQQI N
.QQN O
EqualsQQO U
(QQU V
emailQQV [
)QQ[ \
)QQ\ ]
;QQ] ^
ifRR 
(RR 
userRR 
!=RR 
nullRR 
)RR 
{SS 

confirmadoTT 
=TT 
(TT 
boolTT "
)TT" #
userTT# '
.TT' (
Email_ConfirmationTT( :
;TT: ;
}UU 
returnVV 

confirmadoVV 
;VV 
}WW 	
publicYY 
asyncYY 
TaskYY 
<YY 
IListYY 
<YY  
DistrictYY  (
>YY( )
>YY) *
getAllDistrictsYY+ :
(YY: ;
)YY; <
{ZZ 	
return[[ 
await[[ 

_dbContext[[ #
.[[# $
District[[$ ,
.[[, -
ToListAsync[[- 8
([[8 9
)[[9 :
;[[: ;
}\\ 	
public^^ 
async^^ 
Task^^ 
<^^ 
IList^^ 
<^^  
Canton^^  &
>^^& '
>^^' (
getAllCantons^^) 6
(^^6 7
)^^7 8
{__ 	
return`` 
await`` 

_dbContext`` #
.``# $
Canton``$ *
.``* +
ToListAsync``+ 6
(``6 7
)``7 8
;``8 9
}aa 	
publiccc 
asynccc 
Taskcc 
<cc 
IListcc 
<cc  
Provincecc  (
>cc( )
>cc) *
getAllProvincescc+ :
(cc: ;
)cc; <
{dd 	
returnee 
awaitee 

_dbContextee #
.ee# $
Provinceee$ ,
.ee, -
ToListAsyncee- 8
(ee8 9
)ee9 :
;ee: ;
}ff 	
publichh 
asynchh 
Taskhh 
<hh 
IListhh 
<hh  
Categoryhh  (
>hh( )
>hh) *
getAllCategorieshh+ ;
(hh; <
)hh< =
{ii 	
returnjj 
awaitjj 

_dbContextjj #
.jj# $
Categoryjj$ ,
.jj, -
ToListAsyncjj- 8
(jj8 9
)jj9 :
;jj: ;
}kk 	
publicmm 
asyncmm 
Taskmm 
<mm 
boolmm 
>mm 
updateUserAsyncmm  /
(mm/ 0
Usermm0 4
_usermm5 :
)mm: ;
{nn 	
booloo 
updatedoo 
=oo 
falseoo  
;oo  !
Userpp 
userpp 
=pp 
awaitpp 

_dbContextpp (
.pp( )
Userpp) -
.pp- .
FirstOrDefaultAsyncpp. A
(ppA B
cppB C
=>ppD F
cppG H
.ppH I
EmailppI N
.ppN O
EqualsppO U
(ppU V
_userppV [
.pp[ \
Emailpp\ a
)ppa b
)ppb c
;ppc d
ifqq 
(qq 
userqq 
!=qq 
nullqq 
)qq 
{rr 
userss 
.ss 
Province_Namess "
=ss# $
_userss% *
.ss* +
Province_Namess+ 8
;ss8 9
usertt 
.tt 
Canton_Namett  
=tt! "
_usertt# (
.tt( )
Canton_Namett) 4
;tt4 5
useruu 
.uu 
District_Nameuu "
=uu# $
_useruu% *
.uu* +
District_Nameuu+ 8
;uu8 9
userww 
.ww 
Photoww 
=ww 
_userww "
.ww" #
Photoww# (
;ww( )
useryy 
.yy 
Nameyy 
=yy 
_useryy !
.yy! "
Nameyy" &
;yy& '
userzz 
.zz 
F_Last_Namezz  
=zz! "
_userzz# (
.zz( )
F_Last_Namezz) 4
;zz4 5
user{{ 
.{{ 
S_Last_Name{{  
={{! "
_user{{# (
.{{( )
S_Last_Name{{) 4
;{{4 5
user}} 
.}} 

Birth_Date}} 
=}}  !
_user}}" '
.}}' (

Birth_Date}}( 2
;}}2 3
user~~ 
.~~ 
Email_Confirmation~~ '
=~~( )
_user~~* /
.~~/ 0
Email_Confirmation~~0 B
;~~B C

_dbContext
ÄÄ 
.
ÄÄ 
Update
ÄÄ !
(
ÄÄ! "
user
ÄÄ" &
)
ÄÄ& '
;
ÄÄ' (
await
ÅÅ 

_dbContext
ÅÅ  
.
ÅÅ  !
SaveChangesAsync
ÅÅ! 1
(
ÅÅ1 2
)
ÅÅ2 3
;
ÅÅ3 4
updated
ÇÇ 
=
ÇÇ 
true
ÇÇ 
;
ÇÇ 
}
ÉÉ 
return
ÑÑ 
updated
ÑÑ 
;
ÑÑ 
}
ÖÖ 	
public
áá 
async
áá 
Task
áá 
<
áá 
bool
áá 
>
áá 
addMembersAsync
áá  /
(
áá/ 0
Members
áá0 7
members
áá8 ?
)
áá? @
{
àà 	
await
ââ 

_dbContext
ââ 
.
ââ 
Members
ââ $
.
ââ$ %
AddAsync
ââ% -
(
ââ- .
members
ââ. 5
)
ââ5 6
;
ââ6 7
await
ää 

_dbContext
ää 
.
ää 
SaveChangesAsync
ää -
(
ää- .
)
ää. /
;
ää/ 0
return
ãã 
true
ãã 
;
ãã 
}
åå 	
public
éé 
async
éé 
Task
éé 
<
éé 
bool
éé 
>
éé 
addClientAsync
éé  .
(
éé. /
Client
éé/ 5
client
éé6 <
)
éé< =
{
èè 	
await
êê 

_dbContext
êê 
.
êê 
Client
êê #
.
êê# $
AddAsync
êê$ ,
(
êê, -
client
êê- 3
)
êê3 4
;
êê4 5
await
ëë 

_dbContext
ëë 
.
ëë 
SaveChangesAsync
ëë -
(
ëë- .
)
ëë. /
;
ëë/ 0
return
íí 
true
íí 
;
íí 
}
ìì 	
public
ïï 
async
ïï 
Task
ïï 
<
ïï 
bool
ïï 
>
ïï "
addShoppingCartAsync
ïï  4
(
ïï4 5
ShoppingCart
ïï5 A
shoppingCart
ïïB N
)
ïïN O
{
ññ 	
await
óó 

_dbContext
óó 
.
óó 
ShoppingCart
óó )
.
óó) *
AddAsync
óó* 2
(
óó2 3
shoppingCart
óó3 ?
)
óó? @
;
óó@ A
await
òò 

_dbContext
òò 
.
òò 
SaveChangesAsync
òò -
(
òò- .
)
òò. /
;
òò/ 0
return
ôô 
true
ôô 
;
ôô 
}
öö 	
public
úú 
async
úú 
Task
úú 
<
úú 
bool
úú 
>
úú 
addLikesAsync
úú  -
(
úú- .
Likes
úú. 3
likes
úú4 9
)
úú9 :
{
ùù 	
await
ûû 

_dbContext
ûû 
.
ûû 
Likes
ûû "
.
ûû" #
AddAsync
ûû# +
(
ûû+ ,
likes
ûû, 1
)
ûû1 2
;
ûû2 3
await
üü 

_dbContext
üü 
.
üü 
SaveChangesAsync
üü -
(
üü- .
)
üü. /
;
üü/ 0
return
†† 
true
†† 
;
†† 
}
°° 	
public
££ 
async
££ 
Task
££ 
<
££ 
bool
££ 
>
££ "
addEntrepreneurAsync
££  4
(
££4 5
Entrepreneur
££5 A
entrepreneur
££B N
)
££N O
{
§§ 	
await
•• 

_dbContext
•• 
.
•• 
Entrepreneur
•• )
.
••) *
AddAsync
••* 2
(
••2 3
entrepreneur
••3 ?
)
••? @
;
••@ A
await
¶¶ 

_dbContext
¶¶ 
.
¶¶ 
SaveChangesAsync
¶¶ -
(
¶¶- .
)
¶¶. /
;
¶¶/ 0
return
ßß 
true
ßß 
;
ßß 
}
®® 	
public
™™ 
async
™™ 
Task
™™ 
<
™™ 
bool
™™ 
>
™™ #
addAdministratorAsync
™™  5
(
™™5 6
Administrator
™™6 C
administrator
™™D Q
)
™™Q R
{
´´ 	
await
¨¨ 

_dbContext
¨¨ 
.
¨¨ 
Administrator
¨¨ *
.
¨¨* +
AddAsync
¨¨+ 3
(
¨¨3 4
administrator
¨¨4 A
)
¨¨A B
;
¨¨B C
await
≠≠ 

_dbContext
≠≠ 
.
≠≠ 
SaveChangesAsync
≠≠ -
(
≠≠- .
)
≠≠. /
;
≠≠/ 0
return
ÆÆ 
true
ÆÆ 
;
ÆÆ 
}
ØØ 	
public
±± 
IList
±± 
<
±± 
Canton
±± 
>
±± 
getListCantons
±± +
(
±±+ ,
string
±±, 2
province
±±3 ;
)
±±; <
{
≤≤ 	
return
≥≥ 

_dbContext
≥≥ 
.
≥≥ 
Canton
≥≥ $
.
≥≥$ %

FromSqlRaw
≥≥% /
(
≥≥/ 0
$str
≥≥0 O
+
≥≥P Q
province
≥≥R Z
+
≥≥[ \
$str
≥≥] a
)
≥≥a b
.
≥≥b c
ToArray
≥≥c j
(
≥≥j k
)
≥≥k l
;
≥≥l m
}
¥¥ 	
public
∂∂ 
IList
∂∂ 
<
∂∂ 
District
∂∂ 
>
∂∂ 
getListDistrics
∂∂ .
(
∂∂. /
string
∂∂/ 5
canton
∂∂6 <
)
∂∂< =
{
∑∑ 	
return
∏∏ 

_dbContext
∏∏ 
.
∏∏ 
District
∏∏ &
.
∏∏& '

FromSqlRaw
∏∏' 1
(
∏∏1 2
$str
∏∏2 Q
+
∏∏R S
canton
∏∏T Z
+
∏∏[ \
$str
∏∏] a
)
∏∏a b
.
∏∏b c
ToArray
∏∏c j
(
∏∏j k
)
∏∏k l
;
∏∏l m
}
ππ 	
public
ªª 
async
ªª 
Task
ªª 
<
ªª 
bool
ªª 
>
ªª $
addActiveAdministrator
ªª  6
(
ªª6 7"
ActiveAdministrators
ªª7 K!
activeAdministrator
ªªL _
)
ªª_ `
{
ºº 	
await
ΩΩ 

_dbContext
ΩΩ 
.
ΩΩ "
ActiveAdministrators
ΩΩ 1
.
ΩΩ1 2
AddAsync
ΩΩ2 :
(
ΩΩ: ;!
activeAdministrator
ΩΩ; N
)
ΩΩN O
;
ΩΩO P
await
ææ 

_dbContext
ææ 
.
ææ 
SaveChangesAsync
ææ -
(
ææ- .
)
ææ. /
;
ææ/ 0
return
øø 
true
øø 
;
øø 
}
¿¿ 	
public
¬¬ 
bool
¬¬ 
AddMemberLikes
¬¬ "
(
¬¬" #
Likes
¬¬# (
l
¬¬) *
)
¬¬* +
{
√√ 	

_dbContext
ƒƒ 
.
ƒƒ 
Likes
ƒƒ 
.
ƒƒ 
Add
ƒƒ  
(
ƒƒ  !
l
ƒƒ! "
)
ƒƒ" #
;
ƒƒ# $

_dbContext
≈≈ 
.
≈≈ 
SaveChanges
≈≈ "
(
≈≈" #
)
≈≈# $
;
≈≈$ %
return
∆∆ 
true
∆∆ 
;
∆∆ 
}
«« 	
public
…… 
async
…… 
Task
…… 
<
…… 
bool
…… 
>
…… 
verifyPastAdmin
……  /
(
……/ 0
string
……0 6
email
……7 <
)
……< =
{
   	
bool
ÀÀ 
Admin
ÀÀ 
=
ÀÀ 
false
ÀÀ 
;
ÀÀ "
ActiveAdministrators
ÃÃ  
activeAdmin
ÃÃ! ,
=
ÃÃ- .
await
ÃÃ/ 4

_dbContext
ÃÃ5 ?
.
ÃÃ? @"
ActiveAdministrators
ÃÃ@ T
.
ÃÃT U
	FindAsync
ÃÃU ^
(
ÃÃ^ _
email
ÃÃ_ d
)
ÃÃd e
;
ÃÃe f
if
ÕÕ 
(
ÕÕ 
activeAdmin
ÕÕ 
!=
ÕÕ 
null
ÕÕ #
)
ÕÕ# $
{
ŒŒ 
Admin
œœ 
=
œœ 
true
œœ 
;
œœ 
}
–– 
return
—— 
Admin
—— 
;
—— 
}
““ 	
public
‘‘ 
bool
‘‘ 
verifyUserType
‘‘ "
(
‘‘" #
string
‘‘# )
email
‘‘* /
,
‘‘/ 0
int
‘‘1 4
userType
‘‘5 =
)
‘‘= >
{
’’ 	
bool
÷÷ 
exists
÷÷ 
=
÷÷ 
false
÷÷ 
;
÷÷  
switch
◊◊ 
(
◊◊ 
userType
◊◊ 
)
◊◊ 
{
ÿÿ 
case
ŸŸ 
$num
ŸŸ 
:
ŸŸ 
if
⁄⁄ 
(
⁄⁄ 

_dbContext
⁄⁄ "
.
⁄⁄" #
Client
⁄⁄# )
.
⁄⁄) *
Find
⁄⁄* .
(
⁄⁄. /
email
⁄⁄/ 4
)
⁄⁄4 5
!=
⁄⁄6 8
null
⁄⁄9 =
)
⁄⁄= >
{
€€ 
exists
‹‹ 
=
‹‹  
true
‹‹! %
;
‹‹% &
}
›› 
break
ﬁﬁ 
;
ﬁﬁ 
case
‡‡ 
$num
‡‡ 
:
‡‡ 
if
·· 
(
·· 

_dbContext
·· "
.
··" #
Entrepreneur
··# /
.
··/ 0
Find
··0 4
(
··4 5
email
··5 :
)
··: ;
!=
··< >
null
··? C
)
··C D
{
‚‚ 
exists
„„ 
=
„„  
true
„„! %
;
„„% &
}
‰‰ 
break
ÂÂ 
;
ÂÂ 
case
ÁÁ 
$num
ÁÁ 
:
ÁÁ 
if
ËË 
(
ËË 

_dbContext
ËË "
.
ËË" #
Administrator
ËË# 0
.
ËË0 1
Find
ËË1 5
(
ËË5 6
email
ËË6 ;
)
ËË; <
!=
ËË= ?
null
ËË@ D
)
ËËD E
{
ÈÈ 
exists
ÍÍ 
=
ÍÍ  
true
ÍÍ! %
;
ÍÍ% &
}
ÎÎ 
break
ÏÏ 
;
ÏÏ 
}
ÌÌ 
return
ÓÓ 
exists
ÓÓ 
;
ÓÓ 
}
ÔÔ 	
public
ÒÒ 
EmailConfirmation
ÒÒ  "
getEmailConfirmation
ÒÒ! 5
(
ÒÒ5 6
string
ÒÒ6 <
email
ÒÒ= B
)
ÒÒB C
{
ÚÚ 	
return
ÛÛ 

_dbContext
ÛÛ 
.
ÛÛ 
EmailConfirmation
ÛÛ /
.
ÛÛ/ 0
Find
ÛÛ0 4
(
ÛÛ4 5
email
ÛÛ5 :
)
ÛÛ: ;
;
ÛÛ; <
}
ÙÙ 	
public
ˆˆ 
async
ˆˆ 
Task
ˆˆ 
<
ˆˆ 
string
ˆˆ  
>
ˆˆ  !
GetPassword
ˆˆ" -
(
ˆˆ- .
string
ˆˆ. 4
email
ˆˆ5 :
)
ˆˆ: ;
{
˜˜ 	
Credentials
¯¯ 
credentials
¯¯ #
=
¯¯$ %
await
¯¯& +

_dbContext
¯¯, 6
.
¯¯6 7
Credentials
¯¯7 B
.
¯¯B C!
FirstOrDefaultAsync
¯¯C V
(
¯¯V W
c
¯¯W X
=>
¯¯Y [
c
¯¯\ ]
.
¯¯] ^

User_Email
¯¯^ h
.
¯¯h i
Equals
¯¯i o
(
¯¯o p
email
¯¯p u
)
¯¯u v
)
¯¯v w
;
¯¯w x
if
˘˘ 
(
˘˘ 
credentials
˘˘ 
==
˘˘ 
null
˘˘ #
)
˘˘# $
{
˙˙ 
return
˚˚ 
$str
˚˚ 
;
˚˚ 
}
¸¸ 
else
˝˝ 
{
˛˛ 
return
ˇˇ 
credentials
ˇˇ "
.
ˇˇ" #
Password
ˇˇ# +
.
ˇˇ+ ,
ToString
ˇˇ, 4
(
ˇˇ4 5
)
ˇˇ5 6
;
ˇˇ6 7
}
ÄÄ 
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
ÉÉ 
verifyMembers
ÉÉ  -
(
ÉÉ- .
string
ÉÉ. 4
email
ÉÉ5 :
)
ÉÉ: ;
{
ÑÑ 	
Members
ÖÖ 

findMember
ÖÖ 
=
ÖÖ  
await
ÖÖ! &

_dbContext
ÖÖ' 1
.
ÖÖ1 2
Members
ÖÖ2 9
.
ÖÖ9 :
	FindAsync
ÖÖ: C
(
ÖÖC D
email
ÖÖD I
)
ÖÖI J
;
ÖÖJ K
if
ÜÜ 
(
ÜÜ 

findMember
ÜÜ 
==
ÜÜ 
null
ÜÜ "
)
ÜÜ" #
{
áá 
return
àà 
false
àà 
;
àà 
}
ââ 
return
ää 
true
ää 
;
ää 
}
ãã 	
}
åå 
}çç ¯
pC:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\src\Infrastructure\Reports\ReportDbContext.cs
	namespace 	
EmprendeUCR
 
. 
Infrastructure $
.$ %
Reports% ,
{ 
public 

class 
ReportDbContext  
:! " 
ApplicationDbContext# 7
{		 
public

 
ReportDbContext

 
(

 
DbContextOptions

 /
<

/ 0
ReportDbContext

0 ?
>

? @
options

A H
,

H I
ILogger

J Q
<

Q R
ReportDbContext

R a
>

a b
logger

c i
)

i j
: 
base 
( 
options 
, 
logger "
)" #
{ 	
} 	
public 
DbSet 
< 
Report 
> 
Report #
{$ %
get& )
;) *
set+ .
;. /
}0 1
=2 3
null4 8
!8 9
;9 :
	protected 
override 
void 
OnModelCreating  /
(/ 0
ModelBuilder0 <
modelBuilder= I
)I J
{ 	
base 
. 
OnModelCreating  
(  !
modelBuilder! -
)- .
;. /
modelBuilder 
. 
ApplyConfiguration +
(+ ,
new, /
	ReportMap0 9
(9 :
): ;
); <
;< =
} 	
} 
} å
~C:\Users\Hansel\Documents\cloneEmprendeUCR\EMPRENDEUCR\EmprendeUCR\src\Infrastructure\Reports\Repositories\ReportRepository.cs
	namespace

 	
EmprendeUCR


 
.

 
Infrastructure

 $
.

$ %
Reports

% ,
.

, -
Repositories

- 9
{ 
internal 
class 
ReportRepository #
:$ %
IReportRepository& 7
{ 
private 
readonly 
ReportDbContext (

_dbContext) 3
;3 4
public 
IUnitOfWork 

UnitOfWork %
=>& (

_dbContext) 3
;3 4
public 
ReportRepository 
(  
ReportDbContext  /

unitOfWork0 :
): ;
{ 	

_dbContext 
= 

unitOfWork #
;# $
} 	
public 
async 
Task 
< 
IEnumerable %
<% &
Report& ,
>, -
>- .
GetAllAsync/ :
(: ;
); <
{ 	
return 
await 

_dbContext #
.# $
Report$ *
. 
Select 
( 
p 
=> 
new 
Report #
(# $
p$ %
.% &
Title& +
,, -
p. /
./ 0
Content0 7
,7 8
p9 :
.: ;
User; ?
,? @
p@ A
.A B
IDB D
)D E
)E F
. 
ToListAsync 
( 
) 
; 
} 	
public 
async 
Task 
< 
Report  
?  !
>! "
GetByIdAsync# /
(/ 0
int0 3
ID4 6
)6 7
{ 	
return 
await 

_dbContext #
.# $
Report$ *
. 
FirstOrDefaultAsync  
(  !
p! "
=># %
p& '
.' (
ID( *
==+ -
ID. 0
)0 1
;1 2
} 	
public"" 
async"" 
Task"" 
	SaveAsync"" #
(""# $
Report""$ *
report""+ 1
)""1 2
{## 	

_dbContext$$ 
.$$ 
Update$$ 
($$ 
report$$ $
)$$$ %
;$$% &
await%% 

_dbContext%% 
.%% 
SaveEntitiesAsync%% .
(%%. /
)%%/ 0
;%%0 1
}&& 	
public(( 
async(( 
Task(( 
	AddReport(( #
(((# $
Report(($ *
report((+ 1
)((1 2
{)) 	
await** 

_dbContext** 
.** 
AddAsync** %
(**% &
report**& ,
)**, -
;**- .
await++ 

_dbContext++ 
.++ 
SaveChangesAsync++ -
(++- .
)++. /
;++/ 0
},, 	
}-- 
}.. 