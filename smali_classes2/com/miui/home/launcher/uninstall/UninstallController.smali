.class public Lcom/miui/home/launcher/uninstall/UninstallController;
.super Ljava/lang/Object;
.source "UninstallController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/uninstall/UninstallController$DeleteObserver;
    }
.end annotation


# static fields
.field private static mDeleteAppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/ShortcutInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mLauncher:Lcom/miui/home/launcher/Launcher;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/uninstall/UninstallController;->mDeleteAppList:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/miui/home/launcher/uninstall/UninstallController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    return-void
.end method

.method static synthetic access$000()Ljava/util/List;
    .locals 1

    .line 50
    sget-object v0, Lcom/miui/home/launcher/uninstall/UninstallController;->mDeleteAppList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/home/launcher/uninstall/UninstallController;)Lcom/miui/home/launcher/Launcher;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/miui/home/launcher/uninstall/UninstallController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    return-object p0
.end method

.method static synthetic access$200(Lcom/miui/home/launcher/uninstall/UninstallController;Lcom/miui/home/launcher/ShortcutInfo;)Z
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/uninstall/UninstallController;->isHiddenAppDisableNotifications(Lcom/miui/home/launcher/ShortcutInfo;)Z

    move-result p0

    return p0
.end method

.method public static announceDeleted(Lcom/miui/home/launcher/ItemInfo;)V
    .locals 1

    .line 254
    invoke-virtual {p0}, Lcom/miui/home/launcher/ItemInfo;->getAnnounceForDelete()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 255
    new-instance v0, Lcom/miui/home/launcher/uninstall/UninstallController$4;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/uninstall/UninstallController$4;-><init>(Lcom/miui/home/launcher/ItemInfo;)V

    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->announceForAccessibility(Ljava/util/function/Supplier;)V

    :cond_0
    return-void
.end method

