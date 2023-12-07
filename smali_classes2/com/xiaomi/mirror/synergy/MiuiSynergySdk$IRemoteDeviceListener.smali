.class public abstract Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$IRemoteDeviceListener;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "IRemoteDeviceListener"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public enableHistoryListener()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getListenManufacturer()Ljava/lang/String;
    .locals 0

    const-string p0, "xiaomi"

    return-object p0
.end method

.method public abstract onFound(Ljava/lang/String;)V
.end method

.method public abstract onLost(Ljava/lang/String;)V
.end method

.method public abstract onUpdate(Ljava/lang/String;)V
.end method
