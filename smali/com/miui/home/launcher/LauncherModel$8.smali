.class Lcom/miui/home/launcher/LauncherModel$8;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/LauncherModel;->runOnWorkerThreadAndCheckForReady(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/LauncherModel;

.field final synthetic val$launcher:Lcom/miui/home/launcher/Launcher;

.field final synthetic val$runnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/LauncherModel;Lcom/miui/home/launcher/Launcher;Ljava/lang/Runnable;)V
    .locals 0

    .line 892
    iput-object p1, p0, Lcom/miui/home/launcher/LauncherModel$8;->this$0:Lcom/miui/home/launcher/LauncherModel;

    iput-object p2, p0, Lcom/miui/home/launcher/LauncherModel$8;->val$launcher:Lcom/miui/home/launcher/Launcher;

    iput-object p3, p0, Lcom/miui/home/launcher/LauncherModel$8;->val$runnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 894
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherModel$8;->val$launcher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 897
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherModel$8;->val$launcher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isWorkspaceLoading()Z

    move-result v0

    if-eqz v0, :cond_1

    const-wide/16 v0, 0x64

    .line 898
    invoke-static {p0, v0, v1}, Lcom/miui/home/launcher/LauncherModel;->access$900(Ljava/lang/Runnable;J)V

    return-void

    .line 901
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherModel$8;->val$runnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
