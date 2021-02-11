.class Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "QuickstepAppTransitionManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->startOpeningWindowAnimators(Landroid/view/View;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;Landroid/graphics/Rect;Landroid/graphics/Rect;Ljava/lang/Runnable;)Lcom/miui/home/recents/util/RectFSpringAnim;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;Landroid/view/View;)V
    .locals 0

    .line 488
    iput-object p1, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$2;->this$0:Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;

    iput-object p2, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$2;->val$v:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 512
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$2;->onAnimationEnd(Landroid/animation/Animator;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 502
    iget-object p1, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$2;->this$0:Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mIsOpenAnimRunning:Z

    .line 504
    iget-object v0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$2;->val$v:Landroid/view/View;

    if-eqz v0, :cond_0

    instance-of v0, v0, Lcom/miui/home/launcher/ShortcutIcon;

    if-eqz v0, :cond_0

    iget-boolean p1, p1, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mIsClosingAnimRunning:Z

    if-nez p1, :cond_0

    .line 505
    iget-object p1, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$2;->val$v:Landroid/view/View;

    check-cast p1, Lcom/miui/home/launcher/ShortcutIcon;

    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutIcon;->getIconImageView()Lcom/miui/home/launcher/LauncherIconImageView;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/LauncherIconImageView;->setAlpha(F)V

    .line 507
    :cond_0
    invoke-static {}, Lcom/miui/home/recents/util/TraceUtils;->endSection()V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    const-string p1, "openAppAnimFromHome"

    .line 491
    invoke-static {p1}, Lcom/miui/home/recents/util/TraceUtils;->beginSection(Ljava/lang/String;)V

    .line 492
    iget-object p1, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$2;->this$0:Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mIsOpenAnimRunning:Z

    .line 494
    iget-object p1, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$2;->val$v:Landroid/view/View;

    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/miui/home/launcher/ShortcutIcon;

    if-eqz v0, :cond_0

    .line 495
    check-cast p1, Lcom/miui/home/launcher/ShortcutIcon;

    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutIcon;->getIconImageView()Lcom/miui/home/launcher/LauncherIconImageView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/LauncherIconImageView;->setAlpha(F)V

    .line 496
    iget-object p1, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$2;->val$v:Landroid/view/View;

    check-cast p1, Lcom/miui/home/launcher/ShortcutIcon;

    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutIcon;->endFolmeAnim()V

    :cond_0
    return-void
.end method
