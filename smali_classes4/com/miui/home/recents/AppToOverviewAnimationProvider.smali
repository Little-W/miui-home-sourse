.class final Lcom/miui/home/recents/AppToOverviewAnimationProvider;
.super Ljava/lang/Object;
.source "AppToOverviewAnimationProvider.java"

# interfaces
.implements Lcom/miui/home/recents/util/RemoteAnimationProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/miui/home/launcher/BaseActivity;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/miui/home/recents/util/RemoteAnimationProvider;"
    }
.end annotation


# static fields
.field public static final FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;


# instance fields
.field private mActivityRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final mHelper:Lcom/miui/home/recents/ActivityControlHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/home/recents/ActivityControlHelper<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final mTargetTaskId:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 50
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ecccccd    # 0.4f

    const/4 v2, 0x0

    const v3, 0x3e4ccccd    # 0.2f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/miui/home/recents/AppToOverviewAnimationProvider;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    return-void
.end method

.method constructor <init>(Lcom/miui/home/recents/ActivityControlHelper;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/home/recents/ActivityControlHelper<",
            "TT;>;I)V"
        }
    .end annotation

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/miui/home/recents/AppToOverviewAnimationProvider;->mHelper:Lcom/miui/home/recents/ActivityControlHelper;

    .line 56
    iput p2, p0, Lcom/miui/home/recents/AppToOverviewAnimationProvider;->mTargetTaskId:I

    return-void
.end method

