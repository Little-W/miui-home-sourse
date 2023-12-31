.class Lcom/miui/home/launcher/Launcher$28;
.super Landroid/database/ContentObserver;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/Launcher;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/Launcher;Landroid/os/Handler;)V
    .locals 0

    .line 4037
    iput-object p1, p0, Lcom/miui/home/launcher/Launcher$28;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onChange$0$Launcher$28(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 4044
    iget-object p0, p0, Lcom/miui/home/launcher/Launcher$28;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/miui/home/launcher/common/Utilities;->refreshScreenCellsLocked(Landroid/content/Context;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public synthetic lambda$onChange$1$Launcher$28(Ljava/lang/Object;)V
    .locals 0

    .line 4046
    iget-object p0, p0, Lcom/miui/home/launcher/Launcher$28;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isScreenCellsLocked()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Launcher;->onScreenCellLocked(Z)V

    return-void
.end method

.method public onChange(Z)V
    .locals 1

    .line 4040
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher$28;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->isDestroyed()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 4043
    :cond_0
    new-instance p1, Lcom/miui/home/launcher/-$$Lambda$Launcher$28$fxw5W3n6ut8QMr4BMNYTDVMMz44;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/-$$Lambda$Launcher$28$fxw5W3n6ut8QMr4BMNYTDVMMz44;-><init>(Lcom/miui/home/launcher/Launcher$28;)V

    new-instance v0, Lcom/miui/home/launcher/-$$Lambda$Launcher$28$q1a6ZwlNkShdKsR-aLh6BKEjX9k;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/-$$Lambda$Launcher$28$q1a6ZwlNkShdKsR-aLh6BKEjX9k;-><init>(Lcom/miui/home/launcher/Launcher$28;)V

    const/4 p0, 0x0

    invoke-static {p1, v0, p0}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->execParallel(Ljava/util/function/Function;Ljava/util/function/Consumer;Ljava/lang/Object;)V

    return-void
.end method
