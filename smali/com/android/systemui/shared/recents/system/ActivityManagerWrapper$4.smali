.class Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper$4;
.super Landroid/view/IRecentsAnimationRunner$Stub;
.source "ActivityManagerWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->startRecentsActivityBelowAndroidS(Landroid/content/Intent;Lcom/android/systemui/shared/recents/system/AssistDataReceiver;Lcom/android/systemui/shared/recents/system/RecentsAnimationListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;

.field final synthetic val$animationHandler:Lcom/android/systemui/shared/recents/system/RecentsAnimationListener;


# direct methods
.method constructor <init>(Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;Lcom/android/systemui/shared/recents/system/RecentsAnimationListener;)V
    .locals 0

    .line 389
    iput-object p1, p0, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper$4;->this$0:Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;

    iput-object p2, p0, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper$4;->val$animationHandler:Lcom/android/systemui/shared/recents/system/RecentsAnimationListener;

    invoke-direct {p0}, Landroid/view/IRecentsAnimationRunner$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCanceled(Landroid/app/ActivityManager$TaskSnapshot;)V
    .locals 0

    return-void
.end method

.method public onAnimationCanceled(Z)V
    .locals 1

    .line 422
    iget-object v0, p0, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper$4;->val$animationHandler:Lcom/android/systemui/shared/recents/system/RecentsAnimationListener;

    invoke-interface {v0, p1}, Lcom/android/systemui/shared/recents/system/RecentsAnimationListener;->onAnimationCanceled(Z)V

    return-void
.end method

.method public onAnimationStart(Landroid/view/IRecentsAnimationController;[Landroid/view/RemoteAnimationTarget;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 1

    .line 394
    new-instance v0, Lcom/android/systemui/shared/recents/system/RecentsAnimationControllerCompat;

    invoke-direct {v0, p1}, Lcom/android/systemui/shared/recents/system/RecentsAnimationControllerCompat;-><init>(Landroid/view/IRecentsAnimationController;)V

    .line 397
    invoke-static {p2}, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->wrap([Landroid/view/RemoteAnimationTarget;)[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    move-result-object p1

    .line 398
    iget-object p2, p0, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper$4;->val$animationHandler:Lcom/android/systemui/shared/recents/system/RecentsAnimationListener;

    invoke-interface {p2, v0, p1, p3, p4}, Lcom/android/systemui/shared/recents/system/RecentsAnimationListener;->onAnimationStart(Lcom/android/systemui/shared/recents/system/RecentsAnimationControllerCompat;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    return-void
.end method

.method public onAnimationStart(Landroid/view/IRecentsAnimationController;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 0

    .line 407
    invoke-virtual {p0, p1, p2, p4, p5}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper$4;->onAnimationStart(Landroid/view/IRecentsAnimationController;[Landroid/view/RemoteAnimationTarget;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    return-void
.end method

.method public onTaskAppeared(Landroid/view/RemoteAnimationTarget;)V
    .locals 2

    .line 417
    iget-object v0, p0, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper$4;->val$animationHandler:Lcom/android/systemui/shared/recents/system/RecentsAnimationListener;

    new-instance v1, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    invoke-direct {v1, p1}, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;-><init>(Landroid/view/RemoteAnimationTarget;)V

    invoke-interface {v0, v1}, Lcom/android/systemui/shared/recents/system/RecentsAnimationListener;->onTaskAppeared(Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)V

    return-void
.end method
