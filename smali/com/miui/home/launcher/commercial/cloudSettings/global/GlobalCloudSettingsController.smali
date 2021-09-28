.class public Lcom/miui/home/launcher/commercial/cloudSettings/global/GlobalCloudSettingsController;
.super Lcom/miui/home/launcher/commercial/cloudSettings/CloudSettingsController;
.source "GlobalCloudSettingsController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/commercial/cloudSettings/global/GlobalCloudSettingsController$GlobalCloudSettingsControllerInstance;
    }
.end annotation


# instance fields
.field private mFolderIdAscending:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/miui/home/launcher/FolderInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mGlobalCloudSettingsInfo:Lcom/miui/home/launcher/commercial/cloudSettings/global/GlobalCloudSettingsInfo;

.field private mIsUserFolder:Ljava/util/function/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Predicate<",
            "Lcom/miui/home/launcher/FolderInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Lcom/miui/home/launcher/commercial/cloudSettings/CloudSettingsController;-><init>()V

    .line 106
    sget-object v0, Lcom/miui/home/launcher/commercial/cloudSettings/global/-$$Lambda$GlobalCloudSettingsController$8ws8T7aJ5n9Ry5I2QL0UboSMeVc;->INSTANCE:Lcom/miui/home/launcher/commercial/cloudSettings/global/-$$Lambda$GlobalCloudSettingsController$8ws8T7aJ5n9Ry5I2QL0UboSMeVc;

    iput-object v0, p0, Lcom/miui/home/launcher/commercial/cloudSettings/global/GlobalCloudSettingsController;->mIsUserFolder:Ljava/util/function/Predicate;

    .line 109
    sget-object v0, Lcom/miui/home/launcher/commercial/cloudSettings/global/-$$Lambda$GlobalCloudSettingsController$VFlL5yj-CXlWKf9PVO5gw_2xNdg;->INSTANCE:Lcom/miui/home/launcher/commercial/cloudSettings/global/-$$Lambda$GlobalCloudSettingsController$VFlL5yj-CXlWKf9PVO5gw_2xNdg;

    iput-object v0, p0, Lcom/miui/home/launcher/commercial/cloudSettings/global/GlobalCloudSettingsController;->mFolderIdAscending:Ljava/util/Comparator;

    .line 36
    new-instance v0, Lcom/miui/home/launcher/commercial/cloudSettings/global/GlobalCloudSettingsInfo;

    invoke-direct {v0}, Lcom/miui/home/launcher/commercial/cloudSettings/global/GlobalCloudSettingsInfo;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/commercial/cloudSettings/global/GlobalCloudSettingsController;->mGlobalCloudSettingsInfo:Lcom/miui/home/launcher/commercial/cloudSettings/global/GlobalCloudSettingsInfo;

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/home/launcher/commercial/cloudSettings/global/GlobalCloudSettingsController$1;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/miui/home/launcher/commercial/cloudSettings/global/GlobalCloudSettingsController;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/miui/home/launcher/commercial/cloudSettings/global/GlobalCloudSettingsController;
    .locals 1

    .line 27
    invoke-static {}, Lcom/miui/home/launcher/commercial/cloudSettings/global/GlobalCloudSettingsController$GlobalCloudSettingsControllerInstance;->access$000()Lcom/miui/home/launcher/commercial/cloudSettings/global/GlobalCloudSettingsController;

    move-result-object v0

    return-object v0
.end method

