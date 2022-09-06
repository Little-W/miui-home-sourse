.class Lcom/market/sdk/utils/Utils$1;
.super Lcom/market/sdk/Singleton;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/market/sdk/utils/Utils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/market/sdk/Singleton<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/market/sdk/Singleton;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic create()Ljava/lang/Object;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lcom/market/sdk/utils/Utils$1;->create()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected create()Ljava/lang/String;
    .locals 1

    .line 34
    invoke-static {}, Lcom/market/sdk/utils/Client;->isMiui()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 35
    invoke-static {}, Lcom/market/sdk/utils/Client;->isInternationalMiui()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    const-string v0, "com.xiaomi.market"

    :goto_0
    return-object v0

    :cond_1
    const-string v0, ""

    return-object v0
.end method
