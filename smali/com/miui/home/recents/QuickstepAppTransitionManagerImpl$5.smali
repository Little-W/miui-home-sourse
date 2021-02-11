.class Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "QuickstepAppTransitionManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->startClosingWindowAnimators([Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)Lcom/miui/home/recents/util/RectFSpringAnim;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;

.field final synthetic val$launcher:Lcom/miui/home/launcher/Launcher;


# direct methods
.method constructor <init>(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    .line 1027
    iput-object p1, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$5;->this$0:Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;

    iput-object p2, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$5;->val$launcher:Lcom/miui/home/launcher/Launcher;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 1055
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$5;->onAnimationEnd(Landroid/animation/Animator;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1045
    iget-object p1, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$5;->this$0:Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mIsClosingAnimRunning:Z

    .line 1046
    iget-object p1, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$5;->val$launcher:Lcom/miui/home/launcher/Launcher;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getClosingShortcutIcon()Lcom/miui/home/launcher/ShortcutIcon;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1047
    iget-object p1, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$5;->val$launcher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getClosingShortcutIcon()Lcom/miui/home/launcher/ShortcutIcon;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutIcon;->onEnterHomeAnimFinish()V

    .line 1048
    iget-object p1, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$5;->val$launcher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->clearCurSelectedShortcutIcon()V

    .line 1050
    :cond_0
    invoke-static {}, Lcom/miui/home/recents/util/TraceUtils;->endSection()V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    const-string p1, "appToHomeAnim"

    .line 1030
    invoke-static {p1}, Lcom/miui/home/recents/util/TraceUtils;->beginSection(Ljava/lang/String;)V

    .line 1031
    iget-object p1, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$5;->this$0:Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mIsClosingAnimRunning:Z

    .line 1032
    iget-object v0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$5;->val$launcher:Lcom/miui/home/launcher/Launcher;

    if-eqz v0, :cond_1

    .line 1033
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->getScrollX()I

    move-result v0

    int-to-float v0, v0

    invoke-static {p1, v0}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->access$802(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;F)F

    .line 1034
    iget-object p1, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$5;->this$0:Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;

    iget-object v0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$5;->val$launcher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getMinusOneScreenView()Lcom/miui/home/launcher/MinusOneScreenView;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$5;->val$launcher:Lcom/miui/home/launcher/Launcher;

    .line 1035
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getMinusOneScreenView()Lcom/miui/home/launcher/MinusOneScreenView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/MinusOneScreenView;->getScrollX()I

    move-result v0

    int-to-float v0, v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 1034
    :goto_0
    invoke-static {p1, v0}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->access$902(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;F)F

    .line 1036
    iget-object p1, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$5;->val$launcher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getClosingShortcutIcon()Lcom/miui/home/launcher/ShortcutIcon;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1037
    iget-object p1, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$5;->val$launcher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getClosingShortcutIcon()Lcom/miui/home/launcher/ShortcutIcon;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutIcon;->getIconImageView()Lcom/miui/home/launcher/LauncherIconImageView;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/miui/home/launcher/LauncherIconImageView;->setAlpha(F)V

    .line 1038
    iget-object p1, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$5;->val$launcher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getClosingShortcutIcon()Lcom/miui/home/launcher/ShortcutIcon;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutIcon;->onEnterHomeAnimStart()V

    :cond_1
    return-void
.end method
