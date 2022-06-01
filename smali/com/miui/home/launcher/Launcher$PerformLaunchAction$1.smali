.class Lcom/miui/home/launcher/Launcher$PerformLaunchAction$1;
.super Lcom/miui/home/launcher/common/ResultRunnable;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/Launcher$PerformLaunchAction;->launch(Landroid/content/Intent;Ljava/lang/Object;Landroid/view/View;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/home/launcher/common/ResultRunnable<",
        "Landroid/content/Intent;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/home/launcher/Launcher$PerformLaunchAction;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/Launcher$PerformLaunchAction;)V
    .locals 0

    .line 4827
    iput-object p1, p0, Lcom/miui/home/launcher/Launcher$PerformLaunchAction$1;->this$1:Lcom/miui/home/launcher/Launcher$PerformLaunchAction;

    invoke-direct {p0}, Lcom/miui/home/launcher/common/ResultRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 4830
    invoke-super {p0}, Lcom/miui/home/launcher/common/ResultRunnable;->run()V

    .line 4831
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$PerformLaunchAction$1;->this$1:Lcom/miui/home/launcher/Launcher$PerformLaunchAction;

    iget-object v0, v0, Lcom/miui/home/launcher/Launcher$PerformLaunchAction;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher$PerformLaunchAction$1;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    const/16 v2, 0x3eb

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/launcher/Launcher;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
