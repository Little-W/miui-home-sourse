.class Lcom/miui/home/launcher/Launcher$LaunchAnimationTimeoutRunnable;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LaunchAnimationTimeoutRunnable"
.end annotation


# instance fields
.field private mRefs:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/home/launcher/Launcher;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/Launcher;)V
    .locals 1

    .line 10566
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10567
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/home/launcher/Launcher$LaunchAnimationTimeoutRunnable;->mRefs:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 10572
    iget-object p0, p0, Lcom/miui/home/launcher/Launcher$LaunchAnimationTimeoutRunnable;->mRefs:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/miui/home/launcher/Launcher;

    if-eqz p0, :cond_1

    .line 10574
    sget-boolean v0, Lcom/miui/home/launcher/LauncherSoscController;->SOSC_LOG_ENABLE:Z

    if-eqz v0, :cond_0

    const-string v0, "LauncherSoscController"

    const-string v1, "Shell transition animation, time out"

    .line 10575
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 10577
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->onLaunchActivityProcessEnd()V

    :cond_1
    return-void
.end method
