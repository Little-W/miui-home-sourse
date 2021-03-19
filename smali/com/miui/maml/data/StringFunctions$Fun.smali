.class final enum Lcom/miui/maml/data/StringFunctions$Fun;
.super Ljava/lang/Enum;
.source "StringFunctions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/data/StringFunctions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Fun"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/miui/maml/data/StringFunctions$Fun;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/miui/maml/data/StringFunctions$Fun;

.field public static final enum INVALID:Lcom/miui/maml/data/StringFunctions$Fun;

.field public static final enum STR_CONTAINS:Lcom/miui/maml/data/StringFunctions$Fun;

.field public static final enum STR_ENDSWITH:Lcom/miui/maml/data/StringFunctions$Fun;

.field public static final enum STR_INDEXOF:Lcom/miui/maml/data/StringFunctions$Fun;

.field public static final enum STR_ISEMPTY:Lcom/miui/maml/data/StringFunctions$Fun;

.field public static final enum STR_LASTINDEXOF:Lcom/miui/maml/data/StringFunctions$Fun;

.field public static final enum STR_MATCHES:Lcom/miui/maml/data/StringFunctions$Fun;

.field public static final enum STR_REPLACE:Lcom/miui/maml/data/StringFunctions$Fun;

.field public static final enum STR_REPLACEALL:Lcom/miui/maml/data/StringFunctions$Fun;

.field public static final enum STR_REPLACEFIRST:Lcom/miui/maml/data/StringFunctions$Fun;

.field public static final enum STR_STARTWITH:Lcom/miui/maml/data/StringFunctions$Fun;

.field public static final enum STR_TOLOWER:Lcom/miui/maml/data/StringFunctions$Fun;

.field public static final enum STR_TOUPPER:Lcom/miui/maml/data/StringFunctions$Fun;

