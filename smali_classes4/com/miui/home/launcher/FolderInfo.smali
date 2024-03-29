.class public Lcom/miui/home/launcher/FolderInfo;
.super Lcom/miui/home/launcher/ItemInfo;
.source "FolderInfo.java"

# interfaces
.implements Lcom/miui/home/launcher/folder/AppPredictUpdateListener;
.implements Lcom/miui/home/launcher/interfaces/CurrentScreenShowingListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/FolderInfo$AppPredictStatus;
    }
.end annotation


# instance fields
.field private globalFolderTagId:Ljava/lang/String;

.field public icon:Lcom/miui/home/launcher/Folder$FolderCallback;

.field private mAdapter:Lcom/miui/home/launcher/ShortcutsAdapter;

.field private mAppPredictList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/ShortcutInfo;",
            ">;"
        }
    .end annotation
.end field

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

.field private mHasNewInstallApps:Z

.field private mIsRecommendAppsSwitchON:Z

.field private mPreinstallManager:Lcom/miui/home/launcher/commercial/preinstall/FolderPreinstallManager;

.field private mRecommendAppsController:Lcom/miui/home/launcher/commercial/recommend/RecommendController;

.field opened:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    .line 104
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/FolderInfo;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 107
    invoke-direct {p0}, Lcom/miui/home/launcher/ItemInfo;-><init>()V

    const/4 v0, 0x0

    .line 69
    iput-object v0, p0, Lcom/miui/home/launcher/FolderInfo;->icon:Lcom/miui/home/launcher/Folder$FolderCallback;

    .line 72
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Lcom/miui/home/launcher/FolderInfo;->mContents:Ljava/util/List;

    .line 74
    iput-object v0, p0, Lcom/miui/home/launcher/FolderInfo;->mAdapter:Lcom/miui/home/launcher/ShortcutsAdapter;

    const/4 v0, 0x0

    .line 79
    iput-boolean v0, p0, Lcom/miui/home/launcher/FolderInfo;->mIsRecommendAppsSwitchON:Z

    .line 81
    iput-boolean v0, p0, Lcom/miui/home/launcher/FolderInfo;->mHasNewInstallApps:Z

    .line 108
    iput p1, p0, Lcom/miui/home/launcher/FolderInfo;->itemType:I

    .line 109
    invoke-static {p0}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->getController(Lcom/miui/home/launcher/FolderInfo;)Lcom/miui/home/launcher/commercial/recommend/RecommendController;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/FolderInfo;->mRecommendAppsController:Lcom/miui/home/launcher/commercial/recommend/RecommendController;

    .line 110
    invoke-static {}, Lcom/miui/home/launcher/commercial/preinstall/FolderPreinstallManager;->getManager()Lcom/miui/home/launcher/commercial/preinstall/FolderPreinstallManager;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/FolderInfo;->mPreinstallManager:Lcom/miui/home/launcher/commercial/preinstall/FolderPreinstallManager;

    return-void
.end method

.method private getPreviewMaxCount()I
    .locals 1

    .line 557
    iget p0, p0, Lcom/miui/home/launcher/FolderInfo;->itemType:I

    const/16 v0, 0x15

    if-ne p0, v0, :cond_0

    const/4 p0, 0x7

    return p0

    :cond_0
    const/16 p0, 0xc

    return p0
.end method

