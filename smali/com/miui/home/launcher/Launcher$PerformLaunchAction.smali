.class Lcom/miui/home/launcher/Launcher$PerformLaunchAction;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PerformLaunchAction"
.end annotation


# instance fields
.field mIntent:Landroid/content/Intent;

.field mTag:Ljava/lang/Object;

.field mView:Landroid/view/View;

.field final synthetic this$0:Lcom/miui/home/launcher/Launcher;


# direct methods
.method public constructor <init>(Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    .line 4677
    iput-object p1, p0, Lcom/miui/home/launcher/Launcher$PerformLaunchAction;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4678
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher$PerformLaunchAction;->reset()V

    return-void
.end method


# virtual methods
.method public launch(Landroid/content/Intent;Ljava/lang/Object;Landroid/view/View;Landroid/os/Handler;)V
    .locals 0

    .line 4682
    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/home/launcher/Launcher$PerformLaunchAction;->set(Landroid/content/Intent;Ljava/lang/Object;Landroid/view/View;)V

    .line 4683
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p2

    if-nez p2, :cond_0

    const-string p1, ""

    goto :goto_0

    .line 4684
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 4685
    :goto_0
    invoke-static {p1}, Lcom/miui/home/launcher/common/Utilities;->isAppIncompatible(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4686
    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Lcom/miui/home/launcher/ShortcutInfo;

    if-eqz p1, :cond_1

    .line 4688
    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/ShortcutInfo;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/ShortcutInfo;->getTitleStr(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lcom/miui/home/launcher/Launcher$PerformLaunchAction$1;

    invoke-direct {p2, p0}, Lcom/miui/home/launcher/Launcher$PerformLaunchAction$1;-><init>(Lcom/miui/home/launcher/Launcher$PerformLaunchAction;)V

    .line 4687
    invoke-static {p1, p2}, Lcom/miui/home/launcher/common/Utilities;->asyncGetIncompatibleDialogIntent(Ljava/lang/String;Lcom/miui/home/launcher/common/ResultRunnable;)V

    goto :goto_1

    .line 4696
    :cond_1
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher$PerformLaunchAction;->run()V

    :goto_1
    return-void
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    .line 4707
    iput-object v0, p0, Lcom/miui/home/launcher/Launcher$PerformLaunchAction;->mIntent:Landroid/content/Intent;

    .line 4708
    iput-object v0, p0, Lcom/miui/home/launcher/Launcher$PerformLaunchAction;->mTag:Ljava/lang/Object;

    .line 4709
    iput-object v0, p0, Lcom/miui/home/launcher/Launcher$PerformLaunchAction;->mView:Landroid/view/View;

    return-void
.end method

.method public run()V
    .locals 4

    .line 4713
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$PerformLaunchAction;->mIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 4714
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher$PerformLaunchAction;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {v1, v0}, Lcom/miui/home/launcher/Launcher;->access$6700(Lcom/miui/home/launcher/Launcher;Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4715
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$PerformLaunchAction;->this$0:Lcom/miui/home/launcher/Launcher;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/home/launcher/Launcher;->access$402(Lcom/miui/home/launcher/Launcher;Z)Z

    .line 4716
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$PerformLaunchAction;->this$0:Lcom/miui/home/launcher/Launcher;

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher$PerformLaunchAction;->mIntent:Landroid/content/Intent;

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher$PerformLaunchAction;->mTag:Ljava/lang/Object;

    iget-object v3, p0, Lcom/miui/home/launcher/Launcher$PerformLaunchAction;->mView:Landroid/view/View;

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/home/launcher/Launcher;->startActivity(Landroid/content/Intent;Ljava/lang/Object;Landroid/view/View;)V

    .line 4717
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher$PerformLaunchAction;->reset()V

    goto :goto_0

    .line 4720
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher$PerformLaunchAction;->reset()V

    :cond_1
    :goto_0
    return-void
.end method

.method public set(Landroid/content/Intent;Ljava/lang/Object;Landroid/view/View;)V
    .locals 0

    .line 4701
    iput-object p1, p0, Lcom/miui/home/launcher/Launcher$PerformLaunchAction;->mIntent:Landroid/content/Intent;

    .line 4702
    iput-object p2, p0, Lcom/miui/home/launcher/Launcher$PerformLaunchAction;->mTag:Ljava/lang/Object;

    .line 4703
    iput-object p3, p0, Lcom/miui/home/launcher/Launcher$PerformLaunchAction;->mView:Landroid/view/View;

    return-void
.end method
