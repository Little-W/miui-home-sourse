.class public abstract Lcom/android/systemui/shared/recents/model/GroupedRecentTaskInfoCompat;
.super Ljava/lang/Object;
.source "GroupedRecentTaskInfoCompat.java"


# instance fields
.field private mMainTaskInfo:Landroid/app/ActivityManager$RecentTaskInfo;

.field private mPrimaryBounds:Landroid/graphics/Rect;

.field private mPrimaryTaskInfo:Landroid/app/ActivityManager$RecentTaskInfo;

.field private mSecondBounds:Landroid/graphics/Rect;

.field private mSecondTaskInfo:Landroid/app/ActivityManager$RecentTaskInfo;

.field public mSplitBoundsConfig:Lcom/android/wm/shell/util/StagedSplitBounds;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMainPackageName()Ljava/lang/String;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/GroupedRecentTaskInfoCompat;->mMainTaskInfo:Landroid/app/ActivityManager$RecentTaskInfo;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/GroupedRecentTaskInfoCompat;->mMainTaskInfo:Landroid/app/ActivityManager$RecentTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    .line 93
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 94
    iget-object p0, p0, Lcom/android/systemui/shared/recents/model/GroupedRecentTaskInfoCompat;->mMainTaskInfo:Landroid/app/ActivityManager$RecentTaskInfo;

    iget-object p0, p0, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getMainTaskId()I
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/android/systemui/shared/recents/model/GroupedRecentTaskInfoCompat;->mMainTaskInfo:Landroid/app/ActivityManager$RecentTaskInfo;

    if-eqz p0, :cond_0

    iget p0, p0, Landroid/app/ActivityManager$RecentTaskInfo;->taskId:I

    goto :goto_0

    :cond_0
    const/high16 p0, -0x80000000

    :goto_0
    return p0
.end method

.method public getMainTaskInfo()Landroid/app/ActivityManager$RecentTaskInfo;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/android/systemui/shared/recents/model/GroupedRecentTaskInfoCompat;->mMainTaskInfo:Landroid/app/ActivityManager$RecentTaskInfo;

    return-object p0
.end method

.method public getMainUserId()I
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/android/systemui/shared/recents/model/GroupedRecentTaskInfoCompat;->mMainTaskInfo:Landroid/app/ActivityManager$RecentTaskInfo;

    if-eqz p0, :cond_0

    iget p0, p0, Landroid/app/ActivityManager$RecentTaskInfo;->userId:I

    goto :goto_0

    :cond_0
    const/high16 p0, -0x80000000

    :goto_0
    return p0
.end method

.method public getPrimaryBounds()Landroid/graphics/Rect;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/android/systemui/shared/recents/model/GroupedRecentTaskInfoCompat;->mPrimaryBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method public getPrimaryPackageName()Ljava/lang/String;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/GroupedRecentTaskInfoCompat;->mPrimaryTaskInfo:Landroid/app/ActivityManager$RecentTaskInfo;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/GroupedRecentTaskInfoCompat;->mPrimaryTaskInfo:Landroid/app/ActivityManager$RecentTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    .line 101
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 102
    iget-object p0, p0, Lcom/android/systemui/shared/recents/model/GroupedRecentTaskInfoCompat;->mPrimaryTaskInfo:Landroid/app/ActivityManager$RecentTaskInfo;

    iget-object p0, p0, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getPrimaryTaskId()I
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/android/systemui/shared/recents/model/GroupedRecentTaskInfoCompat;->mPrimaryTaskInfo:Landroid/app/ActivityManager$RecentTaskInfo;

    if-eqz p0, :cond_0

    iget p0, p0, Landroid/app/ActivityManager$RecentTaskInfo;->taskId:I

    goto :goto_0

    :cond_0
    const/high16 p0, -0x80000000

    :goto_0
    return p0
.end method

.method public getPrimaryTaskInfo()Landroid/app/ActivityManager$RecentTaskInfo;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/android/systemui/shared/recents/model/GroupedRecentTaskInfoCompat;->mPrimaryTaskInfo:Landroid/app/ActivityManager$RecentTaskInfo;

    return-object p0
.end method

.method public getPrimaryUserId()I
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/android/systemui/shared/recents/model/GroupedRecentTaskInfoCompat;->mPrimaryTaskInfo:Landroid/app/ActivityManager$RecentTaskInfo;

    if-eqz p0, :cond_0

    iget p0, p0, Landroid/app/ActivityManager$RecentTaskInfo;->userId:I

    goto :goto_0

    :cond_0
    const/high16 p0, -0x80000000

    :goto_0
    return p0
.end method

.method public getSecondBounds()Landroid/graphics/Rect;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/android/systemui/shared/recents/model/GroupedRecentTaskInfoCompat;->mSecondBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method public getSecondPackageName()Ljava/lang/String;
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/GroupedRecentTaskInfoCompat;->mSecondTaskInfo:Landroid/app/ActivityManager$RecentTaskInfo;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/GroupedRecentTaskInfoCompat;->mSecondTaskInfo:Landroid/app/ActivityManager$RecentTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    .line 109
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 110
    iget-object p0, p0, Lcom/android/systemui/shared/recents/model/GroupedRecentTaskInfoCompat;->mSecondTaskInfo:Landroid/app/ActivityManager$RecentTaskInfo;

    iget-object p0, p0, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getSecondTaskId()I
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/android/systemui/shared/recents/model/GroupedRecentTaskInfoCompat;->mSecondTaskInfo:Landroid/app/ActivityManager$RecentTaskInfo;

    if-eqz p0, :cond_0

    iget p0, p0, Landroid/app/ActivityManager$RecentTaskInfo;->taskId:I

    goto :goto_0

    :cond_0
    const/high16 p0, -0x80000000

    :goto_0
    return p0
