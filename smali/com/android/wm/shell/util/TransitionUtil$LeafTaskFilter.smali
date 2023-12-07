.class public Lcom/android/wm/shell/util/TransitionUtil$LeafTaskFilter;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/util/TransitionUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LeafTaskFilter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Predicate<",
        "Landroid/window/TransitionInfo$Change;",
        ">;"
    }
.end annotation


# instance fields
.field private final mChildTaskTargets:Landroid/util/SparseBooleanArray;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/util/TransitionUtil$LeafTaskFilter;->mChildTaskTargets:Landroid/util/SparseBooleanArray;

    return-void
.end method


# virtual methods
.method public test(Landroid/window/TransitionInfo$Change;)Z
    .locals 4

    invoke-static {p1}, Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;->box(Landroid/window/TransitionInfo$Change;)Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/android/wm/shell/util/TransitionUtil$LeafTaskFilter;->mChildTaskTargets:Landroid/util/SparseBooleanArray;

    iget v2, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v1, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    invoke-static {}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->hasParentTaskFromTaskInfo(Landroid/app/TaskInfo;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getParentTaskId(Landroid/app/TaskInfo;)I

    move-result v2

    iget-object p0, p0, Lcom/android/wm/shell/util/TransitionUtil$LeafTaskFilter;->mChildTaskTargets:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, v2, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    :cond_1
    if-eqz v1, :cond_2

    return v0

    :cond_2
    invoke-static {}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->isInFreeformMode(Landroid/app/TaskInfo;)Z

    move-result p0

    if-eqz p0, :cond_3

    return v0

    :cond_3
    return v3
.end method

.method public bridge synthetic test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Landroid/window/TransitionInfo$Change;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/util/TransitionUtil$LeafTaskFilter;->test(Landroid/window/TransitionInfo$Change;)Z

    move-result p0

    return p0
.end method
