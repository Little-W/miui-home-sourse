.class public Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;
.super Ljava/lang/Object;
.source "HotSeatsListRecentsAppProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider$PairShortcutCache;,
        Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider$RecommendContainer;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private final mHotSeatItemFetcher:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/ItemInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private mMinTaskActiveTime:J

.field private final mRecentsRecommendApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/PairShortcutInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mRecommendContainer:Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider$RecommendContainer;

.field private final mRecommendShortcutCache:Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider$PairShortcutCache;

.field private final mTaskStackChangeListener:Lcom/android/systemui/shared/recents/system/TaskStackChangeListener;


# direct methods
.method public constructor <init>(Ljava/util/function/Supplier;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/ItemInfo;",
            ">;>;)V"
        }
    .end annotation

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;->mRecentsRecommendApps:Ljava/util/List;

    const-wide/16 v0, 0x0

    .line 53
    iput-wide v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;->mMinTaskActiveTime:J

    .line 55
    new-instance v0, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider$PairShortcutCache;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider$PairShortcutCache;-><init>(Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider$1;)V

    iput-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;->mRecommendShortcutCache:Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider$PairShortcutCache;

    .line 58
    new-instance v0, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider$1;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider$1;-><init>(Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;)V

    iput-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;->mTaskStackChangeListener:Lcom/android/systemui/shared/recents/system/TaskStackChangeListener;

    .line 66
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncherApplication()Lcom/miui/home/launcher/Application;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;->mContext:Landroid/content/Context;

    .line 68
    iput-object p1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;->mHotSeatItemFetcher:Ljava/util/function/Supplier;

    .line 69
    new-instance p1, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider$2;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider$2;-><init>(Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;->mHandler:Landroid/os/Handler;

    .line 87
    iget-object p1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/miui/home/launcher/hotseats/-$$Lambda$HotSeatsListRecentsAppProvider$WMh1JZNr9mpxsKg3fEGRR8fs2zo;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/hotseats/-$$Lambda$HotSeatsListRecentsAppProvider$WMh1JZNr9mpxsKg3fEGRR8fs2zo;-><init>(Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic access$100(Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;->onTaskStackChangedBackground()V

    return-void
.end method

.method static synthetic access$200(Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;)Z
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;->isNeedUpdateRecommend()Z

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;J)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;->postUpdateRecommendTasks(J)V

    return-void
.end method

.method private evaluateRecentsRecommendTasksAsync(Ljava/lang/Runnable;)V
    .locals 2

    .line 137
    new-instance v0, Lcom/miui/home/launcher/hotseats/-$$Lambda$HotSeatsListRecentsAppProvider$VDam_PsSg1XmyCcZNYko2De-YOo;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/hotseats/-$$Lambda$HotSeatsListRecentsAppProvider$VDam_PsSg1XmyCcZNYko2De-YOo;-><init>(Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;)V

    new-instance v1, Lcom/miui/home/launcher/hotseats/-$$Lambda$HotSeatsListRecentsAppProvider$8G4IlNxBSbnxvpSfB3R6WvNCJk0;

    invoke-direct {v1, p0, p1}, Lcom/miui/home/launcher/hotseats/-$$Lambda$HotSeatsListRecentsAppProvider$8G4IlNxBSbnxvpSfB3R6WvNCJk0;-><init>(Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;Ljava/lang/Runnable;)V

    const/4 p0, 0x0

    invoke-static {v0, v1, p0}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->execParallel(Ljava/util/function/Function;Ljava/util/function/Consumer;Ljava/lang/Object;)V

    return-void
.end method

.method private filterSupportLaunchPairApp(Lcom/android/systemui/shared/recents/model/Task;)Z
    .locals 1

    .line 262
    sget-boolean p0, Lcom/miui/home/launcher/DeviceConfig;->sIsSupportLaunchPairApp:Z

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    return v0

    .line 265
    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/model/Task;->hasMultipleTasks()Z

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method

.method private getItemPackageNames(Lcom/miui/home/launcher/ItemInfo;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/home/launcher/ItemInfo;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 185
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 186
    invoke-virtual {p1}, Lcom/miui/home/launcher/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 187
    instance-of v0, p1, Lcom/miui/home/launcher/ShortcutInfo;

    if-eqz v0, :cond_0

    .line 188
    check-cast p1, Lcom/miui/home/launcher/ShortcutInfo;

    .line 189
    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->getExtraPairPackageName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 190
    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->getExtraPairPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object p0
.end method

.method private getItemUserIds(Lcom/miui/home/launcher/ItemInfo;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/home/launcher/ItemInfo;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 173
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 174
    iget-object v0, p1, Lcom/miui/home/launcher/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-static {v0}, Lcom/miui/launcher/utils/LauncherUtils;->getUserId(Landroid/os/UserHandle;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 175
    instance-of v0, p1, Lcom/miui/home/launcher/ShortcutInfo;

    if-eqz v0, :cond_0

    .line 176
    check-cast p1, Lcom/miui/home/launcher/ShortcutInfo;

    .line 177
    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->isPairIcon()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->getExtraPairUserId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object p0
.end method

.method private getLimitCount()I
    .locals 0

    const/4 p0, 0x5

    return p0
.end method

.method private getTaskPackageNames(Lcom/android/systemui/shared/recents/model/Task;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/shared/recents/model/Task;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 208
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 209
    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/model/Task;->hasMultipleTasks()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p1, Lcom/android/systemui/shared/recents/model/Task;->cti1Key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 211
    iget-object p1, p1, Lcom/android/systemui/shared/recents/model/Task;->cti2Key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 213
    :cond_0
    iget-object p1, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-object p0
.end method

.method private getTaskUserIds(Lcom/android/systemui/shared/recents/model/Task;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/shared/recents/model/Task;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 197
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 198
    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/model/Task;->hasMultipleTasks()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p1, Lcom/android/systemui/shared/recents/model/Task;->cti1Key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v0, v0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 200
    iget-object p1, p1, Lcom/android/systemui/shared/recents/model/Task;->cti2Key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget p1, p1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 202
    :cond_0
    iget-object p1, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget p1, p1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-object p0
.end method

.method private isNeedUpdateRecommend()Z
    .locals 1

    .line 126
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/Application;->isInFoldLargeScreenMode()Z

    move-result p0

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    return v0

    .line 129
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isPadDevice()Z

    move-result p0

    if-eqz p0, :cond_1

    return v0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic lambda$OwjCR_Bd_QugxaGP4fF9aJN9nss(Ljava/lang/Long;Ljava/lang/Long;)I
    .locals 0

    invoke-virtual {p0, p1}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result p0

    return p0
.end method

.method public static synthetic lambda$PvB9IojhmorN7EGiTGkkkR5rAao(Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;Lcom/android/systemui/shared/recents/model/Task;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;->filterSupportLaunchPairApp(Lcom/android/systemui/shared/recents/model/Task;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$QJ5EfGO-eN5XAdp8pXyZujTOcMo(Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0}, Ljava/util/Objects;->nonNull(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$evaluateRecentsRecommendTasksAsync$10(Lcom/miui/home/launcher/PairShortcutInfo;)Z
    .locals 0

    .line 162
    invoke-virtual {p0}, Lcom/miui/home/launcher/PairShortcutInfo;->getShortcutInfo1()Lcom/miui/home/launcher/ShortcutInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic lambda$evaluateRecentsRecommendTasksAsync$3(Lcom/miui/home/launcher/ItemInfo;)Z
    .locals 0

    .line 139
    invoke-virtual {p0}, Lcom/miui/home/launcher/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic lambda$evaluateRecentsRecommendTasksAsync$6(Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/shared/recents/model/Task;)I
    .locals 2

    .line 148
    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/model/Task;->getLastActiveTime()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/model/Task;->getLastActiveTime()J

    move-result-wide p0

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Long;->compare(JJ)I

    move-result p0

    return p0
.end method

.method static synthetic lambda$evaluateRecentsRecommendTasksAsync$8(Lcom/android/systemui/shared/recents/model/Task;)Ljava/lang/Long;
    .locals 2

    .line 155
    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/model/Task;->getLastActiveTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$evaluateRecentsRecommendTasksAsync$9(Ljava/util/List;Lcom/android/systemui/shared/recents/model/Task;)Lcom/miui/home/launcher/PairShortcutInfo;
    .locals 0

    .line 160
    invoke-static {p1, p0}, Lcom/miui/home/recents/util/PairUtils;->findPairShortcutInfo(Lcom/android/systemui/shared/recents/model/Task;Ljava/util/List;)Lcom/miui/home/launcher/PairShortcutInfo;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$removeCache$14(Lcom/miui/home/launcher/ShortcutInfo;Ljava/util/List;)Z
    .locals 0

    .line 297
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private notifyRecommendUpdated()V
    .locals 0

    .line 253
    iget-object p0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;->mRecommendContainer:Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider$RecommendContainer;

    if-eqz p0, :cond_0

    .line 254
    invoke-interface {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider$RecommendContainer;->onRecommendUpdate()V

    :cond_0
    return-void
.end method

.method private onTaskStackChangedBackground()V
    .locals 2

    const-wide/16 v0, 0x12c

    .line 105
    invoke-direct {p0, v0, v1}, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;->postUpdateRecommendTasks(J)V

    return-void
.end method

.method private postUpdateRecommendTasks(J)V
    .locals 2

    .line 109
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 110
    iget-object p0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private rearrangeRecentsRecommendTasks(Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/PairShortcutInfo;",
            ">;",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/PairShortcutInfo;",
            ">;)V"
        }
    .end annotation

    .line 231
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 232
    invoke-interface {p0, p2}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 233
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 234
    invoke-interface {v0, p1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 237
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/miui/home/launcher/PairShortcutInfo;

    .line 238
    invoke-interface {p1, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p2

    if-ltz p2, :cond_0

    .line 240
    invoke-interface {p1, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 242
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 243
    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/PairShortcutInfo;

    invoke-interface {p1, p2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 249
    :cond_1
    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method


# virtual methods
.method public bindRecommendContainer(Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider$RecommendContainer;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;->mRecommendContainer:Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider$RecommendContainer;

    return-void
.end method

.method public getRecommendApps()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/PairShortcutInfo;",
            ">;"
        }
    .end annotation

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 98
    iget-object v1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;->mRecentsRecommendApps:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/PairShortcutInfo;

    .line 99
    iget-object v3, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;->mRecommendShortcutCache:Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider$PairShortcutCache;

    invoke-virtual {v3, v2}, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider$PairShortcutCache;->getGroupShortcutInfo(Lcom/miui/home/launcher/PairShortcutInfo;)Lcom/miui/home/launcher/PairShortcutInfo;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public handleUpdateRecommendTasks(Z)V
    .locals 1

    .line 118
    new-instance v0, Lcom/miui/home/launcher/hotseats/-$$Lambda$HotSeatsListRecentsAppProvider$KZ4Yd6c3DCFqJNa58L7AKXurAo0;

    invoke-direct {v0, p0, p1}, Lcom/miui/home/launcher/hotseats/-$$Lambda$HotSeatsListRecentsAppProvider$KZ4Yd6c3DCFqJNa58L7AKXurAo0;-><init>(Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;Z)V

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;->evaluateRecentsRecommendTasksAsync(Ljava/lang/Runnable;)V

    return-void
.end method

.method public synthetic lambda$evaluateRecentsRecommendTasksAsync$11$HotSeatsListRecentsAppProvider(Ljava/lang/Runnable;Lcom/android/systemui/shared/recents/model/TaskStack;)V
    .locals 4

    .line 138
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;->mHotSeatItemFetcher:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/miui/home/launcher/hotseats/-$$Lambda$HotSeatsListRecentsAppProvider$a1xraj6Af2O12lfN-2qJx6KT72o;->INSTANCE:Lcom/miui/home/launcher/hotseats/-$$Lambda$HotSeatsListRecentsAppProvider$a1xraj6Af2O12lfN-2qJx6KT72o;

    .line 139
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/miui/home/launcher/hotseats/-$$Lambda$HotSeatsListRecentsAppProvider$X2WA4IslhlVE6VZt-1VpKfapRbU;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/hotseats/-$$Lambda$HotSeatsListRecentsAppProvider$X2WA4IslhlVE6VZt-1VpKfapRbU;-><init>(Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;)V

    .line 140
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 141
    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 143
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/Application;->getModel()Lcom/miui/home/launcher/LauncherModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/LauncherModel;->getAllAppList()Lcom/miui/home/launcher/AllAppsList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/AllAppsList;->getDataList()Ljava/util/ArrayList;

    move-result-object v1

    .line 145
    invoke-virtual {p2}, Lcom/android/systemui/shared/recents/model/TaskStack;->getStackTasks()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v2, Lcom/miui/home/launcher/hotseats/-$$Lambda$HotSeatsListRecentsAppProvider$5E752JEseIybnW5xeDH4E7mbDmM;

    invoke-direct {v2, p0}, Lcom/miui/home/launcher/hotseats/-$$Lambda$HotSeatsListRecentsAppProvider$5E752JEseIybnW5xeDH4E7mbDmM;-><init>(Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;)V

    .line 146
    invoke-interface {p2, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v2, Lcom/miui/home/launcher/hotseats/-$$Lambda$HotSeatsListRecentsAppProvider$PvB9IojhmorN7EGiTGkkkR5rAao;

    invoke-direct {v2, p0}, Lcom/miui/home/launcher/hotseats/-$$Lambda$HotSeatsListRecentsAppProvider$PvB9IojhmorN7EGiTGkkkR5rAao;-><init>(Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;)V

    .line 147
    invoke-interface {p2, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p2

    sget-object v2, Lcom/miui/home/launcher/hotseats/-$$Lambda$HotSeatsListRecentsAppProvider$Md9gATCS34Q2RhDEHXDec2mdlMM;->INSTANCE:Lcom/miui/home/launcher/hotseats/-$$Lambda$HotSeatsListRecentsAppProvider$Md9gATCS34Q2RhDEHXDec2mdlMM;

    .line 148
    invoke-interface {p2, v2}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v2, Lcom/miui/home/launcher/hotseats/-$$Lambda$HotSeatsListRecentsAppProvider$URoB8izh--SNOGnt9VMuzCCt_uc;

    invoke-direct {v2, p0, v0}, Lcom/miui/home/launcher/hotseats/-$$Lambda$HotSeatsListRecentsAppProvider$URoB8izh--SNOGnt9VMuzCCt_uc;-><init>(Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;Ljava/util/Set;)V

    .line 150
    invoke-interface {p2, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p2

    .line 151
    invoke-direct {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;->getLimitCount()I

    move-result v0

    int-to-long v2, v0

    invoke-interface {p2, v2, v3}, Ljava/util/stream/Stream;->limit(J)Ljava/util/stream/Stream;

    move-result-object p2

    .line 152
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 154
    invoke-interface {p2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v2, Lcom/miui/home/launcher/hotseats/-$$Lambda$HotSeatsListRecentsAppProvider$L8fh_0qLokHvybhuL4L7zoNDcQ4;->INSTANCE:Lcom/miui/home/launcher/hotseats/-$$Lambda$HotSeatsListRecentsAppProvider$L8fh_0qLokHvybhuL4L7zoNDcQ4;

    .line 155
    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v2, Lcom/miui/home/launcher/hotseats/-$$Lambda$HotSeatsListRecentsAppProvider$OwjCR_Bd_QugxaGP4fF9aJN9nss;->INSTANCE:Lcom/miui/home/launcher/hotseats/-$$Lambda$HotSeatsListRecentsAppProvider$OwjCR_Bd_QugxaGP4fF9aJN9nss;

    .line 156
    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->min(Ljava/util/Comparator;)Ljava/util/Optional;

    move-result-object v0

    iget-wide v2, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;->mMinTaskActiveTime:J

    .line 157
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;->mMinTaskActiveTime:J

    .line 159
    invoke-interface {p2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v0, Lcom/miui/home/launcher/hotseats/-$$Lambda$HotSeatsListRecentsAppProvider$T0fXbQCGuUTeYFn2ngxBxyviQaA;

    invoke-direct {v0, v1}, Lcom/miui/home/launcher/hotseats/-$$Lambda$HotSeatsListRecentsAppProvider$T0fXbQCGuUTeYFn2ngxBxyviQaA;-><init>(Ljava/util/List;)V

    .line 160
    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p2

    sget-object v0, Lcom/miui/home/launcher/hotseats/-$$Lambda$HotSeatsListRecentsAppProvider$QJ5EfGO-eN5XAdp8pXyZujTOcMo;->INSTANCE:Lcom/miui/home/launcher/hotseats/-$$Lambda$HotSeatsListRecentsAppProvider$QJ5EfGO-eN5XAdp8pXyZujTOcMo;

    .line 161
    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p2

    sget-object v0, Lcom/miui/home/launcher/hotseats/-$$Lambda$HotSeatsListRecentsAppProvider$3R72YTEmDYUgOUINbk7us02-Gnk;->INSTANCE:Lcom/miui/home/launcher/hotseats/-$$Lambda$HotSeatsListRecentsAppProvider$3R72YTEmDYUgOUINbk7us02-Gnk;

    .line 162
    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p2

    .line 163
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 165
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;->mRecentsRecommendApps:Ljava/util/List;

    invoke-direct {p0, v0, p2}, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;->rearrangeRecentsRecommendTasks(Ljava/util/List;Ljava/util/List;)V

    if-eqz p1, :cond_0

    .line 167
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public synthetic lambda$evaluateRecentsRecommendTasksAsync$2$HotSeatsListRecentsAppProvider(Ljava/lang/Void;)Lcom/android/systemui/shared/recents/model/TaskStack;
    .locals 0

    .line 137
    iget-object p0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/miui/home/recents/RecentsModel;->getInstance(Landroid/content/Context;)Lcom/miui/home/recents/RecentsModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/recents/RecentsModel;->getTaskStack()Lcom/android/systemui/shared/recents/model/TaskStack;

    move-result-object p0

    return-object p0
.end method

.method public synthetic lambda$evaluateRecentsRecommendTasksAsync$4$HotSeatsListRecentsAppProvider(Lcom/miui/home/launcher/ItemInfo;)Landroid/util/Pair;
    .locals 2

    .line 140
    new-instance v0, Landroid/util/Pair;

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;->getItemUserIds(Lcom/miui/home/launcher/ItemInfo;)Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;->getItemPackageNames(Lcom/miui/home/launcher/ItemInfo;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public synthetic lambda$evaluateRecentsRecommendTasksAsync$5$HotSeatsListRecentsAppProvider(Lcom/android/systemui/shared/recents/model/Task;)Z
    .locals 2

    .line 146
    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/model/Task;->getLastActiveTime()J

    move-result-wide v0

    iget-wide p0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;->mMinTaskActiveTime:J

    cmp-long p0, v0, p0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public synthetic lambda$evaluateRecentsRecommendTasksAsync$7$HotSeatsListRecentsAppProvider(Ljava/util/Set;Lcom/android/systemui/shared/recents/model/Task;)Z
    .locals 2

    .line 150
    new-instance v0, Landroid/util/Pair;

    invoke-direct {p0, p2}, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;->getTaskUserIds(Lcom/android/systemui/shared/recents/model/Task;)Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, p2}, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;->getTaskPackageNames(Lcom/android/systemui/shared/recents/model/Task;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public synthetic lambda$handleUpdateRecommendTasks$1$HotSeatsListRecentsAppProvider(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 120
    invoke-direct {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;->notifyRecommendUpdated()V

    :cond_0
    return-void
.end method

.method public synthetic lambda$new$0$HotSeatsListRecentsAppProvider()V
    .locals 1

    const/4 v0, 0x0

    .line 88
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;->evaluateRecentsRecommendTasksAsync(Ljava/lang/Runnable;)V

    return-void
.end method

.method public synthetic lambda$onAttachedToWindow$12$HotSeatsListRecentsAppProvider()V
    .locals 2

    .line 271
    invoke-static {}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;->mTaskStackChangeListener:Lcom/android/systemui/shared/recents/system/TaskStackChangeListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->registerTaskStackListener(Lcom/android/systemui/shared/recents/system/TaskStackChangeListener;)V

    .line 272
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 273
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$onDetachedFromWindow$13$HotSeatsListRecentsAppProvider()V
    .locals 2

    .line 280
    invoke-static {}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;->mTaskStackChangeListener:Lcom/android/systemui/shared/recents/system/TaskStackChangeListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->unregisterTaskStackListener(Lcom/android/systemui/shared/recents/system/TaskStackChangeListener;)V

    .line 281
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 282
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 1

    .line 270
    new-instance v0, Lcom/miui/home/launcher/hotseats/-$$Lambda$HotSeatsListRecentsAppProvider$Jo83MLekIRwzXor8venr03KrW4g;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/hotseats/-$$Lambda$HotSeatsListRecentsAppProvider$Jo83MLekIRwzXor8venr03KrW4g;-><init>(Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;)V

    invoke-static {v0}, Lcom/miui/home/launcher/common/BackgroundThread;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 279
    new-instance v0, Lcom/miui/home/launcher/hotseats/-$$Lambda$HotSeatsListRecentsAppProvider$d2G0TZidctNt2m64avu7OSBSPBc;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/hotseats/-$$Lambda$HotSeatsListRecentsAppProvider$d2G0TZidctNt2m64avu7OSBSPBc;-><init>(Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;)V

    invoke-static {v0}, Lcom/miui/home/launcher/common/BackgroundThread;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onMessageEvent(Lcom/miui/home/recents/messages/RecentTasksChangedEvent;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 289
    sget-boolean p1, Lcom/miui/home/launcher/common/Utilities;->ATLEAST_T:Z

    if-eqz p1, :cond_0

    .line 290
    invoke-direct {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;->onTaskStackChangedBackground()V

    :cond_0
    return-void
.end method

.method public removeCache(Lcom/miui/home/launcher/ShortcutInfo;)V
    .locals 1

    .line 295
    iget-object p0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;->mRecommendShortcutCache:Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider$PairShortcutCache;

    iget-object v0, p1, Lcom/miui/home/launcher/ShortcutInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider$PairShortcutCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/HashMap;

    if-eqz p0, :cond_0

    .line 297
    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p0

    new-instance v0, Lcom/miui/home/launcher/hotseats/-$$Lambda$HotSeatsListRecentsAppProvider$qovWnel-vg3Cg9SpVvNY9GphZCk;

    invoke-direct {v0, p1}, Lcom/miui/home/launcher/hotseats/-$$Lambda$HotSeatsListRecentsAppProvider$qovWnel-vg3Cg9SpVvNY9GphZCk;-><init>(Lcom/miui/home/launcher/ShortcutInfo;)V

    invoke-interface {p0, v0}, Ljava/util/Set;->removeIf(Ljava/util/function/Predicate;)Z

    :cond_0
    return-void
.end method

.method public requestUpdateRecommendTasks()V
    .locals 1

    const/4 v0, 0x0

    .line 114
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;->handleUpdateRecommendTasks(Z)V

    return-void
.end method
