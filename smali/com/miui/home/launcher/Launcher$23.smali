.class Lcom/miui/home/launcher/Launcher$23;
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

    .line 3770
    iput-object p1, p0, Lcom/miui/home/launcher/Launcher$23;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method

.method public static synthetic lambda$onChange$0(Lcom/miui/home/launcher/Launcher$23;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 3774
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher$23;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/home/launcher/common/Utilities;->refreshScreenCellsLocked(Landroid/content/Context;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public static synthetic lambda$onChange$1(Lcom/miui/home/launcher/Launcher$23;Ljava/lang/Object;)V
    .locals 1

    .line 3776
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher$23;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isScreenCellsLocked()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/Launcher;->onScreenCellLocked(Z)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    .line 3773
    new-instance p1, Lcom/miui/home/launcher/-$$Lambda$Launcher$23$i4l04Y2xr6nERBso5A6kY1lwJKc;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/-$$Lambda$Launcher$23$i4l04Y2xr6nERBso5A6kY1lwJKc;-><init>(Lcom/miui/home/launcher/Launcher$23;)V

    new-instance v0, Lcom/miui/home/launcher/-$$Lambda$Launcher$23$EvAYm3h9Zs55NZVo2guu2Su8gtM;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/-$$Lambda$Launcher$23$EvAYm3h9Zs55NZVo2guu2Su8gtM;-><init>(Lcom/miui/home/launcher/Launcher$23;)V

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->execParallel(Ljava/util/function/Function;Ljava/util/function/Consumer;Ljava/lang/Object;)V

    return-void
.end method
