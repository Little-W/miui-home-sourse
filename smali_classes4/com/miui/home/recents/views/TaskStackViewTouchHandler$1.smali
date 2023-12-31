.class Lcom/miui/home/recents/views/TaskStackViewTouchHandler$1;
.super Lcom/miui/home/recents/views/SwipeHelperForRecents;
.source "TaskStackViewTouchHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/recents/views/TaskStackViewTouchHandler;-><init>(Landroid/content/Context;Lcom/miui/home/recents/views/TaskStackView;Lcom/miui/home/recents/views/TaskStackViewScroller;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/recents/views/TaskStackViewTouchHandler;


# direct methods
.method constructor <init>(Lcom/miui/home/recents/views/TaskStackViewTouchHandler;Lcom/miui/home/recents/views/SwipeHelperForRecents$Callback;Landroid/content/Context;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lcom/miui/home/recents/views/TaskStackViewTouchHandler$1;->this$0:Lcom/miui/home/recents/views/TaskStackViewTouchHandler;

    invoke-direct {p0, p2, p3}, Lcom/miui/home/recents/views/SwipeHelperForRecents;-><init>(Lcom/miui/home/recents/views/SwipeHelperForRecents$Callback;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected getSize(Landroid/view/View;)F
    .locals 0

    .line 126
    iget-object p0, p0, Lcom/miui/home/recents/views/TaskStackViewTouchHandler$1;->this$0:Lcom/miui/home/recents/views/TaskStackViewTouchHandler;

    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->getScaledDismissSize()F

    move-result p0

    return p0
.end method

.method protected getUnscaledEscapeVelocity()F
    .locals 0

    const/high16 p0, 0x44480000    # 800.0f

    return p0
.end method

.method protected onMoveUpdate(Landroid/view/View;FF)V
    .locals 2

    .line 152
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "swipe taskView, totalTrans="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", delta="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "SwipeHelperForRecents"

    invoke-static {p3, p1}, Lcom/miui/home/launcher/MiuiHomeLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    iget-object p1, p0, Lcom/miui/home/recents/views/TaskStackViewTouchHandler$1;->this$0:Lcom/miui/home/recents/views/TaskStackViewTouchHandler;

    invoke-static {p1}, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->access$200(Lcom/miui/home/recents/views/TaskStackViewTouchHandler;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/miui/home/recents/views/TaskStackViewTouchHandler$1;->this$0:Lcom/miui/home/recents/views/TaskStackViewTouchHandler;

    invoke-static {p1}, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->access$300(Lcom/miui/home/recents/views/TaskStackViewTouchHandler;)Lcom/miui/home/recents/views/TaskView;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 155
    iget-object p1, p0, Lcom/miui/home/recents/views/TaskStackViewTouchHandler$1;->this$0:Lcom/miui/home/recents/views/TaskStackViewTouchHandler;

    invoke-static {p1}, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->access$300(Lcom/miui/home/recents/views/TaskStackViewTouchHandler;)Lcom/miui/home/recents/views/TaskView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskView;->getWidth()I

    move-result p1

    .line 156
    iget-object p3, p0, Lcom/miui/home/recents/views/TaskStackViewTouchHandler$1;->this$0:Lcom/miui/home/recents/views/TaskStackViewTouchHandler;

    invoke-static {p3}, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->access$300(Lcom/miui/home/recents/views/TaskStackViewTouchHandler;)Lcom/miui/home/recents/views/TaskView;

    move-result-object p3

    invoke-virtual {p3}, Lcom/miui/home/recents/views/TaskView;->getLeft()I

    move-result p3

    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackViewTouchHandler$1;->this$0:Lcom/miui/home/recents/views/TaskStackViewTouchHandler;

    invoke-static {v0}, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->access$400(Lcom/miui/home/recents/views/TaskStackViewTouchHandler;)Lcom/miui/home/recents/views/TaskStackView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskStackView;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/miui/home/recents/views/TaskStackViewTouchHandler$1;->this$0:Lcom/miui/home/recents/views/TaskStackViewTouchHandler;

    invoke-static {v1}, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->access$300(Lcom/miui/home/recents/views/TaskStackViewTouchHandler;)Lcom/miui/home/recents/views/TaskView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/recents/views/TaskView;->getRight()I

    move-result v1

    sub-int/2addr v0, v1

    if-ge p3, v0, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    const/4 v0, 0x0

    if-eqz p3, :cond_1

    cmpg-float v1, p2, v0

    if-ltz v1, :cond_2

    :cond_1
    if-nez p3, :cond_3

    cmpl-float p3, p2, v0

    if-lez p3, :cond_3

    :cond_2
    const/high16 p3, 0x3f000000    # 0.5f

    int-to-float p1, p1

    mul-float/2addr p1, p3

    const/high16 p3, -0x40800000    # -1.0f

    div-float/2addr p3, p1

    .line 159
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    mul-float/2addr p3, p1

    const/high16 p1, 0x3f800000    # 1.0f

    add-float/2addr p3, p1

    .line 160
    iget-object p0, p0, Lcom/miui/home/recents/views/TaskStackViewTouchHandler$1;->this$0:Lcom/miui/home/recents/views/TaskStackViewTouchHandler;

    invoke-static {p0}, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->access$300(Lcom/miui/home/recents/views/TaskStackViewTouchHandler;)Lcom/miui/home/recents/views/TaskView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskView;->getHeaderView()Lcom/miui/home/recents/views/TaskViewHeader;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcom/miui/home/recents/views/TaskViewHeader;->setAlpha(F)V

    :cond_3
    return-void
.end method

.method protected prepareDismissAnimation(Landroid/view/View;Ljava/lang/Object;)V
    .locals 0

    .line 131
    iget-object p0, p0, Lcom/miui/home/recents/views/TaskStackViewTouchHandler$1;->this$0:Lcom/miui/home/recents/views/TaskStackViewTouchHandler;

    invoke-static {p0}, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->access$000(Lcom/miui/home/recents/views/TaskStackViewTouchHandler;)Landroid/util/ArrayMap;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected prepareSnapBackAnimation(Landroid/view/View;Ljava/lang/Object;)V
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackViewTouchHandler$1;->this$0:Lcom/miui/home/recents/views/TaskStackViewTouchHandler;

    invoke-static {v0}, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->access$000(Lcom/miui/home/recents/views/TaskStackViewTouchHandler;)Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    iget-object p0, p0, Lcom/miui/home/recents/views/TaskStackViewTouchHandler$1;->this$0:Lcom/miui/home/recents/views/TaskStackViewTouchHandler;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->access$102(Lcom/miui/home/recents/views/TaskStackViewTouchHandler;Z)Z

    return-void
.end method
