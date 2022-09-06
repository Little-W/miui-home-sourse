.class public Lcom/miui/home/recents/util/RemovingSmallWindowFromRecents;
.super Ljava/lang/Object;
.source "RemovingSmallWindowFromRecents.java"


# static fields
.field private static sShouldToastBecauseSmallWindowInRecentsRemoved:Z


# direct methods
.method public static doToast(Landroid/content/Context;)V
    .locals 2

    const v0, 0x7f1104c8

    const/4 v1, 0x1

    .line 28
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    const-string v0, "should_toast_because_small_window_in_recents_removed"

    const/4 v1, 0x0

    .line 29
    invoke-static {p0, v0, v1}, Lcom/miui/home/launcher/common/PreferenceUtils;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 30
    sput-boolean v1, Lcom/miui/home/recents/util/RemovingSmallWindowFromRecents;->sShouldToastBecauseSmallWindowInRecentsRemoved:Z

    return-void
.end method

.method public static initShouldToast(Landroid/content/Context;)V
    .locals 2

    const-string v0, "should_toast_because_small_window_in_recents_removed"

    const/4 v1, 0x1

    .line 16
    invoke-static {p0, v0, v1}, Lcom/miui/home/launcher/common/PreferenceUtils;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public static shouldToast()Z
    .locals 1

    .line 24
    sget-boolean v0, Lcom/miui/home/recents/util/RemovingSmallWindowFromRecents;->sShouldToastBecauseSmallWindowInRecentsRemoved:Z

    return v0
.end method

.method public static updateShouldToast(Landroid/content/Context;)V
    .locals 2

    const-string v0, "should_toast_because_small_window_in_recents_removed"

    const/4 v1, 0x0

    .line 20
    invoke-static {p0, v0, v1}, Lcom/miui/home/launcher/common/PreferenceUtils;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    sput-boolean p0, Lcom/miui/home/recents/util/RemovingSmallWindowFromRecents;->sShouldToastBecauseSmallWindowInRecentsRemoved:Z

    return-void
.end method
