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

.field private final mHandler:Landroid/os/Handler;

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
.method public constructor <init>(Landroid/content/Context;Ljava/util/function/Supplier;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/function/Supplier<",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/ItemInfo;",
            ">;>;)V"
        }
    .end annotation

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;->mRecentsRecommendApps:Ljava/util/List;

    const-wide/16 v0, 0x0

    .line 46
    iput-wide v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;->mMinTaskActiveTime:J

    .line 48
    new-instance v0, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider$PairShortcutCache;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider$PairShortcutCache;-><init>(Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider$1;)V

    iput-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;->mRecommendShortcutCache:Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider$PairShortcutCache;

    .line 50
    new-instance v0, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider$1;-><init>(Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;->mHandler:Landroid/os/Handler;

    .line 58
    new-instance v0, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider$2;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider$2;-><init>(Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;)V

    iput-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;->mTaskStackChangeListener:Lcom/android/systemui/shared/recents/system/TaskStackChangeListener;

    .line 66
    iput-object p1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;->mContext:Landroid/content/Context;

    .line 68
    iput-object p2, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;->mHotSeatItemFetcher:Ljava/util/function/Supplier;

    .line 70
    iget-object p1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;->mHandler:Landroid/os/Handler;

    new-instance p2, Lcom/miui/home/launcher/hotseats/-$$Lambda$HotSeatsListRecentsAppProvider$WMh1JZNr9mpxsKg3fEGRR8fs2zo;

    invoke-direct {p2, p0}, Lcom/miui/home/launcher/hotseats/-$$Lambda$HotSeatsListRecentsAppProvider$WMh1JZNr9mpxsKg3fEGRR8fs2zo;-><init>(Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic access$100(Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;Z)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;->handleUpdateRecommendTasks(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;->onTaskStackChangedBackground()V

    return-void
.end method

.method private evaluateRecentsRecommendTasks()V
    .locals 5

    .line 113
    invoke-direct {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;->getTaskStack()Lcom/android/systemui/shared/recents/model/TaskStack;

    move-result-object v0

    .line 114
    iget-object v1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;->mHotSeatItemFetcher:Ljava/util/function/Supplier;

    invoke-interface {v1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    sget-object v2, Lcom/miui/home/launcher/hotseats/-$$Lambda$HotSeatsListRecentsAppProvider$zlP_EziSgX1X6j0Da7eVuEv_M4U;->INSTANCE:Lcom/miui/home/launcher/hotseats/-$$Lambda$HotSeatsListRecentsAppProvider$zlP_EziSgX1X6j0Da7eVuEv_M4U;

    .line 115
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    sget-object v2, Lcom/miui/home/launcher/hotseats/-$$Lambda$HotSeatsListRecentsAppProvider$LYCXFFVSQ8uOcbyujAaasGY1I7Q;->INSTANCE:Lcom/miui/home/launcher/hotseats/-$$Lambda$HotSeatsListRecentsAppProvider$LYCXFFVSQ8uOcbyujAaasGY1I7Q;

    .line 116
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 117
    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 119
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/launcher/Application;->getModel()Lcom/miui/home/launcher/LauncherModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/launcher/LauncherModel;->getAllAppList()Lcom/miui/home/launcher/AllAppsList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/launcher/AllAppsList;->getDataList()Ljava/util/ArrayList;

    move-result-object v2

    .line 121
    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/TaskStack;->getStackTasks()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v3, Lcom/miui/home/launcher/hotseats/-$$Lambda$HotSeatsListRecentsAppProvider$hWMCjDEPUVJ6tx7jFeMp3YRIKUE;

    invoke-direct {v3, p0}, Lcom/miui/home/launcher/hotseats/-$$Lambda$HotSeatsListRecentsAppProvider$hWMCjDEPUVJ6tx7jFeMp3YRIKUE;-><init>(Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;)V

    .line 122
    invoke-interface {v0, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v3, Lcom/miui/home/launcher/hotseats/-$$Lambda$HotSeatsListRecentsAppProvider$PvB9IojhmorN7EGiTGkkkR5rAao;

    invoke-direct {v3, p0}, Lcom/miui/home/launcher/hotseats/-$$Lambda$HotSeatsListRecentsAppProvider$PvB9IojhmorN7EGiTGkkkR5rAao;-><init>(Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;)V

    .line 123
    invoke-interface {v0, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v3, Lcom/miui/home/launcher/hotseats/-$$Lambda$HotSeatsListRecentsAppProvider$6UmDpDf-XNqOy0j0gpf3UYqwkdI;->INSTANCE:Lcom/miui/home/launcher/hotseats/-$$Lambda$HotSeatsListRecentsAppProvider$6UmDpDf-XNqOy0j0gpf3UYqwkdI;

    .line 124
    invoke-interface {v0, v3}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v3, Lcom/miui/home/launcher/hotseats/-$$Lambda$HotSeatsListRecentsAppProvider$XE59apSmyiTGu9nWrrt9eWc5pXM;

    invoke-direct {v3, v1}, Lcom/miui/home/launcher/hotseats/-$$Lambda$HotSeatsListRecentsAppProvider$XE59apSmyiTGu9nWrrt9eWc5pXM;-><init>(Ljava/util/Set;)V

    .line 126
    invoke-interface {v0, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 127
    invoke-direct {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;->getLimitCount()I

    move-result v1

    int-to-long v3, v1

    invoke-interface {v0, v3, v4}, Ljava/util/stream/Stream;->limit(J)Ljava/util/stream/Stream;

    move-result-object v0

    .line 128
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 130
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    sget-object v3, Lcom/miui/home/launcher/hotseats/-$$Lambda$HotSeatsListRecentsAppProvider$52nVoV3K-X6nBPpf7A8rQTuZTWw;->INSTANCE:Lcom/miui/home/launcher/hotseats/-$$Lambda$HotSeatsListRecentsAppProvider$52nVoV3K-X6nBPpf7A8rQTuZTWw;

    .line 131
    invoke-interface {v1, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    sget-object v3, Lcom/miui/home/launcher/hotseats/-$$Lambda$OwjCR_Bd_QugxaGP4fF9aJN9nss;->INSTANCE:Lcom/miui/home/launcher/hotseats/-$$Lambda$OwjCR_Bd_QugxaGP4fF9aJN9nss;

    .line 132
    invoke-interface {v1, v3}, Ljava/util/stream/Stream;->min(Ljava/util/Comparator;)Ljava/util/Optional;

    move-result-object v1

    iget-wide v3, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;->mMinTaskActiveTime:J

    .line 133
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;->mMinTaskActiveTime:J

    .line 135
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/miui/home/launcher/hotseats/-$$Lambda$HotSeatsListRecentsAppProvider$cN7hhR3WR5Wa4aN5CF-VEVFzguI;

    invoke-direct {v1, p0, v2}, Lcom/miui/home/launcher/hotseats/-$$Lambda$HotSeatsListRecentsAppProvider$cN7hhR3WR5Wa4aN5CF-VEVFzguI;-><init>(Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;Ljava/util/List;)V

    .line 136
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/miui/home/launcher/hotseats/-$$Lambda$QJ5EfGO-eN5XAdp8pXyZujTOcMo;->INSTANCE:Lcom/miui/home/launcher/hotseats/-$$Lambda$QJ5EfGO-eN5XAdp8pXyZujTOcMo;

    .line 137
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/miui/home/launcher/hotseats/-$$Lambda$HotSeatsListRecentsAppProvider$Vsd_j7BAWt-2dURpDDWFuarzb9s;->INSTANCE:Lcom/miui/home/launcher/hotseats/-$$Lambda$HotSeatsListRecentsAppProvider$Vsd_j7BAWt-2dURpDDWFuarzb9s;

    .line 138
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 139
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 141
    iget-object v1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;->mRecentsRecommendApps:Ljava/util/List;

    invoke-direct {p0, v1, v0}, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;->rearrangeRecentsRecommendTasks(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method private filterSupportLaunchPairApp(Lcom/android/systemui/shared/recents/model/Task;)Z
    .locals 2

    .line 221
    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sIsSupportLaunchPairApp:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 224
    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/model/Task;->hasMultipleTasks()Z

    move-result p1

    xor-int/2addr p1, v1

    return p1
.end method

.method private findAppInfo(Ljava/util/List;Ljava/lang/String;I)Lcom/miui/home/launcher/AppInfo;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/AppInfo;",
            ">;",
            "Ljava/lang/String;",
            "I)",
            "Lcom/miui/home/launcher/AppInfo;"
        }
    .end annotation

    .line 145
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/AppInfo;

    .line 146
    invoke-virtual {v0}, Lcom/miui/home/launcher/AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/miui/home/launcher/AppInfo;->user:Landroid/os/UserHandle;

    .line 147
    invoke-static {v1}, Lcom/miui/launcher/utils/LauncherUtils;->getUserId(Landroid/os/UserHandle;)I

    move-result v1

    if-ne v1, p3, :cond_0

    return-object v0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private findGroupShortcutInfo(Lcom/android/systemui/shared/recents/model/Task;Ljava/util/List;)Lcom/miui/home/launcher/PairShortcutInfo;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/shared/recents/model/Task;",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/AppInfo;",
            ">;)",
            "Lcom/miui/home/launcher/PairShortcutInfo;"
        }
    .end annotation

    .line 159
    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/model/Task;->hasMultipleTasks()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p1, Lcom/android/systemui/shared/recents/model/Task;->cti1Key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p1, Lcom/android/systemui/shared/recents/model/Task;->cti1Key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v2, v2, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    invoke-direct {p0, p2, v0, v2}, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;->findAppInfo(Ljava/util/List;Ljava/lang/String;I)Lcom/miui/home/launcher/AppInfo;

    move-result-object v0

    .line 162
    iget-object v2, p1, Lcom/android/systemui/shared/recents/model/Task;->cti2Key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {v2}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object p1, p1, Lcom/android/systemui/shared/recents/model/Task;->cti2Key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget p1, p1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    invoke-direct {p0, p2, v2, p1}, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;->findAppInfo(Ljava/util/List;Ljava/lang/String;I)Lcom/miui/home/launcher/AppInfo;

    move-result-object p1

    goto :goto_0

    .line 164
    :cond_0
    iget-object v0, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object p1, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget p1, p1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    invoke-direct {p0, p2, v0, p1}, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;->findAppInfo(Ljava/util/List;Ljava/lang/String;I)Lcom/miui/home/launcher/AppInfo;

    move-result-object v0

    move-object p1, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 167
    invoke-virtual {v0}, Lcom/miui/home/launcher/AppInfo;->makeShortcut()Lcom/miui/home/launcher/ShortcutInfo;

    move-result-object p2

    goto :goto_1

    :cond_1
    move-object p2, v1

    :goto_1
    if-eqz p1, :cond_2

    .line 170
    invoke-virtual {p1}, Lcom/miui/home/launcher/AppInfo;->makeShortcut()Lcom/miui/home/launcher/ShortcutInfo;

    move-result-object p1

    goto :goto_2

    :cond_2
    move-object p1, v1

    :goto_2
    if-nez p2, :cond_3

    return-object v1

    .line 175
    :cond_3
    new-instance v0, Lcom/miui/home/launcher/PairShortcutInfo;

    invoke-direct {v0, p2, p1}, Lcom/miui/home/launcher/PairShortcutInfo;-><init>(Lcom/miui/home/launcher/ShortcutInfo;Lcom/miui/home/launcher/ShortcutInfo;)V

    return-object v0
.end method

.method private getLimitCount()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method private getTaskStack()Lcom/android/systemui/shared/recents/model/TaskStack;
    .locals 3

    .line 108
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/home/recents/RecentsModel;->getInstance(Landroid/content/Context;)Lcom/miui/home/recents/RecentsModel;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;->mContext:Landroid/content/Context;

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/recents/RecentsModel;->getSmartRecentsTaskLoadPlan(Landroid/content/Context;I)Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;

    move-result-object v0

    .line 109
    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;->getTaskStack()Lcom/android/systemui/shared/recents/model/TaskStack;

    move-result-object v0

    return-object v0
.end method

.method private handleUpdateRecommendTasks(Z)V
    .locals 0

    .line 101
    invoke-direct {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;->evaluateRecentsRecommendTasks()V

    if-eqz p1, :cond_0

    .line 103
    invoke-direct {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;->notifyRecommendUpdated()V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$PvB9IojhmorN7EGiTGkkkR5rAao(Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;Lcom/android/systemui/shared/recents/model/Task;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;->filterSupportLaunchPairApp(Lcom/android/systemui/shared/recents/model/Task;)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$evaluateRecentsRecommendTasks$1(Lcom/miui/home/launcher/ItemInfo;)Z
    .locals 0

    .line 115
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

.method static synthetic lambda$evaluateRecentsRecommendTasks$2(Lcom/miui/home/launcher/ItemInfo;)Landroid/util/Pair;
    .locals 2

    .line 116
    new-instance v0, Landroid/util/Pair;

    iget-object v1, p0, Lcom/miui/home/launcher/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-static {v1}, Lcom/miui/launcher/utils/LauncherUtils;->getUserId(Landroid/os/UserHandle;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/miui/home/launcher/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static synthetic lambda$evaluateRecentsRecommendTasks$3(Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;Lcom/android/systemui/shared/recents/model/Task;)Z
    .locals 4

    .line 122
    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/model/Task;->getLastActiveTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;->mMinTaskActiveTime:J

    cmp-long p1, v0, v2

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method static synthetic lambda$evaluateRecentsRecommendTasks$4(Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/shared/recents/model/Task;)I
    .locals 2

    .line 124
    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/model/Task;->getLastActiveTime()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/model/Task;->getLastActiveTime()J

    move-result-wide p0

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Long;->compare(JJ)I

    move-result p0

    return p0
.end method

.method static synthetic lambda$evaluateRecentsRecommendTasks$5(Ljava/util/Set;Lcom/android/systemui/shared/recents/model/Task;)Z
    .locals 2

    .line 126
    new-instance v0, Landroid/util/Pair;

    iget-object v1, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v1, v1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object p1, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p0, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$evaluateRecentsRecommendTasks$6(Lcom/android/systemui/shared/recents/model/Task;)Ljava/lang/Long;
    .locals 2

    .line 131
    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/model/Task;->getLastActiveTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$evaluateRecentsRecommendTasks$7(Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;Ljava/util/List;Lcom/android/systemui/shared/recents/model/Task;)Lcom/miui/home/launcher/PairShortcutInfo;
    .locals 0

    .line 136
    invoke-direct {p0, p2, p1}, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;->findGroupShortcutInfo(Lcom/android/systemui/shared/recents/model/Task;Ljava/util/List;)Lcom/miui/home/launcher/PairShortcutInfo;

    move-result-object p1

    return-object p1
.end method

.method static synthetic lambda$evaluateRecentsRecommendTasks$8(Lcom/miui/home/launcher/PairShortcutInfo;)Z
    .locals 0

    .line 138
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

.method public static synthetic lambda$new$0(Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;)V
    .locals 0

    .line 71
    invoke-direct {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;->evaluateRecentsRecommendTasks()V

    return-void
.end method

.method public static synthetic lambda$onAttachedToWindow$9(Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;)V
    .locals 2

    .line 230
    invoke-static {}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;->mTaskStackChangeListener:Lcom/android/systemui/shared/recents/system/TaskStackChangeListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->registerTaskStackListener(Lcom/android/systemui/shared/recents/system/TaskStackChangeListener;)V

    return-void
.end method

.method public static synthetic lambda$onDetachedFromWindow$10(Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;)V
    .locals 2

    .line 236
    invoke-static {}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;->mTaskStackChangeListener:Lcom/android/systemui/shared/recents/system/TaskStackChangeListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->unregisterTaskStackListener(Lcom/android/systemui/shared/recents/system/TaskStackChangeListener;)V

    return-void
.end method

.method static synthetic lambda$removeCache$11(Lcom/miui/home/launcher/ShortcutInfo;Ljava/util/List;)Z
    .locals 0

    .line 243
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private notifyRecommendUpdated()V
    .locals 1

    .line 212
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;->mRecommendContainer:Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider$RecommendContainer;

    if-eqz v0, :cond_0

    .line 213
    invoke-interface {v0}, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider$RecommendContainer;->onRecommendUpdate()V

    :cond_0
    return-void
.end method

.method private onTaskStackChangedBackground()V
    .locals 2

    const-wide/16 v0, 0x12c

    .line 88
    invoke-direct {p0, v0, v1}, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;->postUpdateRecommendTasks(J)V

    return-void
.end method

.method private postUpdateRecommendTasks(J)V
    .locals 2

    .line 92
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 93
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private rearrangeRecentsRecommendTasks(Ljava/util/List;Ljava/util/List;)V
    .locals 3
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

    .line 190
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 191
    invoke-interface {v0, p2}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 192
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 193
    invoke-interface {v1, p1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 196
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/PairShortcutInfo;

    .line 197
    invoke-interface {p1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 199
    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 201
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    .line 202
    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/PairShortcutInfo;

    invoke-interface {p1, v0, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 208
    :cond_1
    invoke-interface {p1, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method


# virtual methods
.method public bindRecommendContainer(Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider$RecommendContainer;)V
    .locals 0

    .line 76
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

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 81
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

    .line 82
    iget-object v3, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;->mRecommendShortcutCache:Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider$PairShortcutCache;

    invoke-virtual {v3, v2}, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider$PairShortcutCache;->getGroupShortcutInfo(Lcom/miui/home/launcher/PairShortcutInfo;)Lcom/miui/home/launcher/PairShortcutInfo;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public onAttachedToWindow()V
    .locals 1

    .line 229
    new-instance v0, Lcom/miui/home/launcher/hotseats/-$$Lambda$HotSeatsListRecentsAppProvider$0eVnNuHB_4yhecDBfHnT2qWgJ7Y;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/hotseats/-$$Lambda$HotSeatsListRecentsAppProvider$0eVnNuHB_4yhecDBfHnT2qWgJ7Y;-><init>(Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;)V

    invoke-static {v0}, Lcom/miui/home/launcher/common/BackgroundThread;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 235
    new-instance v0, Lcom/miui/home/launcher/hotseats/-$$Lambda$HotSeatsListRecentsAppProvider$8GnDfldPDgy27bzT9zJ-TqzeH2Y;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/hotseats/-$$Lambda$HotSeatsListRecentsAppProvider$8GnDfldPDgy27bzT9zJ-TqzeH2Y;-><init>(Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;)V

    invoke-static {v0}, Lcom/miui/home/launcher/common/BackgroundThread;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public removeCache(Lcom/miui/home/launcher/ShortcutInfo;)V
    .locals 2

    .line 241
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;->mRecommendShortcutCache:Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider$PairShortcutCache;

    iget-object v1, p1, Lcom/miui/home/launcher/ShortcutInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider$PairShortcutCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 243
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Lcom/miui/home/launcher/hotseats/-$$Lambda$HotSeatsListRecentsAppProvider$1LKv8u-8Ry5mGIqlmL-Trl3ohkM;

    invoke-direct {v1, p1}, Lcom/miui/home/launcher/hotseats/-$$Lambda$HotSeatsListRecentsAppProvider$1LKv8u-8Ry5mGIqlmL-Trl3ohkM;-><init>(Lcom/miui/home/launcher/ShortcutInfo;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->removeIf(Ljava/util/function/Predicate;)Z

    :cond_0
    return-void
.end method

.method public requestUpdateRecommendTasks()V
    .locals 1

    const/4 v0, 0x0

    .line 97
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;->handleUpdateRecommendTasks(Z)V

    return-void
.end method
