.class Lcom/miui/home/launcher/upsidescene/ScrollableScreen$GestureVelocityTracker;
.super Ljava/lang/Object;
.source "ScrollableScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/upsidescene/ScrollableScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GestureVelocityTracker"
.end annotation


# instance fields
.field private mFoldX:F

.field private mPointerId:I

.field private mPrevX:F

.field private mStartX:F

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field final synthetic this$0:Lcom/miui/home/launcher/upsidescene/ScrollableScreen;


# direct methods
.method private constructor <init>(Lcom/miui/home/launcher/upsidescene/ScrollableScreen;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen$GestureVelocityTracker;->this$0:Lcom/miui/home/launcher/upsidescene/ScrollableScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    .line 38
    iput p1, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen$GestureVelocityTracker;->mPointerId:I

    const/high16 p1, -0x40800000    # -1.0f

    .line 39
    iput p1, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen$GestureVelocityTracker;->mStartX:F

    .line 40
    iput p1, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen$GestureVelocityTracker;->mFoldX:F

    .line 41
    iput p1, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen$GestureVelocityTracker;->mPrevX:F

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/home/launcher/upsidescene/ScrollableScreen;Lcom/miui/home/launcher/upsidescene/ScrollableScreen$1;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/upsidescene/ScrollableScreen$GestureVelocityTracker;-><init>(Lcom/miui/home/launcher/upsidescene/ScrollableScreen;)V

    return-void
.end method

.method private reset()V
    .locals 1

    const/4 v0, -0x1

    .line 97
    iput v0, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen$GestureVelocityTracker;->mPointerId:I

    int-to-float v0, v0

    iput v0, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen$GestureVelocityTracker;->mStartX:F

    iput v0, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen$GestureVelocityTracker;->mFoldX:F

    iput v0, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen$GestureVelocityTracker;->mPrevX:F

    return-void
.end method


# virtual methods
.method public addMovement(Landroid/view/MotionEvent;)V
    .locals 5

    .line 57
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen$GestureVelocityTracker;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 58
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen$GestureVelocityTracker;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen$GestureVelocityTracker;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 61
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 62
    iget v1, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen$GestureVelocityTracker;->mPointerId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 63
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    if-eq v1, v2, :cond_1

    .line 65
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    goto :goto_0

    .line 67
    :cond_1
    iput v2, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen$GestureVelocityTracker;->mPointerId:I

    .line 70
    :cond_2
    :goto_0
    iget p1, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen$GestureVelocityTracker;->mStartX:F

    const/4 v1, 0x0

    cmpg-float v2, p1, v1

    if-gez v2, :cond_3

    .line 71
    iput v0, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen$GestureVelocityTracker;->mStartX:F

    return-void

    .line 74
    :cond_3
    iget v2, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen$GestureVelocityTracker;->mPrevX:F

    cmpg-float v3, v2, v1

    if-gez v3, :cond_4

    .line 75
    iput v0, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen$GestureVelocityTracker;->mPrevX:F

    return-void

    .line 78
    :cond_4
    iget v3, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen$GestureVelocityTracker;->mFoldX:F

    cmpg-float v1, v3, v1

    const/high16 v4, 0x40400000    # 3.0f

    if-gez v1, :cond_7

    cmpl-float p1, v2, p1

    if-lez p1, :cond_5

    cmpg-float p1, v0, v2

    if-ltz p1, :cond_6

    .line 79
    :cond_5
    iget p1, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen$GestureVelocityTracker;->mPrevX:F

    iget v1, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen$GestureVelocityTracker;->mStartX:F

    cmpg-float v1, p1, v1

    if-gez v1, :cond_a

    cmpl-float p1, v0, p1

    if-lez p1, :cond_a

    .line 80
    :cond_6
    iget p1, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen$GestureVelocityTracker;->mStartX:F

    sub-float p1, v0, p1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpl-float p1, p1, v4

    if-lez p1, :cond_a

    .line 81
    iget p1, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen$GestureVelocityTracker;->mPrevX:F

    iput p1, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen$GestureVelocityTracker;->mFoldX:F

    goto :goto_1

    :cond_7
    cmpl-float p1, v3, v2

    if-eqz p1, :cond_a

    cmpl-float p1, v2, v3

    if-lez p1, :cond_8

    cmpg-float p1, v0, v2

    if-ltz p1, :cond_9

    .line 86
    :cond_8
    iget p1, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen$GestureVelocityTracker;->mPrevX:F

    iget v1, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen$GestureVelocityTracker;->mFoldX:F

    cmpg-float v1, p1, v1

    if-gez v1, :cond_a

    cmpl-float p1, v0, p1

    if-lez p1, :cond_a

    .line 87
    :cond_9
    iget p1, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen$GestureVelocityTracker;->mFoldX:F

    sub-float p1, v0, p1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpl-float p1, p1, v4

    if-lez p1, :cond_a

    .line 88
    iget p1, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen$GestureVelocityTracker;->mFoldX:F

    iput p1, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen$GestureVelocityTracker;->mStartX:F

    .line 89
    iget p1, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen$GestureVelocityTracker;->mPrevX:F

    iput p1, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen$GestureVelocityTracker;->mFoldX:F

    .line 94
    :cond_a
    :goto_1
    iput v0, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen$GestureVelocityTracker;->mPrevX:F

    return-void
.end method

.method public getFlingDirection(F)I
    .locals 5

    const/high16 v0, 0x43960000    # 300.0f

    cmpl-float p1, p1, v0

    if-lez p1, :cond_6

    .line 115
    iget p1, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen$GestureVelocityTracker;->mFoldX:F

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-gez v0, :cond_1

    .line 116
    iget p1, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen$GestureVelocityTracker;->mPrevX:F

    iget v0, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen$GestureVelocityTracker;->mStartX:F

    cmpl-float p1, p1, v0

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    .line 118
    :cond_1
    iget v0, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen$GestureVelocityTracker;->mPrevX:F

    cmpg-float v3, v0, p1

    const/4 v4, 0x3

    if-gez v3, :cond_3

    .line 119
    iget-object p1, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen$GestureVelocityTracker;->this$0:Lcom/miui/home/launcher/upsidescene/ScrollableScreen;

    invoke-virtual {p1}, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->getScrollX()I

    move-result p1

    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen$GestureVelocityTracker;->this$0:Lcom/miui/home/launcher/upsidescene/ScrollableScreen;

    invoke-virtual {v0}, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->getCurrentScreen()I

    move-result v1

    invoke-static {v0, v1}, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->access$000(Lcom/miui/home/launcher/upsidescene/ScrollableScreen;I)I

    move-result v0

    if-ge p1, v0, :cond_2

    return v4

    :cond_2
    return v2

    :cond_3
    cmpl-float p1, v0, p1

    if-lez p1, :cond_5

    .line 125
    iget-object p1, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen$GestureVelocityTracker;->this$0:Lcom/miui/home/launcher/upsidescene/ScrollableScreen;

    invoke-virtual {p1}, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->getScrollX()I

    move-result p1

    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen$GestureVelocityTracker;->this$0:Lcom/miui/home/launcher/upsidescene/ScrollableScreen;

    invoke-virtual {v0}, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->getCurrentScreen()I

    move-result v2

    invoke-static {v0, v2}, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->access$000(Lcom/miui/home/launcher/upsidescene/ScrollableScreen;I)I

    move-result v0

    if-le p1, v0, :cond_4

    return v4

    :cond_4
    return v1

    :cond_5
    return v4

    :cond_6
    const/4 p1, 0x4

    return p1
.end method

.method public getXVelocity(III)F
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen$GestureVelocityTracker;->mVelocityTracker:Landroid/view/VelocityTracker;

    int-to-float p2, p2

    invoke-virtual {v0, p1, p2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 110
    iget-object p1, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen$GestureVelocityTracker;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1, p3}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result p1

    return p1
.end method

.method public init(I)V
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen$GestureVelocityTracker;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 101
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen$GestureVelocityTracker;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_0

    .line 103
    :cond_0
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 105
    :goto_0
    invoke-direct {p0}, Lcom/miui/home/launcher/upsidescene/ScrollableScreen$GestureVelocityTracker;->reset()V

    .line 106
    iput p1, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen$GestureVelocityTracker;->mPointerId:I

    return-void
.end method

.method public recycle()V
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen$GestureVelocityTracker;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 50
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    .line 51
    iput-object v0, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen$GestureVelocityTracker;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 53
    :cond_0
    invoke-direct {p0}, Lcom/miui/home/launcher/upsidescene/ScrollableScreen$GestureVelocityTracker;->reset()V

    return-void
.end method
