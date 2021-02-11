.class Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$7;
.super Ljava/lang/Object;
.source "QuickstepAppTransitionManagerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;


# direct methods
.method constructor <init>(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;)V
    .locals 0

    .line 1164
    iput-object p1, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$7;->this$0:Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1167
    iget-object v0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$7;->this$0:Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;

    invoke-virtual {v0}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1169
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getOverviewBackground()Lcom/miui/home/recents/views/OverviewBackground;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/views/OverviewBackground;->setAlpha(F)V

    :cond_0
    return-void
.end method
