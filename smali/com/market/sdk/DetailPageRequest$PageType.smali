.class public final enum Lcom/market/sdk/DetailPageRequest$PageType;
.super Ljava/lang/Enum;
.source "DetailPageRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/market/sdk/DetailPageRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PageType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/market/sdk/DetailPageRequest$PageType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/market/sdk/DetailPageRequest$PageType;

.field public static final enum CARD:Lcom/market/sdk/DetailPageRequest$PageType;

.field public static final enum CARD_MINI:Lcom/market/sdk/DetailPageRequest$PageType;

.field public static final enum DETAILS:Lcom/market/sdk/DetailPageRequest$PageType;


# instance fields
.field private data:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 25
    new-instance v0, Lcom/market/sdk/DetailPageRequest$PageType;

    const-string v1, "DETAILS"

    const-string v2, "mimarket://details"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/market/sdk/DetailPageRequest$PageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/market/sdk/DetailPageRequest$PageType;->DETAILS:Lcom/market/sdk/DetailPageRequest$PageType;

    .line 26
    new-instance v0, Lcom/market/sdk/DetailPageRequest$PageType;

    const-string v1, "CARD"

    const-string v2, "mimarket://details/detailcard"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2}, Lcom/market/sdk/DetailPageRequest$PageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/market/sdk/DetailPageRequest$PageType;->CARD:Lcom/market/sdk/DetailPageRequest$PageType;

    .line 27
    new-instance v0, Lcom/market/sdk/DetailPageRequest$PageType;

    const-string v1, "CARD_MINI"

    const-string v2, "mimarket://details/detailmini"

    const/4 v5, 0x2

    invoke-direct {v0, v1, v5, v2}, Lcom/market/sdk/DetailPageRequest$PageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/market/sdk/DetailPageRequest$PageType;->CARD_MINI:Lcom/market/sdk/DetailPageRequest$PageType;

    const/4 v0, 0x3

    .line 24
    new-array v0, v0, [Lcom/market/sdk/DetailPageRequest$PageType;

    sget-object v1, Lcom/market/sdk/DetailPageRequest$PageType;->DETAILS:Lcom/market/sdk/DetailPageRequest$PageType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/market/sdk/DetailPageRequest$PageType;->CARD:Lcom/market/sdk/DetailPageRequest$PageType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/market/sdk/DetailPageRequest$PageType;->CARD_MINI:Lcom/market/sdk/DetailPageRequest$PageType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/market/sdk/DetailPageRequest$PageType;->$VALUES:[Lcom/market/sdk/DetailPageRequest$PageType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 32
    iput-object p3, p0, Lcom/market/sdk/DetailPageRequest$PageType;->data:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/market/sdk/DetailPageRequest$PageType;)Ljava/lang/String;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/market/sdk/DetailPageRequest$PageType;->data:Ljava/lang/String;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/market/sdk/DetailPageRequest$PageType;
    .locals 1

    .line 24
    const-class v0, Lcom/market/sdk/DetailPageRequest$PageType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/market/sdk/DetailPageRequest$PageType;

    return-object p0
.end method

.method public static values()[Lcom/market/sdk/DetailPageRequest$PageType;
    .locals 1

    .line 24
    sget-object v0, Lcom/market/sdk/DetailPageRequest$PageType;->$VALUES:[Lcom/market/sdk/DetailPageRequest$PageType;

    invoke-virtual {v0}, [Lcom/market/sdk/DetailPageRequest$PageType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/market/sdk/DetailPageRequest$PageType;

    return-object v0
.end method
