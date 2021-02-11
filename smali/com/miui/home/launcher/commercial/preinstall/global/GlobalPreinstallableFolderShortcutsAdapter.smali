.class public Lcom/miui/home/launcher/commercial/preinstall/global/GlobalPreinstallableFolderShortcutsAdapter;
.super Lcom/miui/home/launcher/commercial/preinstall/BasePreinstallFolderAdapter;
.source "GlobalPreinstallableFolderShortcutsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/commercial/preinstall/global/GlobalPreinstallableFolderShortcutsAdapter$_lancet;
    }
.end annotation


# static fields
.field private static sVisibleContentCapacity:I


# instance fields
.field private mAllPreinstallInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/RemoteShortcutInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPreinstallInfoMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/miui/home/launcher/commercial/preinstall/global/FolderPreinstallAdInfoWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private mPreinstallManager:Lcom/miui/home/launcher/commercial/preinstall/global/GlobalFolderPreinstallManager;

.field private mWaitingForNewAds:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 36
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0023

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalPreinstallableFolderShortcutsAdapter;->sVisibleContentCapacity:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/miui/home/launcher/FolderInfo;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/commercial/preinstall/BasePreinstallFolderAdapter;-><init>(Landroid/content/Context;Lcom/miui/home/launcher/FolderInfo;)V

    .line 37
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 38
    invoke-static {p1}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalPreinstallableFolderShortcutsAdapter;->mAllPreinstallInfos:Ljava/util/List;

    .line 39
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalPreinstallableFolderShortcutsAdapter;->mPreinstallInfoMap:Ljava/util/HashMap;

    const/4 p1, 0x0

    .line 40
    iput-boolean p1, p0, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalPreinstallableFolderShortcutsAdapter;->mWaitingForNewAds:Z

    .line 45
    invoke-virtual {p2}, Lcom/miui/home/launcher/FolderInfo;->getPreinstallManager()Lcom/miui/home/launcher/commercial/preinstall/FolderPreinstallManager;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalFolderPreinstallManager;

    iput-object p1, p0, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalPreinstallableFolderShortcutsAdapter;->mPreinstallManager:Lcom/miui/home/launcher/commercial/preinstall/global/GlobalFolderPreinstallManager;

    .line 46
    iget-object p1, p0, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalPreinstallableFolderShortcutsAdapter;->mPreinstallManager:Lcom/miui/home/launcher/commercial/preinstall/global/GlobalFolderPreinstallManager;

    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalFolderPreinstallManager;->setPreinstallFolderAdapter(Lcom/miui/home/launcher/commercial/preinstall/global/GlobalPreinstallableFolderShortcutsAdapter;)V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/commercial/preinstall/global/GlobalPreinstallableFolderShortcutsAdapter;)Ljava/util/List;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalPreinstallableFolderShortcutsAdapter;->mShowingPreinstallList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$001(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$002(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 0

    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    return p0
.end method

.method static synthetic lambda$loadDrawable$0(Lcom/miui/home/launcher/ShortcutInfo;Ljava/lang/Void;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 58
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncherApplication()Lcom/miui/home/launcher/LauncherApplication;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lcom/miui/home/launcher/ShortcutInfo;->getIconDrawable(Landroid/content/Context;Lcom/miui/home/launcher/IconCache;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$loadDrawable$1(Lcom/miui/home/launcher/ShortcutInfo;Lcom/miui/home/launcher/ShortcutIcon;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 60
    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/ShortcutInfo;->setIconDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 p0, 0x0

    .line 61
    invoke-virtual {p1, p2, p0}, Lcom/miui/home/launcher/ShortcutIcon;->setIconImageView(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private requestPreinstallAds(Ljava/lang/String;)V
    .locals 3

    .line 171
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalPreinstallableFolderShortcutsAdapter;->mPreinstallManager:Lcom/miui/home/launcher/commercial/preinstall/global/GlobalFolderPreinstallManager;

    invoke-virtual {v0}, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalFolderPreinstallManager;->beforeRecommendFolderOpen()V

    .line 172
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalPreinstallableFolderShortcutsAdapter;->mShowingPreinstallList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sget v1, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalPreinstallableFolderShortcutsAdapter;->sVisibleContentCapacity:I

    iget-object v2, p0, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalPreinstallableFolderShortcutsAdapter;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    invoke-virtual {v2}, Lcom/miui/home/launcher/FolderInfo;->count()I

    move-result v2

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_0

    .line 173
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalPreinstallableFolderShortcutsAdapter;->mPreinstallManager:Lcom/miui/home/launcher/commercial/preinstall/global/GlobalFolderPreinstallManager;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalFolderPreinstallManager;->requestMorePreinstallAds(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public clearPreinstallAds()V
    .locals 1

    .line 137
    invoke-super {p0}, Lcom/miui/home/launcher/commercial/preinstall/BasePreinstallFolderAdapter;->clearPreinstallAds()V

    .line 138
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalPreinstallableFolderShortcutsAdapter;->mAllPreinstallInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 139
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalPreinstallableFolderShortcutsAdapter;->mPreinstallInfoMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 140
    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalPreinstallableFolderShortcutsAdapter;->notifyDataSetChangedWithoutUpdateFolderPreviewIcons()V

    return-void
.end method

.method protected getMaxShowingCount()I
    .locals 1

    .line 51
    sget v0, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalPreinstallableFolderShortcutsAdapter;->sVisibleContentCapacity:I

    return v0
.end method

.method public getShowingPreinstallAd(Ljava/lang/String;)Lcom/miui/home/launcher/commercial/preinstall/global/FolderPreinstallAdInfoWrapper;
    .locals 4

    .line 179
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    const/4 v0, 0x0

    .line 184
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalPreinstallableFolderShortcutsAdapter;->mShowingPreinstallList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 185
    iget-object v2, p0, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalPreinstallableFolderShortcutsAdapter;->mShowingPreinstallList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/RemoteShortcutInfo;

    .line 186
    invoke-virtual {v2}, Lcom/miui/home/launcher/RemoteShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 187
    iget-object p1, p0, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalPreinstallableFolderShortcutsAdapter;->mPreinstallInfoMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Lcom/miui/home/launcher/RemoteShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/commercial/preinstall/global/FolderPreinstallAdInfoWrapper;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "Launcher.PreinstallableFolderShortcutsAdapterGlobal"

    const-string v2, "Load preinstall ads fail"

    .line 191
    invoke-static {v0, v2, p1}, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalPreinstallableFolderShortcutsAdapter$_lancet;->com_miui_home_launcher_aop_LogHooker_aet(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    return-object v1
.end method

.method protected loadDrawable(Lcom/miui/home/launcher/ShortcutInfo;Lcom/miui/home/launcher/ShortcutIcon;)V
    .locals 2

    .line 56
    new-instance v0, Lcom/miui/home/launcher/commercial/preinstall/global/-$$Lambda$GlobalPreinstallableFolderShortcutsAdapter$zVoRPO5zExKIimwiWMsjAZf6x9E;

    invoke-direct {v0, p1}, Lcom/miui/home/launcher/commercial/preinstall/global/-$$Lambda$GlobalPreinstallableFolderShortcutsAdapter$zVoRPO5zExKIimwiWMsjAZf6x9E;-><init>(Lcom/miui/home/launcher/ShortcutInfo;)V

    new-instance v1, Lcom/miui/home/launcher/commercial/preinstall/global/-$$Lambda$GlobalPreinstallableFolderShortcutsAdapter$PzAc3d49B3X5XRw5H_e3JvEhDAA;

    invoke-direct {v1, p1, p2}, Lcom/miui/home/launcher/commercial/preinstall/global/-$$Lambda$GlobalPreinstallableFolderShortcutsAdapter$PzAc3d49B3X5XRw5H_e3JvEhDAA;-><init>(Lcom/miui/home/launcher/ShortcutInfo;Lcom/miui/home/launcher/ShortcutIcon;)V

    const/4 p1, 0x0

    invoke-static {v0, v1, p1}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->execParallel(Ljava8/util/function/Function;Ljava8/util/function/Consumer;Ljava/lang/Object;)V

    return-void
.end method

.method public onBinded(Z)V
    .locals 6

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 146
    iget-object p1, p0, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalPreinstallableFolderShortcutsAdapter;->mShowingPreinstallList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 147
    iget-object p1, p0, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalPreinstallableFolderShortcutsAdapter;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    invoke-virtual {p1}, Lcom/miui/home/launcher/FolderInfo;->count()I

    move-result p1

    sget v1, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalPreinstallableFolderShortcutsAdapter;->sVisibleContentCapacity:I

    if-ge p1, v1, :cond_1

    .line 148
    iget-object p1, p0, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalPreinstallableFolderShortcutsAdapter;->mAllPreinstallInfos:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    sget v1, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalPreinstallableFolderShortcutsAdapter;->sVisibleContentCapacity:I

    iget-object v2, p0, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalPreinstallableFolderShortcutsAdapter;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    invoke-virtual {v2}, Lcom/miui/home/launcher/FolderInfo;->count()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 149
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    if-ge v0, p1, :cond_0

    .line 151
    iget-object v2, p0, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalPreinstallableFolderShortcutsAdapter;->mAllPreinstallInfos:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/RemoteShortcutInfo;

    .line 152
    iget-object v3, p0, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalPreinstallableFolderShortcutsAdapter;->mPreinstallInfoMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Lcom/miui/home/launcher/RemoteShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/home/launcher/commercial/preinstall/global/FolderPreinstallAdInfoWrapper;

    .line 153
    iget-object v4, p0, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalPreinstallableFolderShortcutsAdapter;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    invoke-virtual {v4}, Lcom/miui/home/launcher/FolderInfo;->count()I

    move-result v4

    iget-object v5, p0, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalPreinstallableFolderShortcutsAdapter;->mShowingPreinstallList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, v2, Lcom/miui/home/launcher/RemoteShortcutInfo;->cellX:I

    .line 154
    iget-object v4, p0, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalPreinstallableFolderShortcutsAdapter;->mShowingPreinstallList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 155
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 157
    :cond_0
    iget-object p1, p0, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalPreinstallableFolderShortcutsAdapter;->mPreinstallManager:Lcom/miui/home/launcher/commercial/preinstall/global/GlobalFolderPreinstallManager;

    invoke-virtual {p1, v1}, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalFolderPreinstallManager;->handleView(Ljava/util/List;)V

    const-string p1, "Launcher.PreinstallableFolderShortcutsAdapterGlobal"

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "folder will show preinstall, folder=("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalPreinstallableFolderShortcutsAdapter;->getFolderInfo()Lcom/miui/home/launcher/FolderInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/FolderInfo;->printSimpleIdentity()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "), count="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalPreinstallableFolderShortcutsAdapter;->mShowingPreinstallList:Ljava/util/List;

    .line 159
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 158
    invoke-static {p1, v0}, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalPreinstallableFolderShortcutsAdapter$_lancet;->com_miui_home_launcher_aop_LogHooker_ad(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    const-string p1, "Launcher.PreinstallableFolderShortcutsAdapterGlobal"

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "folder will NOT show preinstall because no space, folder=("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalPreinstallableFolderShortcutsAdapter;->getFolderInfo()Lcom/miui/home/launcher/FolderInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/FolderInfo;->printSimpleIdentity()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalPreinstallableFolderShortcutsAdapter$_lancet;->com_miui_home_launcher_aop_LogHooker_ad(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    :goto_1
    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalPreinstallableFolderShortcutsAdapter;->notifyDataSetChangedWithoutUpdateFolderPreviewIcons()V

    goto :goto_2

    .line 165
    :cond_2
    iput-boolean v0, p0, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalPreinstallableFolderShortcutsAdapter;->mWaitingForNewAds:Z

    const-string p1, "folder close"

    .line 166
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalPreinstallableFolderShortcutsAdapter;->requestPreinstallAds(Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method protected onRecommendAppsEnableChanged(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 129
    iput-boolean p1, p0, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalPreinstallableFolderShortcutsAdapter;->mWaitingForNewAds:Z

    const-string p1, "recommend apps switch on"

    .line 130
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalPreinstallableFolderShortcutsAdapter;->requestPreinstallAds(Ljava/lang/String;)V

    goto :goto_0

    .line 132
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalPreinstallableFolderShortcutsAdapter;->clearPreinstallAds()V

    :goto_0
    return-void
.end method

.method public preInstall(Lcom/miui/home/launcher/RemoteShortcutInfo;)V
    .locals 1

    .line 237
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalPreinstallableFolderShortcutsAdapter;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/Launcher;->addPreinstallAppToWorkspace(Lcom/miui/home/launcher/RemoteShortcutInfo;)V

    return-void
.end method

.method public refreshPreinstallList(Ljava/util/List;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/commercial/preinstall/global/FolderPreinstallAdInfoWrapper;",
            ">;)Z"
        }
    .end annotation

    .line 66
    iget-boolean v0, p0, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalPreinstallableFolderShortcutsAdapter;->mWaitingForNewAds:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalPreinstallableFolderShortcutsAdapter;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderInfo;->getPreinstallAdsEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalPreinstallableFolderShortcutsAdapter;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 67
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isFolderShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalPreinstallableFolderShortcutsAdapter;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 68
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getFolderCling()Lcom/miui/home/launcher/FolderCling;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderCling;->getFolderInfo()Lcom/miui/home/launcher/FolderInfo;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalPreinstallableFolderShortcutsAdapter;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    if-ne v0, v2, :cond_1

    :cond_0
    return v1

    .line 71
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalPreinstallableFolderShortcutsAdapter;->mAllPreinstallInfos:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 73
    iget-object v2, p0, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalPreinstallableFolderShortcutsAdapter;->mShowingPreinstallList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 74
    iget-object v2, p0, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalPreinstallableFolderShortcutsAdapter;->mAllPreinstallInfos:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 75
    iget-object v2, p0, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalPreinstallableFolderShortcutsAdapter;->mPreinstallInfoMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 76
    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalPreinstallableFolderShortcutsAdapter;->notifyDataSetChangedWithoutUpdateFolderPreviewIcons()V

    const/4 v2, 0x1

    if-eqz p1, :cond_7

    .line 77
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_2

    goto/16 :goto_2

    .line 81
    :cond_2
    :try_start_0
    new-instance v3, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalPreinstallableFolderShortcutsAdapter$1;

    invoke-direct {v3, p0}, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalPreinstallableFolderShortcutsAdapter$1;-><init>(Lcom/miui/home/launcher/commercial/preinstall/global/GlobalPreinstallableFolderShortcutsAdapter;)V

    invoke-static {p1, v3}, Lcom/miui/home/launcher/commercial/CommercialCommons;->filterByLauncherApps(Ljava/util/List;Lcom/miui/home/launcher/commercial/CommercialCommons$Extractor;)V

    const-string v3, "Launcher.PreinstallableFolderShortcutsAdapterGlobal"

    .line 87
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "before show folder preinstall ads, after filter installed apk, folder=("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalPreinstallableFolderShortcutsAdapter;->getFolderInfo()Lcom/miui/home/launcher/FolderInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/miui/home/launcher/FolderInfo;->printSimpleIdentity()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "), ads count="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 87
    invoke-static {v3, v4}, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalPreinstallableFolderShortcutsAdapter$_lancet;->com_miui_home_launcher_aop_LogHooker_ad(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 91
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v4, v1

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/home/launcher/commercial/preinstall/global/FolderPreinstallAdInfoWrapper;

    .line 92
    invoke-virtual {v5}, Lcom/miui/home/launcher/commercial/preinstall/global/FolderPreinstallAdInfoWrapper;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 93
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    iget-object v7, p0, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalPreinstallableFolderShortcutsAdapter;->mPreinstallInfoMap:Ljava/util/HashMap;

    invoke-virtual {v7, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 94
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v4, v6, :cond_3

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/miui/home/launcher/RemoteShortcutInfo;

    goto :goto_1

    :cond_3
    new-instance v6, Lcom/miui/home/launcher/RemoteShortcutInfo;

    const/16 v7, 0xf

    invoke-direct {v6, v7}, Lcom/miui/home/launcher/RemoteShortcutInfo;-><init>(I)V

    :goto_1
    const/4 v7, 0x0

    .line 95
    invoke-virtual {v6, v7}, Lcom/miui/home/launcher/RemoteShortcutInfo;->setIconDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 96
    invoke-virtual {v5}, Lcom/miui/home/launcher/commercial/preinstall/global/FolderPreinstallAdInfoWrapper;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/miui/home/launcher/RemoteShortcutInfo;->setPackageName(Ljava/lang/String;)V

    .line 97
    invoke-virtual {v5}, Lcom/miui/home/launcher/commercial/preinstall/global/FolderPreinstallAdInfoWrapper;->getIconUri()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/miui/home/launcher/RemoteShortcutInfo;->setLocalIconUri(Landroid/net/Uri;)V

    .line 98
    invoke-virtual {v5}, Lcom/miui/home/launcher/commercial/preinstall/global/FolderPreinstallAdInfoWrapper;->getTitle()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalPreinstallableFolderShortcutsAdapter;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v6, v7, v8}, Lcom/miui/home/launcher/RemoteShortcutInfo;->setTitleAndUpdateDB(Ljava/lang/CharSequence;Landroid/content/Context;)V

    .line 99
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 100
    new-instance v8, Landroid/content/ComponentName;

    invoke-virtual {v5}, Lcom/miui/home/launcher/commercial/preinstall/global/FolderPreinstallAdInfoWrapper;->getPackageName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "invalidClassName"

    invoke-direct {v8, v9, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 101
    iput-object v7, v6, Lcom/miui/home/launcher/RemoteShortcutInfo;->mIntent:Landroid/content/Intent;

    .line 102
    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalPreinstallableFolderShortcutsAdapter;->getFolderInfo()Lcom/miui/home/launcher/FolderInfo;

    move-result-object v7

    iget-wide v7, v7, Lcom/miui/home/launcher/FolderInfo;->id:J

    iput-wide v7, v6, Lcom/miui/home/launcher/RemoteShortcutInfo;->container:J

    .line 103
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isScreenOrientationLandscape()Z

    move-result v7

    iput-boolean v7, v6, Lcom/miui/home/launcher/RemoteShortcutInfo;->isLandscapePos:Z

    .line 104
    iget-object v7, p0, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalPreinstallableFolderShortcutsAdapter;->mAllPreinstallInfos:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    iget-object v6, p0, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalPreinstallableFolderShortcutsAdapter;->mPreinstallInfoMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Lcom/miui/home/launcher/commercial/preinstall/global/FolderPreinstallAdInfoWrapper;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 108
    :cond_4
    invoke-interface {p1, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_5
    const-string p1, "Launcher.PreinstallableFolderShortcutsAdapterGlobal"

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "before show folder preinstall ads, after remove repeat and invalid ads, folder=("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalPreinstallableFolderShortcutsAdapter;->getFolderInfo()Lcom/miui/home/launcher/FolderInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/home/launcher/FolderInfo;->printSimpleIdentity()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "), ads count="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalPreinstallableFolderShortcutsAdapter;->mAllPreinstallInfos:Ljava/util/List;

    .line 113
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 112
    invoke-static {p1, v0}, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalPreinstallableFolderShortcutsAdapter$_lancet;->com_miui_home_launcher_aop_LogHooker_ad(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    iget-boolean p1, p0, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalPreinstallableFolderShortcutsAdapter;->mWaitingForNewAds:Z

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalPreinstallableFolderShortcutsAdapter;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->isFolderShowing()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalPreinstallableFolderShortcutsAdapter;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 115
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getFolderCling()Lcom/miui/home/launcher/FolderCling;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/FolderCling;->getFolderInfo()Lcom/miui/home/launcher/FolderInfo;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalPreinstallableFolderShortcutsAdapter;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    if-ne p1, v0, :cond_6

    .line 116
    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalPreinstallableFolderShortcutsAdapter;->onBinded(Z)V

    .line 118
    :cond_6
    iput-boolean v1, p0, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalPreinstallableFolderShortcutsAdapter;->mWaitingForNewAds:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    move-exception p1

    const-string v0, "Launcher.PreinstallableFolderShortcutsAdapterGlobal"

    const-string v2, "refresh fail"

    .line 121
    invoke-static {v0, v2, p1}, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalPreinstallableFolderShortcutsAdapter$_lancet;->com_miui_home_launcher_aop_LogHooker_aet(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1

    :cond_7
    :goto_2
    return v2
.end method

.method public removePreinstallAd(Ljava/lang/String;)Lcom/miui/home/launcher/commercial/preinstall/global/FolderPreinstallAdInfoWrapper;
    .locals 6

    .line 197
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    const/4 v0, 0x0

    .line 204
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalPreinstallableFolderShortcutsAdapter;->mShowingPreinstallList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 205
    iget-object v2, p0, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalPreinstallableFolderShortcutsAdapter;->mShowingPreinstallList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/RemoteShortcutInfo;

    .line 206
    invoke-virtual {v2}, Lcom/miui/home/launcher/RemoteShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 208
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalPreinstallableFolderShortcutsAdapter;->mPreinstallInfoMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Lcom/miui/home/launcher/RemoteShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/commercial/preinstall/global/FolderPreinstallAdInfoWrapper;

    .line 209
    iget-object v3, p0, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalPreinstallableFolderShortcutsAdapter;->mAllPreinstallInfos:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move-object v0, v1

    move-object v2, v0

    .line 213
    :goto_1
    iget-object v3, p0, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalPreinstallableFolderShortcutsAdapter;->mAllPreinstallInfos:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/home/launcher/RemoteShortcutInfo;

    .line 214
    invoke-virtual {v4}, Lcom/miui/home/launcher/RemoteShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 215
    iget-object p1, p0, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalPreinstallableFolderShortcutsAdapter;->mAllPreinstallInfos:Ljava/util/List;

    invoke-interface {p1, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_4
    if-eqz v0, :cond_5

    .line 221
    iget-object p1, p0, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalPreinstallableFolderShortcutsAdapter;->mLauncher:Lcom/miui/home/launcher/Launcher;

    new-instance v3, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalPreinstallableFolderShortcutsAdapter$2;

    invoke-direct {v3, p0, v2}, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalPreinstallableFolderShortcutsAdapter$2;-><init>(Lcom/miui/home/launcher/commercial/preinstall/global/GlobalPreinstallableFolderShortcutsAdapter;Lcom/miui/home/launcher/RemoteShortcutInfo;)V

    invoke-virtual {p1, v3}, Lcom/miui/home/launcher/Launcher;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    return-object v0

    :catch_0
    move-exception p1

    const-string v0, "Launcher.PreinstallableFolderShortcutsAdapterGlobal"

    const-string v2, "remove preinstall ads fail"

    .line 231
    invoke-static {v0, v2, p1}, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalPreinstallableFolderShortcutsAdapter$_lancet;->com_miui_home_launcher_aop_LogHooker_aet(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1
.end method
