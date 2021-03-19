.class public final enum Lcom/market/sdk/ServerType;
.super Ljava/lang/Enum;
.source "ServerType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/market/sdk/ServerType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/market/sdk/ServerType;

.field public static final enum PREVIEW:Lcom/market/sdk/ServerType;

.field public static final enum PRODUCT:Lcom/market/sdk/ServerType;

.field public static final enum STAGING:Lcom/market/sdk/ServerType;


# instance fields
.field private baseUrl:Ljava/lang/String;

.field private globalBaseUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 8
    new-instance v0, Lcom/market/sdk/ServerType;

    const-string v1, "PRODUCT"

    const-string v2, "https://api.developer.xiaomi.com/autoupdate/"

    const-string v3, "https://global.developer.xiaomi.com/autoupdate/"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/market/sdk/ServerType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/market/sdk/ServerType;->PRODUCT:Lcom/market/sdk/ServerType;

    .line 9
    new-instance v0, Lcom/market/sdk/ServerType;

    const-string v1, "STAGING"

    const-string v2, "http://staging.api.developer.appstore.pt.xiaomi.com/autoupdate/"

    const-string v3, "http://global.staging.developer.appstore.pt.xiaomi.com/autoupdate/"

    const/4 v5, 0x1

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/market/sdk/ServerType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/market/sdk/ServerType;->STAGING:Lcom/market/sdk/ServerType;

    .line 10
    new-instance v0, Lcom/market/sdk/ServerType;

    const-string v1, "PREVIEW"

    const-string v2, "http://preview.api.developer.appstore.pt.xiaomi.com/autoupdate/"

    const-string v3, "http://global.preview.developer.appstore.pt.xiaomi.com/autoupdate/"

    const/4 v6, 0x2

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/market/sdk/ServerType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/market/sdk/ServerType;->PREVIEW:Lcom/market/sdk/ServerType;

    const/4 v0, 0x3

    .line 7
    new-array v0, v0, [Lcom/market/sdk/ServerType;

    sget-object v1, Lcom/market/sdk/ServerType;->PRODUCT:Lcom/market/sdk/ServerType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/market/sdk/ServerType;->STAGING:Lcom/market/sdk/ServerType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/market/sdk/ServerType;->PREVIEW:Lcom/market/sdk/ServerType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/market/sdk/ServerType;->$VALUES:[Lcom/market/sdk/ServerType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 16
    iput-object p3, p0, Lcom/market/sdk/ServerType;->baseUrl:Ljava/lang/String;

    .line 17
    iput-object p4, p0, Lcom/market/sdk/ServerType;->globalBaseUrl:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/market/sdk/ServerType;
    .locals 1

    .line 7
    const-class v0, Lcom/market/sdk/ServerType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/market/sdk/ServerType;

    return-object p0
.end method

.method public static values()[Lcom/market/sdk/ServerType;
    .locals 1

    .line 7
    sget-object v0, Lcom/market/sdk/ServerType;->$VALUES:[Lcom/market/sdk/ServerType;

    invoke-virtual {v0}, [Lcom/market/sdk/ServerType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/market/sdk/ServerType;

    return-object v0
.end method


# virtual methods
.method public getBaseUrl()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/market/sdk/ServerType;->baseUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getGlobalBaseUrl()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/market/sdk/ServerType;->globalBaseUrl:Ljava/lang/String;

    return-object v0
.end method
