.class public Lcom/market/sdk/utils/Region;
.super Ljava/lang/Object;
.source "Region.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/market/sdk/utils/Region$_lancet;
    }
.end annotation


# static fields
.field public static final ES:Ljava/lang/String; = "ES"

.field public static final ID:Ljava/lang/String; = "ID"

.field public static final IN:Ljava/lang/String; = "IN"

.field public static final RU:Ljava/lang/String; = "RU"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getRegion()Ljava/lang/String;
    .locals 2

    :try_start_0
    const-string v0, "ro.miui.region"

    const-string v1, "CN"

    .line 22
    invoke-static {v0, v1}, Lmiui/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "MarketManager"

    .line 24
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/market/sdk/utils/Region$_lancet;->com_miui_home_launcher_aop_LogHooker_ad(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "CN"

    return-object v0
.end method
