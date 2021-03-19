.class public Lcom/miui/home/launcher/FolderInfo;
.super Lcom/miui/home/launcher/ItemInfo;
.source "FolderInfo.java"

# interfaces
.implements Lcom/miui/home/launcher/interfaces/CurrentScreenShowingListener;


# instance fields
.field private folderTagId:Ljava/lang/String;

.field public icon:Lcom/miui/home/launcher/Folder$FolderCallback;

.field private mAdapter:Lcom/miui/home/launcher/ShortcutsAdapter;

.field private mBuddyIconView:Lcom/miui/home/launcher/FolderIcon;

.field private mContents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/ShortcutInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mIsRecommendAppsSwitchON:Z

.field private mPreinstallManager:Lcom/miui/home/launcher/commercial/preinstall/FolderPreinstallManager;

.field private mRecommendAppsController:Lcom/miui/home/launcher/commercial/recommend/RecommendController;

.field opened:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 69
    invoke-direct {p0}, Lcom/miui/home/launcher/ItemInfo;-><init>()V

    const/4 v0, 0x0

    .line 56
    iput-object v0, p0, Lcom/miui/home/launcher/FolderInfo;->icon:Lcom/miui/home/launcher/Folder$FolderCallback;

    .line 59
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Lcom/miui/home/launcher/FolderInfo;->mContents:Ljava/util/List;

    .line 60
    iput-object v0, p0, Lcom/miui/home/launcher/FolderInfo;->mAdapter:Lcom/miui/home/launcher/ShortcutsAdapter;

    const/4 v0, 0x0

    .line 65
    iput-boolean v0, p0, Lcom/miui/home/launcher/FolderInfo;->mIsRecommendAppsSwitchON:Z

    const/4 v0, 0x2

    .line 70
    iput v0, p0, Lcom/miui/home/launcher/FolderInfo;->itemType:I

    .line 71
    invoke-static {p0}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->getController(Lcom/miui/home/launcher/FolderInfo;)Lcom/miui/home/launcher/commercial/recommend/RecommendController;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/FolderInfo;->mRecommendAppsController:Lcom/miui/home/launcher/commercial/recommend/RecommendController;

    .line 72
    invoke-static {}, Lcom/miui/home/launcher/commercial/preinstall/FolderPreinstallManager;->getManager()Lcom/miui/home/launcher/commercial/preinstall/FolderPreinstallManager;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/FolderInfo;->mPreinstallManager:Lcom/miui/home/launcher/commercial/preinstall/FolderPreinstallManager;

    return-void
.end method

.method private hasNewInstalledApp()Z
    .locals 3

    .line 175
    monitor-enter p0

    .line 176
    :try_start_0
    iget-object v0, p0, Lcom/miui/home/launcher/FolderInfo;->mContents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/ShortcutInfo;

    .line 177
    iget v1, v1, Lcom/miui/home/launcher/ShortcutInfo;->itemFlags:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 178
    monitor-exit p0

    return v0

    .line 181
    :cond_1
    monitor-exit p0

    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private isSystemCreatedFolder(Ljava/lang/String;)Z
    .locals 1

    .line 228
    iget-object v0, p0, Lcom/miui/home/launcher/FolderInfo;->mLabel:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/FolderInfo;->mLabel:Ljava/lang/CharSequence;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method static synthetic lambda$preLoadContentView$0(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/ShortcutInfo;)Landroid/view/View;
    .locals 1

    .line 155
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getFolderCling()Lcom/miui/home/launcher/FolderCling;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderCling;->getFolder()Lcom/miui/home/launcher/Folder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Folder;->getContent()Lcom/miui/home/launcher/FolderGridView;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/miui/home/launcher/Launcher;->createItemIcon(Landroid/view/ViewGroup;Lcom/miui/home/launcher/ItemInfo;)Lcom/miui/home/launcher/ItemIcon;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$preLoadContentView$1(Lcom/miui/home/launcher/FolderInfo;Lcom/miui/home/launcher/Launcher;)V
    .locals 4

    .line 160
    iget-wide v0, p0, Lcom/miui/home/launcher/FolderInfo;->id:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 161
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/FolderInfo;->initRecommendSwitchState(Lcom/miui/home/launcher/Launcher;)V

    :cond_0
    return-void
