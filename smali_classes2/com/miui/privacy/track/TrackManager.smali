.class public Lcom/miui/privacy/track/TrackManager;
.super Ljava/lang/Object;
.source "TrackManager.java"


# direct methods
.method public static trackGetappsClick(Ljava/lang/String;)V
    .locals 1

    const-string v0, "com.xiaomi.mipicks"

    .line 14
    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 15
    invoke-static {}, Lcom/miui/privacy/track/SensorsAnalyticsCollector;->trackGetappsClick()V

    :cond_0
    return-void
.end method

.method public static trackPlayStoreClick(Ljava/lang/String;)V
    .locals 1

    const-string v0, "com.android.vending"

    .line 8
    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 9
    invoke-static {}, Lcom/miui/privacy/track/SensorsAnalyticsCollector;->trackPlayStoreClick()V

    :cond_0
    return-void
.end method
