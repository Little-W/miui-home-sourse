.class Lcom/miui/home/recents/ThreeGestureSplitController$1;
.super Lcom/miui/home/recents/LauncherAnimationRunner;
.source "ThreeGestureSplitController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/recents/ThreeGestureSplitController;->getActivityLaunchOptionsFromSplitSelectToFullScreen()Landroid/app/ActivityOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/recents/ThreeGestureSplitController;


# direct methods
.method constructor <init>(Lcom/miui/home/recents/ThreeGestureSplitController;Landroid/os/Handler;Z)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/miui/home/recents/ThreeGestureSplitController$1;->this$0:Lcom/miui/home/recents/ThreeGestureSplitController;

    invoke-direct {p0, p2, p3}, Lcom/miui/home/recents/LauncherAnimationRunner;-><init>(Landroid/os/Handler;Z)V

    return-void
.end method


# virtual methods
.method public onCreateAnimation(I[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;Lcom/miui/home/recents/LauncherAnimationRunner$AnimationResult;)V
    .locals 0

    .line 123
    iget-object p0, p0, Lcom/miui/home/recents/ThreeGestureSplitController$1;->this$0:Lcom/miui/home/recents/ThreeGestureSplitController;

    invoke-virtual {p0, p2, p5}, Lcom/miui/home/recents/ThreeGestureSplitController;->composeSplitSelectToFullScreenAnimator([Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;Lcom/miui/home/recents/LauncherAnimationRunner$AnimationResult;)V

    return-void
.end method