.end method

.method private updateLabelFromTitle(Landroid/content/Context;)V
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/miui/home/launcher/FolderInfo;->mTitle:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->isSystemDefaultFolder(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 94
    iget-object p1, p0, Lcom/miui/home/launcher/FolderInfo;->mTitle:Ljava/lang/CharSequence;

    iput-object p1, p0, Lcom/miui/home/launcher/FolderInfo;->mLabel:Ljava/lang/CharSequence;

    :cond_0
    return-void
.end method


# virtual methods
.method public add(Lcom/miui/home/launcher/ShortcutInfo;Lcom/miui/home/launcher/allapps/LauncherMode;)V
    .locals 1

    const/4 v0, 0x0

    .line 104
    invoke-virtual {p0, p1, v0, p2}, Lcom/miui/home/launcher/FolderInfo;->add(Lcom/miui/home/launcher/ShortcutInfo;ZLcom/miui/home/launcher/allapps/LauncherMode;)V

    return-void
.end method

.method public add(Lcom/miui/home/launcher/ShortcutInfo;ZLcom/miui/home/launcher/allapps/LauncherMode;)V
    .locals 2

    .line 108
    iget v0, p1, Lcom/miui/home/launcher/ShortcutInfo;->itemType:I

    const/16 v1, 0xf

    if-ne v0, v1, :cond_0

    return-void

    .line 111
    :cond_0
    monitor-enter p0

    .line 112
    :try_start_0
    iget-object v0, p0, Lcom/miui/home/launcher/FolderInfo;->mContents:Ljava/util/List;

    invoke-virtual {p3, v0, p1}, Lcom/miui/home/launcher/allapps/LauncherMode;->canAddToFolder(Ljava/util/Collection;Lcom/miui/home/launcher/ShortcutInfo;)Z

    move-result p3

    if-eqz p3, :cond_3

    if-eqz p2, :cond_2

    const/4 p2, -0x1

    .line 115
    iget-object p3, p0, Lcom/miui/home/launcher/FolderInfo;->mContents:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/ShortcutInfo;

    .line 116
    iget v0, v0, Lcom/miui/home/launcher/ShortcutInfo;->cellX:I

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    goto :goto_0

    :cond_1
    add-int/lit8 p2, p2, 0x1

    .line 118
    iput p2, p1, Lcom/miui/home/launcher/ShortcutInfo;->cellX:I

    .line 120
    :cond_2
    iget-object p2, p0, Lcom/miui/home/launcher/FolderInfo;->mContents:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    :cond_3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    iget-wide p2, p0, Lcom/miui/home/launcher/FolderInfo;->id:J

    iput-wide p2, p1, Lcom/miui/home/launcher/ShortcutInfo;->container:J

    .line 124
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderInfo;->updateNewInstallNotification()V

    return-void

    :catchall_0
    move-exception p1

    .line 122
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public canAcceptByHotSeats()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public canBeDeleted(Landroid/content/Context;)Z
    .locals 0

    .line 418
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderInfo;->count()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public canRecommendAppsScreenShow()Z
    .locals 1

    .line 385
    iget-object v0, p0, Lcom/miui/home/launcher/FolderInfo;->mRecommendAppsController:Lcom/miui/home/launcher/commercial/recommend/RecommendController;

    invoke-virtual {v0}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->canRecommendScreenShow()Z

    move-result v0

    return v0
.end method

.method public canShowShortcutMenu()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public clone()Lcom/miui/home/launcher/ItemInfo;
    .locals 2

    .line 335
    invoke-super {p0}, Lcom/miui/home/launcher/ItemInfo;->clone()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/FolderInfo;

    .line 336
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, v0, Lcom/miui/home/launcher/FolderInfo;->mContents:Ljava/util/List;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 47
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderInfo;->clone()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v0

    return-object v0
.end method

.method public contains(Lcom/miui/home/launcher/ShortcutInfo;)Z
    .locals 1

    .line 135
    monitor-enter p0

    .line 136
    :try_start_0
    iget-object v0, p0, Lcom/miui/home/launcher/FolderInfo;->mContents:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    .line 137
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public count()I
    .locals 1

    .line 281
    monitor-enter p0

    .line 282
    :try_start_0
    iget-object v0, p0, Lcom/miui/home/launcher/FolderInfo;->mContents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    .line 283
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getAdapter(Landroid/content/Context;)Lcom/miui/home/launcher/ShortcutsAdapter;
    .locals 1

    .line 287
    iget-object v0, p0, Lcom/miui/home/launcher/FolderInfo;->mAdapter:Lcom/miui/home/launcher/ShortcutsAdapter;

    if-nez v0, :cond_3

    .line 288
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderInfo;->isRecommendFolder()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderInfo;->isGamesFolder()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 289
    :cond_0
    new-instance v0, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalPreinstallableFolderShortcutsAdapter;

    invoke-direct {v0, p1, p0}, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalPreinstallableFolderShortcutsAdapter;-><init>(Landroid/content/Context;Lcom/miui/home/launcher/FolderInfo;)V

    iput-object v0, p0, Lcom/miui/home/launcher/FolderInfo;->mAdapter:Lcom/miui/home/launcher/ShortcutsAdapter;

    goto :goto_0

    .line 290
    :cond_1
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderInfo;->isRecommendFolder()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 291
    new-instance v0, Lcom/miui/home/launcher/commercial/preinstall/cn/CNPreinstallableFolderShortcutsAdapter;

    invoke-direct {v0, p1, p0}, Lcom/miui/home/launcher/commercial/preinstall/cn/CNPreinstallableFolderShortcutsAdapter;-><init>(Landroid/content/Context;Lcom/miui/home/launcher/FolderInfo;)V

    iput-object v0, p0, Lcom/miui/home/launcher/FolderInfo;->mAdapter:Lcom/miui/home/launcher/ShortcutsAdapter;

    goto :goto_0

    .line 293
    :cond_2
    new-instance v0, Lcom/miui/home/launcher/ShortcutsAdapter;

    invoke-direct {v0, p1, p0}, Lcom/miui/home/launcher/ShortcutsAdapter;-><init>(Landroid/content/Context;Lcom/miui/home/launcher/FolderInfo;)V

    iput-object v0, p0, Lcom/miui/home/launcher/FolderInfo;->mAdapter:Lcom/miui/home/launcher/ShortcutsAdapter;

    .line 296
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/miui/home/launcher/FolderInfo;->mAdapter:Lcom/miui/home/launcher/ShortcutsAdapter;

    return-object p1
.end method

.method public getBuddyIconView()Lcom/miui/home/launcher/FolderIcon;
    .locals 1

    .line 236
    iget-object v0, p0, Lcom/miui/home/launcher/FolderInfo;->mBuddyIconView:Lcom/miui/home/launcher/FolderIcon;

    return-object v0
.end method

.method public getContents()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/ShortcutInfo;",
            ">;"
        }
    .end annotation

    .line 141
    monitor-enter p0

    .line 142
    :try_start_0
    iget-object v0, p0, Lcom/miui/home/launcher/FolderInfo;->mContents:Ljava/util/List;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 143
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getFolderNameUsedToRequestFolderAdList(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 351
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderInfo;->isRecommendFolder()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "recommend"

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/FolderInfo;->getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public getFolderTagId()Ljava/lang/String;
    .locals 1

    .line 432
    iget-object v0, p0, Lcom/miui/home/launcher/FolderInfo;->folderTagId:Ljava/lang/String;

    return-object v0
.end method

.method public getFolderTagIdToRequestRecommendAd()[Ljava/lang/String;
    .locals 1

    .line 355
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderInfo;->isRecommendFolder()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "1.302.4.1"

    .line 356
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 357
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderInfo;->isGamesFolder()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "1.302.4.13"

    .line 358
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 359
    :cond_1
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderInfo;->isUserGameFolder()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "1.302.4.18"

    .line 360
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    const/4 v0, 0x0

    .line 362
    new-array v0, v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getPackageNameList()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 341
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 342
    monitor-enter p0

    const/4 v1, 0x0

    .line 343
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/miui/home/launcher/FolderInfo;->mContents:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 344
    iget-object v2, p0, Lcom/miui/home/launcher/FolderInfo;->mContents:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-virtual {v2}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 346
    :cond_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getPreinstallAdsEnable()Z
    .locals 1

    .line 381
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderInfo;->isRecommendFolder()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderInfo;->isGamesFolder()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/FolderInfo;->mRecommendAppsController:Lcom/miui/home/launcher/commercial/recommend/RecommendController;

    invoke-virtual {v0}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->isRecommendSwitchOn()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getPreinstallManager()Lcom/miui/home/launcher/commercial/preinstall/FolderPreinstallManager;
    .locals 1

    .line 443
    iget-object v0, p0, Lcom/miui/home/launcher/FolderInfo;->mPreinstallManager:Lcom/miui/home/launcher/commercial/preinstall/FolderPreinstallManager;

    return-object v0
.end method

.method public getRecommendController()Lcom/miui/home/launcher/commercial/recommend/RecommendController;
    .locals 1

    .line 367
    iget-object v0, p0, Lcom/miui/home/launcher/FolderInfo;->mRecommendAppsController:Lcom/miui/home/launcher/commercial/recommend/RecommendController;

    return-object v0
.end method

.method public getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 1

    .line 300
    iget-object v0, p0, Lcom/miui/home/launcher/FolderInfo;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 301
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/Application;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f100277

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    if-nez p1, :cond_1

    .line 304
    iget-object p1, p0, Lcom/miui/home/launcher/FolderInfo;->mTitle:Ljava/lang/CharSequence;

    return-object p1

    .line 306
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/FolderInfo;->mTitle:Ljava/lang/CharSequence;

    invoke-static {p1, v0}, Lcom/miui/home/launcher/LauncherModel;->loadTitle(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public initRecommendSwitchState(Lcom/miui/home/launcher/Launcher;)V
    .locals 1

    .line 187
    iget-object p1, p0, Lcom/miui/home/launcher/FolderInfo;->mRecommendAppsController:Lcom/miui/home/launcher/commercial/recommend/RecommendController;

    invoke-virtual {p1}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->isRecommendSwitchOn()Z

    move-result p1

    .line 189
    iget-boolean v0, p0, Lcom/miui/home/launcher/FolderInfo;->mIsRecommendAppsSwitchON:Z

    if-eq v0, p1, :cond_0

    .line 190
    iput-boolean p1, p0, Lcom/miui/home/launcher/FolderInfo;->mIsRecommendAppsSwitchON:Z

    .line 191
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/FolderInfo;->onRecommendAppsSwitchStateChanged(Z)V

    :cond_0
    return-void
.end method

.method public isAllItemDragging(Lcom/miui/home/launcher/DragObject;)Z
    .locals 4

    .line 397
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 398
    :goto_0
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDraggingSize()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 399
    invoke-virtual {p1, v1}, Lcom/miui/home/launcher/DragObject;->getDragInfo(I)Lcom/miui/home/launcher/ItemInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 400
    instance-of v3, v2, Lcom/miui/home/launcher/ShortcutInfo;

    if-eqz v3, :cond_0

    .line 401
    check-cast v2, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 404
    :cond_1
    monitor-enter p0

    .line 405
    :try_start_0
    iget-object p1, p0, Lcom/miui/home/launcher/FolderInfo;->mContents:Ljava/util/List;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->containsAll(Ljava/util/Collection;)Z

    move-result p1

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    .line 406
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public isGamesFolder()Z
    .locals 1

    const-string v0, "com.miui.home:string/default_folder_title_game"

    .line 212
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/FolderInfo;->isSystemCreatedFolder(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isGoogleFolder()Z
    .locals 1

    const-string v0, "Google"

    .line 200
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/FolderInfo;->isSystemCreatedFolder(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isOpened()Z
    .locals 1

    .line 393
    iget-boolean v0, p0, Lcom/miui/home/launcher/FolderInfo;->opened:Z

    return v0
.end method

.method public isRecommendFolder()Z
    .locals 1

    const-string v0, "com.miui.home:string/default_folder_title_recommend"

    .line 208
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/FolderInfo;->isSystemCreatedFolder(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isToolsFolder()Z
    .locals 1

    const-string v0, "com.miui.home:string/default_folder_title_tools"

    .line 204
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/FolderInfo;->isSystemCreatedFolder(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isUserGameFolder()Z
    .locals 1

    const-string v0, "user_game_folder"

    .line 216
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/FolderInfo;->isSystemCreatedFolder(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isWorkFolder()Z
    .locals 1

    const-string v0, "com.miui.home:string/all_app_category_work"

    .line 224
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/FolderInfo;->isSystemCreatedFolder(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public load(Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 2

    .line 77
    invoke-super {p0, p1, p2}, Lcom/miui/home/launcher/ItemInfo;->load(Landroid/content/Context;Landroid/database/Cursor;)V

    const/4 p1, 0x2

    .line 78
    invoke-interface {p2, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/FolderInfo;->mTitle:Ljava/lang/CharSequence;

    const/16 p1, 0x16

    .line 79
    invoke-interface {p2, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/FolderInfo;->mLabel:Ljava/lang/CharSequence;

    .line 80
    monitor-enter p0

    .line 81
    :try_start_0
    iget-object p1, p0, Lcom/miui/home/launcher/FolderInfo;->mContents:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/miui/home/launcher/ShortcutInfo;

    .line 82
    iget-wide v0, p0, Lcom/miui/home/launcher/FolderInfo;->id:J

    iput-wide v0, p2, Lcom/miui/home/launcher/ShortcutInfo;->container:J

    goto :goto_0

    .line 84
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderInfo;->isRecommendFolder()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "1.302.4.2"

    .line 86
    iput-object p1, p0, Lcom/miui/home/launcher/FolderInfo;->folderTagId:Ljava/lang/String;

    goto :goto_1

    .line 87
    :cond_1
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderInfo;->isGamesFolder()Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "1.302.4.12"

    .line 88
    iput-object p1, p0, Lcom/miui/home/launcher/FolderInfo;->folderTagId:Ljava/lang/String;

    :cond_2
    :goto_1
    return-void

    :catchall_0
    move-exception p1

    .line 84
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .line 267
    iget-object v0, p0, Lcom/miui/home/launcher/FolderInfo;->mAdapter:Lcom/miui/home/launcher/ShortcutsAdapter;

    if-eqz v0, :cond_0

    .line 268
    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutsAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 270
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderInfo;->refreshPreviewIcons()V

    :goto_0
    return-void
.end method

.method public onAddToDatabase(Landroid/content/Context;Landroid/content/ContentValues;)V
    .locals 2

    .line 321
    invoke-super {p0, p1, p2}, Lcom/miui/home/launcher/ItemInfo;->onAddToDatabase(Landroid/content/Context;Landroid/content/ContentValues;)V

    const-string v0, "title"

    .line 322
    iget-object v1, p0, Lcom/miui/home/launcher/FolderInfo;->mTitle:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    iget-object v0, p0, Lcom/miui/home/launcher/FolderInfo;->mLabel:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/FolderInfo;->updateLabelFromTitle(Landroid/content/Context;)V

    .line 325
    :cond_0
    iget-object p1, p0, Lcom/miui/home/launcher/FolderInfo;->mLabel:Ljava/lang/CharSequence;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/home/launcher/FolderInfo;->mLabel:Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    const-string v0, "label"

    .line 326
    invoke-virtual {p2, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onBinded(Z)V
    .locals 1

    .line 410
    iget-object v0, p0, Lcom/miui/home/launcher/FolderInfo;->mAdapter:Lcom/miui/home/launcher/ShortcutsAdapter;

    if-eqz v0, :cond_0

    .line 411
    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/ShortcutsAdapter;->onBinded(Z)V

    .line 413
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/FolderInfo;->mRecommendAppsController:Lcom/miui/home/launcher/commercial/recommend/RecommendController;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->onBinded(Z)V

    return-void
.end method

.method public onCurrentScreenShowing()V
    .locals 1

    .line 428
    iget-object v0, p0, Lcom/miui/home/launcher/FolderInfo;->mRecommendAppsController:Lcom/miui/home/launcher/commercial/recommend/RecommendController;

    invoke-virtual {v0}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->onCurrentScreenShowing()V

    return-void
.end method

.method public onRecommendAppsSwitchStateChanged(Z)V
    .locals 1

    .line 371
    iget-object v0, p0, Lcom/miui/home/launcher/FolderInfo;->mAdapter:Lcom/miui/home/launcher/ShortcutsAdapter;

    if-eqz v0, :cond_0

    .line 372
    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/ShortcutsAdapter;->onRecommendAppsEnableChanged(Z)V

    :cond_0
    return-void
.end method

.method public preLoadContentView(Lcom/miui/home/launcher/Launcher;)V
    .locals 4

    .line 152
    monitor-enter p0

    .line 153
    :try_start_0
    iget-object v0, p0, Lcom/miui/home/launcher/FolderInfo;->mContents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/ShortcutInfo;

    .line 154
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getLoadingAsyncInflateManager()Lcom/miui/home/launcher/common/LoadingAsyncInflateManager;

    move-result-object v2

    new-instance v3, Lcom/miui/home/launcher/-$$Lambda$FolderInfo$EHWwbi1P0WxtGbloHnLs0P_cpMk;

    invoke-direct {v3, p1, v1}, Lcom/miui/home/launcher/-$$Lambda$FolderInfo$EHWwbi1P0WxtGbloHnLs0P_cpMk;-><init>(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/ShortcutInfo;)V

    const/4 v1, 0x0

    invoke-virtual {v2, v3, v1}, Lcom/miui/home/launcher/common/LoadingAsyncInflateManager;->inflateViewAsync(Ljava/util/function/Supplier;Ljava/util/function/Consumer;)V

    goto :goto_0

    .line 158
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 159
    new-instance v0, Lcom/miui/home/launcher/-$$Lambda$FolderInfo$OOfIaZsMad2fcchaT_DdDJaBdUA;

    invoke-direct {v0, p0, p1}, Lcom/miui/home/launcher/-$$Lambda$FolderInfo$OOfIaZsMad2fcchaT_DdDJaBdUA;-><init>(Lcom/miui/home/launcher/FolderInfo;Lcom/miui/home/launcher/Launcher;)V

    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->useViewToPost(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception p1

    .line 158
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public printSimpleIdentity()Ljava/lang/String;
    .locals 3

    .line 330
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/miui/home/launcher/FolderInfo;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method refreshPreviewIcons()V
    .locals 2

    .line 275
    iget-object v0, p0, Lcom/miui/home/launcher/FolderInfo;->icon:Lcom/miui/home/launcher/Folder$FolderCallback;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 276
    invoke-interface {v0, v1}, Lcom/miui/home/launcher/Folder$FolderCallback;->loadItemIcons(Z)V

    :cond_0
    return-void
.end method

.method public remove(Lcom/miui/home/launcher/ShortcutInfo;)V
    .locals 1

    .line 245
    monitor-enter p0

    .line 246
    :try_start_0
    iget-object v0, p0, Lcom/miui/home/launcher/FolderInfo;->mContents:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 247
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 248
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderInfo;->updateNewInstallNotification()V

    return-void

    :catchall_0
    move-exception p1

    .line 247
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public remove(J)Z
    .locals 4

    .line 252
    monitor-enter p0

    .line 253
    :try_start_0
    iget-object v0, p0, Lcom/miui/home/launcher/FolderInfo;->mContents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/ShortcutInfo;

    .line 254
    iget-wide v2, v1, Lcom/miui/home/launcher/ShortcutInfo;->id:J

    cmp-long v2, v2, p1

    if-nez v2, :cond_0

    .line 255
    iget-object p1, p0, Lcom/miui/home/launcher/FolderInfo;->mContents:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 256
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderInfo;->notifyDataSetChanged()V

    .line 257
    iget-object p1, p0, Lcom/miui/home/launcher/FolderInfo;->mBuddyIconView:Lcom/miui/home/launcher/FolderIcon;

    invoke-virtual {p1}, Lcom/miui/home/launcher/FolderIcon;->checkToDeleteSelf()V

    .line 258
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderInfo;->updateNewInstallNotification()V

    const/4 p1, 0x1

    .line 259
    monitor-exit p0

    return p1

    .line 262
    :cond_1
    monitor-exit p0

    const/4 p1, 0x0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public removeRecommendAppsViewKey()V
    .locals 1

    .line 389
    iget-object v0, p0, Lcom/miui/home/launcher/FolderInfo;->mRecommendAppsController:Lcom/miui/home/launcher/commercial/recommend/RecommendController;

    invoke-virtual {v0}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->removeRecommendSwitchSharedPreference()V

    return-void
.end method

.method public setBuddyIconView(Lcom/miui/home/launcher/FolderIcon;)V
    .locals 0

    .line 232
    iput-object p1, p0, Lcom/miui/home/launcher/FolderInfo;->mBuddyIconView:Lcom/miui/home/launcher/FolderIcon;

    return-void
.end method

.method public setLabelAndUpdateDb(Landroid/content/Context;Ljava/lang/CharSequence;)V
    .locals 4

    .line 436
    iget-wide v0, p0, Lcom/miui/home/launcher/FolderInfo;->id:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 437
    iput-object p2, p0, Lcom/miui/home/launcher/FolderInfo;->mLabel:Ljava/lang/CharSequence;

    .line 438
    iget-wide v0, p0, Lcom/miui/home/launcher/FolderInfo;->id:J

    iget-object p2, p0, Lcom/miui/home/launcher/FolderInfo;->mLabel:Ljava/lang/CharSequence;

    invoke-static {p1, v0, v1, p2}, Lcom/miui/home/launcher/LauncherModel;->updateLabelInDatabase(Landroid/content/Context;JLjava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setRecommendAppsSwitchOn(Z)V
    .locals 1

    .line 377
    iget-object v0, p0, Lcom/miui/home/launcher/FolderInfo;->mRecommendAppsController:Lcom/miui/home/launcher/commercial/recommend/RecommendController;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->setRecommendSwitchOn(Z)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;Landroid/content/Context;)V
    .locals 4

    .line 310
    iput-object p1, p0, Lcom/miui/home/launcher/FolderInfo;->mTitle:Ljava/lang/CharSequence;

    .line 311
    iget-object v0, p0, Lcom/miui/home/launcher/FolderInfo;->icon:Lcom/miui/home/launcher/Folder$FolderCallback;

    if-eqz v0, :cond_0

    .line 312
    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/FolderInfo;->getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/miui/home/launcher/Folder$FolderCallback;->setTitle(Ljava/lang/CharSequence;)V

    .line 314
    :cond_0
    iget-wide v0, p0, Lcom/miui/home/launcher/FolderInfo;->id:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 315
    iget-wide v0, p0, Lcom/miui/home/launcher/FolderInfo;->id:J

    invoke-static {p2, v0, v1, p1}, Lcom/miui/home/launcher/LauncherModel;->updateTitleInDatabase(Landroid/content/Context;JLjava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public updateNewInstallNotification()V
    .locals 2

    .line 168
    iget-object v0, p0, Lcom/miui/home/launcher/FolderInfo;->mBuddyIconView:Lcom/miui/home/launcher/FolderIcon;

    if-eqz v0, :cond_1

    .line 169
    invoke-direct {p0}, Lcom/miui/home/launcher/FolderInfo;->hasNewInstalledApp()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/newInstallIndicator/NewInstallIndicatorController;->getController()Lcom/miui/home/launcher/newInstallIndicator/NewInstallIndicatorController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/newInstallIndicator/NewInstallIndicatorController;->canFolderShowIndicator()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 170
    :goto_0
    iget-object v1, p0, Lcom/miui/home/launcher/FolderInfo;->mBuddyIconView:Lcom/miui/home/launcher/FolderIcon;

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/FolderIcon;->updateNewInstallIndicator(Z)V

    :cond_1
    return-void
.end method
