.class public Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;
.super Ljava/lang/Object;
.source "ScreenView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/ScreenView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GestureVelocityTracker"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker$Tracker;
    }
.end annotation


# instance fields
.field private mCounter:I

.field private mPointerId:I

.field private mTx:Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker$Tracker;

.field private mTy:Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker$Tracker;

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mVelocityTrackerOverScroll:Landroid/view/VelocityTracker;

.field private mVerticalGestureConfirmed:Z

.field final synthetic this$0:Lcom/miui/home/launcher/ScreenView;


# direct methods
.method public constructor <init>(Lcom/miui/home/launcher/ScreenView;)V
    .locals 0

    .line 230
    iput-object p1, p0, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;->this$0:Lcom/miui/home/launcher/ScreenView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 244
    new-instance p1, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker$Tracker;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker$Tracker;-><init>(Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;)V

    iput-object p1, p0, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;->mTx:Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker$Tracker;

    .line 245
    new-instance p1, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker$Tracker;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker$Tracker;-><init>(Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;)V

    iput-object p1, p0, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;->mTy:Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker$Tracker;

    const/4 p1, -0x1

    .line 246
    iput p1, p0, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;->mPointerId:I

    .line 247
    iput p1, p0, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;->mCounter:I

    return-void
.end method

.method private reset()V
    .locals 1

    .line 334
    iget-object v0, p0, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;->mTx:Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker$Tracker;

    invoke-virtual {v0}, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker$Tracker;->reset()V

    .line 335
    iget-object v0, p0, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;->mTy:Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker$Tracker;

    invoke-virtual {v0}, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker$Tracker;->reset()V

    const/4 v0, -0x1

    .line 336
    iput v0, p0, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;->mPointerId:I

    const/4 v0, 0x0

    .line 337
    iput v0, p0, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;->mCounter:I

    .line 338
    iput-boolean v0, p0, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;->mVerticalGestureConfirmed:Z

    return-void
.end method

.method private trackPoint(FLcom/miui/home/launcher/ScreenView$GestureVelocityTracker$Tracker;)V
    .locals 3

    .line 306
    iget v0, p2, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker$Tracker;->start:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 307
    iput p1, p2, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker$Tracker;->start:F

    return-void

    .line 310
    :cond_0
    iget v0, p2, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker$Tracker;->prev:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 311
    iput p1, p2, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker$Tracker;->prev:F

    return-void

    .line 314
    :cond_1
    iget v0, p2, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker$Tracker;->fold:F

    cmpg-float v0, v0, v1

    const/high16 v1, 0x40400000    # 3.0f

    if-gez v0, :cond_4

    .line 315
    iget v0, p2, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker$Tracker;->prev:F

    iget v2, p2, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker$Tracker;->start:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_2

    iget v0, p2, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker$Tracker;->prev:F

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_3

    :cond_2
    iget v0, p2, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker$Tracker;->prev:F

    iget v2, p2, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker$Tracker;->start:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_7

    iget v0, p2, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker$Tracker;->prev:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_7

    .line 316
    :cond_3
    iget v0, p2, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker$Tracker;->start:F

    sub-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_7

    .line 317
    iget v0, p2, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker$Tracker;->prev:F

    iput v0, p2, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker$Tracker;->fold:F

    goto :goto_0

    .line 321
    :cond_4
    iget v0, p2, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker$Tracker;->fold:F

    iget v2, p2, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker$Tracker;->prev:F

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_7

    .line 322
    iget v0, p2, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker$Tracker;->prev:F

    iget v2, p2, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker$Tracker;->fold:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_5

    iget v0, p2, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker$Tracker;->prev:F

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_6

    :cond_5
    iget v0, p2, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker$Tracker;->prev:F

    iget v2, p2, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker$Tracker;->fold:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_7

    iget v0, p2, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker$Tracker;->prev:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_7

    .line 323
    :cond_6
    iget v0, p2, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker$Tracker;->fold:F

    sub-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_7

    .line 324
    iget v0, p2, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker$Tracker;->fold:F

    iput v0, p2, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker$Tracker;->start:F

    .line 325
    iget v0, p2, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker$Tracker;->prev:F

    iput v0, p2, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker$Tracker;->fold:F

    .line 330
    :cond_7
    :goto_0
    iput p1, p2, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker$Tracker;->prev:F

    return-void
.end method


