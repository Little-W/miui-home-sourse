.class public Lmiuix/springback/view/SpringBackLayoutHelper;
.super Ljava/lang/Object;
.source "SpringBackLayoutHelper.java"


# instance fields
.field mActivePointerId:I

.field mInitialDownX:F

.field mInitialDownY:F

.field mScrollOrientation:I

.field private mTarget:Landroid/view/ViewGroup;

.field mTargetScrollOrientation:I

.field private mTouchSlop:I


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;I)V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 16
    iput v0, p0, Lmiuix/springback/view/SpringBackLayoutHelper;->mActivePointerId:I

    .line 27
    iput-object p1, p0, Lmiuix/springback/view/SpringBackLayoutHelper;->mTarget:Landroid/view/ViewGroup;

    .line 28
    iput p2, p0, Lmiuix/springback/view/SpringBackLayoutHelper;->mTargetScrollOrientation:I

    .line 29
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    iput p1, p0, Lmiuix/springback/view/SpringBackLayoutHelper;->mTouchSlop:I

    return-void
.end method


# virtual methods
.method checkOrientation(Landroid/view/MotionEvent;)V
    .locals 3

    .line 59
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 73
    :pswitch_0
    iget v0, p0, Lmiuix/springback/view/SpringBackLayoutHelper;->mActivePointerId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 76
    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    if-gez v0, :cond_1

    return-void

    .line 80
    :cond_1
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    .line 81
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result p1

    .line 82
    iget v0, p0, Lmiuix/springback/view/SpringBackLayoutHelper;->mInitialDownY:F

    sub-float/2addr v1, v0

    .line 83
    iget v0, p0, Lmiuix/springback/view/SpringBackLayoutHelper;->mInitialDownX:F

    sub-float/2addr p1, v0

    .line 84
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v2, p0, Lmiuix/springback/view/SpringBackLayoutHelper;->mTouchSlop:I

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-gtz v0, :cond_2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v2, p0, Lmiuix/springback/view/SpringBackLayoutHelper;->mTouchSlop:I

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-lez v0, :cond_5

    .line 85
    :cond_2
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_3

    const/4 p1, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x2

    :goto_0
    iput p1, p0, Lmiuix/springback/view/SpringBackLayoutHelper;->mScrollOrientation:I

    goto :goto_1

    .line 90
    :pswitch_1
    iput v1, p0, Lmiuix/springback/view/SpringBackLayoutHelper;->mScrollOrientation:I

    .line 91
    iget-object p1, p0, Lmiuix/springback/view/SpringBackLayoutHelper;->mTarget:Landroid/view/ViewGroup;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_1

    .line 63
    :pswitch_2
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lmiuix/springback/view/SpringBackLayoutHelper;->mActivePointerId:I

    .line 64
    iget v0, p0, Lmiuix/springback/view/SpringBackLayoutHelper;->mActivePointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    if-gez v0, :cond_4

    return-void

    .line 68
    :cond_4
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    iput v2, p0, Lmiuix/springback/view/SpringBackLayoutHelper;->mInitialDownY:F

    .line 69
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result p1

    iput p1, p0, Lmiuix/springback/view/SpringBackLayoutHelper;->mInitialDownX:F

    .line 70
    iput v1, p0, Lmiuix/springback/view/SpringBackLayoutHelper;->mScrollOrientation:I

    :cond_5
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public isTouchInTarget(Landroid/view/MotionEvent;)Z
    .locals 6

    const/4 v0, 0x0

    .line 44
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 45
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    if-ltz v1, :cond_0

    .line 47
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    .line 48
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result p1

    const/4 v1, 0x2

    .line 49
    new-array v1, v1, [I

    fill-array-data v1, :array_0

    .line 50
    iget-object v3, p0, Lmiuix/springback/view/SpringBackLayoutHelper;->mTarget:Landroid/view/ViewGroup;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getLocationInWindow([I)V

    .line 51
    aget v0, v1, v0

    const/4 v3, 0x1

    aget v1, v1, v3

    iget-object v3, p0, Lmiuix/springback/view/SpringBackLayoutHelper;->mTarget:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getHeight()I

    move-result v3

    add-int/2addr v3, v1

    iget-object v4, p0, Lmiuix/springback/view/SpringBackLayoutHelper;->mTarget:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getWidth()I

    move-result v4

    add-int/2addr v4, v0

    .line 52
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, v0, v1, v4, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    float-to-int p1, p1

    float-to-int v0, v2

    .line 53
    invoke-virtual {v5, p1, v0}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    return p1

    :cond_0
    return v0

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method
