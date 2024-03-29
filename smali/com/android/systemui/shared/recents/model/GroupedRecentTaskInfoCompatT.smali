.class public Lcom/android/systemui/shared/recents/model/GroupedRecentTaskInfoCompatT;
.super Lcom/android/systemui/shared/recents/model/GroupedRecentTaskInfoCompat;
.source "GroupedRecentTaskInfoCompatT.java"


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/util/GroupedRecentTaskInfo;)V
    .locals 2

    .line 9
    invoke-direct {p0}, Lcom/android/systemui/shared/recents/model/GroupedRecentTaskInfoCompat;-><init>()V

    .line 10
    invoke-virtual {p1}, Lcom/android/wm/shell/util/GroupedRecentTaskInfo;->getTaskInfo1()Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/shared/recents/model/GroupedRecentTaskInfoCompatT;->setMainTaskInfo(Landroid/app/ActivityManager$RecentTaskInfo;)V

    .line 11
    invoke-virtual {p1}, Lcom/android/wm/shell/util/GroupedRecentTaskInfo;->getSplitBounds()Lcom/android/wm/shell/util/StagedSplitBounds;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/shared/recents/model/GroupedRecentTaskInfoCompatT;->setSplitBoundsConfig(Lcom/android/wm/shell/util/StagedSplitBounds;)V

    .line 12
    invoke-virtual {p1}, Lcom/android/wm/shell/util/GroupedRecentTaskInfo;->getTaskInfo2()Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 13
    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/model/GroupedRecentTaskInfoCompatT;->getSplitBoundsConfig()Lcom/android/wm/shell/util/StagedSplitBounds;

    move-result-object v0

    if-nez v0, :cond_0

    .line 14
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mSplitBoundsConfig == null,mTaskInfo1="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/wm/shell/util/GroupedRecentTaskInfo;->getTaskInfo1()Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "   mTaskInfo2="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    invoke-virtual {p1}, Lcom/android/wm/shell/util/GroupedRecentTaskInfo;->getTaskInfo2()Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ActivityManagerWrapper"

    .line 14
    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 18
    :cond_0
    invoke-virtual {p1}, Lcom/android/wm/shell/util/GroupedRecentTaskInfo;->getSplitBounds()Lcom/android/wm/shell/util/StagedSplitBounds;

    move-result-object v0

    iget v0, v0, Lcom/android/wm/shell/util/StagedSplitBounds;->leftTopTaskId:I

    invoke-virtual {p1}, Lcom/android/wm/shell/util/GroupedRecentTaskInfo;->getTaskInfo1()Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object v1

    iget v1, v1, Landroid/app/ActivityManager$RecentTaskInfo;->taskId:I

    if-ne v0, v1, :cond_1

    .line 19
    invoke-virtual {p1}, Lcom/android/wm/shell/util/GroupedRecentTaskInfo;->getTaskInfo1()Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/shared/recents/model/GroupedRecentTaskInfoCompatT;->setPrimaryTaskInfo(Landroid/app/ActivityManager$RecentTaskInfo;)V

    .line 20
    invoke-virtual {p1}, Lcom/android/wm/shell/util/GroupedRecentTaskInfo;->getTaskInfo2()Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/shared/recents/model/GroupedRecentTaskInfoCompatT;->setSecondTaskInfo(Landroid/app/ActivityManager$RecentTaskInfo;)V

    goto :goto_0

    .line 22
    :cond_1
    invoke-virtual {p1}, Lcom/android/wm/shell/util/GroupedRecentTaskInfo;->getTaskInfo2()Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/shared/recents/model/GroupedRecentTaskInfoCompatT;->setPrimaryTaskInfo(Landroid/app/ActivityManager$RecentTaskInfo;)V

    .line 23
    invoke-virtual {p1}, Lcom/android/wm/shell/util/GroupedRecentTaskInfo;->getTaskInfo1()Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/shared/recents/model/GroupedRecentTaskInfoCompatT;->setSecondTaskInfo(Landroid/app/ActivityManager$RecentTaskInfo;)V

    .line 25
    :goto_0
    invoke-virtual {p1}, Lcom/android/wm/shell/util/GroupedRecentTaskInfo;->getSplitBounds()Lcom/android/wm/shell/util/StagedSplitBounds;

    move-result-object v0

    iget-object v0, v0, Lcom/android/wm/shell/util/StagedSplitBounds;->leftTopBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/android/systemui/shared/recents/model/GroupedRecentTaskInfoCompatT;->setPrimaryBounds(Landroid/graphics/Rect;)V

    .line 26
    invoke-virtual {p1}, Lcom/android/wm/shell/util/GroupedRecentTaskInfo;->getSplitBounds()Lcom/android/wm/shell/util/StagedSplitBounds;

    move-result-object p1

    iget-object p1, p1, Lcom/android/wm/shell/util/StagedSplitBounds;->rightBottomBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Lcom/android/systemui/shared/recents/model/GroupedRecentTaskInfoCompatT;->setSecondBounds(Landroid/graphics/Rect;)V

    :cond_2
    return-void
.end method
