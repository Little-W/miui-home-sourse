.class public Lcom/miui/home/launcher/LauncherSoscController$SoscChangeRunnable;
.super Ljava/lang/Object;
.source "LauncherSoscController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/LauncherSoscController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SoscChangeRunnable"
.end annotation


# instance fields
.field private mBulletEvent:Lcom/miui/launcher/sosc/module/SoscEvent;

.field private mDoCancel:Z

.field private final mRefs:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/home/launcher/LauncherSoscController;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/miui/home/launcher/LauncherSoscController;Lcom/miui/launcher/sosc/module/SoscEvent;Z)V
    .locals 1

    .line 440
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 441
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/home/launcher/LauncherSoscController$SoscChangeRunnable;->mRefs:Ljava/lang/ref/WeakReference;

    .line 442
    new-instance v0, Lcom/miui/launcher/sosc/module/SoscEvent;

    invoke-direct {v0, p2}, Lcom/miui/launcher/sosc/module/SoscEvent;-><init>(Lcom/miui/launcher/sosc/module/SoscEvent;)V

    iput-object v0, p0, Lcom/miui/home/launcher/LauncherSoscController$SoscChangeRunnable;->mBulletEvent:Lcom/miui/launcher/sosc/module/SoscEvent;

    .line 443
    iput-boolean p3, p0, Lcom/miui/home/launcher/LauncherSoscController$SoscChangeRunnable;->mDoCancel:Z

    .line 444
    iget-boolean p3, p0, Lcom/miui/home/launcher/LauncherSoscController$SoscChangeRunnable;->mDoCancel:Z

    if-eqz p3, :cond_0

    .line 445
    invoke-virtual {p1}, Lcom/miui/home/launcher/LauncherSoscController;->stopSoscingEventDispatching()V

    .line 447
    :cond_0
    invoke-static {p1}, Lcom/miui/home/launcher/LauncherSoscController;->access$000(Lcom/miui/home/launcher/LauncherSoscController;)Lcom/miui/launcher/sosc/module/SoscEvent;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/miui/launcher/sosc/module/SoscEvent;->setTo(Lcom/miui/launcher/sosc/module/SoscEvent;)V

    .line 448
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherSoscController$SoscChangeRunnable;->mBulletEvent:Lcom/miui/launcher/sosc/module/SoscEvent;

    invoke-static {p1, p0}, Lcom/miui/home/launcher/LauncherSoscController;->access$102(Lcom/miui/home/launcher/LauncherSoscController;Lcom/miui/launcher/sosc/module/SoscEvent;)Lcom/miui/launcher/sosc/module/SoscEvent;

    .line 449
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p0

    invoke-static {p0}, Lcom/miui/home/launcher/DeviceConfig;->updateRotate(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 454
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherSoscController$SoscChangeRunnable;->mRefs:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/LauncherSoscController;

    if-eqz v0, :cond_1

    .line 456
    iget-boolean v1, p0, Lcom/miui/home/launcher/LauncherSoscController$SoscChangeRunnable;->mDoCancel:Z

    if-eqz v1, :cond_0

    .line 457
    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherSoscController;->cancelSoscingAnim()V

    .line 459
    :cond_0
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherSoscController$SoscChangeRunnable;->mBulletEvent:Lcom/miui/launcher/sosc/module/SoscEvent;

    invoke-static {v0, p0}, Lcom/miui/home/launcher/LauncherSoscController;->access$200(Lcom/miui/home/launcher/LauncherSoscController;Lcom/miui/launcher/sosc/module/SoscEvent;)V

    :cond_1
    return-void
.end method