.method private isSystemCreatedFolder(Ljava/lang/String;)Z
    .locals 1

    .line 292
    iget-object v0, p0, Lcom/miui/home/launcher/FolderInfo;->mLabel:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/miui/home/launcher/FolderInfo;->mLabel:Ljava/lang/CharSequence;

    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private updateLabelFromTitle(Landroid/content/Context;)V
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/miui/home/launcher/FolderInfo;->mTitle:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->isSystemDefaultFolder(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 135
    iget-object p1, p0, Lcom/miui/home/launcher/FolderInfo;->mTitle:Ljava/lang/CharSequence;

    iput-object p1, p0, Lcom/miui/home/launcher/FolderInfo;->mLabel:Ljava/lang/CharSequence;

    :cond_0
    return-void
.end method

.method private updateNewInstallFlag()V
    .locals 3

    const/4 v0, 0x0

    .line 219
    iput-boolean v0, p0, Lcom/miui/home/launcher/FolderInfo;->mHasNewInstallApps:Z

    .line 220
    monitor-enter p0

    .line 221
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

    .line 222
    iget v1, v1, Lcom/miui/home/launcher/ShortcutInfo;->itemFlags:I

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 223
    iput-boolean v0, p0, Lcom/miui/home/launcher/FolderInfo;->mHasNewInstallApps:Z

    .line 227
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public add(Lcom/miui/home/launcher/ShortcutInfo;Lcom/miui/home/launcher/allapps/LauncherMode;)V
    .locals 1

    const/4 v0, 0x0

    .line 145
    invoke-virtual {p0, p1, v0, p2}, Lcom/miui/home/launcher/FolderInfo;->add(Lcom/miui/home/launcher/ShortcutInfo;ZLcom/miui/home/launcher/allapps/LauncherMode;)V

    return-void
.end method

.method public add(Lcom/miui/home/launcher/ShortcutInfo;ZLcom/miui/home/launcher/allapps/LauncherMode;)V
    .locals 2

    .line 149
    iget v0, p1, Lcom/miui/home/launcher/ShortcutInfo;->itemType:I

    const/16 v1, 0xf

    if-ne v0, v1, :cond_0

    return-void

    .line 152
    :cond_0
    monitor-enter p0

    .line 153
    :try_start_0
    iget-object v0, p0, Lcom/miui/home/launcher/FolderInfo;->mContents:Ljava/util/List;

    invoke-virtual {p3, v0, p1}, Lcom/miui/home/launcher/allapps/LauncherMode;->canAddToFolder(Ljava/util/Collection;Lcom/miui/home/launcher/ShortcutInfo;)Z

    move-result p3

    if-eqz p3, :cond_3

    if-eqz p2, :cond_2

    const/4 p2, -0x1

    .line 156
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

    .line 157
    iget v0, v0, Lcom/miui/home/launcher/ShortcutInfo;->cellX:I

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    goto :goto_0

    :cond_1
    add-int/lit8 p2, p2, 0x1

    .line 159
    iput p2, p1, Lcom/miui/home/launcher/ShortcutInfo;->cellX:I

    .line 161
    :cond_2
    iget-object p2, p0, Lcom/miui/home/launcher/FolderInfo;->mContents:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    :cond_3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    iget-wide p2, p0, Lcom/miui/home/launcher/FolderInfo;->id:J

    iput-wide p2, p1, Lcom/miui/home/launcher/ShortcutInfo;->container:J

    .line 165
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderInfo;->updateNewInstallNotification()V

    return-void

    :catchall_0
    move-exception p1

    .line 163
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public areContentsTheSame(Lcom/miui/home/launcher/ItemInfo;)Z
    .locals 1

    .line 532
    invoke-super {p0, p1}, Lcom/miui/home/launcher/ItemInfo;->areContentsTheSame(Lcom/miui/home/launcher/ItemInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/miui/home/launcher/FolderInfo;->mContents:Ljava/util/List;

    check-cast p1, Lcom/miui/home/launcher/FolderInfo;

    iget-object p1, p1, Lcom/miui/home/launcher/FolderInfo;->mContents:Ljava/util/List;

    .line 533
    invoke-interface {p0, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public canAcceptByHotSeats()Z
    .locals 0

    .line 194
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderInfo;->isBigFolder()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public canBeDeleted(Landroid/content/Context;)Z
    .locals 0

    .line 502
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderInfo;->count()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public canRecommendAppsScreenShow()Z
    .locals 0

    .line 469
    iget-object p0, p0, Lcom/miui/home/launcher/FolderInfo;->mRecommendAppsController:Lcom/miui/home/launcher/commercial/recommend/RecommendController;

    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->canRecommendScreenShow()Z

    move-result p0

    return p0
.end method

.method public canShowShortcutMenu()Z
    .locals 4

    .line 507
    sget-boolean v0, Lcom/miui/home/launcher/common/Utilities;->ATLEAST_MIUI_14:Z

    if-eqz v0, :cond_0

    const-wide/16 v0, -0x64

    iget-wide v2, p0, Lcom/miui/home/launcher/FolderInfo;->container:J

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public clone()Lcom/miui/home/launcher/ItemInfo;
    .locals 1

    .line 411
    invoke-super {p0}, Lcom/miui/home/launcher/ItemInfo;->clone()Lcom/miui/home/launcher/ItemInfo;

    move-result-object p0

    check-cast p0, Lcom/miui/home/launcher/FolderInfo;

    .line 412
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/FolderInfo;->mContents:Ljava/util/List;

    return-object p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 59
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderInfo;->clone()Lcom/miui/home/launcher/ItemInfo;

    move-result-object p0

    return-object p0
.end method

.method public contains(Lcom/miui/home/launcher/ShortcutInfo;)Z
    .locals 1

    .line 176
    monitor-enter p0

    .line 177
    :try_start_0
    iget-object v0, p0, Lcom/miui/home/launcher/FolderInfo;->mContents:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    .line 178
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public convertIconSize(I)V
    .locals 1

    .line 537
    sget-object v0, Lcom/miui/home/launcher/convertsize/ConvertSizeController;->Companion:Lcom/miui/home/launcher/convertsize/ConvertSizeController$Companion;

    invoke-virtual {v0}, Lcom/miui/home/launcher/convertsize/ConvertSizeController$Companion;->getController()Lcom/miui/home/launcher/convertsize/ConvertSizeController;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/miui/home/launcher/convertsize/ConvertSizeController;->convertFolderSize(Lcom/miui/home/launcher/FolderInfo;I)V

    return-void
.end method

.method public count()I
    .locals 1

    .line 351
    monitor-enter p0

    .line 352
    :try_start_0
    iget-object v0, p0, Lcom/miui/home/launcher/FolderInfo;->mContents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    .line 353
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getAdapter(Landroid/content/Context;)Lcom/miui/home/launcher/ShortcutsAdapter;
    .locals 1

    .line 357
    iget-object v0, p0, Lcom/miui/home/launcher/FolderInfo;->mAdapter:Lcom/miui/home/launcher/ShortcutsAdapter;

    if-nez v0, :cond_5

    .line 358
    sget-boolean v0, Lmiuix/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_2

    .line 359
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderInfo;->isRecommendFolder()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderInfo;->isGamesFolder()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 362
    :cond_0
    new-instance v0, Lcom/miui/home/launcher/ShortcutsAdapter;

    invoke-direct {v0, p1, p0}, Lcom/miui/home/launcher/ShortcutsAdapter;-><init>(Landroid/content/Context;Lcom/miui/home/launcher/FolderInfo;)V

    iput-object v0, p0, Lcom/miui/home/launcher/FolderInfo;->mAdapter:Lcom/miui/home/launcher/ShortcutsAdapter;

    goto :goto_2

    .line 360
    :cond_1
    :goto_0
    new-instance v0, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalPreinstallableFolderShortcutsAdapter;

    invoke-direct {v0, p1, p0}, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalPreinstallableFolderShortcutsAdapter;-><init>(Landroid/content/Context;Lcom/miui/home/launcher/FolderInfo;)V

    iput-object v0, p0, Lcom/miui/home/launcher/FolderInfo;->mAdapter:Lcom/miui/home/launcher/ShortcutsAdapter;

    goto :goto_2

    .line 365
    :cond_2
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderInfo;->isRecommendFolder()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderInfo;->isHotFolder()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    .line 368
    :cond_3
    new-instance v0, Lcom/miui/home/launcher/ShortcutsAdapter;

    invoke-direct {v0, p1, p0}, Lcom/miui/home/launcher/ShortcutsAdapter;-><init>(Landroid/content/Context;Lcom/miui/home/launcher/FolderInfo;)V

    iput-object v0, p0, Lcom/miui/home/launcher/FolderInfo;->mAdapter:Lcom/miui/home/launcher/ShortcutsAdapter;

    goto :goto_2

    .line 366
    :cond_4
    :goto_1
    new-instance v0, Lcom/miui/home/launcher/commercial/preinstall/cn/CNPreinstallableFolderShortcutsAdapter;

    invoke-direct {v0, p1, p0}, Lcom/miui/home/launcher/commercial/preinstall/cn/CNPreinstallableFolderShortcutsAdapter;-><init>(Landroid/content/Context;Lcom/miui/home/launcher/FolderInfo;)V

    iput-object v0, p0, Lcom/miui/home/launcher/FolderInfo;->mAdapter:Lcom/miui/home/launcher/ShortcutsAdapter;

    .line 372
    :cond_5
    :goto_2
    iget-object p0, p0, Lcom/miui/home/launcher/FolderInfo;->mAdapter:Lcom/miui/home/launcher/ShortcutsAdapter;

    return-object p0
.end method

.method public getAppPredictList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/ShortcutInfo;",
            ">;"
        }
    .end annotation

    .line 575
    iget-object p0, p0, Lcom/miui/home/launcher/FolderInfo;->mAppPredictList:Ljava/util/List;

    return-object p0
.end method

.method public getAppPredictPreferenceKey()Ljava/lang/String;
    .locals 3

    .line 596
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "key_enable_app_predict_button_view_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/miui/home/launcher/FolderInfo;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getBuddyIconView()Lcom/miui/home/launcher/FolderIcon;
    .locals 0

    .line 300
    iget-object p0, p0, Lcom/miui/home/launcher/FolderInfo;->mBuddyIconView:Lcom/miui/home/launcher/FolderIcon;

    return-object p0
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

    .line 182
    monitor-enter p0

    .line 183
    :try_start_0
    iget-object v0, p0, Lcom/miui/home/launcher/FolderInfo;->mContents:Ljava/util/List;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 184
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getFolderGridSize()Ljava/lang/String;
    .locals 2

    .line 605
    iget v0, p0, Lcom/miui/home/launcher/FolderInfo;->itemType:I

    const/16 v1, 0x16

    if-ne v0, v1, :cond_0

    const-string p0, "3*3"

    goto :goto_0

    :cond_0
    iget p0, p0, Lcom/miui/home/launcher/FolderInfo;->itemType:I

    const/16 v0, 0x15

    if-ne p0, v0, :cond_1

    const-string p0, "2*2"

    goto :goto_0

    :cond_1
    const-string p0, "1*1"

    :goto_0
    return-object p0
.end method

.method public getFolderNameUsedToRequestFolderAdList(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 428
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderInfo;->isRecommendFolder()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "recommend"

    goto :goto_0

    .line 430
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderInfo;->isHotFolder()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "hot"

    goto :goto_0

    .line 433
    :cond_1
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/FolderInfo;->getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getGlobalFolderTagId()Ljava/lang/String;
    .locals 0

    .line 516
    iget-object p0, p0, Lcom/miui/home/launcher/FolderInfo;->globalFolderTagId:Ljava/lang/String;

    return-object p0
.end method

.method public getGlobalFolderTagIdToRequestRecommendAd()[Ljava/lang/String;
    .locals 1

    .line 439
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderInfo;->isRecommendFolder()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "1.302.4.1"

    .line 440
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 441
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderInfo;->isGamesFolder()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "1.302.4.13"

    .line 442
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 443
    :cond_1
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderInfo;->isUserGameFolder()Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "1.302.4.18"

    .line 444
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/String;

    return-object p0
.end method

.method public getMessageText()Ljava/lang/String;
    .locals 1

    .line 231
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderInfo;->getBuddyIconView()Lcom/miui/home/launcher/FolderIcon;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 232
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderInfo;->getBuddyIconView()Lcom/miui/home/launcher/FolderIcon;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderIcon;->getMessageText()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
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

    .line 417
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 418
    monitor-enter p0

    const/4 v1, 0x0

    .line 419
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/miui/home/launcher/FolderInfo;->mContents:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 420
    iget-object v2, p0, Lcom/miui/home/launcher/FolderInfo;->mContents:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-virtual {v2}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 422
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

    .line 465
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderInfo;->isRecommendFolder()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderInfo;->isGamesFolder()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderInfo;->isHotFolder()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object p0, p0, Lcom/miui/home/launcher/FolderInfo;->mRecommendAppsController:Lcom/miui/home/launcher/commercial/recommend/RecommendController;

    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->isRecommendSwitchOn()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getPreinstallManager()Lcom/miui/home/launcher/commercial/preinstall/FolderPreinstallManager;
    .locals 0

    .line 527
    iget-object p0, p0, Lcom/miui/home/launcher/FolderInfo;->mPreinstallManager:Lcom/miui/home/launcher/commercial/preinstall/FolderPreinstallManager;

    return-object p0
.end method

.method public getRecommendController()Lcom/miui/home/launcher/commercial/recommend/RecommendController;
    .locals 0

    .line 451
    iget-object p0, p0, Lcom/miui/home/launcher/FolderInfo;->mRecommendAppsController:Lcom/miui/home/launcher/commercial/recommend/RecommendController;

    return-object p0
.end method

.method public getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 1

    .line 376
    iget-object v0, p0, Lcom/miui/home/launcher/FolderInfo;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 377
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/Application;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f1104e9

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    if-nez p1, :cond_1

    .line 380
    iget-object p0, p0, Lcom/miui/home/launcher/FolderInfo;->mTitle:Ljava/lang/CharSequence;

    return-object p0

    .line 382
    :cond_1
    iget-object p0, p0, Lcom/miui/home/launcher/FolderInfo;->mTitle:Ljava/lang/CharSequence;

    invoke-static {p1, p0}, Lcom/miui/home/launcher/LauncherModel;->loadTitle(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public hasNewInstalledApp()Z
    .locals 0

    .line 238
    iget-boolean p0, p0, Lcom/miui/home/launcher/FolderInfo;->mHasNewInstallApps:Z

    return p0
.end method

.method public initRecommendSwitchState(Lcom/miui/home/launcher/Launcher;)V
    .locals 1

    .line 243
    iget-object p1, p0, Lcom/miui/home/launcher/FolderInfo;->mRecommendAppsController:Lcom/miui/home/launcher/commercial/recommend/RecommendController;

    invoke-virtual {p1}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->isRecommendSwitchOn()Z

    move-result p1

    .line 245
    iget-boolean v0, p0, Lcom/miui/home/launcher/FolderInfo;->mIsRecommendAppsSwitchON:Z

    if-eq v0, p1, :cond_0

    .line 246
    iput-boolean p1, p0, Lcom/miui/home/launcher/FolderInfo;->mIsRecommendAppsSwitchON:Z

    .line 247
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/FolderInfo;->onRecommendAppsSwitchStateChanged(Z)V

    :cond_0
    return-void
.end method

.method public isAllItemDragging(Lcom/miui/home/launcher/DragObject;)Z
    .locals 4

    .line 481
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 482
    :goto_0
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDraggingSize()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 483
    invoke-virtual {p1, v1}, Lcom/miui/home/launcher/DragObject;->getDragInfo(I)Lcom/miui/home/launcher/ItemInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 484
    instance-of v3, v2, Lcom/miui/home/launcher/ShortcutInfo;

    if-eqz v3, :cond_0

    .line 485
    check-cast v2, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 488
    :cond_1
    monitor-enter p0

    .line 489
    :try_start_0
    iget-object p1, p0, Lcom/miui/home/launcher/FolderInfo;->mContents:Ljava/util/List;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->containsAll(Ljava/util/Collection;)Z

    move-result p1

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    .line 490
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public isAppPredictOpen()Z
    .locals 1

    const/4 v0, 0x0

    .line 579
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/FolderInfo;->isAppPredictOpen(Z)Z

    move-result p0

    return p0
.end method

.method public isAppPredictOpen(Z)Z
    .locals 4

    .line 583
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    .line 584
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderInfo;->getAppPredictPreferenceKey()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/miui/home/launcher/FolderInfo$AppPredictStatus;->APP_PREDICT_UNINITIALIZED:Lcom/miui/home/launcher/FolderInfo$AppPredictStatus;

    invoke-virtual {v2}, Lcom/miui/home/launcher/FolderInfo$AppPredictStatus;->getValue()I

    move-result v2

    .line 583
    invoke-static {v0, v1, v2}, Lcom/miui/home/launcher/common/PreferenceUtils;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    sget-object v1, Lcom/miui/home/launcher/FolderInfo$AppPredictStatus;->APP_PREDICT_OPEN:Lcom/miui/home/launcher/FolderInfo$AppPredictStatus;

    .line 584
    invoke-static {v1}, Lcom/miui/home/launcher/FolderInfo$AppPredictStatus;->access$000(Lcom/miui/home/launcher/FolderInfo$AppPredictStatus;)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    if-nez p1, :cond_2

    if-eqz v0, :cond_1

    .line 586
    iget p0, p0, Lcom/miui/home/launcher/FolderInfo;->itemType:I

    const/4 p1, 0x2

    if-eq p0, p1, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v3

    :cond_2
    :goto_1
    return v0
.end method

.method public isBigFolder()Z
    .locals 2

    .line 609
    iget v0, p0, Lcom/miui/home/launcher/FolderInfo;->itemType:I

    const/16 v1, 0x15

    if-eq v0, v1, :cond_1

    iget p0, p0, Lcom/miui/home/launcher/FolderInfo;->itemType:I

    const/16 v0, 0x16

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isFolder()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isGamesFolder()Z
    .locals 1

    const-string v0, "com.miui.home:string/default_folder_title_game"

    .line 276
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/FolderInfo;->isSystemCreatedFolder(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isGoogleFolder()Z
    .locals 1

    const-string v0, "Google"

    .line 256
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/FolderInfo;->isSystemCreatedFolder(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isHotFolder()Z
    .locals 1

    const-string v0, "com.miui.home:string/default_folder_title_hot"

    .line 272
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/FolderInfo;->isSystemCreatedFolder(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isOpened()Z
    .locals 0

    .line 477
    iget-boolean p0, p0, Lcom/miui/home/launcher/FolderInfo;->opened:Z

    return p0
.end method

.method public isRecommendFolder()Z
    .locals 1

    const-string v0, "com.miui.home:string/default_folder_title_recommend"

    .line 268
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/FolderInfo;->isSystemCreatedFolder(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isRussiaFolder()Z
    .locals 1

    const-string v0, "com.miui.home:string/russia_preinstall_folder_name"

    .line 260
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/FolderInfo;->isSystemCreatedFolder(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isToolsFolder()Z
    .locals 1

    const-string v0, "com.miui.home:string/new_default_folder_title_tools"

    .line 264
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/FolderInfo;->isSystemCreatedFolder(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isUserGameFolder()Z
    .locals 1

    const-string/jumbo v0, "user_game_folder"

    .line 280
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/FolderInfo;->isSystemCreatedFolder(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isWorkFolder()Z
    .locals 1

    const-string v0, "com.miui.home:string/all_app_category_work"

    .line 288
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/FolderInfo;->isSystemCreatedFolder(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public synthetic lambda$preLoadContentView$0$FolderInfo(Lcom/miui/home/launcher/Launcher;)V
    .locals 4

    .line 204
    iget-wide v0, p0, Lcom/miui/home/launcher/FolderInfo;->id:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 205
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/FolderInfo;->initRecommendSwitchState(Lcom/miui/home/launcher/Launcher;)V

    :cond_0
    return-void
.end method

.method public load(Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 2

    .line 115
    invoke-super {p0, p1, p2}, Lcom/miui/home/launcher/ItemInfo;->load(Landroid/content/Context;Landroid/database/Cursor;)V

    const/4 p1, 0x2

    .line 116
    invoke-interface {p2, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/FolderInfo;->mTitle:Ljava/lang/CharSequence;

    const/16 p1, 0x16

    .line 117
    invoke-interface {p2, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/FolderInfo;->mLabel:Ljava/lang/CharSequence;

    .line 118
    monitor-enter p0

    .line 119
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

    .line 120
    iget-wide v0, p0, Lcom/miui/home/launcher/FolderInfo;->id:J

    iput-wide v0, p2, Lcom/miui/home/launcher/ShortcutInfo;->container:J

    goto :goto_0

    .line 122
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderInfo;->isRecommendFolder()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "1.302.4.2"

    .line 124
    iput-object p1, p0, Lcom/miui/home/launcher/FolderInfo;->globalFolderTagId:Ljava/lang/String;

    goto :goto_1

    .line 125
    :cond_1
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderInfo;->isGamesFolder()Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "1.302.4.12"

    .line 126
    iput-object p1, p0, Lcom/miui/home/launcher/FolderInfo;->globalFolderTagId:Ljava/lang/String;

    .line 128
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderInfo;->isAppPredictOpen()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 129
    sget-object p1, Lcom/miui/home/launcher/folder/AppPredictHelper;->INSTANCE:Lcom/miui/home/launcher/folder/AppPredictHelper;

    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/folder/AppPredictHelper;->addAppPredictListener(Lcom/miui/home/launcher/folder/AppPredictUpdateListener;)V

    :cond_3
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

.method public notifyDataSetChanged()V
    .locals 1

    .line 331
    iget-object v0, p0, Lcom/miui/home/launcher/FolderInfo;->mAdapter:Lcom/miui/home/launcher/ShortcutsAdapter;

    if-eqz v0, :cond_0

    .line 332
    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutsAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 334
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderInfo;->refreshPreviewIcons()V

    :goto_0
    return-void
.end method

.method public onAddToDatabase(Landroid/content/Context;Landroid/content/ContentValues;)V
    .locals 2

    .line 397
    invoke-super {p0, p1, p2}, Lcom/miui/home/launcher/ItemInfo;->onAddToDatabase(Landroid/content/Context;Landroid/content/ContentValues;)V

    .line 398
    iget-object v0, p0, Lcom/miui/home/launcher/FolderInfo;->mTitle:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "title"

    invoke-virtual {p2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    iget-object v0, p0, Lcom/miui/home/launcher/FolderInfo;->mLabel:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/FolderInfo;->updateLabelFromTitle(Landroid/content/Context;)V

    .line 401
    :cond_0
    iget-object p1, p0, Lcom/miui/home/launcher/FolderInfo;->mLabel:Ljava/lang/CharSequence;

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/miui/home/launcher/FolderInfo;->mLabel:Ljava/lang/CharSequence;

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    const-string p1, "label"

    .line 402
    invoke-virtual {p2, p1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onAppPredictUpdate()V
    .locals 0

    .line 601
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderInfo;->refreshPreviewIcons()V

    return-void
.end method

.method public onBinded(Z)V
    .locals 1

    .line 494
    iget-object v0, p0, Lcom/miui/home/launcher/FolderInfo;->mAdapter:Lcom/miui/home/launcher/ShortcutsAdapter;

    if-eqz v0, :cond_0

    .line 495
    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/ShortcutsAdapter;->onBinded(Z)V

    .line 497
    :cond_0
    iget-object p0, p0, Lcom/miui/home/launcher/FolderInfo;->mRecommendAppsController:Lcom/miui/home/launcher/commercial/recommend/RecommendController;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->onBinded(Z)V

    return-void
.end method

.method public onCurrentScreenShowing()V
    .locals 0

    .line 512
    iget-object p0, p0, Lcom/miui/home/launcher/FolderInfo;->mRecommendAppsController:Lcom/miui/home/launcher/commercial/recommend/RecommendController;

    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->onCurrentScreenShowing()V

    return-void
.end method

.method public onRecommendAppsSwitchStateChanged(Z)V
    .locals 0

    .line 455
    iget-object p0, p0, Lcom/miui/home/launcher/FolderInfo;->mAdapter:Lcom/miui/home/launcher/ShortcutsAdapter;

    if-eqz p0, :cond_0

    .line 456
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ShortcutsAdapter;->onRecommendAppsEnableChanged(Z)V

    :cond_0
    return-void
.end method

.method public preLoadContentView(Lcom/miui/home/launcher/Launcher;)V
    .locals 3

    .line 198
    monitor-enter p0

    .line 199
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

    .line 200
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getFolderCling()Lcom/miui/home/launcher/FolderCling;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/launcher/FolderCling;->getFolder()Lcom/miui/home/launcher/Folder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/launcher/Folder;->getContent()Lcom/miui/home/launcher/FolderGridView;

    move-result-object v2

    invoke-virtual {p1, v2, v1}, Lcom/miui/home/launcher/Launcher;->createItemIcon(Landroid/view/ViewGroup;Lcom/miui/home/launcher/ItemInfo;)Lcom/miui/home/launcher/ItemIcon;

    goto :goto_0

    .line 202
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 203
    new-instance v0, Lcom/miui/home/launcher/-$$Lambda$FolderInfo$CRwpfrS3PbQ6HPKytdy1LIozWqk;

    invoke-direct {v0, p0, p1}, Lcom/miui/home/launcher/-$$Lambda$FolderInfo$CRwpfrS3PbQ6HPKytdy1LIozWqk;-><init>(Lcom/miui/home/launcher/FolderInfo;Lcom/miui/home/launcher/Launcher;)V

    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->useViewToPost(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception p1

    .line 202
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public printSimpleIdentity()Ljava/lang/String;
    .locals 3

    .line 406
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/miui/home/launcher/FolderInfo;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public refreshPreviewIcons()V
    .locals 2

    .line 339
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderInfo;->isAppPredictOpen()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderInfo;->updateAppPredictList()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 340
    iget-object p0, p0, Lcom/miui/home/launcher/FolderInfo;->icon:Lcom/miui/home/launcher/Folder$FolderCallback;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    .line 341
    invoke-interface {p0, v1, v0}, Lcom/miui/home/launcher/Folder$FolderCallback;->loadItemIcons(ZZ)V

    :cond_0
    return-void

    .line 345
    :cond_1
    iget-object p0, p0, Lcom/miui/home/launcher/FolderInfo;->icon:Lcom/miui/home/launcher/Folder$FolderCallback;

    if-eqz p0, :cond_2

    .line 346
    invoke-interface {p0, v1}, Lcom/miui/home/launcher/Folder$FolderCallback;->loadItemIcons(Z)V

    :cond_2
    return-void
.end method

.method public remove(Lcom/miui/home/launcher/ShortcutInfo;)V
    .locals 1

    .line 309
    monitor-enter p0

    .line 310
    :try_start_0
    iget-object v0, p0, Lcom/miui/home/launcher/FolderInfo;->mContents:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 311
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 312
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderInfo;->updateNewInstallNotification()V

    return-void

    :catchall_0
    move-exception p1

    .line 311
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public remove(J)Z
    .locals 4

    .line 316
    monitor-enter p0

    .line 317
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

    .line 318
    iget-wide v2, v1, Lcom/miui/home/launcher/ShortcutInfo;->id:J

    cmp-long v2, v2, p1

    if-nez v2, :cond_0

    .line 319
    iget-object p1, p0, Lcom/miui/home/launcher/FolderInfo;->mContents:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 320
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderInfo;->notifyDataSetChanged()V

    .line 321
    iget-object p1, p0, Lcom/miui/home/launcher/FolderInfo;->mBuddyIconView:Lcom/miui/home/launcher/FolderIcon;

    invoke-virtual {p1}, Lcom/miui/home/launcher/FolderIcon;->checkToDeleteSelf()V

    .line 322
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderInfo;->updateNewInstallNotification()V

    const/4 p1, 0x1

    .line 323
    monitor-exit p0

    return p1

    .line 326
    :cond_1
    monitor-exit p0

    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public removeRecommendAppsViewKey()V
    .locals 0

    .line 473
    iget-object p0, p0, Lcom/miui/home/launcher/FolderInfo;->mRecommendAppsController:Lcom/miui/home/launcher/commercial/recommend/RecommendController;

    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->removeRecommendSwitchSharedPreference()V

    return-void
.end method

.method public resizeFolder(Lcom/miui/home/launcher/convertsize/ItemPositionInfo;)V
    .locals 2

    .line 541
    invoke-virtual {p1}, Lcom/miui/home/launcher/convertsize/ItemPositionInfo;->getCellX()I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/FolderInfo;->cellX:I

    .line 542
    invoke-virtual {p1}, Lcom/miui/home/launcher/convertsize/ItemPositionInfo;->getCellY()I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/FolderInfo;->cellY:I

    .line 543
    invoke-virtual {p1}, Lcom/miui/home/launcher/convertsize/ItemPositionInfo;->getSpanX()I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/FolderInfo;->spanX:I

    .line 544
    invoke-virtual {p1}, Lcom/miui/home/launcher/convertsize/ItemPositionInfo;->getSpanY()I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/FolderInfo;->spanY:I

    .line 545
    invoke-virtual {p1}, Lcom/miui/home/launcher/convertsize/ItemPositionInfo;->getScreenId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/home/launcher/FolderInfo;->screenId:J

    .line 546
    invoke-virtual {p1}, Lcom/miui/home/launcher/convertsize/ItemPositionInfo;->getItemType()I

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/FolderInfo;->itemType:I

    return-void
.end method

.method public setBuddyIconView(Lcom/miui/home/launcher/FolderIcon;)V
    .locals 0

    .line 296
    iput-object p1, p0, Lcom/miui/home/launcher/FolderInfo;->mBuddyIconView:Lcom/miui/home/launcher/FolderIcon;

    return-void
.end method

.method public setLabelAndUpdateDb(Landroid/content/Context;Ljava/lang/CharSequence;)V
    .locals 4

    .line 520
    iget-wide v0, p0, Lcom/miui/home/launcher/FolderInfo;->id:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 521
    iput-object p2, p0, Lcom/miui/home/launcher/FolderInfo;->mLabel:Ljava/lang/CharSequence;

    .line 522
    iget-wide v0, p0, Lcom/miui/home/launcher/FolderInfo;->id:J

    iget-object p0, p0, Lcom/miui/home/launcher/FolderInfo;->mLabel:Ljava/lang/CharSequence;

    invoke-static {p1, v0, v1, p0}, Lcom/miui/home/launcher/LauncherModel;->updateLabelInDatabase(Landroid/content/Context;JLjava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setRecommendAppsSwitchOn(Z)V
    .locals 0

    .line 461
    iget-object p0, p0, Lcom/miui/home/launcher/FolderInfo;->mRecommendAppsController:Lcom/miui/home/launcher/commercial/recommend/RecommendController;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->setRecommendSwitchOn(Z)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;Landroid/content/Context;)V
    .locals 4

    .line 386
    iput-object p1, p0, Lcom/miui/home/launcher/FolderInfo;->mTitle:Ljava/lang/CharSequence;

    .line 387
    iget-object v0, p0, Lcom/miui/home/launcher/FolderInfo;->icon:Lcom/miui/home/launcher/Folder$FolderCallback;

    if-eqz v0, :cond_0

    .line 388
    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/FolderInfo;->getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/miui/home/launcher/Folder$FolderCallback;->setTitle(Ljava/lang/CharSequence;)V

    .line 390
    :cond_0
    iget-wide v0, p0, Lcom/miui/home/launcher/FolderInfo;->id:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 391
    iget-wide v0, p0, Lcom/miui/home/launcher/FolderInfo;->id:J

    invoke-static {p2, v0, v1, p1}, Lcom/miui/home/launcher/LauncherModel;->updateTitleInDatabase(Landroid/content/Context;JLjava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public switchAppPredict(Z)V
    .locals 1

    .line 592
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderInfo;->getAppPredictPreferenceKey()Ljava/lang/String;

    move-result-object p0

    if-eqz p1, :cond_0

    sget-object p1, Lcom/miui/home/launcher/FolderInfo$AppPredictStatus;->APP_PREDICT_OPEN:Lcom/miui/home/launcher/FolderInfo$AppPredictStatus;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/miui/home/launcher/FolderInfo$AppPredictStatus;->APP_PREDICT_CLOSE:Lcom/miui/home/launcher/FolderInfo$AppPredictStatus;

    :goto_0
    invoke-static {p1}, Lcom/miui/home/launcher/FolderInfo$AppPredictStatus;->access$000(Lcom/miui/home/launcher/FolderInfo$AppPredictStatus;)I

    move-result p1

    invoke-static {v0, p0, p1}, Lcom/miui/home/launcher/common/PreferenceUtils;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public updateAppPredictList()Z
    .locals 3

    .line 550
    sget-object v0, Lcom/miui/home/launcher/folder/AppPredictHelper;->INSTANCE:Lcom/miui/home/launcher/folder/AppPredictHelper;

    iget-object v1, p0, Lcom/miui/home/launcher/FolderInfo;->mContents:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/folder/AppPredictHelper;->getAppPredictForFolder(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 551
    iget-object v1, p0, Lcom/miui/home/launcher/FolderInfo;->mAppPredictList:Ljava/util/List;

    invoke-direct {p0}, Lcom/miui/home/launcher/FolderInfo;->getPreviewMaxCount()I

    move-result v2

    invoke-static {v1, v0, v2}, Lcom/miui/home/launcher/folder/AppPredictHelperKt;->isListChanged(Ljava/util/List;Ljava/util/List;I)Z

    move-result v1

    .line 552
    iput-object v0, p0, Lcom/miui/home/launcher/FolderInfo;->mAppPredictList:Ljava/util/List;

    return v1
.end method

.method public updateNewInstallNotification()V
    .locals 1

    .line 211
    invoke-direct {p0}, Lcom/miui/home/launcher/FolderInfo;->updateNewInstallFlag()V

    .line 212
    iget-object v0, p0, Lcom/miui/home/launcher/FolderInfo;->mBuddyIconView:Lcom/miui/home/launcher/FolderIcon;

    if-eqz v0, :cond_1

    .line 213
    iget-boolean v0, p0, Lcom/miui/home/launcher/FolderInfo;->mHasNewInstallApps:Z

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

    .line 214
    :goto_0
    iget-object p0, p0, Lcom/miui/home/launcher/FolderInfo;->mBuddyIconView:Lcom/miui/home/launcher/FolderIcon;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/FolderIcon;->updateNewInstallIndicator(Z)V

    :cond_1
    return-void
.end method
