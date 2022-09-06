.class public Lcom/miui/home/launcher/common/LauncherPreconditions;
.super Lcom/miui/home/library/utils/Preconditions;
.source "LauncherPreconditions.java"


# direct methods
.method public static assertWorkerThread()V
    .locals 1

    .line 9
    invoke-static {}, Lcom/miui/home/launcher/LauncherModel;->getWorkerLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/common/LauncherPreconditions;->isSameLooper(Landroid/os/Looper;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 10
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
