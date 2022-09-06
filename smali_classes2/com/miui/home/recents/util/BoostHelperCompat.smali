.class public Lcom/miui/home/recents/util/BoostHelperCompat;
.super Ljava/lang/Object;
.source "BoostHelperCompat.java"


# direct methods
.method public static boostGesture(Landroid/view/View;)V
    .locals 7

    .line 19
    invoke-static {}, Lcom/miui/home/recents/TouchInteractionService;->isUseGesturePriorityThread()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 20
    invoke-static {}, Lcom/miui/launcher/utils/BoostHelper;->getInstance()Lcom/miui/launcher/utils/BoostHelper;

    move-result-object v1

    const-wide/16 v2, 0x7d0

    sget v5, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;->sHwuiTaskTid0:I

    sget v6, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;->sHwuiTaskTid1:I

    move-object v4, p0

    invoke-virtual/range {v1 .. v6}, Lcom/miui/launcher/utils/BoostHelper;->boostGesture(JLandroid/view/View;II)V

    :cond_0
    return-void
.end method

.method public static boostGesture(Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    .line 12
    invoke-static {p0}, Lcom/miui/home/recents/util/BoostHelperCompat;->getLauncherRootView(Lcom/miui/home/launcher/Launcher;)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 14
    invoke-static {p0}, Lcom/miui/home/recents/util/BoostHelperCompat;->boostGesture(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public static boostMainThreadAndRenderThread(Landroid/view/View;)V
    .locals 3

    .line 33
    invoke-static {}, Lcom/miui/home/recents/TouchInteractionService;->isUseGesturePriorityThread()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 34
    invoke-static {}, Lcom/miui/launcher/utils/BoostHelper;->getInstance()Lcom/miui/launcher/utils/BoostHelper;

    move-result-object v0

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, v1, v2, p0}, Lcom/miui/launcher/utils/BoostHelper;->boostMainThreadAndRenderThread(JLandroid/view/View;)V

    :cond_0
    return-void
.end method

.method public static boostMainThreadAndRenderThread(Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    .line 26
    invoke-static {p0}, Lcom/miui/home/recents/util/BoostHelperCompat;->getLauncherRootView(Lcom/miui/home/launcher/Launcher;)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 28
    invoke-static {p0}, Lcom/miui/home/recents/util/BoostHelperCompat;->boostMainThreadAndRenderThread(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public static getLauncherRootView(Lcom/miui/home/launcher/Launcher;)Landroid/view/View;
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 42
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getRootView()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method