.method static synthetic lambda$onActivityReady$0(Lcom/miui/home/launcher/anim/AnimatorPlaybackController;)V
    .locals 2

    .line 73
    invoke-virtual {p0}, Lcom/miui/home/launcher/anim/AnimatorPlaybackController;->dispatchOnStart()V

    .line 74
    invoke-virtual {p0}, Lcom/miui/home/launcher/anim/AnimatorPlaybackController;->getAnimationPlayer()Landroid/animation/ValueAnimator;

    move-result-object p0

    const-wide/16 v0, 0xfa

    .line 75
    invoke-virtual {p0, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object p0

    .line 76
    sget-object v0, Lcom/miui/home/recents/AppToOverviewAnimationProvider;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {p0, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 77
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method


# virtual methods
.method public createWindowAnimation([Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)Landroid/animation/AnimatorSet;
    .locals 14

    .line 92
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 93
    iget-object v1, p0, Lcom/miui/home/recents/AppToOverviewAnimationProvider;->mActivityRef:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/BaseActivity;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "AppToOverviewAnimationProvider"

    const/4 v3, 0x2

    if-nez v1, :cond_1

    const-string p0, "Animation created, before activity"

    .line 95
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-array p0, v3, [I

    .line 96
    fill-array-data p0, :array_0

    invoke-static {p0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p0

    const-wide/16 v1, 0x19

    invoke-virtual {p0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    return-object v0

    .line 100
    :cond_1
    new-instance v4, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;

    const/4 v5, 0x1

    invoke-direct {v4, p1, v5}, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;-><init>([Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;I)V

    .line 104
    iget p0, p0, Lcom/miui/home/recents/AppToOverviewAnimationProvider;->mTargetTaskId:I

    invoke-virtual {v4, p0}, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->findTask(I)Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    move-result-object p0

    const-wide/16 v6, 0xfa

    if-nez p0, :cond_2

    const-string p0, "No closing app"

    .line 106
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-array p0, v3, [I

    .line 107
    fill-array-data p0, :array_1

    invoke-static {p0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p0

    invoke-virtual {p0, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    return-object v0

    .line 111
    :cond_2
    new-instance p1, Lcom/miui/home/recents/util/ClipAnimationHelper;

    invoke-direct {p1}, Lcom/miui/home/recents/util/ClipAnimationHelper;-><init>()V

    new-array v2, v3, [I

    .line 116
    invoke-virtual {v1}, Lcom/miui/home/launcher/BaseActivity;->getRootView()Landroid/view/View;

    move-result-object v4

    .line 117
    invoke-virtual {v4, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 118
    new-instance v8, Landroid/graphics/Rect;

    const/4 v9, 0x0

    aget v10, v2, v9

    aget v11, v2, v5

    aget v12, v2, v9

    .line 119
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v13

    add-int/2addr v12, v13

    aget v2, v2, v5

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v2, v4

    invoke-direct {v8, v10, v11, v12, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 120
    invoke-virtual {p1, p0}, Lcom/miui/home/recents/util/ClipAnimationHelper;->updateSourceStack(Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)V

    .line 121
    invoke-virtual {p1, v8}, Lcom/miui/home/recents/util/ClipAnimationHelper;->updateHomeStack(Landroid/graphics/Rect;)V

    .line 123
    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0}, Landroid/graphics/Rect;-><init>()V

    .line 124
    invoke-virtual {v1}, Lcom/miui/home/launcher/BaseActivity;->getOverviewPanel()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/home/recents/views/RecentsView;

    .line 125
    invoke-virtual {v1}, Lcom/miui/home/recents/views/RecentsView;->getTaskStackView()Lcom/miui/home/recents/views/TaskStackView;

    move-result-object v1

    invoke-virtual {v1, v9}, Lcom/miui/home/recents/views/TaskStackView;->getTaskViewWithoutHeaderRectF(I)Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/graphics/RectF;->roundOut(Landroid/graphics/Rect;)V

    .line 127
    invoke-virtual {p1, p0}, Lcom/miui/home/recents/util/ClipAnimationHelper;->updateTargetRect(Landroid/graphics/Rect;)V

    .line 128
    invoke-virtual {p1, v9}, Lcom/miui/home/recents/util/ClipAnimationHelper;->prepareAnimation(Z)V

    new-array p0, v3, [F

    .line 130
    fill-array-data p0, :array_2

    invoke-static {p0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p0

    .line 131
    invoke-virtual {p0, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 132
    sget-object p1, Lcom/miui/home/launcher/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-virtual {p0, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 133
    invoke-virtual {v0, p0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    return-object v0

    nop

    :array_0
    .array-data 4
        0x0
        0x1
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x1
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method getRecentsLaunchDuration()J
    .locals 2

    const-wide/16 v0, 0xfa

    return-wide v0
.end method

.method onActivityReady(Lcom/miui/home/launcher/BaseActivity;Ljava/lang/Boolean;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Boolean;",
            ")Z"
        }
    .end annotation

    .line 66
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/home/recents/AppToOverviewAnimationProvider;->mActivityRef:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_0

    .line 67
    invoke-virtual {p1}, Lcom/miui/home/launcher/BaseActivity;->getOverviewPanel()Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lcom/miui/home/recents/views/RecentsView;

    if-eqz v0, :cond_0

    .line 68
    invoke-virtual {p1}, Lcom/miui/home/launcher/BaseActivity;->getOverviewPanel()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/recents/views/RecentsView;

    iget v1, p0, Lcom/miui/home/recents/AppToOverviewAnimationProvider;->mTargetTaskId:I

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/views/RecentsView;->showCurrentTask(I)V

    .line 70
    :cond_0
    iget-object p0, p0, Lcom/miui/home/recents/AppToOverviewAnimationProvider;->mHelper:Lcom/miui/home/recents/ActivityControlHelper;

    .line 71
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    sget-object v0, Lcom/miui/home/recents/-$$Lambda$AppToOverviewAnimationProvider$IbXHvUFhsgr77DJpx1pG8xmyPWE;->INSTANCE:Lcom/miui/home/recents/-$$Lambda$AppToOverviewAnimationProvider$IbXHvUFhsgr77DJpx1pG8xmyPWE;

    const/4 v1, 0x0

    invoke-interface {p0, p1, p2, v1, v0}, Lcom/miui/home/recents/ActivityControlHelper;->prepareRecentsUI(Lcom/miui/home/launcher/BaseActivity;ZZLjava/util/function/Consumer;)Lcom/miui/home/recents/ActivityControlHelper$AnimationFactory;

    move-result-object p0

    const/4 p1, 0x0

    .line 79
    invoke-interface {p0, p1}, Lcom/miui/home/recents/ActivityControlHelper$AnimationFactory;->onRemoteAnimationReceived(Lcom/miui/home/recents/util/RemoteAnimationTargetSet;)V

    const-wide/16 p1, 0xfa

    .line 80
    invoke-interface {p0, p1, p2}, Lcom/miui/home/recents/ActivityControlHelper$AnimationFactory;->createActivityController(J)V

    return v1
.end method
