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
    .locals 12

    .line 208
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 210
    iget-object v0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$1;->this$0:Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;

    invoke-static {v0, p1}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->access$000(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)Z

    move-result v0

    .line 211
    iget-object v2, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$1;->this$0:Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;

    const/4 v3, 0x1

    invoke-static {v2, p1, v3}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->access$100(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;I)Z

    move-result v2

    const/4 v4, 0x0

    if-nez v2, :cond_1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v5, v4

    goto :goto_1

    :cond_1
    :goto_0
    move v5, v3

    .line 214
    :goto_1
    iget-object v2, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$1;->val$view:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/view/View;

    .line 215
    iget-object v2, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$1;->val$launcherRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/Launcher;

    if-eqz v7, :cond_7

    if-eqz v2, :cond_2

    .line 218
    iget-object v6, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$1;->this$0:Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;

    invoke-static {v6, v2}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->access$200(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;Lcom/miui/home/launcher/Launcher;)V

    .line 219
    invoke-virtual {v2, v3}, Lcom/miui/home/launcher/Launcher;->animateWallpaperZoom(Z)V

    .line 221
    :cond_2
    iget-object v2, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$1;->this$0:Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;

    invoke-virtual {v2, v7, p1}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->isLaunchingFromRecents(Landroid/view/View;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 222
    iget-object v0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$1;->this$0:Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;

    move-object v2, v7

    move-object v3, p1

    move v4, v5

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->composeRecentsLaunchAnimator(Landroid/animation/AnimatorSet;Landroid/view/View;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;ZLcom/miui/home/recents/LauncherAnimationRunner$AnimationResult;)V

    goto :goto_4

    :cond_3
    if-eqz v0, :cond_6

    .line 226
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isPhone()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$1;->this$0:Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;

    iget-object v0, v0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/home/launcher/DeviceConfig;->isLargeScreen(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    move v3, v4

    :cond_5
    :goto_2
    and-int/2addr v5, v3

    move v9, v5

    goto :goto_3

    :cond_6
    move v9, v5

    .line 228
    :goto_3
    iget-object v6, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$1;->this$0:Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;

    iget-object v10, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$1;->val$iconLoc:Landroid/graphics/Rect;

    move-object v8, p1

    move-object v11, p2

    invoke-static/range {v6 .. v11}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->access$300(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;Landroid/view/View;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;ZLandroid/graphics/Rect;Lcom/miui/home/recents/LauncherAnimationRunner$AnimationResult;)V

    goto :goto_4

    :cond_7
    if-eqz p2, :cond_8

    .line 231
    invoke-virtual {p2}, Lcom/miui/home/recents/LauncherAnimationRunner$AnimationResult;->finish()V

    :cond_8
    :goto_4
    return-void
.end method
