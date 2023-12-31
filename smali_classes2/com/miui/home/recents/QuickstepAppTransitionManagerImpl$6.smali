.class Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$6;
.super Landroid/animation/AnimatorListenerAdapter;
.source "QuickstepAppTransitionManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->startClosingWindowFromFeedAnimators([Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)Lcom/miui/home/recents/util/RectFSpringAnim;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;


# direct methods
.method constructor <init>(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;)V
    .locals 0

    .line 2111
    iput-object p1, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$6;->this$0:Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 2124
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$6;->onAnimationEnd(Landroid/animation/Animator;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 2119
    iget-object p0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$6;->this$0:Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mIsClosingAnimRunning:Z

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 2114
    iget-object p0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$6;->this$0:Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mIsClosingAnimRunning:Z

    return-void
.end method
