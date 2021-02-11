.class public Lcom/miui/home/launcher/uninstall/UninstallController;
.super Ljava/lang/Object;
.source "UninstallController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/uninstall/UninstallController$DeleteObserver;,
        Lcom/miui/home/launcher/uninstall/UninstallController$_lancet;
    }
.end annotation


# instance fields
.field private mLauncher:Lcom/miui/home/launcher/Launcher;


# direct methods
.method public constructor <init>(Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/miui/home/launcher/uninstall/UninstallController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/uninstall/UninstallController;)Lcom/miui/home/launcher/Launcher;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/miui/home/launcher/uninstall/UninstallController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    return-object p0
.end method

.method static synthetic access$001(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 0

    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    return p0
.end method

.method public static announceDeleted(Lcom/miui/home/launcher/ItemInfo;)V
    .locals 1

    .line 172
    invoke-virtual {p0}, Lcom/miui/home/launcher/ItemInfo;->getAnnounceForDelete()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 173
    new-instance v0, Lcom/miui/home/launcher/uninstall/UninstallController$2;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/uninstall/UninstallController$2;-><init>(Lcom/miui/home/launcher/ItemInfo;)V

    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->announceForAccessibility(Ljava8/util/function/Supplier;)V

    :cond_0
    return-void
.end method

.method public static deleteWithBoomAnim(Lcom/miui/home/launcher/Launcher;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/home/launcher/Launcher;",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/ShortcutInfo;",
            ">;)V"
        }
    .end annotation

    .line 200
    new-instance v0, Lcom/miui/home/launcher/uninstall/-$$Lambda$UninstallController$UJm2seBzeUWM9c58WdxEqF3xW4k;

    invoke-direct {v0, p0, p1}, Lcom/miui/home/launcher/uninstall/-$$Lambda$UninstallController$UJm2seBzeUWM9c58WdxEqF3xW4k;-><init>(Lcom/miui/home/launcher/Launcher;Ljava/util/List;)V

    invoke-static {p0, p1, v0}, Lcom/miui/home/launcher/uninstall/BoomAnimHelper;->doBoomAnim(Lcom/miui/home/launcher/Launcher;Ljava/util/List;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static isDeleteValid(Lcom/miui/home/launcher/ItemInfo;Lcom/miui/home/launcher/Launcher;)Z
    .locals 1

    .line 212
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->isDrawerMode()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/miui/home/launcher/LauncherState;->NORMAL:Lcom/miui/home/launcher/LauncherState;

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 213
    :cond_0
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->isDrawerMode()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/miui/home/launcher/ItemInfo;->isApplicatoin()Z

    move-result p1

    if-nez p1, :cond_2

    instance-of p0, p0, Lcom/miui/home/launcher/FolderInfo;

    if-nez p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isUninstallValid(Lcom/miui/home/launcher/ItemInfo;Lcom/miui/home/launcher/Launcher;)Z
    .locals 1

    if-eqz p1, :cond_2

    .line 206
    invoke-virtual {p0}, Lcom/miui/home/launcher/ItemInfo;->isApplicatoin()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/miui/home/launcher/common/Utilities;->isHybirdApp(Lcom/miui/home/launcher/ItemInfo;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 207
    :cond_0
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ItemInfo;->canBeDeleted(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 208
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->isDrawerMode()Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/miui/home/launcher/LauncherState;->ALL_APPS:Lcom/miui/home/launcher/LauncherState;

    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic lambda$deleteWithBoomAnim$3(Lcom/miui/home/launcher/Launcher;Ljava/util/List;)V
    .locals 0

    .line 201
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getUninstallController()Lcom/miui/home/launcher/uninstall/UninstallController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/uninstall/UninstallController;->deleteItems(Ljava/util/List;)V

    return-void
.end method

.method static synthetic lambda$null$1(Lcom/miui/home/launcher/Launcher;Ljava/util/List;)V
    .locals 0

    .line 194
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getUninstallController()Lcom/miui/home/launcher/uninstall/UninstallController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/uninstall/UninstallController;->uninstallApps(Ljava/util/List;)V

    return-void
.end method

.method static synthetic lambda$showDialog$2(Lcom/miui/home/launcher/Launcher;Ljava/util/List;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 193
    new-instance p2, Lcom/miui/home/launcher/uninstall/-$$Lambda$UninstallController$jJYk3VyAbHVNxffTWzyBuH52yJI;

    invoke-direct {p2, p0, p1}, Lcom/miui/home/launcher/uninstall/-$$Lambda$UninstallController$jJYk3VyAbHVNxffTWzyBuH52yJI;-><init>(Lcom/miui/home/launcher/Launcher;Ljava/util/List;)V

    invoke-static {p0, p1, p2}, Lcom/miui/home/launcher/uninstall/BoomAnimHelper;->doBoomAnim(Lcom/miui/home/launcher/Launcher;Ljava/util/List;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic lambda$uninstallApps$0(Lcom/miui/home/launcher/uninstall/UninstallController;Lcom/miui/home/launcher/ShortcutInfo;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 0

    .line 57
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/uninstall/UninstallController;->uninstallApp(Lcom/miui/home/launcher/ShortcutInfo;)Z

    const/4 p1, 0x0

    return-object p1
.end method

.method public static showDialog(Lcom/miui/home/launcher/Launcher;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/home/launcher/Launcher;",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/ShortcutInfo;",
            ">;)V"
        }
    .end annotation

    .line 185
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    const v2, 0x7f0d00b6

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/uninstall/UninstallDialogViewContainer;

    .line 186
    invoke-virtual {v0, p0, p1}, Lcom/miui/home/launcher/uninstall/UninstallDialogViewContainer;->bindShortcut(Lcom/miui/home/launcher/Launcher;Ljava/util/List;)V

    .line 188
    new-instance v2, Lmiui/app/AlertDialog$Builder;

    const/16 v3, 0x8

    invoke-direct {v2, p0, v3}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 189
    invoke-virtual {v2, v0}, Lmiui/app/AlertDialog$Builder;->setView(Landroid/view/View;)Lmiui/app/AlertDialog$Builder;

    const v0, 0x7f1000a0

    .line 190
    invoke-virtual {v2, v0, v1}, Lmiui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    .line 191
    new-instance v0, Lcom/miui/home/launcher/uninstall/-$$Lambda$UninstallController$9RqMgZRmIqJwP_Oi5LMRNhtpN08;

    invoke-direct {v0, p0, p1}, Lcom/miui/home/launcher/uninstall/-$$Lambda$UninstallController$9RqMgZRmIqJwP_Oi5LMRNhtpN08;-><init>(Lcom/miui/home/launcher/Launcher;Ljava/util/List;)V

    const p0, 0x7f100260

    invoke-virtual {v2, p0, v0}, Lmiui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    .line 196
    invoke-virtual {v2}, Lmiui/app/AlertDialog$Builder;->create()Lmiui/app/AlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Lmiui/app/AlertDialog;->show()V

    return-void
.end method


# virtual methods
.method public deleteItem(Lcom/miui/home/launcher/ItemInfo;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    .line 126
    :cond_0
    iget v0, p1, Lcom/miui/home/launcher/ItemInfo;->itemType:I

    const/16 v1, 0xf

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    .line 127
    iget-object v0, p0, Lcom/miui/home/launcher/uninstall/UninstallController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    iget-wide v3, p1, Lcom/miui/home/launcher/ItemInfo;->container:J

    invoke-virtual {v0, v3, v4}, Lcom/miui/home/launcher/Launcher;->getFolderInfoById(J)Lcom/miui/home/launcher/FolderInfo;

    move-result-object v0

    .line 128
    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderInfo;->getPreinstallManager()Lcom/miui/home/launcher/commercial/preinstall/FolderPreinstallManager;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-virtual {v1}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/commercial/preinstall/FolderPreinstallManager;->onPreinstallItemDeleted(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 129
    :cond_1
    iget v0, p1, Lcom/miui/home/launcher/ItemInfo;->itemType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 130
    move-object v0, p1

    check-cast v0, Lcom/miui/home/launcher/FolderInfo;

    .line 131
    iget-object v1, p0, Lcom/miui/home/launcher/uninstall/UninstallController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {v1, v0}, Lcom/miui/home/launcher/LauncherModel;->deleteUserFolderContentsFromDatabase(Landroid/content/Context;Lcom/miui/home/launcher/FolderInfo;)V

    .line 132
    iget-object v1, p0, Lcom/miui/home/launcher/uninstall/UninstallController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/Launcher;->removeFolder(Lcom/miui/home/launcher/FolderInfo;)V

    .line 133
    invoke-virtual {p1}, Lcom/miui/home/launcher/ItemInfo;->isInWorkspace()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 134
    iget-object v1, p0, Lcom/miui/home/launcher/uninstall/UninstallController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/Launcher;->fillEmpty(Lcom/miui/home/launcher/ItemInfo;)V

    goto :goto_0

    .line 136
    :cond_2
    iget v0, p1, Lcom/miui/home/launcher/ItemInfo;->itemType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 137
    move-object v0, p1

    check-cast v0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    .line 138
    iget-object v1, p0, Lcom/miui/home/launcher/uninstall/UninstallController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/Launcher;->removeAppWidget(Lcom/miui/home/launcher/LauncherAppWidgetInfo;)V

    goto :goto_0

    .line 139
    :cond_3
    iget v0, p1, Lcom/miui/home/launcher/ItemInfo;->itemType:I

    const/4 v1, 0x0

    if-nez v0, :cond_4

    .line 140
    iget-object v0, p0, Lcom/miui/home/launcher/uninstall/UninstallController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    move-object v3, p1

    check-cast v3, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-virtual {v0, v3, v1, v2}, Lcom/miui/home/launcher/Launcher;->removeShortcutIcon(Lcom/miui/home/launcher/ShortcutInfo;Ljava/util/List;Z)V

    goto :goto_0

    .line 141
    :cond_4
    iget v0, p1, Lcom/miui/home/launcher/ItemInfo;->itemType:I

    const/4 v3, 0x5

    if-ne v0, v3, :cond_5

    .line 142
    iget-object v0, p0, Lcom/miui/home/launcher/uninstall/UninstallController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    move-object v1, p1

    check-cast v1, Lcom/miui/home/launcher/gadget/GadgetInfo;

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Launcher;->removeGadgets(Ljava/util/List;)V

    goto :goto_0

    .line 143
    :cond_5
    invoke-static {p1}, Lcom/miui/home/launcher/common/Utilities;->isHybirdApp(Lcom/miui/home/launcher/ItemInfo;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 144
    move-object v0, p1

    check-cast v0, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-static {v0}, Lcom/miui/home/launcher/hybrid/HybridController;->trackDelete(Lcom/miui/home/launcher/ShortcutInfo;)V

    .line 145
    iget-object v3, p0, Lcom/miui/home/launcher/uninstall/UninstallController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v3, v0, v1, v2}, Lcom/miui/home/launcher/Launcher;->removeShortcutIcon(Lcom/miui/home/launcher/ShortcutInfo;Ljava/util/List;Z)V

    goto :goto_0

    .line 146
    :cond_6
    iget v0, p1, Lcom/miui/home/launcher/ItemInfo;->itemType:I

    const/4 v3, 0x6

    if-ne v0, v3, :cond_7

    goto :goto_0

    .line 149
    :cond_7
    iget-object v0, p0, Lcom/miui/home/launcher/uninstall/UninstallController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    move-object v3, p1

    check-cast v3, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-virtual {v0, v3, v1, v2}, Lcom/miui/home/launcher/Launcher;->removeShortcutIcon(Lcom/miui/home/launcher/ShortcutInfo;Ljava/util/List;Z)V

    .line 151
    :cond_8
    :goto_0
    instance-of v0, p1, Lcom/miui/home/launcher/ShortcutInfo;

    if-eqz v0, :cond_9

    .line 152
    move-object v0, p1

    check-cast v0, Lcom/miui/home/launcher/ShortcutInfo;

    .line 153
    iget-object v1, v0, Lcom/miui/home/launcher/ShortcutInfo;->mIntent:Landroid/content/Intent;

    if-eqz v1, :cond_9

    .line 154
    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutInfo;->getIconPackage()Ljava/lang/String;

    move-result-object v1

    iget-object v0, v0, Lcom/miui/home/launcher/ShortcutInfo;->mIntent:Landroid/content/Intent;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackDeletedShortCut(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    :cond_9
    iget v0, p1, Lcom/miui/home/launcher/ItemInfo;->itemType:I

    if-ne v0, v2, :cond_a

    const-string v0, "com.xiaomi.market"

    move-object v1, p1

    check-cast v1, Lcom/miui/home/launcher/ShortcutInfo;

    .line 158
    invoke-virtual {v1}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 159
    new-instance v0, Lcom/miui/home/launcher/uninstall/UninstallController$1;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/uninstall/UninstallController$1;-><init>(Lcom/miui/home/launcher/uninstall/UninstallController;)V

    invoke-static {v0}, Lcom/miui/home/launcher/common/BackgroundThread;->post(Ljava/lang/Runnable;)V

    .line 168
    :cond_a
    invoke-static {p1}, Lcom/miui/home/launcher/uninstall/UninstallController;->announceDeleted(Lcom/miui/home/launcher/ItemInfo;)V

    return-void
.end method

.method public deleteItems(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/ShortcutInfo;",
            ">;)V"
        }
    .end annotation

    .line 119
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/ShortcutInfo;

    .line 120
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/uninstall/UninstallController;->deleteItem(Lcom/miui/home/launcher/ItemInfo;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public uninstallApp(Lcom/miui/home/launcher/ShortcutInfo;)Z
    .locals 6

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 67
    iget-object v1, p0, Lcom/miui/home/launcher/uninstall/UninstallController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1, v1}, Lcom/miui/home/launcher/ShortcutInfo;->canBeDeleted(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 69
    :cond_0
    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 71
    :try_start_0
    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->getUser()Landroid/os/UserHandle;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/launcher/utils/LauncherUtils;->isXSpaceUser(Landroid/os/UserHandle;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 72
    iget-object v2, p0, Lcom/miui/home/launcher/uninstall/UninstallController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    new-instance v3, Lcom/miui/home/launcher/uninstall/UninstallController$DeleteObserver;

    invoke-direct {v3, p0, p1}, Lcom/miui/home/launcher/uninstall/UninstallController$DeleteObserver;-><init>(Lcom/miui/home/launcher/uninstall/UninstallController;Lcom/miui/home/launcher/ShortcutInfo;)V

    invoke-static {v2, v1, v3}, Lcom/miui/launcher/utils/LauncherUtils;->deletePackageAsXspaceUser(Landroid/content/Context;Ljava/lang/String;Lcom/miui/launcher/common/PackageDeleteObserverDelegate;)V

    goto :goto_0

    .line 74
    :cond_1
    iget-object v2, p0, Lcom/miui/home/launcher/uninstall/UninstallController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {v2, v1}, Lcom/miui/launcher/utils/LauncherUtils;->hasRelativeXSpaceApp(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 75
    iget-object v2, p0, Lcom/miui/home/launcher/uninstall/UninstallController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Lcom/miui/launcher/utils/LauncherUtils;->deletePackageAsXspaceUser(Landroid/content/Context;Ljava/lang/String;Lcom/miui/launcher/common/PackageDeleteObserverDelegate;)V

    .line 77
    :cond_2
    iget-object v2, p0, Lcom/miui/home/launcher/uninstall/UninstallController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    new-instance v3, Lcom/miui/home/launcher/uninstall/UninstallController$DeleteObserver;

    invoke-direct {v3, p0, p1}, Lcom/miui/home/launcher/uninstall/UninstallController$DeleteObserver;-><init>(Lcom/miui/home/launcher/uninstall/UninstallController;Lcom/miui/home/launcher/ShortcutInfo;)V

    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->getUserId()I

    move-result v4

    const/4 v5, 0x4

    invoke-static {v2, v1, v3, v4, v5}, Lcom/miui/launcher/utils/LauncherUtils;->deletePackageAsUser(Landroid/content/Context;Ljava/lang/String;Lcom/miui/launcher/common/PackageDeleteObserverDelegate;II)V

    .line 79
    :goto_0
    iget-object v2, p1, Lcom/miui/home/launcher/ShortcutInfo;->mIntent:Landroid/content/Intent;

    if-eqz v2, :cond_3

    .line 80
    iget-object v2, p1, Lcom/miui/home/launcher/ShortcutInfo;->mIntent:Landroid/content/Intent;

    invoke-virtual {v2, v0}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackDeletedShortCut(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    :cond_3
    invoke-static {p1}, Lcom/miui/home/launcher/uninstall/UninstallController;->announceDeleted(Lcom/miui/home/launcher/ItemInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    const-string v2, "UninstallController"

    .line 85
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can not uninstallApp: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, p1}, Lcom/miui/home/launcher/uninstall/UninstallController$_lancet;->com_miui_home_launcher_aop_LogHooker_aet(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0

    :cond_4
    :goto_1
    return v0
.end method

.method public uninstallApps(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/ShortcutInfo;",
            ">;)V"
        }
    .end annotation

    .line 54
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/ShortcutInfo;

    .line 55
    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutInfo;->isApplicatoin()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 56
    new-instance v1, Lcom/miui/home/launcher/uninstall/-$$Lambda$UninstallController$JCZXBecAa2DH4LY_irthPjyvOo8;

    invoke-direct {v1, p0, v0}, Lcom/miui/home/launcher/uninstall/-$$Lambda$UninstallController$JCZXBecAa2DH4LY_irthPjyvOo8;-><init>(Lcom/miui/home/launcher/uninstall/UninstallController;Lcom/miui/home/launcher/ShortcutInfo;)V

    const/4 v0, 0x0

    invoke-static {v1, v0, v0}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->execParallel(Ljava8/util/function/Function;Ljava8/util/function/Consumer;Ljava/lang/Object;)V

    goto :goto_0

    .line 61
    :cond_0
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/uninstall/UninstallController;->deleteItem(Lcom/miui/home/launcher/ItemInfo;)V

    goto :goto_0

    :cond_1
    return-void
.end method
