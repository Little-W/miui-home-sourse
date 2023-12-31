.class public Lcom/miui/home/launcher/common/MemoryUtils;
.super Ljava/lang/Object;
.source "MemoryUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/common/MemoryUtils$GcIdler;
    }
.end annotation


# static fields
.field private static final mGcIdler:Lcom/miui/home/launcher/common/MemoryUtils$GcIdler;

.field private static mTrimMemoryRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 19
    new-instance v0, Lcom/miui/home/launcher/common/MemoryUtils$GcIdler;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/home/launcher/common/MemoryUtils$GcIdler;-><init>(Lcom/miui/home/launcher/common/MemoryUtils$1;)V

    sput-object v0, Lcom/miui/home/launcher/common/MemoryUtils;->mGcIdler:Lcom/miui/home/launcher/common/MemoryUtils$GcIdler;

    .line 27
    new-instance v0, Lcom/miui/home/launcher/common/MemoryUtils$1;

    invoke-direct {v0}, Lcom/miui/home/launcher/common/MemoryUtils$1;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/common/MemoryUtils;->mTrimMemoryRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public static forceGc()V
    .locals 0

    .line 55
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 56
    invoke-static {}, Ljava/lang/System;->runFinalization()V

    .line 57
    invoke-static {}, Ljava/lang/System;->gc()V

    return-void
.end method

.method public static getTrimMemoryRunnableForHomeLaunch()Ljava/lang/Runnable;
    .locals 1

    .line 61
    sget-object v0, Lcom/miui/home/launcher/common/-$$Lambda$MemoryUtils$btnPscObeVzBC7bgOwbSZ3bkwms;->INSTANCE:Lcom/miui/home/launcher/common/-$$Lambda$MemoryUtils$btnPscObeVzBC7bgOwbSZ3bkwms;

    return-object v0
.end method

.method static synthetic lambda$getTrimMemoryRunnableForHomeLaunch$0()V
    .locals 2

    .line 62
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    const-string v1, "MemoryUtils_Boot.opt"

    if-eqz v0, :cond_0

    .line 64
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->hasBeenResumed()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Call Explicit GC"

    .line 65
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    invoke-static {}, Lcom/miui/home/launcher/common/MemoryUtils;->forceGc()V

    goto :goto_0

    :cond_0
    const-string v0, "Home has been resumed, Do not call Explicit GC"

    .line 68
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static removeTrimMemoryInSubThreadCallbacks()V
    .locals 1

    .line 45
    sget-object v0, Lcom/miui/home/launcher/common/MemoryUtils;->mTrimMemoryRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/miui/home/launcher/common/BackgroundThread;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static scheduleGcIdler()V
    .locals 1

    .line 74
    sget-object v0, Lcom/miui/home/launcher/common/MemoryUtils;->mGcIdler:Lcom/miui/home/launcher/common/MemoryUtils$GcIdler;

    invoke-virtual {v0}, Lcom/miui/home/launcher/common/MemoryUtils$GcIdler;->scheduleGcIdler()V

    return-void
.end method

.method public static trimMemoryInSubThreadDelayed(J)V
    .locals 1

    .line 40
    invoke-static {}, Lcom/miui/home/launcher/common/MemoryUtils;->removeTrimMemoryInSubThreadCallbacks()V

    .line 41
    sget-object v0, Lcom/miui/home/launcher/common/MemoryUtils;->mTrimMemoryRunnable:Ljava/lang/Runnable;

    invoke-static {v0, p0, p1}, Lcom/miui/home/launcher/common/BackgroundThread;->postDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public static unscheduleGcIdler()V
    .locals 1

    .line 78
    sget-object v0, Lcom/miui/home/launcher/common/MemoryUtils;->mGcIdler:Lcom/miui/home/launcher/common/MemoryUtils$GcIdler;

    invoke-virtual {v0}, Lcom/miui/home/launcher/common/MemoryUtils$GcIdler;->unscheduleGcIdler()V

    return-void
.end method
