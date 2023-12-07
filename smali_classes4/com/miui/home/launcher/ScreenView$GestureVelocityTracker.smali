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

    .line 243
    iput-object p1, p0, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;->this$0:Lcom/miui/home/launcher/ScreenView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 257
    new-instance p1, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker$Tracker;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker$Tracker;-><init>(Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;)V

    iput-object p1, p0, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;->mTx:Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker$Tracker;

    .line 258
    new-instance p1, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker$Tracker;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker$Tracker;-><init>(Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;)V

    iput-object p1, p0, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;->mTy:Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker$Tracker;

    const/4 p1, -0x1

    .line 259
    iput p1, p0, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;->mPointerId:I

    .line 260
    iput p1, p0, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;->mCounter:I

    return-void
.end method

.method private reset()V
    .locals 1

    .line 347
    iget-object v0, p0, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;->mTx:Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker$Tracker;

    invoke-virtual {v0}, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker$Tracker;->reset()V

    .line 348
    iget-object v0, p0, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;->mTy:Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker$Tracker;

    invoke-virtual {v0}, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker$Tracker;->reset()V

    const/4 v0, -0x1

    .line 349
    iput v0, p0, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;->mPointerId:I

    const/4 v0, 0x0

    .line 350
    iput v0, p0, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;->mCounter:I

    .line 351
    iput-boolean v0, p0, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;->mVerticalGestureConfirmed:Z

    return-void
.end method

.method private trackPoint(FLcom/miui/home/launcher/ScreenView$GestureVelocityTracker$Tracker;)V
    .locals 2

    .line 319
    iget p0, p2, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker$Tracker;->start:F

    const/4 v0, 0x0

    cmpg-float p0, p0, v0

    if-gez p0, :cond_0

    .line 320
    iput p1, p2, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker$Tracker;->start:F

    return-void

    .line 323
    :cond_0
    iget p0, p2, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker$Tracker;->prev:F

    cmpg-float p0, p0, v0

    if-gez p0, :cond_1

    .line 324
    iput p1, p2, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker$Tracker;->prev:F

    return-void

    .line 327
    :cond_1
    iget p0, p2, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker$Tracker;->fold:F

    cmpg-float p0, p0, v0

    const/high16 v0, 0x40400000    # 3.0f

    if-gez p0, :cond_4

    .line 328
    iget p0, p2, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker$Tracker;->prev:F

    iget v1, p2, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker$Tracker;->start:F

    cmpl-float p0, p0, v1

    if-lez p0, :cond_2

    iget p0, p2, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker$Tracker;->prev:F

    cmpg-float p0, p1, p0

    if-ltz p0, :cond_3

    :cond_2
    iget p0, p2, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker$Tracker;->prev:F

    iget v1, p2, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker$Tracker;->start:F

    cmpg-float p0, p0, v1

    if-gez p0, :cond_7

    iget p0, p2, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker$Tracker;->prev:F

    cmpl-float p0, p1, p0

    if-lez p0, :cond_7

    .line 329
    :cond_3
    iget p0, p2, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker$Tracker;->start:F

    sub-float p0, p1, p0

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    cmpl-float p0, p0, v0

    if-lez p0, :cond_7

    .line 330
    iget p0, p2, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker$Tracker;->prev:F

    iput p0, p2, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker$Tracker;->fold:F

    goto :goto_0

    .line 334
    :cond_4
    iget p0, p2, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker$Tracker;->fold:F

    iget v1, p2, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker$Tracker;->prev:F

    cmpl-float p0, p0, v1

    if-eqz p0, :cond_7

    .line 335
    iget p0, p2, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker$Tracker;->prev:F

    iget v1, p2, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker$Tracker;->fold:F

    cmpl-float p0, p0, v1

    if-lez p0, :cond_5

    iget p0, p2, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker$Tracker;->prev:F

    cmpg-float p0, p1, p0

    if-ltz p0, :cond_6

    :cond_5
    iget p0, p2, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker$Tracker;->prev:F

    iget v1, p2, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker$Tracker;->fold:F

    cmpg-float p0, p0, v1

    if-gez p0, :cond_7

    iget p0, p2, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker$Tracker;->prev:F

    cmpl-float p0, p1, p0

    if-lez p0, :cond_7

    .line 336
    :cond_6
    iget p0, p2, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker$Tracker;->fold:F

    sub-float p0, p1, p0

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    cmpl-float p0, p0, v0

    if-lez p0, :cond_7

    .line 337
    iget p0, p2, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker$Tracker;->fold:F

    iput p0, p2, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker$Tracker;->start:F

    .line 338
    iget p0, p2, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker$Tracker;->prev:F

    iput p0, p2, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker$Tracker;->fold:F

    .line 343
    :cond_7
    :goto_0
    iput p1, p2, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker$Tracker;->prev:F

    return-void
