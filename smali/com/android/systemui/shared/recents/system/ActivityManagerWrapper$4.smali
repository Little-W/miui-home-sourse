.class Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper$4;
.super Lcom/android/systemui/shared/recents/IRecentsAnimationRunnerAtLeastS$Stub;
.source "ActivityManagerWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->initIRecentsAnimationRunnerAtLeastS(Lcom/android/systemui/shared/recents/system/RecentsAnimationListener;)Lcom/android/systemui/shared/recents/IRecentsAnimationRunnerAtLeastS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;

.field final synthetic val$listener:Lcom/android/systemui/shared/recents/system/RecentsAnimationListener;


# direct methods
.method constructor <init>(Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;Lcom/android/systemui/shared/recents/system/RecentsAnimationListener;)V
    .locals 0

    .line 916
    iput-object p1, p0, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper$4;->this$0:Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;

    iput-object p2, p0, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper$4;->val$listener:Lcom/android/systemui/shared/recents/system/RecentsAnimationListener;

    invoke-direct {p0}, Lcom/android/systemui/shared/recents/IRecentsAnimationRunnerAtLeastS$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCanceled(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 919
    iget-object p0, p0, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper$4;->val$listener:Lcom/android/systemui/shared/recents/system/RecentsAnimationListener;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/android/systemui/shared/recents/system/RecentsAnimationListener;->onAnimationCanceled(Z)V

    const-string p0, "ActivityManagerWrapper"

    const-string p1, "initIRecentsAnimationRunnerAtLeastS: onAnimationCanceled 1"

    .line 920
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onAnimationCanceled([I[Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 926
    iget-object p0, p0, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper$4;->val$listener:Lcom/android/systemui/shared/recents/system/RecentsAnimationListener;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/android/systemui/shared/recents/system/RecentsAnimationListener;->onAnimationCanceled(Z)V

    const-string p0, "ActivityManagerWrapper"

    const-string p1, "initIRecentsAnimationRunnerAtLeastS: onAnimationCanceled 2"

    .line 927
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onAnimationStart(Landroid/view/IRecentsAnimationController;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string p3, "ActivityManagerWrapper"

    const-string v0, "IRecentsAnimationRunnerAtLeastS onAnimationStart"

    .line 934
    invoke-static {p3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "onRecentsAnimationStart"

    .line 935
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 936
    array-length v0, p2

    new-array v0, v0, [Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    const/4 v1, 0x0

    .line 938
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_0

    .line 939
    new-instance v2, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    aget-object v3, p2, v1

    invoke-direct {v2, v3}, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;-><init>(Landroid/view/RemoteAnimationTarget;)V

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 942
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper$4;->val$listener:Lcom/android/systemui/shared/recents/system/RecentsAnimationListener;

    new-instance p2, Lcom/android/systemui/shared/recents/system/RecentsAnimationControllerCompat;

    invoke-direct {p2, p1}, Lcom/android/systemui/shared/recents/system/RecentsAnimationControllerCompat;-><init>(Landroid/view/IRecentsAnimationController;)V

    invoke-interface {p0, p2, v0, p4, p5}, Lcom/android/systemui/shared/recents/system/RecentsAnimationListener;->onAnimationStart(Lcom/android/systemui/shared/recents/system/RecentsAnimationControllerCompat;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 943
    invoke-static {}, Landroid/os/Trace;->endSection()V

    const-string p0, "initIRecentsAnimationRunnerAtLeastS: onAnimationStart"

    .line 944
    invoke-static {p3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onTaskAppeared(Landroid/view/RemoteAnimationTarget;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 949
    iget-object p0, p0, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper$4;->val$listener:Lcom/android/systemui/shared/recents/system/RecentsAnimationListener;

    new-instance v0, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    invoke-direct {v0, p1}, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;-><init>(Landroid/view/RemoteAnimationTarget;)V

    invoke-interface {p0, v0}, Lcom/android/systemui/shared/recents/system/RecentsAnimationListener;->onTaskAppeared(Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)V

    const-string p0, "ActivityManagerWrapper"

    const-string p1, "initIRecentsAnimationRunnerAtLeastS: onTaskAppeared 1"

    .line 950
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onTasksAppeared([Landroid/view/RemoteAnimationTarget;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 955
    invoke-static {p1}, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->wrap([Landroid/view/RemoteAnimationTarget;)[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    move-result-object p1

    .line 956
    iget-object p0, p0, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper$4;->val$listener:Lcom/android/systemui/shared/recents/system/RecentsAnimationListener;

    invoke-interface {p0, p1}, Lcom/android/systemui/shared/recents/system/RecentsAnimationListener;->onTasksAppeared([Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)V

    const-string p0, "ActivityManagerWrapper"

    const-string p1, "initIRecentsAnimationRunnerAtLeastS: onTaskAppeared 2"

    .line 957
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
