.class public Lcom/android/systemui/shared/recents/model/GroupedRecentTaskInfoCompatS;
.super Lcom/android/systemui/shared/recents/model/GroupedRecentTaskInfoCompat;


# direct methods
.method public constructor <init>(Landroid/app/ActivityManager$RecentTaskInfo;)V
    .locals 7

    invoke-direct {p0}, Lcom/android/systemui/shared/recents/model/GroupedRecentTaskInfoCompat;-><init>()V

    invoke-virtual {p0, p1}, Lcom/android/systemui/shared/recents/model/GroupedRecentTaskInfoCompatS;->setMainTaskInfo(Landroid/app/ActivityManager$RecentTaskInfo;)V

    const-class v0, Landroid/app/ActivityManager$RecentTaskInfo;

    const-class v1, Ljava/util/ArrayList;

    const-string v2, "childrenTaskInfos"

    invoke-static {v0, p1, v2, v1}, Lcom/android/systemui/shared/recents/utilities/ReflectUtils;->getObjectField(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_3

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RecentTaskInfo;

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager$RecentTaskInfo;

    invoke-direct {p0, v1}, Lcom/android/systemui/shared/recents/model/GroupedRecentTaskInfoCompatS;->getTaskBounds(Landroid/app/TaskInfo;)Landroid/graphics/Rect;

    move-result-object v3

    invoke-direct {p0, p1}, Lcom/android/systemui/shared/recents/model/GroupedRecentTaskInfoCompatS;->getTaskBounds(Landroid/app/TaskInfo;)Landroid/graphics/Rect;

    move-result-object v4

    iget v5, v3, Landroid/graphics/Rect;->left:I

    iget v6, v4, Landroid/graphics/Rect;->left:I

    if-gt v5, v6, :cond_0

    iget v5, v3, Landroid/graphics/Rect;->top:I

    iget v6, v4, Landroid/graphics/Rect;->top:I

    if-le v5, v6, :cond_1

    :cond_0
    move v0, v2

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {p0, p1}, Lcom/android/systemui/shared/recents/model/GroupedRecentTaskInfoCompatS;->setPrimaryTaskInfo(Landroid/app/ActivityManager$RecentTaskInfo;)V

    invoke-virtual {p0, v1}, Lcom/android/systemui/shared/recents/model/GroupedRecentTaskInfoCompatS;->setSecondTaskInfo(Landroid/app/ActivityManager$RecentTaskInfo;)V

    invoke-virtual {p0, v4}, Lcom/android/systemui/shared/recents/model/GroupedRecentTaskInfoCompatS;->setPrimaryBounds(Landroid/graphics/Rect;)V

    invoke-virtual {p0, v3}, Lcom/android/systemui/shared/recents/model/GroupedRecentTaskInfoCompatS;->setSecondBounds(Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v1}, Lcom/android/systemui/shared/recents/model/GroupedRecentTaskInfoCompatS;->setPrimaryTaskInfo(Landroid/app/ActivityManager$RecentTaskInfo;)V

    invoke-virtual {p0, p1}, Lcom/android/systemui/shared/recents/model/GroupedRecentTaskInfoCompatS;->setSecondTaskInfo(Landroid/app/ActivityManager$RecentTaskInfo;)V

    invoke-virtual {p0, v3}, Lcom/android/systemui/shared/recents/model/GroupedRecentTaskInfoCompatS;->setPrimaryBounds(Landroid/graphics/Rect;)V

    invoke-virtual {p0, v4}, Lcom/android/systemui/shared/recents/model/GroupedRecentTaskInfoCompatS;->setSecondBounds(Landroid/graphics/Rect;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private getTaskBounds(Landroid/app/TaskInfo;)Landroid/graphics/Rect;
    .locals 2

    const-class p0, Landroid/app/TaskInfo;

    const-class v0, Landroid/graphics/Rect;

    const-string v1, "bounds"

    invoke-static {p0, p1, v1, v0}, Lcom/android/systemui/shared/recents/utilities/ReflectUtils;->getObjectField(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Rect;

    return-object p0
.end method