.end method

.method public getSecondTaskInfo()Landroid/app/ActivityManager$RecentTaskInfo;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/android/systemui/shared/recents/model/GroupedRecentTaskInfoCompat;->mSecondTaskInfo:Landroid/app/ActivityManager$RecentTaskInfo;

    return-object p0
.end method

.method public getSecondUserId()I
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/android/systemui/shared/recents/model/GroupedRecentTaskInfoCompat;->mSecondTaskInfo:Landroid/app/ActivityManager$RecentTaskInfo;

    if-eqz p0, :cond_0

    iget p0, p0, Landroid/app/ActivityManager$RecentTaskInfo;->userId:I

    goto :goto_0

    :cond_0
    const/high16 p0, -0x80000000

    :goto_0
    return p0
.end method

.method public getSplitBoundsConfig()Lcom/android/wm/shell/util/StagedSplitBounds;
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/android/systemui/shared/recents/model/GroupedRecentTaskInfoCompat;->mSplitBoundsConfig:Lcom/android/wm/shell/util/StagedSplitBounds;

    return-object p0
.end method

.method public hasMultipleTasks()Z
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/android/systemui/shared/recents/model/GroupedRecentTaskInfoCompat;->mSecondTaskInfo:Landroid/app/ActivityManager$RecentTaskInfo;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isExcludedFromRecents()Z
    .locals 5

    .line 121
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/GroupedRecentTaskInfoCompat;->mMainTaskInfo:Landroid/app/ActivityManager$RecentTaskInfo;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/high16 v3, 0x800000

    if-eqz v0, :cond_1

    iget-object v0, v0, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    if-eqz v0, :cond_1

    .line 122
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/GroupedRecentTaskInfoCompat;->mMainTaskInfo:Landroid/app/ActivityManager$RecentTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    or-int/2addr v0, v2

    goto :goto_1

    :cond_1
    move v0, v2

    .line 124
    :goto_1
    iget-object v4, p0, Lcom/android/systemui/shared/recents/model/GroupedRecentTaskInfoCompat;->mPrimaryTaskInfo:Landroid/app/ActivityManager$RecentTaskInfo;

    if-eqz v4, :cond_3

    iget-object v4, v4, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    if-eqz v4, :cond_3

    .line 125
    iget-object v4, p0, Lcom/android/systemui/shared/recents/model/GroupedRecentTaskInfoCompat;->mPrimaryTaskInfo:Landroid/app/ActivityManager$RecentTaskInfo;

    iget-object v4, v4, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getFlags()I

    move-result v4

    and-int/2addr v4, v3

    if-ne v4, v3, :cond_2

    move v4, v1

    goto :goto_2

    :cond_2
    move v4, v2

    :goto_2
    or-int/2addr v0, v4

    .line 127
    :cond_3
    iget-object v4, p0, Lcom/android/systemui/shared/recents/model/GroupedRecentTaskInfoCompat;->mSecondTaskInfo:Landroid/app/ActivityManager$RecentTaskInfo;

    if-eqz v4, :cond_5

    iget-object v4, v4, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    if-eqz v4, :cond_5

    .line 128
    iget-object p0, p0, Lcom/android/systemui/shared/recents/model/GroupedRecentTaskInfoCompat;->mSecondTaskInfo:Landroid/app/ActivityManager$RecentTaskInfo;

    iget-object p0, p0, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Intent;->getFlags()I

    move-result p0

    and-int/2addr p0, v3

    if-ne p0, v3, :cond_4

    goto :goto_3

    :cond_4
    move v1, v2

    :goto_3
    or-int/2addr v0, v1

    :cond_5
    return v0
.end method

.method public setMainTaskInfo(Landroid/app/ActivityManager$RecentTaskInfo;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/android/systemui/shared/recents/model/GroupedRecentTaskInfoCompat;->mMainTaskInfo:Landroid/app/ActivityManager$RecentTaskInfo;

    return-void
.end method

.method public setPrimaryBounds(Landroid/graphics/Rect;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/android/systemui/shared/recents/model/GroupedRecentTaskInfoCompat;->mPrimaryBounds:Landroid/graphics/Rect;

    return-void
.end method

.method public setPrimaryTaskInfo(Landroid/app/ActivityManager$RecentTaskInfo;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/android/systemui/shared/recents/model/GroupedRecentTaskInfoCompat;->mPrimaryTaskInfo:Landroid/app/ActivityManager$RecentTaskInfo;

    return-void
.end method

.method public setSecondBounds(Landroid/graphics/Rect;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/android/systemui/shared/recents/model/GroupedRecentTaskInfoCompat;->mSecondBounds:Landroid/graphics/Rect;

    return-void
.end method

.method public setSecondTaskInfo(Landroid/app/ActivityManager$RecentTaskInfo;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/android/systemui/shared/recents/model/GroupedRecentTaskInfoCompat;->mSecondTaskInfo:Landroid/app/ActivityManager$RecentTaskInfo;

    return-void
.end method

.method public setSplitBoundsConfig(Lcom/android/wm/shell/util/StagedSplitBounds;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/android/systemui/shared/recents/model/GroupedRecentTaskInfoCompat;->mSplitBoundsConfig:Lcom/android/wm/shell/util/StagedSplitBounds;

    return-void
.end method
