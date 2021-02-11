.class Lcom/miui/home/recents/views/SwipeHelperForRecents$1;
.super Lcom/miui/home/recents/util/InOutRangeDetector;
.source "SwipeHelperForRecents.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/recents/views/SwipeHelperForRecents;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/recents/views/SwipeHelperForRecents;


# direct methods
.method constructor <init>(Lcom/miui/home/recents/views/SwipeHelperForRecents;FF)V
    .locals 0

    .line 265
    iput-object p1, p0, Lcom/miui/home/recents/views/SwipeHelperForRecents$1;->this$0:Lcom/miui/home/recents/views/SwipeHelperForRecents;

    invoke-direct {p0, p2, p3}, Lcom/miui/home/recents/util/InOutRangeDetector;-><init>(FF)V

    return-void
.end method

.method static synthetic lambda$onOutRange$0(Lcom/miui/home/recents/views/TaskView;Z)V
    .locals 1

    .line 274
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskView;->getHeaderView()Lcom/miui/home/recents/views/TaskViewHeader;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/home/recents/views/TaskViewHeader;->showOrHideLockImageView(Z)V

    const/4 p1, 0x1

    .line 275
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/views/TaskView;->performHapticFeedback(I)Z

    return-void
.end method


# virtual methods
.method public onOutRange()V
    .locals 4

    .line 268
    iget-object v0, p0, Lcom/miui/home/recents/views/SwipeHelperForRecents$1;->this$0:Lcom/miui/home/recents/views/SwipeHelperForRecents;

    invoke-static {v0}, Lcom/miui/home/recents/views/SwipeHelperForRecents;->access$000(Lcom/miui/home/recents/views/SwipeHelperForRecents;)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lcom/miui/home/recents/views/TaskView;

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/miui/home/recents/views/SwipeHelperForRecents$1;->this$0:Lcom/miui/home/recents/views/SwipeHelperForRecents;

    invoke-static {v0}, Lcom/miui/home/recents/views/SwipeHelperForRecents;->access$000(Lcom/miui/home/recents/views/SwipeHelperForRecents;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/recents/views/TaskView;

    .line 270
    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v1

    .line 271
    iget-boolean v2, v1, Lcom/android/systemui/shared/recents/model/Task;->isLocked:Z

    xor-int/lit8 v2, v2, 0x1

    .line 272
    new-instance v3, Lcom/miui/home/recents/views/-$$Lambda$SwipeHelperForRecents$1$hqPZcNUAp6mEuopYxNx0QhHfYAQ;

    invoke-direct {v3, v0, v2}, Lcom/miui/home/recents/views/-$$Lambda$SwipeHelperForRecents$1$hqPZcNUAp6mEuopYxNx0QhHfYAQ;-><init>(Lcom/miui/home/recents/views/TaskView;Z)V

    invoke-static {v1, v2, v3}, Lcom/miui/home/launcher/RecentsAndFSGestureUtils;->lockOrUnlockApp(Lcom/android/systemui/shared/recents/model/Task;ZLjava/lang/Runnable;)V

    :cond_0
    return-void
.end method