.end method


# virtual methods
.method public addMovement(Landroid/view/MotionEvent;)V
    .locals 4

    .line 284
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    goto :goto_1

    .line 288
    :cond_0
    iget v0, p0, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;->mCounter:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;->mCounter:I

    .line 289
    iget-object v0, p0, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_1

    .line 290
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 292
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;->this$0:Lcom/miui/home/launcher/ScreenView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/ScreenView;->getScrollX()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v0, v1}, Lcom/miui/home/launcher/ScreenView;->access$100(Lcom/miui/home/launcher/ScreenView;F)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 293
    iget-object v0, p0, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;->mVelocityTrackerOverScroll:Landroid/view/VelocityTracker;

    if-nez v0, :cond_2

    .line 294
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;->mVelocityTrackerOverScroll:Landroid/view/VelocityTracker;

    .line 296
    :cond_2
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 297
    iget-object v1, p0, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;->this$0:Lcom/miui/home/launcher/ScreenView;

    invoke-virtual {v1}, Lcom/miui/home/launcher/ScreenView;->getScrollX()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 298
    iget-object v1, p0, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;->mVelocityTrackerOverScroll:Landroid/view/VelocityTracker;

    invoke-virtual {v1, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 299
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 302
    :cond_3
    iget-object v0, p0, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 303
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 304
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 305
    iget v2, p0, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;->mPointerId:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_5

    .line 306
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    if-eq v2, v3, :cond_4

    .line 308
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    .line 309
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    goto :goto_0

    .line 311
    :cond_4
    iput v3, p0, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;->mPointerId:I

    .line 314
    :cond_5
    :goto_0
    iget-object p1, p0, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;->mTx:Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker$Tracker;

    invoke-direct {p0, v0, p1}, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;->trackPoint(FLcom/miui/home/launcher/ScreenView$GestureVelocityTracker$Tracker;)V

    .line 315
    iget-object p1, p0, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;->mTy:Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker$Tracker;

    invoke-direct {p0, v1, p1}, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;->trackPoint(FLcom/miui/home/launcher/ScreenView$GestureVelocityTracker$Tracker;)V

    :cond_6
    :goto_1
    return-void
.end method

.method public getCounter()I
    .locals 0

    .line 365
    iget p0, p0, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;->mCounter:I

    return p0
.end method

.method public getFlingDirection(Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker$Tracker;F)I
    .locals 3

    .line 407
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    const/high16 v0, 0x43960000    # 300.0f

    cmpl-float p2, p2, v0

    if-lez p2, :cond_6

    .line 408
    iget p2, p1, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker$Tracker;->fold:F

    const/4 v0, 0x0

    cmpg-float p2, p2, v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-gez p2, :cond_1

    iget p2, p1, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker$Tracker;->prev:F

    cmpl-float p2, p2, v0

    if-ltz p2, :cond_1

    .line 409
    iget p0, p1, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker$Tracker;->prev:F

    iget p1, p1, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker$Tracker;->start:F

    cmpl-float p0, p0, p1

    if-lez p0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    .line 411
    :cond_1
    iget p2, p1, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker$Tracker;->prev:F

    iget v0, p1, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker$Tracker;->fold:F

    cmpg-float p2, p2, v0

    const/4 v0, 0x3

    if-gez p2, :cond_3

    .line 412
    iget-object p1, p0, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;->this$0:Lcom/miui/home/launcher/ScreenView;

    invoke-static {p1}, Lcom/miui/home/launcher/ScreenView;->access$300(Lcom/miui/home/launcher/ScreenView;)F

    move-result p1

    iget-object p2, p0, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;->this$0:Lcom/miui/home/launcher/ScreenView;

    invoke-virtual {p2}, Lcom/miui/home/launcher/ScreenView;->getCurrentScreen()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result p2

    iget-object p0, p0, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;->this$0:Lcom/miui/home/launcher/ScreenView;

    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getChildScreenMeasureWidth()I

    move-result p0

    div-int/2addr p0, v2

    add-int/2addr p2, p0

    int-to-float p0, p2

    cmpg-float p0, p1, p0

    if-gez p0, :cond_2

    return v0

    :cond_2
    return v2

    .line 417
    :cond_3
    iget p2, p1, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker$Tracker;->prev:F

    iget p1, p1, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker$Tracker;->fold:F

    cmpl-float p1, p2, p1

    if-lez p1, :cond_5

    .line 418
    iget-object p1, p0, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;->this$0:Lcom/miui/home/launcher/ScreenView;

    invoke-static {p1}, Lcom/miui/home/launcher/ScreenView;->access$300(Lcom/miui/home/launcher/ScreenView;)F

    move-result p1

    iget-object p2, p0, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;->this$0:Lcom/miui/home/launcher/ScreenView;

    invoke-virtual {p2}, Lcom/miui/home/launcher/ScreenView;->getCurrentScreen()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result p2

    iget-object p0, p0, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;->this$0:Lcom/miui/home/launcher/ScreenView;

    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getChildScreenMeasureWidth()I

    move-result p0

    div-int/2addr p0, v2

    sub-int/2addr p2, p0

    int-to-float p0, p2

    cmpl-float p0, p1, p0

    if-lez p0, :cond_4

    return v0

    :cond_4
    return v1

    :cond_5
    return v0

    :cond_6
    const/4 p0, 0x4

    return p0
.end method

.method public getVerticalGesture()I
    .locals 3

    .line 390
    iget-boolean v0, p0, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;->mVerticalGestureConfirmed:Z

    const/4 v1, 0x0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;->getCounter()I

    move-result v0

    const/4 v2, 0x5

    if-ge v0, v2, :cond_0

    goto :goto_1

    :cond_0
    const/16 v0, 0x3e8

    .line 393
    iget-object v2, p0, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;->this$0:Lcom/miui/home/launcher/ScreenView;

    invoke-static {v2}, Lcom/miui/home/launcher/ScreenView;->access$200(Lcom/miui/home/launcher/ScreenView;)I

    move-result v2

    invoke-virtual {p0, v0, v2, v1}, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;->getYVelocity(III)F

    move-result v0

    .line 394
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

    .line 395
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-object v2, p0, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;->this$0:Lcom/miui/home/launcher/ScreenView;

    iget v2, v2, Lcom/miui/home/launcher/ScreenView;->DEFAULT_VERTICAL_GESTURE_CONFIRM_DIST:I

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-lez v0, :cond_2

    const/4 v0, 0x1

    .line 396
    iput-boolean v0, p0, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;->mVerticalGestureConfirmed:Z

    .line 397
    iget-object v0, p0, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;->mTy:Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker$Tracker;

    iget v0, v0, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker$Tracker;->start:F

    iget-object p0, p0, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;->mTy:Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker$Tracker;

    iget p0, p0, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker$Tracker;->prev:F

    cmpl-float p0, v0, p0

    if-lez p0, :cond_1

    const/16 p0, 0xa

    goto :goto_0

    :cond_1
    const/16 p0, 0xb

    :goto_0
    return p0

    :cond_2
    :goto_1
    return v1
.end method

.method public getXFlingDirection(F)I
    .locals 1

    .line 403
    iget-object v0, p0, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;->mTx:Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker$Tracker;

    invoke-virtual {p0, v0, p1}, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;->getFlingDirection(Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker$Tracker;F)I

    move-result p0

    return p0
.end method

.method public getXVelocity(III)F
    .locals 2

    .line 369
    iget-object v0, p0, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 370
    iget-object p0, p0, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;->this$0:Lcom/miui/home/launcher/ScreenView;

    invoke-static {p0}, Lcom/miui/home/launcher/ScreenView;->access$200(Lcom/miui/home/launcher/ScreenView;)I

    move-result p0

    int-to-float p0, p0

    return p0

    .line 372
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

    .line 373
    invoke-virtual {v0, p1, p2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 374
    iget-object p0, p0, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;->mVelocityTrackerOverScroll:Landroid/view/VelocityTracker;

    invoke-virtual {p0, p3}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result p0

    return p0

    .line 376
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;->mVelocityTracker:Landroid/view/VelocityTracker;

    int-to-float p2, p2

    invoke-virtual {v0, p1, p2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 377
    iget-object p0, p0, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p0, p3}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result p0

    return p0
.end method

.method public getYVelocity(III)F
    .locals 1

    .line 382
    iget-object v0, p0, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 383
    iget-object p0, p0, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;->this$0:Lcom/miui/home/launcher/ScreenView;

    invoke-static {p0}, Lcom/miui/home/launcher/ScreenView;->access$200(Lcom/miui/home/launcher/ScreenView;)I

    move-result p0

    int-to-float p0, p0

    return p0

    :cond_0
    int-to-float p2, p2

    .line 385
    invoke-virtual {v0, p1, p2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 386
    iget-object p0, p0, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p0, p3}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result p0

    return p0
.end method

.method public init(I)V
    .locals 1

    .line 355
    iget-object v0, p0, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 356
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_0

    .line 358
    :cond_0
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 360
    :goto_0
    invoke-direct {p0}, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;->reset()V

    .line 361
    iput p1, p0, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;->mPointerId:I

    return-void
.end method

.method public recycle()V
    .locals 2

    .line 272
    iget-object v0, p0, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 273
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 274
    iput-object v1, p0, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 276
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;->mVelocityTrackerOverScroll:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_1

    .line 277
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 278
    iput-object v1, p0, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;->mVelocityTrackerOverScroll:Landroid/view/VelocityTracker;

    .line 280
    :cond_1
    invoke-direct {p0}, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;->reset()V

    return-void
.end method
