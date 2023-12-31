.class Lcom/miui/home/recents/views/SwipeHelperForRecents$3;
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

    .line 321
    iput-object p1, p0, Lcom/miui/home/recents/views/SwipeHelperForRecents$3;->this$0:Lcom/miui/home/recents/views/SwipeHelperForRecents;

    invoke-direct {p0, p2, p3}, Lcom/miui/home/recents/util/InOutRangeDetector;-><init>(FF)V

    return-void
.end method


# virtual methods
.method public onOutRange()V
    .locals 1

    .line 324
    iget-object p0, p0, Lcom/miui/home/recents/views/SwipeHelperForRecents$3;->this$0:Lcom/miui/home/recents/views/SwipeHelperForRecents;

    invoke-static {p0}, Lcom/miui/home/recents/views/SwipeHelperForRecents;->access$000(Lcom/miui/home/recents/views/SwipeHelperForRecents;)Landroid/view/View;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->performHapticFeedback(I)Z

    return-void
.end method
