.class Lcom/mi/globallauncher/BranchClientImplement$1;
.super Ljava/lang/Object;
.source "BranchClientImplement.java"

# interfaces
.implements Lcom/mi/globallauncher/branchInterface/PrivacyInitCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mi/globallauncher/BranchClientImplement;->internationalInitMethod(Lcom/miui/home/launcher/Application;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mi/globallauncher/BranchClientImplement;


# direct methods
.method constructor <init>(Lcom/mi/globallauncher/BranchClientImplement;)V
    .locals 0

    .line 171
    iput-object p1, p0, Lcom/mi/globallauncher/BranchClientImplement$1;->this$0:Lcom/mi/globallauncher/BranchClientImplement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$onConfigSucceed$0()V
    .locals 2

    .line 180
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 181
    invoke-static {}, Lcom/mi/globallauncher/BranchClientImplement;->getInstance()Lcom/mi/globallauncher/BranchClientImplement;

    move-result-object v0

    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mi/globallauncher/BranchClientImplement;->updateDrawerModeForCloudConfig(Lcom/miui/home/launcher/Launcher;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public isDrawerMode()Z
    .locals 1

    .line 174
    invoke-static {}, Lcom/miui/home/launcher/allapps/LauncherModeController;->isDrawerMode()Z

    move-result v0

    return v0
.end method

.method public onConfigFailed()V
    .locals 2

    .line 188
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 189
    invoke-static {}, Lcom/mi/globallauncher/BranchClientImplement;->getInstance()Lcom/mi/globallauncher/BranchClientImplement;

    move-result-object v0

    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mi/globallauncher/BranchClientImplement;->updateAllAppsIndicator(Lcom/miui/home/launcher/Launcher;)V

    :cond_0
    return-void
.end method

.method public onConfigSucceed()V
    .locals 3

    .line 179
    sget-object v0, Lcom/mi/globallauncher/-$$Lambda$BranchClientImplement$1$xTfXkH2EkxXjjnn5wXO_6TzAN1Q;->INSTANCE:Lcom/mi/globallauncher/-$$Lambda$BranchClientImplement$1$xTfXkH2EkxXjjnn5wXO_6TzAN1Q;

    const-wide/16 v1, 0x1388

    invoke-static {v0, v1, v2}, Lcom/miui/home/launcher/common/Utilities;->useViewToPostDelay(Ljava/lang/Runnable;J)V

    return-void
.end method
