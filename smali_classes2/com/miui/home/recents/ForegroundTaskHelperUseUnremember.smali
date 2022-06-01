.class public Lcom/miui/home/recents/ForegroundTaskHelperUseUnremember;
.super Lcom/miui/home/recents/ForegroundTaskHelper;
.source "ForegroundTaskHelperUseUnremember.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/miui/home/recents/ForegroundTaskHelper;-><init>()V

    return-void
.end method


# virtual methods
.method public clearForegroundTasks()V
    .locals 0

    return-void
.end method

.method public clearFullScreenTask()V
    .locals 0

    return-void
.end method

.method public getForegroundSmallWindows()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;",
            ">;"
        }
    .end annotation

    .line 26
    new-instance v0, Landroidx/collection/ArraySet;

    invoke-direct {v0}, Landroidx/collection/ArraySet;-><init>()V

    return-object v0
.end method

.method public getFullScreenTask()Landroid/app/ActivityManager$RunningTaskInfo;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public removeForegroundSmallWindow(Lcom/android/systemui/shared/recents/model/Task;)V
    .locals 0

    return-void
.end method

.method public saveForegroundSmallWinowsAndFullScreen()V
    .locals 0

    return-void
.end method

.method public setForegroundSmallWindows(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public startForegroundFullScreenActivity(Landroid/app/ActivityOptions;)V
    .locals 0

    return-void
.end method

.method public startForegroundSmallWindows()V
    .locals 0

    return-void
.end method
