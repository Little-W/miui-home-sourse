.class public Lcom/market/sdk/utils/Region;
.super Ljava/lang/Object;
.source "Region.java"


# static fields
.field public static final ES:Ljava/lang/String; = "ES"

.field public static final ID:Ljava/lang/String; = "ID"

.field public static final IN:Ljava/lang/String; = "IN"

.field public static final RU:Ljava/lang/String; = "RU"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getRegion()Ljava/lang/String;
    .locals 3

    const-string v0, "CN"

    :try_start_0
    const-string v1, "ro.miui.region"

    .line 23
    invoke-static {v1, v0}, Lmiuix/core/util/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v1

    .line 25
    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MarketManager"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method
