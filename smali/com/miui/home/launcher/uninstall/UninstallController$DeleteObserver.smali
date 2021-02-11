.class Lcom/miui/home/launcher/uninstall/UninstallController$DeleteObserver;
.super Lcom/miui/launcher/common/PackageDeleteObserverDelegate;
.source "UninstallController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/uninstall/UninstallController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeleteObserver"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/uninstall/UninstallController$DeleteObserver$_lancet;
    }
.end annotation


# instance fields
.field private mInfo:Lcom/miui/home/launcher/ShortcutInfo;

.field final synthetic this$0:Lcom/miui/home/launcher/uninstall/UninstallController;


# direct methods
.method public constructor <init>(Lcom/miui/home/launcher/uninstall/UninstallController;Lcom/miui/home/launcher/ShortcutInfo;)V
    .locals 2

    .line 93
    iput-object p1, p0, Lcom/miui/home/launcher/uninstall/UninstallController$DeleteObserver;->this$0:Lcom/miui/home/launcher/uninstall/UninstallController;

    invoke-direct {p0}, Lcom/miui/launcher/common/PackageDeleteObserverDelegate;-><init>()V

    .line 94
    iput-object p2, p0, Lcom/miui/home/launcher/uninstall/UninstallController$DeleteObserver;->mInfo:Lcom/miui/home/launcher/ShortcutInfo;

    const-string p1, "UninstallController"

    const-string p2, "delete apps icon before delete success"

    .line 95
    invoke-static {p1, p2}, Lcom/miui/home/launcher/uninstall/UninstallController$DeleteObserver$_lancet;->com_miui_home_launcher_aop_LogHooker_ad(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    invoke-static {}, Lcom/miui/home/launcher/LauncherApplication;->getModel()Lcom/miui/home/launcher/LauncherModel;

    move-result-object p1

    new-instance p2, Lcom/miui/home/launcher/model/PackageRemoveTask;

    iget-object v0, p0, Lcom/miui/home/launcher/uninstall/UninstallController$DeleteObserver;->mInfo:Lcom/miui/home/launcher/ShortcutInfo;

    .line 97
    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/uninstall/UninstallController$DeleteObserver;->mInfo:Lcom/miui/home/launcher/ShortcutInfo;

    invoke-virtual {v1}, Lcom/miui/home/launcher/ShortcutInfo;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    invoke-direct {p2, v0, v1}, Lcom/miui/home/launcher/model/PackageRemoveTask;-><init>(Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 96
    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/LauncherModel;->enqueueModelUpdateTask(Lcom/miui/home/launcher/LauncherModel$ModelUpdateTask;)V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method


# virtual methods
.method public onPackageDeleted(Ljava/lang/String;I)V
    .locals 2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 103
    iget-object p2, p0, Lcom/miui/home/launcher/uninstall/UninstallController$DeleteObserver;->this$0:Lcom/miui/home/launcher/uninstall/UninstallController;

    invoke-static {p2}, Lcom/miui/home/launcher/uninstall/UninstallController;->access$000(Lcom/miui/home/launcher/uninstall/UninstallController;)Lcom/miui/home/launcher/Launcher;

    move-result-object p2

    iget-object v0, p0, Lcom/miui/home/launcher/uninstall/UninstallController$DeleteObserver;->mInfo:Lcom/miui/home/launcher/ShortcutInfo;

    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutInfo;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    invoke-static {p2, p1, v0}, Lcom/miui/home/launcher/LauncherSettings;->deletePackage(Landroid/content/Context;Ljava/lang/String;Landroid/os/UserHandle;)V

    goto :goto_0

    :cond_0
    const-string p2, "UninstallController"

    const-string v0, "delete failed and restore apps icon"

    .line 105
    invoke-static {p2, v0}, Lcom/miui/home/launcher/uninstall/UninstallController$DeleteObserver$_lancet;->com_miui_home_launcher_aop_LogHooker_ad(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    invoke-static {}, Lcom/miui/home/launcher/LauncherApplication;->getModel()Lcom/miui/home/launcher/LauncherModel;

    move-result-object p2

    new-instance v0, Lcom/miui/home/launcher/model/PackageAddTask;

    iget-object v1, p0, Lcom/miui/home/launcher/uninstall/UninstallController$DeleteObserver;->mInfo:Lcom/miui/home/launcher/ShortcutInfo;

    .line 107
    invoke-virtual {v1}, Lcom/miui/home/launcher/ShortcutInfo;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/miui/home/launcher/model/PackageAddTask;-><init>(Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 106
    invoke-virtual {p2, v0}, Lcom/miui/home/launcher/LauncherModel;->enqueueModelUpdateTask(Lcom/miui/home/launcher/LauncherModel$ModelUpdateTask;)V

    .line 108
    iget-object p1, p0, Lcom/miui/home/launcher/uninstall/UninstallController$DeleteObserver;->this$0:Lcom/miui/home/launcher/uninstall/UninstallController;

    invoke-static {p1}, Lcom/miui/home/launcher/uninstall/UninstallController;->access$000(Lcom/miui/home/launcher/uninstall/UninstallController;)Lcom/miui/home/launcher/Launcher;

    move-result-object p1

    new-instance p2, Lcom/miui/home/launcher/uninstall/UninstallController$DeleteObserver$1;

    invoke-direct {p2, p0}, Lcom/miui/home/launcher/uninstall/UninstallController$DeleteObserver$1;-><init>(Lcom/miui/home/launcher/uninstall/UninstallController$DeleteObserver;)V

    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/Launcher;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method
