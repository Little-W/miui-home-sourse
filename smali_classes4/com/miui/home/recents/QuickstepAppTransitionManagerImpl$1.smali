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

.field final synthetic val$launchPosition:I

.field final synthetic val$launcherRef:Ljava/lang/ref/WeakReference;

.field final synthetic val$view:Ljava/lang/ref/WeakReference;


# direct methods
.method constructor <init>(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;Landroid/os/Handler;ZLjava/lang/ref/WeakReference;Ljava/lang/ref/WeakReference;ILandroid/graphics/Rect;)V
    .locals 0

    .line 230
    iput-object p1, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$1;->this$0:Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;

    iput-object p4, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$1;->val$view:Ljava/lang/ref/WeakReference;

    iput-object p5, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$1;->val$launcherRef:Ljava/lang/ref/WeakReference;

    iput p6, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$1;->val$launchPosition:I

    iput-object p7, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$1;->val$iconLoc:Landroid/graphics/Rect;

    invoke-direct {p0, p2, p3}, Lcom/miui/home/recents/LauncherAnimationRunner;-><init>(Landroid/os/Handler;Z)V

    return-void
.end method


# virtual methods
.method public onCreateAnimation(I[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;Lcom/miui/home/recents/LauncherAnimationRunner$AnimationResult;)V
    .locals 12

    move-object v0, p0

    move-object v4, p2

    const-string v1, "QuickstepAppTransitionManagerImpl"

    const-string v2, "RemoteAnimationRunnerCompat:onCreateAnimation"

    .line 238
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 241
    iget-object v2, v0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$1;->this$0:Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;

    invoke-static {v2, p2}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->access$000(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)Z

    move-result v2

    .line 242
    iget-object v3, v0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$1;->this$0:Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;

    const/4 v5, 0x1

    invoke-static {v3, p2, v5}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->access$100(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;I)Z

    move-result v3

    const/4 v6, 0x0

    if-nez v3, :cond_1

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move v7, v6

    goto :goto_1

    :cond_1
    :goto_0
    move v7, v5

    .line 245
    :goto_1
    iget-object v3, v0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$1;->val$view:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 246
    iget-object v8, v0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$1;->val$launcherRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v8}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/miui/home/launcher/Launcher;

    if-eqz v8, :cond_2

    .line 248
    invoke-virtual {v8}, Lcom/miui/home/launcher/Launcher;->getHandler()Landroid/os/Handler;

    move-result-object v9

    iget-object v10, v0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$1;->this$0:Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;

    invoke-static {v10}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->access$200(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;)Ljava/lang/Runnable;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 250
    :cond_2
    invoke-static {v6}, Lcom/miui/home/launcher/Application;->updateClickAppWaitForCallbackValue(Z)V

    if-eqz v3, :cond_8

    if-eqz v8, :cond_3

    .line 253
    iget-object v9, v0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$1;->this$0:Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;

    invoke-static {v9, v8, v5}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->access$300(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;Lcom/miui/home/launcher/Launcher;Z)V

    .line 255
    :cond_3
    iget-object v8, v0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$1;->this$0:Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;

    invoke-virtual {v8, v3, p2}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->isLaunchingFromRecents(Landroid/view/View;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 257
    iget-object v2, v0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$1;->this$0:Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;

    const/4 v9, 0x0

    iget v10, v0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$1;->val$launchPosition:I

    const/4 v11, 0x0

    move-object v0, v2

    move-object v2, v3

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object/from16 v6, p4

    move-object/from16 v8, p5

    invoke-virtual/range {v0 .. v11}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->composeRecentsLaunchAnimator(Landroid/animation/AnimatorSet;Landroid/view/View;I[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;ZLcom/miui/home/recents/LauncherAnimationRunner$AnimationResult;IIZ)V

    goto :goto_3

    :cond_4
    if-eqz v2, :cond_7

    .line 262
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isPhone()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/Application;->isInFoldLargeScreen()Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_2

    :cond_5
    move v5, v6

    :cond_6
    :goto_2
    and-int v1, v7, v5

    move v7, v1

    .line 264
    :cond_7
    iget-object v1, v0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$1;->this$0:Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;

    iget-object v5, v0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$1;->val$iconLoc:Landroid/graphics/Rect;

    iget v6, v0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$1;->val$launchPosition:I

    move-object v0, v1

    move-object v1, v3

    move-object v2, p2

    move v3, v7

    move-object v4, v5

    move-object/from16 v5, p5

    invoke-static/range {v0 .. v6}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->access$400(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;Landroid/view/View;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;ZLandroid/graphics/Rect;Lcom/miui/home/recents/LauncherAnimationRunner$AnimationResult;I)V

    goto :goto_3

    :cond_8
    if-eqz p5, :cond_9

    .line 267
    invoke-virtual/range {p5 .. p5}, Lcom/miui/home/recents/LauncherAnimationRunner$AnimationResult;->finish()V

    .line 268
    invoke-static {}, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->getInstance()Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->executeFinishCallback()V

    :cond_9
    :goto_3
    return-void
.end method