.method private isUserFolderSwitchOnAsDefault(Lcom/miui/home/launcher/FolderInfo;)Z
    .locals 3

    .line 92
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/cloudSettings/global/GlobalCloudSettingsController;->mGlobalCloudSettingsInfo:Lcom/miui/home/launcher/commercial/cloudSettings/global/GlobalCloudSettingsInfo;

    invoke-virtual {v0}, Lcom/miui/home/launcher/commercial/cloudSettings/global/GlobalCloudSettingsInfo;->isUserFolderShowRecommendAppsAsDefault()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 95
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getAllFolders()Ljava/util/ArrayList;

    move-result-object v0

    .line 96
    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->stream(Ljava/util/Collection;)Ljava/util/stream/Stream;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/commercial/cloudSettings/global/GlobalCloudSettingsController;->mIsUserFolder:Ljava/util/function/Predicate;

    .line 97
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/commercial/cloudSettings/global/GlobalCloudSettingsController;->mFolderIdAscending:Ljava/util/Comparator;

    .line 98
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/commercial/cloudSettings/global/GlobalCloudSettingsController;->mGlobalCloudSettingsInfo:Lcom/miui/home/launcher/commercial/cloudSettings/global/GlobalCloudSettingsInfo;

    .line 99
    invoke-virtual {v1}, Lcom/miui/home/launcher/commercial/cloudSettings/global/GlobalCloudSettingsInfo;->getShowRecommendUserFolderMaxCount()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {v0, v1, v2}, Ljava/util/stream/Stream;->limit(J)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/miui/home/launcher/commercial/cloudSettings/global/-$$Lambda$GlobalCloudSettingsController$dQcWBQb17UOhRrff0oUmsjva-Ns;

    invoke-direct {v1, p1}, Lcom/miui/home/launcher/commercial/cloudSettings/global/-$$Lambda$GlobalCloudSettingsController$dQcWBQb17UOhRrff0oUmsjva-Ns;-><init>(Lcom/miui/home/launcher/FolderInfo;)V

    .line 100
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method static synthetic lambda$isUserFolderSwitchOnAsDefault$2(Lcom/miui/home/launcher/FolderInfo;Lcom/miui/home/launcher/FolderInfo;)Z
    .locals 2

    .line 100
    iget-wide v0, p0, Lcom/miui/home/launcher/FolderInfo;->id:J

    iget-wide p0, p1, Lcom/miui/home/launcher/FolderInfo;->id:J

    cmp-long p0, v0, p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic lambda$new$3(Lcom/miui/home/launcher/FolderInfo;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 107
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderInfo;->getLable()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic lambda$new$4(Lcom/miui/home/launcher/FolderInfo;Lcom/miui/home/launcher/FolderInfo;)I
    .locals 2

    .line 110
    iget-wide v0, p0, Lcom/miui/home/launcher/FolderInfo;->id:J

    iget-wide p0, p1, Lcom/miui/home/launcher/FolderInfo;->id:J

    sub-long/2addr v0, p0

    long-to-int p0, v0

    return p0
.end method

.method static synthetic lambda$requestCloudSettingsInfo$0(Ljava/lang/Void;)Lcom/miui/msa/global/guessyoulike/v1/GlobalColudControlInfo;
    .locals 0

    .line 43
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p0

    invoke-static {p0}, Lcom/miui/msa/preinstall/v1/GlobalGuessYouLikeAdHelper;->getInstance(Landroid/content/Context;)Lcom/miui/msa/preinstall/v1/GlobalGuessYouLikeAdHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/msa/preinstall/v1/GlobalGuessYouLikeAdHelper;->getGlobalColudControl()Lcom/miui/msa/global/guessyoulike/v1/GlobalColudControlInfo;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$requestCloudSettingsInfo$1(Lcom/miui/home/launcher/commercial/cloudSettings/global/GlobalCloudSettingsController;Lcom/miui/msa/global/guessyoulike/v1/GlobalColudControlInfo;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 46
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/cloudSettings/global/GlobalCloudSettingsController;->mGlobalCloudSettingsInfo:Lcom/miui/home/launcher/commercial/cloudSettings/global/GlobalCloudSettingsInfo;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/commercial/cloudSettings/global/GlobalCloudSettingsInfo;->updateInfo(Lcom/miui/msa/global/guessyoulike/v1/GlobalColudControlInfo;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getCloudSettingsChangedAction()Ljava/lang/String;
    .locals 1

    const-string v0, "miui.intent.action.ad.GLOBAL_CLOUD_CONFIG_UPDATING"

    return-object v0
.end method

.method public getCloudSettingsInfo()Lcom/miui/home/launcher/commercial/cloudSettings/CloudSettingsInfo;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/cloudSettings/global/GlobalCloudSettingsController;->mGlobalCloudSettingsInfo:Lcom/miui/home/launcher/commercial/cloudSettings/global/GlobalCloudSettingsInfo;

    return-object v0
.end method

.method public isGuessYouLikeAdsOnAsDefault(Lcom/miui/home/launcher/FolderInfo;)Z
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 82
    :cond_0
    invoke-virtual {p1}, Lcom/miui/home/launcher/FolderInfo;->isRecommendFolder()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 83
    iget-object p1, p0, Lcom/miui/home/launcher/commercial/cloudSettings/global/GlobalCloudSettingsController;->mGlobalCloudSettingsInfo:Lcom/miui/home/launcher/commercial/cloudSettings/global/GlobalCloudSettingsInfo;

    invoke-virtual {p1}, Lcom/miui/home/launcher/commercial/cloudSettings/global/GlobalCloudSettingsInfo;->isRecommendFolderGuessYouLikeAdsOnAsDefault()Z

    move-result p1

    return p1

    .line 84
    :cond_1
    invoke-virtual {p1}, Lcom/miui/home/launcher/FolderInfo;->isGamesFolder()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 85
    iget-object p1, p0, Lcom/miui/home/launcher/commercial/cloudSettings/global/GlobalCloudSettingsController;->mGlobalCloudSettingsInfo:Lcom/miui/home/launcher/commercial/cloudSettings/global/GlobalCloudSettingsInfo;

    invoke-virtual {p1}, Lcom/miui/home/launcher/commercial/cloudSettings/global/GlobalCloudSettingsInfo;->isGameFolderGuessYouLikeAdsOnAsDefault()Z

    move-result p1

    return p1

    .line 87
    :cond_2
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/commercial/cloudSettings/global/GlobalCloudSettingsController;->isRecommendSwitchOnAsDefault(Lcom/miui/home/launcher/FolderInfo;)Z

    move-result p1

    return p1
.end method

.method public isRecommendSwitchOnAsDefault(Lcom/miui/home/launcher/FolderInfo;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 62
    :cond_0
    invoke-virtual {p1}, Lcom/miui/home/launcher/FolderInfo;->isGoogleFolder()Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    .line 64
    :cond_1
    invoke-virtual {p1}, Lcom/miui/home/launcher/FolderInfo;->isRecommendFolder()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 65
    iget-object p1, p0, Lcom/miui/home/launcher/commercial/cloudSettings/global/GlobalCloudSettingsController;->mGlobalCloudSettingsInfo:Lcom/miui/home/launcher/commercial/cloudSettings/global/GlobalCloudSettingsInfo;

    invoke-virtual {p1}, Lcom/miui/home/launcher/commercial/cloudSettings/global/GlobalCloudSettingsInfo;->isRecommendFolderSwitchOnAsDefault()Z

    move-result p1

    return p1

    .line 66
    :cond_2
    invoke-virtual {p1}, Lcom/miui/home/launcher/FolderInfo;->isToolsFolder()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 67
    iget-object p1, p0, Lcom/miui/home/launcher/commercial/cloudSettings/global/GlobalCloudSettingsController;->mGlobalCloudSettingsInfo:Lcom/miui/home/launcher/commercial/cloudSettings/global/GlobalCloudSettingsInfo;

    invoke-virtual {p1}, Lcom/miui/home/launcher/commercial/cloudSettings/global/GlobalCloudSettingsInfo;->isToolsFolderSwitchOnAsDefault()Z

    move-result p1

    return p1

    .line 68
    :cond_3
    invoke-virtual {p1}, Lcom/miui/home/launcher/FolderInfo;->isGamesFolder()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 69
    iget-object p1, p0, Lcom/miui/home/launcher/commercial/cloudSettings/global/GlobalCloudSettingsController;->mGlobalCloudSettingsInfo:Lcom/miui/home/launcher/commercial/cloudSettings/global/GlobalCloudSettingsInfo;

    invoke-virtual {p1}, Lcom/miui/home/launcher/commercial/cloudSettings/global/GlobalCloudSettingsInfo;->isGamesFolderSwitchOnAsDefault()Z

    move-result p1

    return p1

    .line 70
    :cond_4
    invoke-virtual {p1}, Lcom/miui/home/launcher/FolderInfo;->isUserGameFolder()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 71
    iget-object p1, p0, Lcom/miui/home/launcher/commercial/cloudSettings/global/GlobalCloudSettingsController;->mGlobalCloudSettingsInfo:Lcom/miui/home/launcher/commercial/cloudSettings/global/GlobalCloudSettingsInfo;

    invoke-virtual {p1}, Lcom/miui/home/launcher/commercial/cloudSettings/global/GlobalCloudSettingsInfo;->isUserGameFolderSwitchOnAsDefault()Z

    move-result p1

    return p1

    .line 73
    :cond_5
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/commercial/cloudSettings/global/GlobalCloudSettingsController;->isUserFolderSwitchOnAsDefault(Lcom/miui/home/launcher/FolderInfo;)Z

    move-result p1

    return p1
.end method

.method public requestCloudSettingsInfo()V
    .locals 3

    .line 41
    sget-object v0, Lcom/miui/home/launcher/commercial/cloudSettings/global/-$$Lambda$GlobalCloudSettingsController$O83NxfOZAK7jZI9Sia3I26By7-U;->INSTANCE:Lcom/miui/home/launcher/commercial/cloudSettings/global/-$$Lambda$GlobalCloudSettingsController$O83NxfOZAK7jZI9Sia3I26By7-U;

    new-instance v1, Lcom/miui/home/launcher/commercial/cloudSettings/global/-$$Lambda$GlobalCloudSettingsController$5uuGR0DZefu1gWZGxHw9PVEs0no;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/commercial/cloudSettings/global/-$$Lambda$GlobalCloudSettingsController$5uuGR0DZefu1gWZGxHw9PVEs0no;-><init>(Lcom/miui/home/launcher/commercial/cloudSettings/global/GlobalCloudSettingsController;)V

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->execParallel(Ljava/util/function/Function;Ljava/util/function/Consumer;Ljava/lang/Object;)V

    return-void
.end method
