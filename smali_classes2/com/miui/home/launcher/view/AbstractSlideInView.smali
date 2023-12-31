.class public abstract Lcom/miui/home/launcher/view/AbstractSlideInView;
.super Lcom/miui/home/launcher/AbstractFloatingView;
.source "AbstractSlideInView.java"

# interfaces
.implements Lcom/miui/home/launcher/touch/SwipeDetector$Listener;


# static fields
.field protected static TRANSLATION_SHIFT:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lcom/miui/home/launcher/view/AbstractSlideInView;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected mContent:Landroid/view/View;

.field protected final mLauncher:Lcom/miui/home/launcher/Launcher;

.field protected mNoIntercept:Z

.field protected final mOpenCloseAnimator:Landroid/animation/ObjectAnimator;

.field protected mScrollInterpolator:Landroid/view/animation/Interpolator;

.field protected final mSwipeDetector:Lcom/miui/home/launcher/touch/SwipeDetector;

.field protected mTranslationShift:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 45
    new-instance v0, Lcom/miui/home/launcher/view/AbstractSlideInView$1;

    const-class v1, Ljava/lang/Float;

    const-string v2, "translationShift"

    invoke-direct {v0, v1, v2}, Lcom/miui/home/launcher/view/AbstractSlideInView$1;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/miui/home/launcher/view/AbstractSlideInView;->TRANSLATION_SHIFT:Landroid/util/Property;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 74
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/home/launcher/AbstractFloatingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 p2, 0x3f800000    # 1.0f

    .line 69
    iput p2, p0, Lcom/miui/home/launcher/view/AbstractSlideInView;->mTranslationShift:F

    .line 75
    invoke-static {p1}, Lcom/miui/home/launcher/Launcher;->getLauncher(Landroid/content/Context;)Lcom/miui/home/launcher/Launcher;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/home/launcher/view/AbstractSlideInView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 77
    sget-object p2, Lcom/miui/home/launcher/anim/Interpolators;->SCROLL_CUBIC:Landroid/view/animation/Interpolator;

    iput-object p2, p0, Lcom/miui/home/launcher/view/AbstractSlideInView;->mScrollInterpolator:Landroid/view/animation/Interpolator;

    .line 78
    new-instance p2, Lcom/miui/home/launcher/touch/SwipeDetector;

    sget-object p3, Lcom/miui/home/launcher/touch/SwipeDetector;->VERTICAL:Lcom/miui/home/launcher/touch/SwipeDetector$Direction;

    invoke-direct {p2, p1, p0, p3}, Lcom/miui/home/launcher/touch/SwipeDetector;-><init>(Landroid/content/Context;Lcom/miui/home/launcher/touch/SwipeDetector$Listener;Lcom/miui/home/launcher/touch/SwipeDetector$Direction;)V

    iput-object p2, p0, Lcom/miui/home/launcher/view/AbstractSlideInView;->mSwipeDetector:Lcom/miui/home/launcher/touch/SwipeDetector;

    const/4 p1, 0x0

    new-array p1, p1, [Landroid/animation/PropertyValuesHolder;

    .line 80
    invoke-static {p0, p1}, Lcom/miui/home/launcher/LauncherAnimUtils;->ofPropertyValuesHolder(Landroid/view/View;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/view/AbstractSlideInView;->mOpenCloseAnimator:Landroid/animation/ObjectAnimator;

    .line 81
    iget-object p1, p0, Lcom/miui/home/launcher/view/AbstractSlideInView;->mOpenCloseAnimator:Landroid/animation/ObjectAnimator;

    new-instance p2, Lcom/miui/home/launcher/view/AbstractSlideInView$2;

    invoke-direct {p2, p0}, Lcom/miui/home/launcher/view/AbstractSlideInView$2;-><init>(Lcom/miui/home/launcher/view/AbstractSlideInView;)V

    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/view/AbstractSlideInView;)V
    .locals 0

    .line 42
    invoke-virtual {p0}, Lcom/miui/home/launcher/view/AbstractSlideInView;->announceAccessibilityChanges()V

    return-void
.end method


# virtual methods
.method protected onCloseComplete()V
    .locals 1

    const/4 v0, 0x0

    .line 182
    iput-boolean v0, p0, Lcom/miui/home/launcher/view/AbstractSlideInView;->mIsOpen:Z

    .line 183
    iget-object v0, p0, Lcom/miui/home/launcher/view/AbstractSlideInView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getDragLayer()Lcom/miui/home/launcher/DragLayer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/DragLayer;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public onControllerInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 97
    iget-boolean v0, p0, Lcom/miui/home/launcher/view/AbstractSlideInView;->mNoIntercept:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/view/AbstractSlideInView;->mSwipeDetector:Lcom/miui/home/launcher/touch/SwipeDetector;

    invoke-virtual {v0}, Lcom/miui/home/launcher/touch/SwipeDetector;->isIdleState()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    move v0, v1

    .line 103
    :goto_0
    iget-object v2, p0, Lcom/miui/home/launcher/view/AbstractSlideInView;->mSwipeDetector:Lcom/miui/home/launcher/touch/SwipeDetector;

    invoke-virtual {v2, v0, v1}, Lcom/miui/home/launcher/touch/SwipeDetector;->setDetectableScrollConditions(IZ)V

    .line 105
    iget-object v0, p0, Lcom/miui/home/launcher/view/AbstractSlideInView;->mSwipeDetector:Lcom/miui/home/launcher/touch/SwipeDetector;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/touch/SwipeDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 106
    iget-object v0, p0, Lcom/miui/home/launcher/view/AbstractSlideInView;->mSwipeDetector:Lcom/miui/home/launcher/touch/SwipeDetector;

    invoke-virtual {v0}, Lcom/miui/home/launcher/touch/SwipeDetector;->isDraggingOrSettling()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/miui/home/launcher/view/AbstractSlideInView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 107
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getDragLayer()Lcom/miui/home/launcher/DragLayer;

    move-result-object v0

    iget-object p0, p0, Lcom/miui/home/launcher/view/AbstractSlideInView;->mContent:Landroid/view/View;

    invoke-virtual {v0, p0, p1}, Lcom/miui/home/launcher/DragLayer;->isEventOverView(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    if-nez p0, :cond_3

    :cond_2
    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method public onControllerTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 112
    iget-object v0, p0, Lcom/miui/home/launcher/view/AbstractSlideInView;->mSwipeDetector:Lcom/miui/home/launcher/touch/SwipeDetector;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/touch/SwipeDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 113
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/view/AbstractSlideInView;->mSwipeDetector:Lcom/miui/home/launcher/touch/SwipeDetector;

    invoke-virtual {v0}, Lcom/miui/home/launcher/touch/SwipeDetector;->isIdleState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/miui/home/launcher/view/AbstractSlideInView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getDragLayer()Lcom/miui/home/launcher/DragLayer;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/home/launcher/view/AbstractSlideInView;->mContent:Landroid/view/View;

    invoke-virtual {v0, v2, p1}, Lcom/miui/home/launcher/DragLayer;->isEventOverView(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 116
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/view/AbstractSlideInView;->close(Z)V

    :cond_0
    return v1
.end method

.method public onDrag(FF)Z
    .locals 1

    .line 130
    iget-object p2, p0, Lcom/miui/home/launcher/view/AbstractSlideInView;->mContent:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p2

    int-to-float p2, p2

    const/4 v0, 0x0

    .line 131
    invoke-static {p1, v0, p2}, Lcom/miui/home/launcher/common/Utilities;->boundToRange(FFF)F

    move-result p1

    div-float/2addr p1, p2

    .line 132
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/view/AbstractSlideInView;->setTranslationShift(F)V

    const/4 p0, 0x1

    return p0
.end method

.method public onDragEnd(FZ)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    cmpl-float p2, p1, v0

    if-gtz p2, :cond_1

    .line 138
    :cond_0
    iget p2, p0, Lcom/miui/home/launcher/view/AbstractSlideInView;->mTranslationShift:F

    const/high16 v2, 0x3f000000    # 0.5f

    cmpl-float p2, p2, v2

    if-lez p2, :cond_2

    .line 139
    :cond_1
    invoke-static {p1}, Lcom/miui/home/launcher/anim/Interpolators;->scrollInterpolatorForVelocity(F)Landroid/view/animation/Interpolator;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/home/launcher/view/AbstractSlideInView;->mScrollInterpolator:Landroid/view/animation/Interpolator;

    .line 140
    iget-object p2, p0, Lcom/miui/home/launcher/view/AbstractSlideInView;->mOpenCloseAnimator:Landroid/animation/ObjectAnimator;

    const/high16 v0, 0x3f800000    # 1.0f

    iget v2, p0, Lcom/miui/home/launcher/view/AbstractSlideInView;->mTranslationShift:F

    sub-float/2addr v0, v2

    invoke-static {p1, v0}, Lcom/miui/home/launcher/touch/SwipeDetector;->calculateDuration(FF)J

    move-result-wide v2

    invoke-virtual {p2, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 142
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/view/AbstractSlideInView;->close(Z)V

    goto :goto_0

    .line 144
    :cond_2
    iget-object p2, p0, Lcom/miui/home/launcher/view/AbstractSlideInView;->mOpenCloseAnimator:Landroid/animation/ObjectAnimator;

    new-array v2, v1, [Landroid/animation/PropertyValuesHolder;

    sget-object v3, Lcom/miui/home/launcher/view/AbstractSlideInView;->TRANSLATION_SHIFT:Landroid/util/Property;

    new-array v1, v1, [F

    const/4 v4, 0x0

    aput v0, v1, v4

    invoke-static {v3, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    aput-object v0, v2, v4

    invoke-virtual {p2, v2}, Landroid/animation/ObjectAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 146
    iget-object p2, p0, Lcom/miui/home/launcher/view/AbstractSlideInView;->mOpenCloseAnimator:Landroid/animation/ObjectAnimator;

    iget v0, p0, Lcom/miui/home/launcher/view/AbstractSlideInView;->mTranslationShift:F

    .line 147
    invoke-static {p1, v0}, Lcom/miui/home/launcher/touch/SwipeDetector;->calculateDuration(FF)J

    move-result-wide v0

    .line 146
    invoke-virtual {p2, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p1

    sget-object p2, Lcom/miui/home/launcher/anim/Interpolators;->DEACCEL:Landroid/view/animation/Interpolator;

    .line 148
    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 149
    iget-object p0, p0, Lcom/miui/home/launcher/view/AbstractSlideInView;->mOpenCloseAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    :goto_0
    return-void
.end method

.method public onDragStart(Z)V
    .locals 0

    return-void
.end method

.method protected setTranslationShift(F)V
    .locals 1

    .line 91
    iput p1, p0, Lcom/miui/home/launcher/view/AbstractSlideInView;->mTranslationShift:F

    .line 92
    iget-object p1, p0, Lcom/miui/home/launcher/view/AbstractSlideInView;->mContent:Landroid/view/View;

    iget p0, p0, Lcom/miui/home/launcher/view/AbstractSlideInView;->mTranslationShift:F

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr p0, v0

    invoke-virtual {p1, p0}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method
