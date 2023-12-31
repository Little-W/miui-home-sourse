.class public final Lcom/miui/home/recents/MiuiSynergyListener;
.super Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$IRemoteDeviceListener;
.source "MiuiSynergyListener.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/recents/MiuiSynergyListener$WorldCirculateListener;
    }
.end annotation


# instance fields
.field private final mWorldCirculateListener:Lcom/miui/home/recents/MiuiSynergyListener$WorldCirculateListener;

.field private final tag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/miui/home/recents/MiuiSynergyListener$WorldCirculateListener;)V
    .locals 1

    const-string v0, "mWorldCirculateListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$IRemoteDeviceListener;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/MiuiSynergyListener;->mWorldCirculateListener:Lcom/miui/home/recents/MiuiSynergyListener$WorldCirculateListener;

    const-string p1, "MiuiSynergyListener"

    .line 7
    iput-object p1, p0, Lcom/miui/home/recents/MiuiSynergyListener;->tag:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onFound(Ljava/lang/String;)V
    .locals 2

    const-string v0, "deviceId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    iget-object p0, p0, Lcom/miui/home/recents/MiuiSynergyListener;->tag:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onFound="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onLost(Ljava/lang/String;)V
    .locals 2

    const-string v0, "deviceId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    iget-object p0, p0, Lcom/miui/home/recents/MiuiSynergyListener;->tag:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onLost="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onUpdate(Ljava/lang/String;)V
    .locals 3

    const-string v0, "deviceId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    iget-object v0, p0, Lcom/miui/home/recents/MiuiSynergyListener;->tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUpdate="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    iget-object p0, p0, Lcom/miui/home/recents/MiuiSynergyListener;->mWorldCirculateListener:Lcom/miui/home/recents/MiuiSynergyListener$WorldCirculateListener;

    invoke-interface {p0}, Lcom/miui/home/recents/MiuiSynergyListener$WorldCirculateListener;->onUpdate()V

    return-void
.end method
