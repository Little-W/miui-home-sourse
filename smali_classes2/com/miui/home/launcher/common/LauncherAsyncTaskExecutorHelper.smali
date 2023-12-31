.class public Lcom/miui/home/launcher/common/LauncherAsyncTaskExecutorHelper;
.super Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;
.source "LauncherAsyncTaskExecutorHelper.java"


# direct methods
.method public static waitForUnlockAndRunOnNonUiThread(Ljava/lang/Runnable;Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/InterruptedException;",
            ">;)V"
        }
    .end annotation

    .line 22
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/miui/home/launcher/common/LauncherAsyncTaskExecutorHelper;->waitForUnlockAndRunOnNonUiThread(Ljava/lang/Runnable;Ljava/util/function/Consumer;Landroid/content/Context;)V

    return-void
.end method

.method public static waitForUnlockAndRunOnUiThread(Ljava/lang/Runnable;Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/InterruptedException;",
            ">;)V"
        }
    .end annotation

    .line 13
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/miui/home/launcher/common/LauncherAsyncTaskExecutorHelper;->waitForUnlockAndRunOnUiThread(Ljava/lang/Runnable;Ljava/util/function/Consumer;Landroid/content/Context;)V

    return-void
.end method

.method public static waitForUserUnlockAndRunOnNonUiThread(Ljava/lang/Runnable;Ljava/util/function/Consumer;Landroid/os/UserHandle;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/InterruptedException;",
            ">;",
            "Landroid/os/UserHandle;",
            ")V"
        }
    .end annotation

    .line 18
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/miui/home/launcher/common/LauncherAsyncTaskExecutorHelper;->waitForUserUnlockAndRunOnNonUiThread(Ljava/lang/Runnable;Ljava/util/function/Consumer;Landroid/os/UserHandle;Landroid/content/Context;)V

    return-void
.end method
