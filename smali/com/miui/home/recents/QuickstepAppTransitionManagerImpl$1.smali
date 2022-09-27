.class Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$1;
.super Lcom/miui/home/recents/LauncherAnimationRunner;
.source "QuickstepAppTransitionManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->getActivityLaunchOptions(Lcom/miui/home/launcher/Launcher;Landroid/view/View;Landroid/graphics/Rect;)Landroid/app/ActivityOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;

.field final synthetic val$iconLoc:Landroid/graphics/Rect;

.field final synthetic val$launcherRef:Ljava/lang/ref/WeakReference;

.field final synthetic val$view:Ljava/lang/ref/WeakReference;


# direct methods
.method constructor <init>(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;Landroid/os/Handler;ZLjava/lang/ref/WeakReference;Ljava/lang/ref/WeakReference;Landroid/graphics/Rect;)V
    .locals 0

    .line 203
    iput-object p1, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$1;->this$0:Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;

    iput-object p4, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$1;->val$view:Ljava/lang/ref/WeakReference;

    iput-object p5, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$1;->val$launcherRef:Ljava/lang/ref/WeakReference;

    iput-object p6, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$1;->val$iconLoc:Landroid/graphics/Rect;

    invoke-direct {p0, p2, p3}, Lcom/miui/home/recents/LauncherAnimationRunner;-><init>(Landroid/os/Handler;Z)V

    return-void
.end method


# virtual methods
.method public onCreateAnimation([Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;Lcom/miui/home/recents/LauncherAnimationRunner$AnimationResult;)V
    .locals 9

    .line 208
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 210
    iget-object v0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$1;->this$0:Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;

    const/4 v2, 0x1

    invoke-static {v0, p1, v2}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->access$000(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$1;->this$0:Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;

    .line 211
    invoke-static {v0, p1}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->access$100(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    move v6, v0

    goto :goto_1

    :cond_1
    :goto_0
    move v6, v2

    .line 213
    :goto_1
    iget-object v0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$1;->val$view:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/view/View;

    .line 214
    iget-object v0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$1;->val$launcherRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/Launcher;

    if-eqz v4, :cond_4

    if-eqz v0, :cond_2

    .line 217
    iget-object v3, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$1;->this$0:Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;

    invoke-static {v3, v0}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->access$200(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;Lcom/miui/home/launcher/Launcher;)V

    .line 218
    invoke-virtual {v0, v2}, Lcom/miui/home/launcher/Launcher;->animateWallpaperZoom(Z)V

    .line 220
    :cond_2
    iget-object v0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$1;->this$0:Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;

    invoke-virtual {v0, v4, p1}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->isLaunchingFromRecents(Landroid/view/View;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 221
    iget-object v0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$1;->this$0:Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;

    move-object v2, v4

    move-object v3, p1

    move v4, v6

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->composeRecentsLaunchAnimator(Landroid/animation/AnimatorSet;Landroid/view/View;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;ZLcom/miui/home/recents/LauncherAnimationRunner$AnimationResult;)V

    goto :goto_2

    .line 223
    :cond_3
    iget-object v3, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$1;->this$0:Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;

    iget-object v7, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$1;->val$iconLoc:Landroid/graphics/Rect;

    move-object v5, p1

    move-object v8, p2

    invoke-static/range {v3 .. v8}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->access$300(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;Landroid/view/View;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;ZLandroid/graphics/Rect;Lcom/miui/home/recents/LauncherAnimationRunner$AnimationResult;)V

    goto :goto_2

    :cond_4
    if-eqz p2, :cond_5

    .line 226
    invoke-virtual {p2}, Lcom/miui/home/recents/LauncherAnimationRunner$AnimationResult;->finish()V

    :cond_5
    :goto_2
    return-void
.end method
