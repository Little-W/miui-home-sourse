.class public Lcom/miui/home/launcher/common/PreciseClickConfirmor;
.super Ljava/lang/Object;
.source "PreciseClickConfirmor.java"


# instance fields
.field private mConfirmClick:Z

.field private mLastTouchX:F

.field private mLastTouchY:F

.field private mTouchSlop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    int-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-int p1, v0

    iput p1, p0, Lcom/miui/home/launcher/common/PreciseClickConfirmor;->mTouchSlop:I

    return-void
.end method


# virtual methods
.method public confirmClick()Z
    .locals 0

    .line 35
    iget-boolean p0, p0, Lcom/miui/home/launcher/common/PreciseClickConfirmor;->mConfirmClick:Z

    return p0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 3

    .line 18
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    if-eq v0, v1, :cond_0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    goto :goto_1

    .line 26
    :cond_0
    iget-boolean v0, p0, Lcom/miui/home/launcher/common/PreciseClickConfirmor;->mConfirmClick:Z

    if-eqz v0, :cond_4

    .line 27
    iget v0, p0, Lcom/miui/home/launcher/common/PreciseClickConfirmor;->mLastTouchX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v2, p0, Lcom/miui/home/launcher/common/PreciseClickConfirmor;->mTouchSlop:I

    int-to-float v2, v2

    cmpg-float v0, v0, v2

    if-ltz v0, :cond_2

    iget v0, p0, Lcom/miui/home/launcher/common/PreciseClickConfirmor;->mLastTouchY:F

    .line 28
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget v0, p0, Lcom/miui/home/launcher/common/PreciseClickConfirmor;->mTouchSlop:I

    int-to-float v0, v0

    cmpg-float p1, p1, v0

    if-gez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    iput-boolean v1, p0, Lcom/miui/home/launcher/common/PreciseClickConfirmor;->mConfirmClick:Z

    goto :goto_1

    .line 20
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/common/PreciseClickConfirmor;->mLastTouchX:F

    .line 21
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/common/PreciseClickConfirmor;->mLastTouchY:F

    .line 22
    iput-boolean v1, p0, Lcom/miui/home/launcher/common/PreciseClickConfirmor;->mConfirmClick:Z

    :cond_4
    :goto_1
    return-void
.end method