.field public static final enum STR_TRIM:Lcom/miui/maml/data/StringFunctions$Fun;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 18
    new-instance v0, Lcom/miui/maml/data/StringFunctions$Fun;

    const-string v1, "INVALID"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/miui/maml/data/StringFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/maml/data/StringFunctions$Fun;->INVALID:Lcom/miui/maml/data/StringFunctions$Fun;

    .line 20
    new-instance v0, Lcom/miui/maml/data/StringFunctions$Fun;

    const-string v1, "STR_TOLOWER"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/miui/maml/data/StringFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/maml/data/StringFunctions$Fun;->STR_TOLOWER:Lcom/miui/maml/data/StringFunctions$Fun;

    .line 21
    new-instance v0, Lcom/miui/maml/data/StringFunctions$Fun;

    const-string v1, "STR_TOUPPER"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/miui/maml/data/StringFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/maml/data/StringFunctions$Fun;->STR_TOUPPER:Lcom/miui/maml/data/StringFunctions$Fun;

    .line 22
    new-instance v0, Lcom/miui/maml/data/StringFunctions$Fun;

    const-string v1, "STR_TRIM"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/miui/maml/data/StringFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/maml/data/StringFunctions$Fun;->STR_TRIM:Lcom/miui/maml/data/StringFunctions$Fun;

    .line 23
    new-instance v0, Lcom/miui/maml/data/StringFunctions$Fun;

    const-string v1, "STR_REPLACE"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/miui/maml/data/StringFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/maml/data/StringFunctions$Fun;->STR_REPLACE:Lcom/miui/maml/data/StringFunctions$Fun;

    .line 24
    new-instance v0, Lcom/miui/maml/data/StringFunctions$Fun;

    const-string v1, "STR_REPLACEALL"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/miui/maml/data/StringFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/maml/data/StringFunctions$Fun;->STR_REPLACEALL:Lcom/miui/maml/data/StringFunctions$Fun;

    .line 25
    new-instance v0, Lcom/miui/maml/data/StringFunctions$Fun;

    const-string v1, "STR_REPLACEFIRST"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/miui/maml/data/StringFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/maml/data/StringFunctions$Fun;->STR_REPLACEFIRST:Lcom/miui/maml/data/StringFunctions$Fun;

    .line 27
    new-instance v0, Lcom/miui/maml/data/StringFunctions$Fun;

    const-string v1, "STR_CONTAINS"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lcom/miui/maml/data/StringFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/maml/data/StringFunctions$Fun;->STR_CONTAINS:Lcom/miui/maml/data/StringFunctions$Fun;

    .line 28
    new-instance v0, Lcom/miui/maml/data/StringFunctions$Fun;

    const-string v1, "STR_STARTWITH"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Lcom/miui/maml/data/StringFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/maml/data/StringFunctions$Fun;->STR_STARTWITH:Lcom/miui/maml/data/StringFunctions$Fun;

    .line 29
    new-instance v0, Lcom/miui/maml/data/StringFunctions$Fun;

    const-string v1, "STR_ENDSWITH"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11}, Lcom/miui/maml/data/StringFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/maml/data/StringFunctions$Fun;->STR_ENDSWITH:Lcom/miui/maml/data/StringFunctions$Fun;

    .line 30
    new-instance v0, Lcom/miui/maml/data/StringFunctions$Fun;

    const-string v1, "STR_ISEMPTY"

    const/16 v12, 0xa

    invoke-direct {v0, v1, v12}, Lcom/miui/maml/data/StringFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/maml/data/StringFunctions$Fun;->STR_ISEMPTY:Lcom/miui/maml/data/StringFunctions$Fun;

    .line 31
    new-instance v0, Lcom/miui/maml/data/StringFunctions$Fun;

    const-string v1, "STR_MATCHES"

    const/16 v13, 0xb

    invoke-direct {v0, v1, v13}, Lcom/miui/maml/data/StringFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/maml/data/StringFunctions$Fun;->STR_MATCHES:Lcom/miui/maml/data/StringFunctions$Fun;

    .line 32
    new-instance v0, Lcom/miui/maml/data/StringFunctions$Fun;

    const-string v1, "STR_INDEXOF"

    const/16 v14, 0xc

    invoke-direct {v0, v1, v14}, Lcom/miui/maml/data/StringFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/maml/data/StringFunctions$Fun;->STR_INDEXOF:Lcom/miui/maml/data/StringFunctions$Fun;

    .line 33
    new-instance v0, Lcom/miui/maml/data/StringFunctions$Fun;

    const-string v1, "STR_LASTINDEXOF"

    const/16 v15, 0xd

    invoke-direct {v0, v1, v15}, Lcom/miui/maml/data/StringFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/maml/data/StringFunctions$Fun;->STR_LASTINDEXOF:Lcom/miui/maml/data/StringFunctions$Fun;

    const/16 v0, 0xe

    .line 17
    new-array v0, v0, [Lcom/miui/maml/data/StringFunctions$Fun;

    sget-object v1, Lcom/miui/maml/data/StringFunctions$Fun;->INVALID:Lcom/miui/maml/data/StringFunctions$Fun;

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/maml/data/StringFunctions$Fun;->STR_TOLOWER:Lcom/miui/maml/data/StringFunctions$Fun;

    aput-object v1, v0, v3

    sget-object v1, Lcom/miui/maml/data/StringFunctions$Fun;->STR_TOUPPER:Lcom/miui/maml/data/StringFunctions$Fun;

    aput-object v1, v0, v4

    sget-object v1, Lcom/miui/maml/data/StringFunctions$Fun;->STR_TRIM:Lcom/miui/maml/data/StringFunctions$Fun;

    aput-object v1, v0, v5

    sget-object v1, Lcom/miui/maml/data/StringFunctions$Fun;->STR_REPLACE:Lcom/miui/maml/data/StringFunctions$Fun;

    aput-object v1, v0, v6

    sget-object v1, Lcom/miui/maml/data/StringFunctions$Fun;->STR_REPLACEALL:Lcom/miui/maml/data/StringFunctions$Fun;

    aput-object v1, v0, v7

    sget-object v1, Lcom/miui/maml/data/StringFunctions$Fun;->STR_REPLACEFIRST:Lcom/miui/maml/data/StringFunctions$Fun;

    aput-object v1, v0, v8

    sget-object v1, Lcom/miui/maml/data/StringFunctions$Fun;->STR_CONTAINS:Lcom/miui/maml/data/StringFunctions$Fun;

    aput-object v1, v0, v9

    sget-object v1, Lcom/miui/maml/data/StringFunctions$Fun;->STR_STARTWITH:Lcom/miui/maml/data/StringFunctions$Fun;

    aput-object v1, v0, v10

    sget-object v1, Lcom/miui/maml/data/StringFunctions$Fun;->STR_ENDSWITH:Lcom/miui/maml/data/StringFunctions$Fun;

    aput-object v1, v0, v11

    sget-object v1, Lcom/miui/maml/data/StringFunctions$Fun;->STR_ISEMPTY:Lcom/miui/maml/data/StringFunctions$Fun;

    aput-object v1, v0, v12

    sget-object v1, Lcom/miui/maml/data/StringFunctions$Fun;->STR_MATCHES:Lcom/miui/maml/data/StringFunctions$Fun;

    aput-object v1, v0, v13

    sget-object v1, Lcom/miui/maml/data/StringFunctions$Fun;->STR_INDEXOF:Lcom/miui/maml/data/StringFunctions$Fun;

    aput-object v1, v0, v14

    sget-object v1, Lcom/miui/maml/data/StringFunctions$Fun;->STR_LASTINDEXOF:Lcom/miui/maml/data/StringFunctions$Fun;

    aput-object v1, v0, v15

    sput-object v0, Lcom/miui/maml/data/StringFunctions$Fun;->$VALUES:[Lcom/miui/maml/data/StringFunctions$Fun;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/maml/data/StringFunctions$Fun;
    .locals 1

    .line 17
    const-class v0, Lcom/miui/maml/data/StringFunctions$Fun;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/miui/maml/data/StringFunctions$Fun;

    return-object p0
.end method

.method public static values()[Lcom/miui/maml/data/StringFunctions$Fun;
    .locals 1

    .line 17
    sget-object v0, Lcom/miui/maml/data/StringFunctions$Fun;->$VALUES:[Lcom/miui/maml/data/StringFunctions$Fun;

    invoke-virtual {v0}, [Lcom/miui/maml/data/StringFunctions$Fun;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/maml/data/StringFunctions$Fun;

    return-object v0
.end method
