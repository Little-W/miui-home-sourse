.class Lcom/miui/home/launcher/Launcher$DealSoscEventRunnable;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DealSoscEventRunnable"
.end annotation


# instance fields
.field private mLastEvent:Lcom/miui/launcher/sosc/module/SoscEvent;

.field private mSoscEvent:Lcom/miui/launcher/sosc/module/SoscEvent;

.field private mView:Lcom/miui/launcher/sosc/interfaces/SoscingView;


# direct methods
.method constructor <init>(Lcom/miui/launcher/sosc/interfaces/SoscingView;Lcom/miui/launcher/sosc/module/SoscEvent;Lcom/miui/launcher/sosc/module/SoscEvent;)V
    .locals 0

    .line 10529
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10530
    iput-object p1, p0, Lcom/miui/home/launcher/Launcher$DealSoscEventRunnable;->mView:Lcom/miui/launcher/sosc/interfaces/SoscingView;

    .line 10531
    iput-object p2, p0, Lcom/miui/home/launcher/Launcher$DealSoscEventRunnable;->mLastEvent:Lcom/miui/launcher/sosc/module/SoscEvent;

    .line 10532
    iput-object p3, p0, Lcom/miui/home/launcher/Launcher$DealSoscEventRunnable;->mSoscEvent:Lcom/miui/launcher/sosc/module/SoscEvent;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 10537
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SOSC#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher$DealSoscEventRunnable;->mView:Lcom/miui/launcher/sosc/interfaces/SoscingView;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 10538
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$DealSoscEventRunnable;->mView:Lcom/miui/launcher/sosc/interfaces/SoscingView;

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher$DealSoscEventRunnable;->mLastEvent:Lcom/miui/launcher/sosc/module/SoscEvent;

    iget-object p0, p0, Lcom/miui/home/launcher/Launcher$DealSoscEventRunnable;->mSoscEvent:Lcom/miui/launcher/sosc/module/SoscEvent;

    invoke-interface {v0, v1, p0}, Lcom/miui/launcher/sosc/interfaces/SoscingView;->onSoscEvent(Lcom/miui/launcher/sosc/module/SoscEvent;Lcom/miui/launcher/sosc/module/SoscEvent;)V

    .line 10539
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method