.method private deleteItemFromMultiSelectMonitor(Lcom/miui/home/launcher/FolderInfo;)V
    .locals 2

    .line 197
    invoke-virtual {p1}, Lcom/miui/home/launcher/FolderInfo;->getContents()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/ShortcutInfo;

    .line 198
    invoke-static {}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->getMonitor()Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->uncheckShortcut(Lcom/miui/home/launcher/ShortcutInfo;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static deleteMiuiWidgetWidthBoomAnim(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/MIUIWidgetBasicInfo;[I)V
    .locals 1

    .line 304
    new-instance v0, Lcom/miui/home/launcher/uninstall/-$$Lambda$UninstallController$GZUbCg7kvAu06qUd6b2slmNViQc;

    invoke-direct {v0, p0, p1}, Lcom/miui/home/launcher/uninstall/-$$Lambda$UninstallController$GZUbCg7kvAu06qUd6b2slmNViQc;-><init>(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/MIUIWidgetBasicInfo;)V

    invoke-static {p0, p1, v0, p2}, Lcom/miui/home/launcher/uninstall/BoomAnimHelper;->widgetDoBoomAnim(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/ItemInfo;Ljava/lang/Runnable;[I)V

    return-void
.end method

.method public static deleteWithBoomAnim(Lcom/miui/home/launcher/Launcher;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/home/launcher/Launcher;",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/ShortcutInfo;",
            ">;)V"
        }
    .end annotation

    .line 281
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/ShortcutInfo;

    .line 282
    invoke-static {v1, p0}, Lcom/miui/home/launcher/uninstall/UninstallController;->isHideAppValid(Lcom/miui/home/launcher/ItemInfo;Lcom/miui/home/launcher/Launcher;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    if-eqz v0, :cond_2

    .line 288
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getUninstallController()Lcom/miui/home/launcher/uninstall/UninstallController;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Lcom/miui/home/launcher/uninstall/UninstallController;->hideAppWidthDialog(Ljava/util/List;Lcom/miui/home/launcher/Launcher;)V

    goto :goto_2

    .line 290
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/ShortcutInfo;

    .line 291
    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/ShortcutInfo;->setIsChecked(Z)V

    goto :goto_1

    .line 293
    :cond_3
    new-instance v0, Lcom/miui/home/launcher/uninstall/UninstallController$6;

    invoke-direct {v0, p0, p1}, Lcom/miui/home/launcher/uninstall/UninstallController$6;-><init>(Lcom/miui/home/launcher/Launcher;Ljava/util/List;)V

    invoke-static {p0, p1, v0}, Lcom/miui/home/launcher/uninstall/BoomAnimHelper;->doBoomAnim(Lcom/miui/home/launcher/Launcher;Ljava/util/List;Ljava/lang/Runnable;)V

    :goto_2
    return-void
.end method

.method public static isDeleteValid(Lcom/miui/home/launcher/ItemInfo;Lcom/miui/home/launcher/Launcher;)Z
    .locals 2

    .line 328
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->isDrawerMode()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 329
    sget-object v0, Lcom/miui/home/launcher/LauncherState;->NORMAL:Lcom/miui/home/launcher/LauncherState;

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 332
    :cond_0
    invoke-static {p0, p1}, Lcom/miui/home/launcher/uninstall/UninstallController;->isHideAppValid(Lcom/miui/home/launcher/ItemInfo;Lcom/miui/home/launcher/Launcher;)Z

    move-result p0

    return p0

    .line 335
    :cond_1
    invoke-virtual {p0}, Lcom/miui/home/launcher/ItemInfo;->isApplicatoin()Z

    move-result v0

    if-nez v0, :cond_2

    instance-of v0, p0, Lcom/miui/home/launcher/FolderInfo;

    if-nez v0, :cond_2

    return v1

    .line 338
    :cond_2
    invoke-static {p0, p1}, Lcom/miui/home/launcher/uninstall/UninstallController;->isHideAppValid(Lcom/miui/home/launcher/ItemInfo;Lcom/miui/home/launcher/Launcher;)Z

    move-result p0

    return p0
.end method

.method private isHiddenAppDisableNotifications(Lcom/miui/home/launcher/ShortcutInfo;)Z
    .locals 1

    .line 387
    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->getThirdApplicationConfig()Lcom/miui/home/launcher/ThirdApplicationConfig;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->getThirdApplicationConfig()Lcom/miui/home/launcher/ThirdApplicationConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/ThirdApplicationConfig;->getHiddenAppNotificationsItem()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public static isHideAppValid(Lcom/miui/home/launcher/ItemInfo;Lcom/miui/home/launcher/Launcher;)Z
    .locals 1

    const/4 v0, 0x1

    .line 344
    invoke-static {p0, p1, v0}, Lcom/miui/home/launcher/uninstall/UninstallController;->isHideAppValid(Lcom/miui/home/launcher/ItemInfo;Lcom/miui/home/launcher/Launcher;Z)Z

    move-result p0

    return p0
.end method

.method public static isHideAppValid(Lcom/miui/home/launcher/ItemInfo;Lcom/miui/home/launcher/Launcher;Z)Z
    .locals 4

    .line 348
    instance-of v0, p0, Lcom/miui/home/launcher/ShortcutInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    if-eqz p2, :cond_0

    .line 349
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->isDrawerMode()Z

    move-result p2

    if-eqz p2, :cond_0

    sget-object p2, Lcom/miui/home/launcher/LauncherState;->ALL_APPS:Lcom/miui/home/launcher/LauncherState;

    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 350
    :cond_0
    check-cast p0, Lcom/miui/home/launcher/ShortcutInfo;

    .line 351
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutInfo;->getThirdApplicationConfig()Lcom/miui/home/launcher/ThirdApplicationConfig;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 353
    sget-boolean p2, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lcom/miui/home/launcher/ThirdApplicationConfig;->getGlobalHideAppItem()Z

    move-result p2

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/miui/home/launcher/ThirdApplicationConfig;->getHideAppItem()Z

    move-result p2

    :goto_0
    if-eqz p2, :cond_4

    .line 355
    invoke-virtual {p1}, Lcom/miui/home/launcher/ThirdApplicationConfig;->getProhibitHiddenActivities()[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 357
    array-length p2, p1

    move v0, v1

    :goto_1
    if-ge v0, p2, :cond_3

    aget-object v2, p1, v0

    .line 358
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutInfo;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    return v1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    const/4 p0, 0x1

    return p0

    :cond_4
    return v1
.end method

.method public static isSecondConfirmationDialog(Lcom/miui/home/launcher/ItemInfo;Lcom/miui/home/launcher/Launcher;)Z
    .locals 3

    .line 372
    instance-of v0, p0, Lcom/miui/home/launcher/ShortcutInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 373
    move-object v0, p0

    check-cast v0, Lcom/miui/home/launcher/ShortcutInfo;

    .line 374
    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutInfo;->getThirdApplicationConfig()Lcom/miui/home/launcher/ThirdApplicationConfig;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 376
    invoke-static {p0, p1}, Lcom/miui/home/launcher/uninstall/UninstallController;->isUninstallValid(Lcom/miui/home/launcher/ItemInfo;Lcom/miui/home/launcher/Launcher;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-boolean p0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez p0, :cond_0

    invoke-virtual {v2}, Lcom/miui/home/launcher/ThirdApplicationConfig;->getHideAppItem()Z

    move-result p0

    if-eqz p0, :cond_0

    return v1

    .line 379
    :cond_0
    invoke-virtual {v2, v0}, Lcom/miui/home/launcher/ThirdApplicationConfig;->getDeleteTip(Lcom/miui/home/launcher/ShortcutInfo;)Landroid/util/Pair;

    move-result-object p0

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    :cond_2
    return v1
.end method

.method public static isUninstallValid(Lcom/miui/home/launcher/ItemInfo;Lcom/miui/home/launcher/Launcher;)Z
    .locals 1

    const/4 v0, 0x1

    .line 308
    invoke-static {p0, p1, v0}, Lcom/miui/home/launcher/uninstall/UninstallController;->isUninstallValid(Lcom/miui/home/launcher/ItemInfo;Lcom/miui/home/launcher/Launcher;Z)Z

    move-result p0

    return p0
.end method

.method public static isUninstallValid(Lcom/miui/home/launcher/ItemInfo;Lcom/miui/home/launcher/Launcher;Z)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 316
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/ItemInfo;->isApplicatoin()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p0}, Lcom/miui/home/launcher/common/Utilities;->isHybirdApp(Lcom/miui/home/launcher/ItemInfo;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_1
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ItemInfo;->canBeDeleted(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_5

    const/4 p0, 0x1

    if-eqz p2, :cond_4

    .line 318
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->isDrawerMode()Z

    move-result p2

    if-eqz p2, :cond_3

    sget-object p2, Lcom/miui/home/launcher/LauncherState;->ALL_APPS:Lcom/miui/home/launcher/LauncherState;

    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move p0, v0

    :cond_3
    :goto_0
    return p0

    :cond_4
    return p0

    :cond_5
    return v0
.end method

.method static synthetic lambda$deleteMiuiWidgetWidthBoomAnim$1(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/MIUIWidgetBasicInfo;)V
    .locals 0

    .line 304
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getUninstallController()Lcom/miui/home/launcher/uninstall/UninstallController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/uninstall/UninstallController;->deleteItem(Lcom/miui/home/launcher/ItemInfo;)V

    return-void
.end method

.method public static synthetic lambda$uninstallApps$0(Lcom/miui/home/launcher/uninstall/UninstallController;Lcom/miui/home/launcher/ShortcutInfo;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 0

    .line 70
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/uninstall/UninstallController;->uninstallApp(Lcom/miui/home/launcher/ShortcutInfo;)Z

    const/4 p1, 0x0

    return-object p1
.end method

.method public static showDialog(Lcom/miui/home/launcher/Launcher;Ljava/util/List;)V
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

    .line 267
    new-instance v0, Lcom/miui/home/launcher/uninstall/DeleteDialog;

    invoke-direct {v0, p0, p1}, Lcom/miui/home/launcher/uninstall/DeleteDialog;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 268
    new-instance p1, Lcom/miui/home/launcher/uninstall/UninstallController$5;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/uninstall/UninstallController$5;-><init>(Lcom/miui/home/launcher/Launcher;)V

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/uninstall/DeleteDialog;->setPositiveConsumer(Ljava/util/function/Consumer;)V

    const p0, 0x7f1104b7

    .line 275
    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/uninstall/DeleteDialog;->setPositiveButTitle(I)V

    .line 276
    invoke-virtual {v0}, Lcom/miui/home/launcher/uninstall/DeleteDialog;->show()V

    return-void
.end method


# virtual methods
.method public deleteItem(Lcom/miui/home/launcher/ItemInfo;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    .line 204
    :cond_0
    iget v0, p1, Lcom/miui/home/launcher/ItemInfo;->itemType:I

    const/16 v1, 0xf

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    .line 205
    iget-object v0, p0, Lcom/miui/home/launcher/uninstall/UninstallController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    iget-wide v3, p1, Lcom/miui/home/launcher/ItemInfo;->container:J

    invoke-virtual {v0, v3, v4}, Lcom/miui/home/launcher/Launcher;->getFolderInfoById(J)Lcom/miui/home/launcher/FolderInfo;

    move-result-object v0

    .line 206
    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderInfo;->getPreinstallManager()Lcom/miui/home/launcher/commercial/preinstall/FolderPreinstallManager;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-virtual {v1}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/commercial/preinstall/FolderPreinstallManager;->onPreinstallItemDeleted(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 207
    :cond_1
    iget v0, p1, Lcom/miui/home/launcher/ItemInfo;->itemType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 208
    move-object v0, p1

    check-cast v0, Lcom/miui/home/launcher/FolderInfo;

    .line 209
    iget-object v1, p0, Lcom/miui/home/launcher/uninstall/UninstallController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {v1, v0}, Lcom/miui/home/launcher/LauncherModel;->deleteUserFolderContentsFromDatabase(Landroid/content/Context;Lcom/miui/home/launcher/FolderInfo;)V

    .line 210
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/uninstall/UninstallController;->deleteItemFromMultiSelectMonitor(Lcom/miui/home/launcher/FolderInfo;)V

    .line 211
    iget-object v1, p0, Lcom/miui/home/launcher/uninstall/UninstallController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/Launcher;->removeFolder(Lcom/miui/home/launcher/FolderInfo;)V

    .line 212
    invoke-virtual {p1}, Lcom/miui/home/launcher/ItemInfo;->isInWorkspace()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 213
    iget-object v1, p0, Lcom/miui/home/launcher/uninstall/UninstallController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/Launcher;->fillEmpty(Lcom/miui/home/launcher/ItemInfo;)V

    goto :goto_0

    .line 215
    :cond_2
    iget v0, p1, Lcom/miui/home/launcher/ItemInfo;->itemType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 216
    move-object v0, p1

    check-cast v0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    .line 217
    iget-object v1, p0, Lcom/miui/home/launcher/uninstall/UninstallController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/Launcher;->removeAppWidget(Lcom/miui/home/launcher/LauncherAppWidgetInfo;)V

    goto :goto_0

    .line 218
    :cond_3
    iget v0, p1, Lcom/miui/home/launcher/ItemInfo;->itemType:I

    if-nez v0, :cond_4

    .line 219
    iget-object v0, p0, Lcom/miui/home/launcher/uninstall/UninstallController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    move-object v1, p1

    check-cast v1, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/launcher/Launcher;->removeShortcutIcon(Lcom/miui/home/launcher/ShortcutInfo;Z)V

    goto :goto_0

    .line 220
    :cond_4
    iget v0, p1, Lcom/miui/home/launcher/ItemInfo;->itemType:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_5

    .line 221
    iget-object v0, p0, Lcom/miui/home/launcher/uninstall/UninstallController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    move-object v1, p1

    check-cast v1, Lcom/miui/home/launcher/gadget/GadgetInfo;

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Launcher;->removeGadgets(Ljava/util/List;)V

    goto :goto_0

    .line 222
    :cond_5
    iget v0, p1, Lcom/miui/home/launcher/ItemInfo;->itemType:I

    const/16 v1, 0x13

    if-ne v0, v1, :cond_6

    .line 223
    iget-object v0, p0, Lcom/miui/home/launcher/uninstall/UninstallController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    move-object v1, p1

    check-cast v1, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Launcher;->removeMaMl(Lcom/miui/home/launcher/maml/MaMlWidgetInfo;)V

    goto :goto_0

    .line 224
    :cond_6
    invoke-static {p1}, Lcom/miui/home/launcher/common/Utilities;->isHybirdApp(Lcom/miui/home/launcher/ItemInfo;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 225
    move-object v0, p1

    check-cast v0, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-static {v0}, Lcom/miui/home/launcher/hybrid/HybridController;->trackDelete(Lcom/miui/home/launcher/ShortcutInfo;)V

    .line 226
    iget-object v1, p0, Lcom/miui/home/launcher/uninstall/UninstallController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1, v0, v2}, Lcom/miui/home/launcher/Launcher;->removeShortcutIcon(Lcom/miui/home/launcher/ShortcutInfo;Z)V

    goto :goto_0

    .line 227
    :cond_7
    iget v0, p1, Lcom/miui/home/launcher/ItemInfo;->itemType:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_9

    iget v0, p1, Lcom/miui/home/launcher/ItemInfo;->itemType:I

    const/16 v1, 0x14

    if-ne v0, v1, :cond_8

    goto :goto_0

    .line 231
    :cond_8
    iget-object v0, p0, Lcom/miui/home/launcher/uninstall/UninstallController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    move-object v1, p1

    check-cast v1, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/launcher/Launcher;->removeShortcutIcon(Lcom/miui/home/launcher/ShortcutInfo;Z)V

    .line 233
    :cond_9
    :goto_0
    instance-of v0, p1, Lcom/miui/home/launcher/ShortcutInfo;

    if-eqz v0, :cond_a

    .line 234
    move-object v0, p1

    check-cast v0, Lcom/miui/home/launcher/ShortcutInfo;

    .line 235
    iget-object v1, v0, Lcom/miui/home/launcher/ShortcutInfo;->mIntent:Landroid/content/Intent;

    if-eqz v1, :cond_a

    .line 236
    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutInfo;->getIconPackage()Ljava/lang/String;

    move-result-object v1

    iget-object v0, v0, Lcom/miui/home/launcher/ShortcutInfo;->mIntent:Landroid/content/Intent;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackDeletedShortCut(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    :cond_a
    iget v0, p1, Lcom/miui/home/launcher/ItemInfo;->itemType:I

    if-ne v0, v2, :cond_b

    const-string v0, "com.xiaomi.market"

    move-object v1, p1

    check-cast v1, Lcom/miui/home/launcher/ShortcutInfo;

    .line 240
    invoke-virtual {v1}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 241
    new-instance v0, Lcom/miui/home/launcher/uninstall/UninstallController$3;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/uninstall/UninstallController$3;-><init>(Lcom/miui/home/launcher/uninstall/UninstallController;)V

    invoke-static {v0}, Lcom/miui/home/launcher/common/BackgroundThread;->post(Ljava/lang/Runnable;)V

    .line 250
    :cond_b
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

    .line 191
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/ShortcutInfo;

    .line 192
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/uninstall/UninstallController;->deleteItem(Lcom/miui/home/launcher/ItemInfo;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getDeleteAppList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/ShortcutInfo;",
            ">;"
        }
    .end annotation

    .line 391
    sget-object v0, Lcom/miui/home/launcher/uninstall/UninstallController;->mDeleteAppList:Ljava/util/List;

    return-object v0
.end method

.method public hideApp(Lcom/miui/home/launcher/ShortcutInfo;Lcom/miui/home/launcher/Launcher;)V
    .locals 1

    .line 178
    new-instance v0, Lcom/miui/home/launcher/uninstall/UninstallController$2;

    invoke-direct {v0, p0, p2, p1}, Lcom/miui/home/launcher/uninstall/UninstallController$2;-><init>(Lcom/miui/home/launcher/uninstall/UninstallController;Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/ShortcutInfo;)V

    invoke-static {v0}, Lcom/miui/home/launcher/common/BackgroundThread;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public hideAppWidthDialog(Ljava/util/List;Lcom/miui/home/launcher/Launcher;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/ShortcutInfo;",
            ">;",
            "Lcom/miui/home/launcher/Launcher;",
            ")V"
        }
    .end annotation

    .line 154
    new-instance v0, Lcom/miui/home/launcher/uninstall/RemoveDialog;

    invoke-direct {v0, p2, p1}, Lcom/miui/home/launcher/uninstall/RemoveDialog;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 155
    new-instance p1, Lcom/miui/home/launcher/uninstall/UninstallController$1;

    invoke-direct {p1, p0, p2}, Lcom/miui/home/launcher/uninstall/UninstallController$1;-><init>(Lcom/miui/home/launcher/uninstall/UninstallController;Lcom/miui/home/launcher/Launcher;)V

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/uninstall/RemoveDialog;->setPositiveConsumer(Ljava/util/function/Consumer;)V

    const p1, 0x7f110469

    .line 162
    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/uninstall/RemoveDialog;->setPositiveButTitle(I)V

    .line 163
    invoke-virtual {v0}, Lcom/miui/home/launcher/uninstall/RemoveDialog;->show()V

    return-void
.end method

.method public hideApps(Ljava/util/List;Lcom/miui/home/launcher/Launcher;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/ShortcutInfo;",
            ">;",
            "Lcom/miui/home/launcher/Launcher;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 167
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 168
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/ShortcutInfo;

    .line 169
    invoke-static {v1, p2}, Lcom/miui/home/launcher/uninstall/UninstallController;->isHideAppValid(Lcom/miui/home/launcher/ItemInfo;Lcom/miui/home/launcher/Launcher;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 170
    invoke-virtual {p0, v1, p2}, Lcom/miui/home/launcher/uninstall/UninstallController;->hideApp(Lcom/miui/home/launcher/ShortcutInfo;Lcom/miui/home/launcher/Launcher;)V

    goto :goto_1

    .line 171
    :cond_0
    invoke-static {v1, p2}, Lcom/miui/home/launcher/uninstall/UninstallController;->isDeleteValid(Lcom/miui/home/launcher/ItemInfo;Lcom/miui/home/launcher/Launcher;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 172
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/uninstall/UninstallController;->deleteItem(Lcom/miui/home/launcher/ItemInfo;)V

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public uninstallApp(Lcom/miui/home/launcher/ShortcutInfo;)Z
    .locals 7

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 81
    :cond_0
    iget-object v1, p0, Lcom/miui/home/launcher/uninstall/UninstallController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {p1, v1, v0}, Lcom/miui/home/launcher/uninstall/UninstallController;->isUninstallValid(Lcom/miui/home/launcher/ItemInfo;Lcom/miui/home/launcher/Launcher;Z)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_4

    .line 82
    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 84
    :try_start_0
    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->getUser()Landroid/os/UserHandle;

    move-result-object v3

    invoke-static {v3}, Lcom/miui/launcher/utils/LauncherUtils;->isXSpaceUser(Landroid/os/UserHandle;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 85
    iget-object v3, p0, Lcom/miui/home/launcher/uninstall/UninstallController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    new-instance v4, Lcom/miui/home/launcher/uninstall/UninstallController$DeleteObserver;

    iget-object v5, p0, Lcom/miui/home/launcher/uninstall/UninstallController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-direct {v4, v5, p1}, Lcom/miui/home/launcher/uninstall/UninstallController$DeleteObserver;-><init>(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/ShortcutInfo;)V

    invoke-static {v3, v1, v4}, Lcom/miui/launcher/utils/LauncherUtils;->deletePackageAsXspaceUser(Landroid/content/Context;Ljava/lang/String;Lcom/miui/launcher/common/PackageDeleteObserverDelegate;)V

    goto :goto_0

    .line 87
    :cond_1
    iget-object v3, p0, Lcom/miui/home/launcher/uninstall/UninstallController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {v3, v1}, Lcom/miui/launcher/utils/LauncherUtils;->hasRelativeXSpaceApp(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 88
    iget-object v3, p0, Lcom/miui/home/launcher/uninstall/UninstallController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    const/4 v4, 0x0

    invoke-static {v3, v1, v4}, Lcom/miui/launcher/utils/LauncherUtils;->deletePackageAsXspaceUser(Landroid/content/Context;Ljava/lang/String;Lcom/miui/launcher/common/PackageDeleteObserverDelegate;)V

    .line 90
    :cond_2
    iget-object v3, p0, Lcom/miui/home/launcher/uninstall/UninstallController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    new-instance v4, Lcom/miui/home/launcher/uninstall/UninstallController$DeleteObserver;

    iget-object v5, p0, Lcom/miui/home/launcher/uninstall/UninstallController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-direct {v4, v5, p1}, Lcom/miui/home/launcher/uninstall/UninstallController$DeleteObserver;-><init>(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/ShortcutInfo;)V

    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->getUserId()I

    move-result v5

    const/4 v6, 0x4

    invoke-static {v3, v1, v4, v5, v6}, Lcom/miui/launcher/utils/LauncherUtils;->deletePackageAsUser(Landroid/content/Context;Ljava/lang/String;Lcom/miui/launcher/common/PackageDeleteObserverDelegate;II)V

    .line 92
    :goto_0
    iget-object v3, p1, Lcom/miui/home/launcher/ShortcutInfo;->mIntent:Landroid/content/Intent;

    if-eqz v3, :cond_3

    .line 93
    iget-object v3, p1, Lcom/miui/home/launcher/ShortcutInfo;->mIntent:Landroid/content/Intent;

    invoke-virtual {v3, v0}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackDeletedShortCut(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    :cond_3
    invoke-static {p1}, Lcom/miui/home/launcher/uninstall/UninstallController;->announceDeleted(Lcom/miui/home/launcher/ItemInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    move-exception p1

    const-string v2, "UninstallController"

    .line 98
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can not uninstallApp: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 100
    :cond_4
    iget-object v1, p0, Lcom/miui/home/launcher/uninstall/UninstallController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {p1, v1, v0}, Lcom/miui/home/launcher/uninstall/UninstallController;->isHideAppValid(Lcom/miui/home/launcher/ItemInfo;Lcom/miui/home/launcher/Launcher;Z)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 101
    iget-object v0, p0, Lcom/miui/home/launcher/uninstall/UninstallController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0, p1, v0}, Lcom/miui/home/launcher/uninstall/UninstallController;->hideApp(Lcom/miui/home/launcher/ShortcutInfo;Lcom/miui/home/launcher/Launcher;)V

    .line 102
    invoke-static {p1}, Lcom/miui/home/launcher/uninstall/UninstallController;->announceDeleted(Lcom/miui/home/launcher/ItemInfo;)V

    return v2

    :cond_5
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

    .line 66
    sget-object v0, Lcom/miui/home/launcher/uninstall/UninstallController;->mDeleteAppList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 67
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/ShortcutInfo;

    .line 68
    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutInfo;->isApplicatoin()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 69
    new-instance v1, Lcom/miui/home/launcher/uninstall/-$$Lambda$UninstallController$ZWqkH8kI1mOj7u7EgUxJn-XBNrY;

    invoke-direct {v1, p0, v0}, Lcom/miui/home/launcher/uninstall/-$$Lambda$UninstallController$ZWqkH8kI1mOj7u7EgUxJn-XBNrY;-><init>(Lcom/miui/home/launcher/uninstall/UninstallController;Lcom/miui/home/launcher/ShortcutInfo;)V

    const/4 v0, 0x0

    invoke-static {v1, v0, v0}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->execParallel(Ljava/util/function/Function;Ljava/util/function/Consumer;Ljava/lang/Object;)V

    goto :goto_0

    .line 74
    :cond_0
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/uninstall/UninstallController;->deleteItem(Lcom/miui/home/launcher/ItemInfo;)V

    goto :goto_0

    :cond_1
    return-void
.end method
