.class public Lcom/android/systemui/shared/recents/system/TaskStackChangeListener;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected final checkCurrentUserId(Landroid/content/Context;Z)Z
    .locals 0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p0

    const-string p2, "activity"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager;

    const/4 p2, 0x0

    if-nez p1, :cond_0

    move p1, p2

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result p1

    :goto_0
    if-eq p0, p1, :cond_1

    return p2

    :cond_1
    const/4 p0, 0x1

    return p0
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

.method public onTaskDescriptionChanged(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 0

    return-void
.end method

.method public onTaskDisplayChanged()V
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