# virtual methods
.method public addMovement(Landroid/view/MotionEvent;)V
    .locals 4

    .line 271
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    goto :goto_1

    .line 275
    :cond_0
    iget v0, p0, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;->mCounter:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;->mCounter:I

    .line 276
    iget-object v0, p0, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_1

    .line 277
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 279
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;->this$0:Lcom/miui/home/launcher/ScreenView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/ScreenView;->getScrollX()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v0, v1}, Lcom/miui/home/launcher/ScreenView;->access$100(Lcom/miui/home/launcher/ScreenView;F)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 280
    iget-object v0, p0, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;->mVelocityTrackerOverScroll:Landroid/view/VelocityTracker;

    if-nez v0, :cond_2

    .line 281
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;->mVelocityTrackerOverScroll:Landroid/view/VelocityTracker;

    .line 283
    :cond_2
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 284
    iget-object v1, p0, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;->this$0:Lcom/miui/home/launcher/ScreenView;

    invoke-virtual {v1}, Lcom/miui/home/launcher/ScreenView;->getScrollX()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 285
    iget-object v1, p0, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;->mVelocityTrackerOverScroll:Landroid/view/VelocityTracker;

    invoke-virtual {v1, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 286
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 289
    :cond_3
    iget-object v0, p0, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 290
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 291
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 292
    iget v2, p0, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;->mPointerId:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_5

    .line 293
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    if-eq v2, v3, :cond_4

    .line 295
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    .line 296
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    goto :goto_0

    .line 298
    :cond_4
    iput v3, p0, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;->mPointerId:I

    .line 301
    :cond_5
    :goto_0
    iget-object p1, p0, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;->mTx:Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker$Tracker;

    invoke-direct {p0, v0, p1}, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;->trackPoint(FLcom/miui/home/launcher/ScreenView$GestureVelocityTracker$Tracker;)V

    .line 302
    iget-object p1, p0, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;->mTy:Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker$Tracker;

    invoke-direct {p0, v1, p1}, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;->trackPoint(FLcom/miui/home/launcher/ScreenView$GestureVelocityTracker$Tracker;)V

    return-void

    :cond_6
    :goto_1
    return-void
.end method

.method public getCounter()I
    .locals 1

    .line 352
    iget v0, p0, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;->mCounter:I

    return v0
.end method

.method public getFlingDirection(Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker$Tracker;F)I
    .locals 4

    .line 394
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    const/high16 v0, 0x43960000    # 300.0f

    cmpl-float p2, p2, v0

    if-lez p2, :cond_6

    .line 395
    iget p2, p1, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker$Tracker;->fold:F

    const/4 v0, 0x0

    cmpg-float p2, p2, v0

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-gez p2, :cond_1

    .line 396
    iget p2, p1, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker$Tracker;->prev:F

    iget p1, p1, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker$Tracker;->start:F

    cmpl-float p1, p2, p1

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    return v0

    .line 398
    :cond_1
    iget p2, p1, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker$Tracker;->prev:F

    iget v2, p1, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker$Tracker;->fold:F

    cmpg-float p2, p2, v2

    const/4 v2, 0x3

    if-gez p2, :cond_3

    .line 399
    iget-object p1, p0, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;->this$0:Lcom/miui/home/launcher/ScreenView;

    invoke-static {p1}, Lcom/miui/home/launcher/ScreenView;->access$300(Lcom/miui/home/launcher/ScreenView;)F

    move-result p1

    iget-object p2, p0, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;->this$0:Lcom/miui/home/launcher/ScreenView;

    invoke-virtual {p2}, Lcom/miui/home/launcher/ScreenView;->getCurrentScreen()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result p2

    iget-object v0, p0, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;->this$0:Lcom/miui/home/launcher/ScreenView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/ScreenView;->getChildScreenMeasureWidth()I

    move-result v0

    div-int/2addr v0, v1

    add-int/2addr p2, v0

    int-to-float p2, p2

    cmpg-float p1, p1, p2

    if-gez p1, :cond_2

    return v2

    :cond_2
    return v1

    .line 404
    :cond_3
    iget p2, p1, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker$Tracker;->prev:F

    iget p1, p1, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker$Tracker;->fold:F

    cmpl-float p1, p2, p1

    if-lez p1, :cond_5

    .line 405
    iget-object p1, p0, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;->this$0:Lcom/miui/home/launcher/ScreenView;

    invoke-static {p1}, Lcom/miui/home/launcher/ScreenView;->access$300(Lcom/miui/home/launcher/ScreenView;)F

    move-result p1

    iget-object p2, p0, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;->this$0:Lcom/miui/home/launcher/ScreenView;

    invoke-virtual {p2}, Lcom/miui/home/launcher/ScreenView;->getCurrentScreen()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result p2

    iget-object v3, p0, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;->this$0:Lcom/miui/home/launcher/ScreenView;

    invoke-virtual {v3}, Lcom/miui/home/launcher/ScreenView;->getChildScreenMeasureWidth()I

    move-result v3

    div-int/2addr v3, v1

    sub-int/2addr p2, v3

    int-to-float p2, p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_4

    return v2

    :cond_4
    return v0

    :cond_5
    return v2

    :cond_6
    const/4 p1, 0x4

    return p1
.end method

.method public getVerticalGesture()I
    .locals 3

    .line 377
    iget-boolean v0, p0, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;->mVerticalGestureConfirmed:Z

    const/4 v1, 0x0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;->getCounter()I

    move-result v0

    const/4 v2, 0x5

    if-ge v0, v2, :cond_0

    goto :goto_1

    :cond_0
    const/16 v0, 0x3e8

    .line 380
    iget-object v2, p0, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;->this$0:Lcom/miui/home/launcher/ScreenView;

    invoke-static {v2}, Lcom/miui/home/launcher/ScreenView;->access$200(Lcom/miui/home/launcher/ScreenView;)I

    move-result v2

    invoke-virtual {p0, v0, v2, v1}, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;->getYVelocity(III)F

    move-result v0

    .line 381
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-object v2, p0, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;->this$0:Lcom/miui/home/launcher/ScreenView;

    invoke-static {v2}, Lcom/miui/home/launcher/ScreenView;->access$200(Lcom/miui/home/launcher/ScreenView;)I

    move-result v2

    div-int/lit8 v2, v2, 0x3

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_2

    iget-object v0, p0, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;->mTy:Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker$Tracker;

    iget v0, v0, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker$Tracker;->start:F

    iget-object v2, p0, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;->mTy:Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker$Tracker;

    iget v2, v2, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker$Tracker;->prev:F

    sub-float/2addr v0, v2

    .line 382
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-object v2, p0, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;->this$0:Lcom/miui/home/launcher/ScreenView;

    iget v2, v2, Lcom/miui/home/launcher/ScreenView;->DEFAULT_VERTICAL_GESTURE_CONFIRM_DIST:I

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-lez v0, :cond_2

    const/4 v0, 0x1

    .line 383
    iput-boolean v0, p0, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;->mVerticalGestureConfirmed:Z

    .line 384
    iget-object v0, p0, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;->mTy:Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker$Tracker;

    iget v0, v0, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker$Tracker;->start:F

    iget-object v1, p0, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;->mTy:Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker$Tracker;

    iget v1, v1, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker$Tracker;->prev:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    const/16 v0, 0xa

    goto :goto_0

    :cond_1
    const/16 v0, 0xb

    :goto_0
    return v0

    :cond_2
    return v1

    :cond_3
    :goto_1
    return v1
.end method

.method public getXFlingDirection(F)I
    .locals 1

    .line 390
    iget-object v0, p0, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;->mTx:Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker$Tracker;

    invoke-virtual {p0, v0, p1}, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;->getFlingDirection(Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker$Tracker;F)I

    move-result p1

    return p1
.end method

.method public getXVelocity(III)F
    .locals 2

    .line 356
    iget-object v0, p0, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 357
    iget-object p1, p0, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;->this$0:Lcom/miui/home/launcher/ScreenView;

    invoke-static {p1}, Lcom/miui/home/launcher/ScreenView;->access$200(Lcom/miui/home/launcher/ScreenView;)I

    move-result p1

    int-to-float p1, p1

    return p1

    .line 359
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;->this$0:Lcom/miui/home/launcher/ScreenView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/ScreenView;->getScrollX()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v0, v1}, Lcom/miui/home/launcher/ScreenView;->access$100(Lcom/miui/home/launcher/ScreenView;F)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;->mVelocityTrackerOverScroll:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_1

    int-to-float p2, p2

    .line 360
    invoke-virtual {v0, p1, p2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 361
    iget-object p1, p0, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;->mVelocityTrackerOverScroll:Landroid/view/VelocityTracker;

    invoke-virtual {p1, p3}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result p1

    return p1

    .line 363
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;->mVelocityTracker:Landroid/view/VelocityTracker;

    int-to-float p2, p2

    invoke-virtual {v0, p1, p2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 364
    iget-object p1, p0, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1, p3}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result p1

    return p1
.end method

.method public getYVelocity(III)F
    .locals 1

    .line 369
    iget-object v0, p0, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 370
    iget-object p1, p0, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;->this$0:Lcom/miui/home/launcher/ScreenView;

    invoke-static {p1}, Lcom/miui/home/launcher/ScreenView;->access$200(Lcom/miui/home/launcher/ScreenView;)I

    move-result p1

    int-to-float p1, p1

    return p1

    :cond_0
    int-to-float p2, p2

    .line 372
    invoke-virtual {v0, p1, p2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 373
    iget-object p1, p0, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1, p3}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result p1

    return p1
.end method

.method public init(I)V
    .locals 1

    .line 342
    iget-object v0, p0, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 343
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_0

    .line 345
    :cond_0
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 347
    :goto_0
    invoke-direct {p0}, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;->reset()V

    .line 348
    iput p1, p0, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;->mPointerId:I

    return-void
.end method

.method public recycle()V
    .locals 2

    .line 259
    iget-object v0, p0, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 260
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 261
    iput-object v1, p0, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 263
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;->mVelocityTrackerOverScroll:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_1

    .line 264
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 265
    iput-object v1, p0, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;->mVelocityTrackerOverScroll:Landroid/view/VelocityTracker;

    .line 267
    :cond_1
    invoke-direct {p0}, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;->reset()V

    return-void
.end method
