.class Lcom/miui/home/recents/NavStubView$20;
.super Ljava/lang/Object;
.source "NavStubView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/recents/NavStubView;->performRecentsToHome()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/recents/NavStubView;


# direct methods
.method constructor <init>(Lcom/miui/home/recents/NavStubView;)V
    .locals 0

    .line 4332
    iput-object p1, p0, Lcom/miui/home/recents/NavStubView$20;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 4335
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView$20;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-virtual {v0}, Lcom/miui/home/recents/NavStubView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "toHome"

    const-string v2, "gesture"

    invoke-static {v0, v1, v2}, Lcom/miui/home/recents/util/StateBroadcastUtils;->sendStateBroadcast(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 4337
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView$20;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {v0}, Lcom/miui/home/recents/NavStubView;->access$3400(Lcom/miui/home/recents/NavStubView;)Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4338
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView$20;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {v0}, Lcom/miui/home/recents/NavStubView;->access$3400(Lcom/miui/home/recents/NavStubView;)Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getStateManager()Lcom/miui/home/launcher/LauncherStateManager;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/launcher/LauncherStateManager;->exitOverviewStateIfNeed(ZZ)V

    .line 4340
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView$20;->this$0:Lcom/miui/home/recents/NavStubView;

    const-string v1, "performRecentsToHome"

    invoke-static {v0, v1}, Lcom/miui/home/recents/NavStubView;->access$7400(Lcom/miui/home/recents/NavStubView;Ljava/lang/String;)V

    return-void
.end method
