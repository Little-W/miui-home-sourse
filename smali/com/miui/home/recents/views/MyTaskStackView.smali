.class public Lcom/miui/home/recents/views/MyTaskStackView;
.super Lcom/miui/home/recents/views/TaskStackView;
.source "MyTaskStackView.java"


# static fields
.field static DEFAULT_ROTATE_CAMERA_DISTANCE:F

.field public static mCurrentTaskTransforms:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/home/recents/views/TaskViewTransform;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private firstStart:Z

.field private isVertical:Z

.field private mDefCameraDistance:F

.field private mFakeRun:Ljava/lang/Runnable;

.field private final mHorizontalGap:I

.field private mIgnoreTasks:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Lcom/android/systemui/shared/recents/model/Task$TaskKey;",
            ">;"
        }
    .end annotation
.end field

.field private mStackScroller:Lcom/miui/home/recents/views/TaskStackViewScroller;

.field private mStyleAnim:I

.field private mTouchHandler:Lcom/miui/home/recents/views/TaskStackViewTouchHandler;

.field private final mVerticalGap:I

.field private mViewPool:Lcom/miui/home/recents/views/ViewPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/home/recents/views/ViewPool",
            "<",
            "Lcom/miui/home/recents/views/TaskView;",
            "Lcom/android/systemui/shared/recents/model/Task;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lcom/miui/home/recents/views/TaskStackView;-><init>(Landroid/content/Context;)V

    const/high16 v0, -0x40000000    # -2.0f

    iput v0, p0, Lcom/miui/home/recents/views/MyTaskStackView;->mDefCameraDistance:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/home/recents/views/MyTaskStackView;->firstStart:Z

    new-instance v0, Lcom/miui/home/recents/views/MyTaskStackView$1;

    invoke-direct {v0, p0}, Lcom/miui/home/recents/views/MyTaskStackView$1;-><init>(Lcom/miui/home/recents/views/MyTaskStackView;)V

    iput-object v0, p0, Lcom/miui/home/recents/views/MyTaskStackView;->mFakeRun:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/miui/home/recents/views/MyTaskStackView;->loadFields()V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/recents/views/MyTaskStackView;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/recents/views/MyTaskStackView;->fakeEvent()V

    return-void
.end method

.method private fakeEvent()V
    .locals 13

    iget-object v2, p0, Lcom/miui/home/recents/views/MyTaskStackView;->mFakeRun:Ljava/lang/Runnable;

    invoke-virtual {p0, v2}, Lcom/miui/home/recents/views/MyTaskStackView;->removeCallbacks(Ljava/lang/Runnable;)Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x64

    const/4 v4, 0x0

    const/high16 v5, 0x43960000    # 300.0f

    const/high16 v6, 0x43960000    # 300.0f

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v10

    iget-object v2, p0, Lcom/miui/home/recents/views/MyTaskStackView;->mTouchHandler:Lcom/miui/home/recents/views/TaskStackViewTouchHandler;

    invoke-virtual {v2, v10}, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->onTouchEvent(Landroid/view/MotionEvent;)Z

    const-wide/16 v2, 0x64

    add-long/2addr v2, v0

    const-wide/16 v4, 0x64

    const/4 v6, 0x2

    const v7, 0x43a50000    # 330.0f

    const/high16 v8, 0x43960000    # 300.0f

    const/4 v9, 0x0

    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v11

    iget-object v2, p0, Lcom/miui/home/recents/views/MyTaskStackView;->mTouchHandler:Lcom/miui/home/recents/views/TaskStackViewTouchHandler;

    invoke-virtual {v2, v11}, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->onTouchEvent(Landroid/view/MotionEvent;)Z

    const-wide/16 v2, 0x12c

    add-long/2addr v2, v0

    const-wide/16 v4, 0x64

    const/4 v6, 0x1

    const/high16 v7, 0x43a50000    # 330.0f

    const/high16 v8, 0x43960000    # 300.0f

    const/4 v9, 0x0

    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v12

    iget-object v2, p0, Lcom/miui/home/recents/views/MyTaskStackView;->mTouchHandler:Lcom/miui/home/recents/views/TaskStackViewTouchHandler;

    invoke-virtual {v2, v12}, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->onTouchEvent(Landroid/view/MotionEvent;)Z

    return-void
.end method

.method private loadFields()V
    .locals 2

    const/4 v1, 0x1

    const-string v0, "mStackScroller"

    invoke-static {p0, v0, v1}, Landroid/Utils/ReflectionUtil;->getFieldFromSuperClass(Ljava/lang/Object;Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/recents/views/TaskStackViewScroller;

    iput-object v0, p0, Lcom/miui/home/recents/views/MyTaskStackView;->mStackScroller:Lcom/miui/home/recents/views/TaskStackViewScroller;

    const-string v0, "mCurrentTaskTransforms"

    invoke-static {p0, v0, v1}, Landroid/Utils/ReflectionUtil;->getFieldFromSuperClass(Ljava/lang/Object;Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    sput-object v0, Lcom/miui/home/recents/views/MyTaskStackView;->mCurrentTaskTransforms:Ljava/util/ArrayList;

    const-string v0, "mIgnoreTasks"

    invoke-static {p0, v0, v1}, Landroid/Utils/ReflectionUtil;->getFieldFromSuperClass(Ljava/lang/Object;Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    iput-object v0, p0, Lcom/miui/home/recents/views/MyTaskStackView;->mIgnoreTasks:Landroid/util/ArraySet;

    const-string v0, "mViewPool"

    invoke-static {p0, v0, v1}, Landroid/Utils/ReflectionUtil;->getFieldFromSuperClass(Ljava/lang/Object;Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/recents/views/ViewPool;

    iput-object v0, p0, Lcom/miui/home/recents/views/MyTaskStackView;->mViewPool:Lcom/miui/home/recents/views/ViewPool;

    const-string v0, "mTouchHandler"

    invoke-static {p0, v0, v1}, Landroid/Utils/ReflectionUtil;->getFieldFromSuperClass(Ljava/lang/Object;Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;

    iput-object v0, p0, Lcom/miui/home/recents/views/MyTaskStackView;->mTouchHandler:Lcom/miui/home/recents/views/TaskStackViewTouchHandler;

    return-void
.end method


# virtual methods
.method public fakeEventWithDelay()V
    .locals 4

    iget-object v0, p0, Lcom/miui/home/recents/views/MyTaskStackView;->mFakeRun:Ljava/lang/Runnable;

    const-wide/16 v2, 0xfa

    invoke-virtual {p0, v0, v2, v3}, Lcom/miui/home/recents/views/MyTaskStackView;->postDelayed(Ljava/lang/Runnable;J)Z

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

    invoke-virtual {p1, v2}, Lcom/miui/home/recents/views/TaskView;->setPivotX(F)V

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
