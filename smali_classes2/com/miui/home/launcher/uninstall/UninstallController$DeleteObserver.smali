.class Lcom/miui/home/launcher/uninstall/UninstallController$DeleteObserver;
.super Lcom/miui/launcher/common/PackageDeleteObserverDelegate;
.source "UninstallController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/uninstall/UninstallController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DeleteObserver"
.end annotation


# instance fields
.field private final mLauncherRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/home/launcher/Launcher;",
            ">;"
        }
    .end annotation
.end field

.field private final mShortcutInfoRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/home/launcher/ShortcutInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/ShortcutInfo;)V
    .locals 1

    .line 143
    invoke-direct {p0}, Lcom/miui/launcher/common/PackageDeleteObserverDelegate;-><init>()V

    .line 144
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/home/launcher/uninstall/UninstallController$DeleteObserver;->mLauncherRef:Ljava/lang/ref/WeakReference;

    .line 145
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/miui/home/launcher/uninstall/UninstallController$DeleteObserver;->mShortcutInfoRef:Ljava/lang/ref/WeakReference;

    .line 146
    invoke-direct {p0, p2}, Lcom/miui/home/launcher/uninstall/UninstallController$DeleteObserver;->onPackageStartDelete(Lcom/miui/home/launcher/ShortcutInfo;)V

    return-void
.end method

.method private onPackageStartDelete(Lcom/miui/home/launcher/ShortcutInfo;)V
    .locals 3

    const-string p0, "UninstallController"

    const-string v0, "delete apps icon before delete success"

    .line 150
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncherApplication()Lcom/miui/home/launcher/Application;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/Application;->getModel()Lcom/miui/home/launcher/LauncherModel;

    move-result-object p0

    new-instance v0, Lcom/miui/home/launcher/model/PackageRemoveTask;

    .line 152
    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->getUser()Landroid/os/UserHandle;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/miui/home/launcher/model/PackageRemoveTask;-><init>(Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 151
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/LauncherModel;->enqueueModelUpdateTask(Lcom/miui/home/launcher/LauncherModel$ModelUpdateTask;)V

    .line 153
    invoke-static {p1}, Lcom/miui/home/launcher/uninstall/UninstallController;->access$000(Lcom/miui/home/launcher/ShortcutInfo;)V

    return-void
.end method


# virtual methods
.method public onPackageDeleted(Ljava/lang/String;I)V
    .locals 3

    .line 158
    iget-object v0, p0, Lcom/miui/home/launcher/uninstall/UninstallController$DeleteObserver;->mLauncherRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/Launcher;

    .line 159
    iget-object v1, p0, Lcom/miui/home/launcher/uninstall/UninstallController$DeleteObserver;->mShortcutInfoRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/ShortcutInfo;

    .line 160
    invoke-static {v1}, Lcom/miui/home/launcher/uninstall/UninstallController;->access$100(Lcom/miui/home/launcher/ShortcutInfo;)Z

    if-eqz v0, :cond_3

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    if-ne p2, v2, :cond_1

    .line 165
    invoke-virtual {v1}, Lcom/miui/home/launcher/ShortcutInfo;->getUser()Landroid/os/UserHandle;

    move-result-object p0

    invoke-static {v0, p1, p0}, Lcom/miui/home/launcher/LauncherSettings;->deletePackage(Landroid/content/Context;Ljava/lang/String;Landroid/os/UserHandle;)V

    goto :goto_0

    .line 166
    :cond_1
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/miui/home/launcher/ScreenUtils;->isAlreadyInstalled(Ljava/lang/String;Landroid/content/Context;)Z

    move-result p2

    const-string v2, "UninstallController"

    if-nez p2, :cond_2

    const-string p0, "app is not already installed"

    .line 167
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    const-string p2, "delete failed and restore apps icon"

    .line 171
    invoke-static {v2, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncherApplication()Lcom/miui/home/launcher/Application;

    move-result-object p2

    invoke-virtual {p2}, Lcom/miui/home/launcher/Application;->getModel()Lcom/miui/home/launcher/LauncherModel;

    move-result-object p2

    new-instance v2, Lcom/miui/home/launcher/model/PackageAddTask;

    .line 173
    invoke-virtual {v1}, Lcom/miui/home/launcher/ShortcutInfo;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    invoke-direct {v2, p1, v1}, Lcom/miui/home/launcher/model/PackageAddTask;-><init>(Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 172
    invoke-virtual {p2, v2}, Lcom/miui/home/launcher/LauncherModel;->enqueueModelUpdateTask(Lcom/miui/home/launcher/LauncherModel$ModelUpdateTask;)V

    .line 174
    new-instance p1, Lcom/miui/home/launcher/uninstall/UninstallController$DeleteObserver$1;

    invoke-direct {p1, p0, v0}, Lcom/miui/home/launcher/uninstall/UninstallController$DeleteObserver$1;-><init>(Lcom/miui/home/launcher/uninstall/UninstallController$DeleteObserver;Lcom/miui/home/launcher/Launcher;)V

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/Launcher;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_3
    :goto_0
    return-void
.end method
