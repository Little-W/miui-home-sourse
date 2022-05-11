.class public Lcom/miui/home/recents/views/TaskStackViewStack;
.super Lcom/miui/home/recents/views/TaskStackView;


# instance fields
.field private firstStart:Z

.field private mFakeRun:Ljava/lang/Runnable;

.field private mTouchHandler:Lcom/miui/home/recents/views/TaskStackViewTouchHandler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lcom/miui/home/recents/views/TaskStackView;-><init>(Landroid/content/Context;)V

    const/high16 v0, -0x40000000    # -2.0f

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/home/recents/views/TaskStackViewStack;->firstStart:Z

    new-instance v0, Lcom/miui/home/recents/views/TaskStackViewStack$1;

    invoke-direct {v0, p0}, Lcom/miui/home/recents/views/TaskStackViewStack$1;-><init>(Lcom/miui/home/recents/views/TaskStackViewStack;)V

    iput-object v0, p0, Lcom/miui/home/recents/views/TaskStackViewStack;->mFakeRun:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/miui/home/recents/views/TaskStackViewStack;->loadFields()V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/recents/views/TaskStackViewStack;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/recents/views/TaskStackViewStack;->fakeEvent()V

    return-void
.end method

.method private fakeEvent()V
    .locals 13

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x64

    const/4 v4, 0x0

    const/high16 v5, 0x43960000    # 300.0f

    const/high16 v6, 0x43960000    # 300.0f

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v10

    iget-object v2, p0, Lcom/miui/home/recents/views/TaskStackViewStack;->mTouchHandler:Lcom/miui/home/recents/views/TaskStackViewTouchHandler;

    invoke-virtual {v2, v10}, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->onTouchEvent(Landroid/view/MotionEvent;)Z

    const-wide/16 v2, 0x64

    add-long/2addr v2, v0

    const-wide/16 v4, 0x64

    const/4 v6, 0x2

    const v7, 0x43b40000    # 360.0f

    const/high16 v8, 0x43a50000    # 330.0f

    const/4 v9, 0x0

    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v11

    iget-object v2, p0, Lcom/miui/home/recents/views/TaskStackViewStack;->mTouchHandler:Lcom/miui/home/recents/views/TaskStackViewTouchHandler;

    invoke-virtual {v2, v11}, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->onTouchEvent(Landroid/view/MotionEvent;)Z

    const-wide/16 v2, 0x12c

    add-long/2addr v2, v0

    const-wide/16 v4, 0x64

    const/4 v6, 0x1

    const/high16 v7, 0x43a50000    # 330.0f

    const/high16 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v12

    iget-object v2, p0, Lcom/miui/home/recents/views/TaskStackViewStack;->mTouchHandler:Lcom/miui/home/recents/views/TaskStackViewTouchHandler;

    invoke-virtual {v2, v12}, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->onTouchEvent(Landroid/view/MotionEvent;)Z

    return-void
.end method

.method private loadFields()V
    .locals 2

    const/4 v1, 0x0

    const-string v0, "mTouchHandler"

    invoke-static {p0, v0, v1}, Landroid/Utils/ReflectionUtil;->getFieldFromSuperClass(Ljava/lang/Object;Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;

    iput-object v0, p0, Lcom/miui/home/recents/views/TaskStackViewStack;->mTouchHandler:Lcom/miui/home/recents/views/TaskStackViewTouchHandler;

    return-void
.end method


# virtual methods
.method public fakeEventWithDelay()V
    .locals 4

    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackViewStack;->mFakeRun:Ljava/lang/Runnable;

    const-wide/16 v2, 0xfa

    invoke-virtual {p0, v0, v2, v3}, Lcom/miui/home/recents/views/TaskStackViewStack;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public updateTaskViewToTransform(Lcom/miui/home/recents/views/TaskView;Lcom/miui/home/recents/views/TaskViewTransform;Lcom/android/systemui/shared/recents/utilities/AnimationProps;)V
    .locals 4

    invoke-super {p0, p1, p2, p3}, Lcom/miui/home/recents/views/TaskStackView;->updateTaskViewToTransform(Lcom/miui/home/recents/views/TaskView;Lcom/miui/home/recents/views/TaskViewTransform;Lcom/android/systemui/shared/recents/utilities/AnimationProps;)V

    const/4 v3, 0x2

    const/4 p0, 0x0

    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskView;->getLayerType()I

    move-result v2

    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskView;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    const v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    invoke-virtual {p1, v2}, Lcom/miui/home/recents/views/TaskView;->setPivotY(F)V

    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskView;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    iget v1, p2, Lcom/miui/home/recents/views/TaskViewTransform;->scale:F

    invoke-virtual {p1, v1}, Lcom/miui/home/recents/views/TaskView;->setScaleX(F)V

    invoke-virtual {p1, v1}, Lcom/miui/home/recents/views/TaskView;->setScaleY(F)V

    iget v2, p2, Lcom/miui/home/recents/views/TaskViewTransform;->alpha:F

    invoke-virtual {p1, v2}, Lcom/miui/home/recents/views/TaskView;->setAlpha(F)V

    invoke-virtual {p1, p0}, Lcom/miui/home/recents/views/TaskView;->setRotation(F)V

    invoke-virtual {p1, p0}, Lcom/miui/home/recents/views/TaskView;->setRotationX(F)V

    iget v2, p2, Lcom/miui/home/recents/views/TaskViewTransform;->translationZ:F

    invoke-virtual {p1, v2}, Lcom/miui/home/recents/views/TaskView;->setTranslationZ(F)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/miui/home/recents/views/TaskView;->setRotationY(F)V

    return-void
.end method
