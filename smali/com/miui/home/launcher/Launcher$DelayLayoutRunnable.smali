.class Lcom/miui/home/launcher/Launcher$DelayLayoutRunnable;
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
    name = "DelayLayoutRunnable"
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

.field private mSoscEvent:Lcom/miui/launcher/sosc/module/SoscEvent;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/Launcher;Lcom/miui/launcher/sosc/module/SoscEvent;)V
    .locals 1

    .line 10537
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10538
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/home/launcher/Launcher$DelayLayoutRunnable;->mRefs:Ljava/lang/ref/WeakReference;

    .line 10539
    iput-object p2, p0, Lcom/miui/home/launcher/Launcher$DelayLayoutRunnable;->mSoscEvent:Lcom/miui/launcher/sosc/module/SoscEvent;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 10544
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$DelayLayoutRunnable;->mRefs:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/Launcher;

    if-eqz v0, :cond_0

    const-string v1, "SOSC#DelayLayout"

    .line 10546
    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 10547
    iget-object p0, p0, Lcom/miui/home/launcher/Launcher$DelayLayoutRunnable;->mSoscEvent:Lcom/miui/launcher/sosc/module/SoscEvent;

    invoke-static {v0, p0}, Lcom/miui/home/launcher/Launcher;->access$900(Lcom/miui/home/launcher/Launcher;Lcom/miui/launcher/sosc/module/SoscEvent;)V

    .line 10548
    invoke-static {v0}, Lcom/miui/home/launcher/Launcher;->access$11200(Lcom/miui/home/launcher/Launcher;)V

    .line 10549
    invoke-static {}, Landroid/os/Trace;->endSection()V

    :cond_0
    return-void
.end method
