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

    .line 266
    iput-object p1, p0, Lcom/miui/home/recents/views/SwipeHelperForRecents$1;->this$0:Lcom/miui/home/recents/views/SwipeHelperForRecents;

    invoke-direct {p0, p2, p3}, Lcom/miui/home/recents/util/InOutRangeDetector;-><init>(FF)V

    return-void
.end method

.method static synthetic lambda$onOutRange$0(Lcom/miui/home/recents/views/TaskView;ZLcom/android/systemui/shared/recents/model/Task;)V
    .locals 1

    .line 275
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskView;->getHeaderView()Lcom/miui/home/recents/views/TaskViewHeader;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/home/recents/views/TaskViewHeader;->showOrHideLockImageView(Z)V

    const/4 v0, 0x1

    .line 276
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/TaskView;->performHapticFeedback(I)Z

    .line 277
    iget-object p0, p2, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    .line 278
    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getComponent()Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    .line 277
    invoke-static {p0, p1}, Lcom/miui/home/launcher/AnalyticalDataCollectorForRecents;->sendSwipeLockTaskEvent(Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public onOutRange()V
    .locals 3

    .line 269
    iget-object v0, p0, Lcom/miui/home/recents/views/SwipeHelperForRecents$1;->this$0:Lcom/miui/home/recents/views/SwipeHelperForRecents;

    invoke-static {v0}, Lcom/miui/home/recents/views/SwipeHelperForRecents;->access$000(Lcom/miui/home/recents/views/SwipeHelperForRecents;)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lcom/miui/home/recents/views/TaskView;

    if-eqz v0, :cond_0

    .line 270
    iget-object p0, p0, Lcom/miui/home/recents/views/SwipeHelperForRecents$1;->this$0:Lcom/miui/home/recents/views/SwipeHelperForRecents;

    invoke-static {p0}, Lcom/miui/home/recents/views/SwipeHelperForRecents;->access$000(Lcom/miui/home/recents/views/SwipeHelperForRecents;)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/miui/home/recents/views/TaskView;

    .line 271
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v0

    .line 272
    iget-boolean v1, v0, Lcom/android/systemui/shared/recents/model/Task;->isLocked:Z

    xor-int/lit8 v1, v1, 0x1

    .line 273
    new-instance v2, Lcom/miui/home/recents/views/-$$Lambda$SwipeHelperForRecents$1$qZoKuSvYnTaSnbF8uv_BurOdSAA;

    invoke-direct {v2, p0, v1, v0}, Lcom/miui/home/recents/views/-$$Lambda$SwipeHelperForRecents$1$qZoKuSvYnTaSnbF8uv_BurOdSAA;-><init>(Lcom/miui/home/recents/views/TaskView;ZLcom/android/systemui/shared/recents/model/Task;)V

    invoke-static {v0, v1, v2}, Lcom/miui/home/launcher/RecentsAndFSGestureUtils;->lockOrUnlockApp(Lcom/android/systemui/shared/recents/model/Task;ZLjava/lang/Runnable;)V

    :cond_0
    return-void
.end method
