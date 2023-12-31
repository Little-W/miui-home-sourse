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

    .line 5237
    iput-object p1, p0, Lcom/miui/home/launcher/Launcher$PerformLaunchAction;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5238
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher$PerformLaunchAction;->reset()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$run$0$Launcher$PerformLaunchAction()V
    .locals 4

    .line 5270
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$PerformLaunchAction;->this$0:Lcom/miui/home/launcher/Launcher;

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher$PerformLaunchAction;->mIntent:Landroid/content/Intent;

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher$PerformLaunchAction;->mTag:Ljava/lang/Object;

    iget-object v3, p0, Lcom/miui/home/launcher/Launcher$PerformLaunchAction;->mView:Landroid/view/View;

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/home/launcher/Launcher;->startActivity(Landroid/content/Intent;Ljava/lang/Object;Landroid/view/View;)V

    .line 5271
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher$PerformLaunchAction;->reset()V

    return-void
.end method

.method public synthetic lambda$run$1$Launcher$PerformLaunchAction()V
    .locals 2

    .line 5269
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    new-instance v1, Lcom/miui/home/launcher/-$$Lambda$Launcher$PerformLaunchAction$kJzuQ499CLk6N_13aA9ObHx3JQ4;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/-$$Lambda$Launcher$PerformLaunchAction$kJzuQ499CLk6N_13aA9ObHx3JQ4;-><init>(Lcom/miui/home/launcher/Launcher$PerformLaunchAction;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public launch(Landroid/content/Intent;Ljava/lang/Object;Landroid/view/View;Landroid/os/Handler;)V
    .locals 0

    .line 5242
    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/home/launcher/Launcher$PerformLaunchAction;->set(Landroid/content/Intent;Ljava/lang/Object;Landroid/view/View;)V

    .line 5243
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p2

    if-nez p2, :cond_0

    goto :goto_0

    .line 5244
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 5245
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher$PerformLaunchAction;->run()V

    return-void
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    .line 5255
    iput-object v0, p0, Lcom/miui/home/launcher/Launcher$PerformLaunchAction;->mIntent:Landroid/content/Intent;

    .line 5256
    iput-object v0, p0, Lcom/miui/home/launcher/Launcher$PerformLaunchAction;->mTag:Ljava/lang/Object;

    .line 5257
    iput-object v0, p0, Lcom/miui/home/launcher/Launcher$PerformLaunchAction;->mView:Landroid/view/View;

    return-void
.end method

.method public run()V
    .locals 4

    .line 5262
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$PerformLaunchAction;->mIntent:Landroid/content/Intent;

    if-eqz v0, :cond_1

    .line 5263
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher$PerformLaunchAction;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {v1, v0}, Lcom/miui/home/launcher/Launcher;->access$6600(Lcom/miui/home/launcher/Launcher;Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5264
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$PerformLaunchAction;->this$0:Lcom/miui/home/launcher/Launcher;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/home/launcher/Launcher;->access$402(Lcom/miui/home/launcher/Launcher;Z)Z

    .line 5265
    invoke-static {}, Lcom/android/systemui/shared/recents/utilities/Utilities;->atLeastAndroidU()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5266
    invoke-static {}, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->getInstance()Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->mainAnimNoFinishClear()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5267
    invoke-static {}, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->getInstance()Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;

    move-result-object v0

    const/4 v2, 0x0

    new-instance v3, Lcom/miui/home/launcher/-$$Lambda$Launcher$PerformLaunchAction$sHuZglZebNZuYt7ZV7E5GoH8JxY;

    invoke-direct {v3, p0}, Lcom/miui/home/launcher/-$$Lambda$Launcher$PerformLaunchAction$sHuZglZebNZuYt7ZV7E5GoH8JxY;-><init>(Lcom/miui/home/launcher/Launcher$PerformLaunchAction;)V

    .line 5268
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->executeFinishCallback(ZLandroid/window/WindowContainerTransaction;Lcom/android/systemui/shared/recents/utilities/ShellTransitionCallback;)V

    return-void

    .line 5277
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$PerformLaunchAction;->this$0:Lcom/miui/home/launcher/Launcher;

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher$PerformLaunchAction;->mIntent:Landroid/content/Intent;

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher$PerformLaunchAction;->mTag:Ljava/lang/Object;

    iget-object v3, p0, Lcom/miui/home/launcher/Launcher$PerformLaunchAction;->mView:Landroid/view/View;

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/home/launcher/Launcher;->startActivity(Landroid/content/Intent;Ljava/lang/Object;Landroid/view/View;)V

    .line 5278
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher$PerformLaunchAction;->reset()V

    goto :goto_0

    .line 5281
    :cond_1
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher$PerformLaunchAction;->reset()V

    :cond_2
    :goto_0
    return-void
.end method

.method public set(Landroid/content/Intent;Ljava/lang/Object;Landroid/view/View;)V
    .locals 0

    .line 5249
    iput-object p1, p0, Lcom/miui/home/launcher/Launcher$PerformLaunchAction;->mIntent:Landroid/content/Intent;

    .line 5250
    iput-object p2, p0, Lcom/miui/home/launcher/Launcher$PerformLaunchAction;->mTag:Ljava/lang/Object;

    .line 5251
    iput-object p3, p0, Lcom/miui/home/launcher/Launcher$PerformLaunchAction;->mView:Landroid/view/View;

    return-void
.end method
