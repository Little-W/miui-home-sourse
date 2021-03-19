.class public Lcom/android/systemui/shared/recents/system/TaskStackChangeListener;
.super Ljava/lang/Object;
.source "TaskStackChangeListener.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected final checkCurrentUserId(Landroid/content/Context;Z)Z
    .locals 1

    .line 33
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p2

    const-string v0, "activity"

    .line 34
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move p1, v0

    goto :goto_0

    .line 36
    :cond_0
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result p1

    :goto_0
    if-eq p2, p1, :cond_1

    return v0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public onActivityDismissingDockedStack()V
    .locals 0

    return-void
.end method

.method public onActivityForcedResizable(Ljava/lang/String;II)V
    .locals 0

    return-void
.end method

.method public onActivityLaunchOnSecondaryDisplayFailed()V
    .locals 0

    return-void
.end method

.method public onActivityPinned(Ljava/lang/String;II)V
    .locals 0

    return-void
.end method

.method public onActivityUnpinned()V
    .locals 0

    return-void
.end method

.method public onPinnedActivityRestartAttempt(Z)V
    .locals 0

    return-void
.end method

.method public onPinnedStackAnimationEnded()V
    .locals 0

    return-void
.end method

.method public onPinnedStackAnimationStarted()V
    .locals 0

    return-void
.end method

.method public onTaskProfileLocked(II)V
    .locals 0

    return-void
.end method

.method public onTaskSnapshotChanged(ILcom/android/systemui/shared/recents/model/ThumbnailData;)V
    .locals 0

    return-void
.end method

.method public onTaskStackChanged()V
    .locals 0

    return-void
.end method

.method public onTaskStackChangedBackground()V
    .locals 0

    return-void
.end method
