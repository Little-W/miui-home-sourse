.class public Lcom/miui/home/recents/QuickstepAppTransitionFeedModeHelper;
.super Ljava/lang/Object;
.source "QuickstepAppTransitionFeedModeHelper.java"


# static fields
.field private static final sNeedCheckRecentTaskApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "com.android.quicksearchbox"

    const-string v1, "com.android.browser"

    const-string v2, "com.duokan.reader"

    .line 34
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/miui/home/recents/QuickstepAppTransitionFeedModeHelper;->sNeedCheckRecentTaskApps:Ljava/util/List;

    return-void
.end method

.method private static findRecentInfoByTarget(Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;Ljava/util/List;)Lcom/android/systemui/shared/recents/model/Task;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;",
            "Ljava/util/List<",
            "+",
            "Lcom/android/systemui/shared/recents/model/Task;",
            ">;)",
            "Lcom/android/systemui/shared/recents/model/Task;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_4

    .line 112
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 116
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/shared/recents/model/Task;

    if-eqz v1, :cond_1

    .line 117
    iget-object v2, v1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    if-nez v2, :cond_2

    goto :goto_0

    .line 120
    :cond_2
    iget-object v2, v1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v2, v2, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    iget v3, p0, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->taskId:I

    if-ne v2, v3, :cond_1

    return-object v1

    :cond_3
    return-object v0

    :cond_4
    :goto_1
    return-object v0
.end method

.method private static getRecentTaskPackageName(Lcom/android/systemui/shared/recents/model/Task;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 97
    iget-object v1, p0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget-object v1, v1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->baseIntent:Landroid/content/Intent;

    if-nez v1, :cond_0

    goto :goto_0

    .line 102
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget-object p0, p0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->baseIntent:Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v0

    .line 106
    :cond_1
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_0
    return-object v0
.end method

.method private static getRencentTasks(Landroid/content/Context;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/systemui/shared/recents/model/Task;",
            ">;"
        }
    .end annotation

    .line 87
    invoke-static {p0}, Lcom/miui/home/recents/RecentsModel;->getInstance(Landroid/content/Context;)Lcom/miui/home/recents/RecentsModel;

    move-result-object v0

    const/4 v1, -0x1

    .line 88
    invoke-virtual {v0, p0, v1}, Lcom/miui/home/recents/RecentsModel;->getSmartRecentsTaskLoadPlan(Landroid/content/Context;I)Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;->getTaskStack()Lcom/android/systemui/shared/recents/model/TaskStack;

    move-result-object p0

    if-nez p0, :cond_0

    .line 90
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0

    .line 92
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/model/TaskStack;->getStackTasks()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public static isModeFromNewHome(Landroid/content/Context;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;I)Z
    .locals 8

    const/4 v0, 0x0

    if-eqz p1, :cond_8

    .line 43
    array-length v1, p1

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    const/4 v1, 0x0

    .line 48
    array-length v2, p1

    move-object v3, v1

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_7

    aget-object v4, p1, v1

    if-eqz v4, :cond_6

    .line 49
    iget v5, v4, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->mode:I

    if-eq v5, p2, :cond_1

    goto :goto_1

    .line 53
    :cond_1
    iget-object v5, v4, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->packageName:Ljava/lang/String;

    const-string v6, "com.miui.newhome"

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_2

    return v6

    :cond_2
    if-eqz p2, :cond_3

    goto :goto_1

    .line 63
    :cond_3
    iget-object v5, v4, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->packageName:Ljava/lang/String;

    if-eqz v5, :cond_4

    sget-object v5, Lcom/miui/home/recents/QuickstepAppTransitionFeedModeHelper;->sNeedCheckRecentTaskApps:Ljava/util/List;

    iget-object v7, v4, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->packageName:Ljava/lang/String;

    .line 64
    invoke-interface {v5, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    goto :goto_1

    :cond_4
    if-nez v3, :cond_5

    .line 71
    invoke-static {p0}, Lcom/miui/home/recents/QuickstepAppTransitionFeedModeHelper;->getRencentTasks(Landroid/content/Context;)Ljava/util/List;

    move-result-object v3

    .line 74
    :cond_5
    invoke-static {v4, v3}, Lcom/miui/home/recents/QuickstepAppTransitionFeedModeHelper;->findRecentInfoByTarget(Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;Ljava/util/List;)Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v4

    .line 75
    invoke-static {v4}, Lcom/miui/home/recents/QuickstepAppTransitionFeedModeHelper;->getRecentTaskPackageName(Lcom/android/systemui/shared/recents/model/Task;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.miui.newhome"

    .line 76
    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    return v6

    :cond_6
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_7
    return v0

    :cond_8
    :goto_2
    return v0
.end method
