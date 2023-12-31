.class public Lcom/miui/home/recents/util/StateBroadcastUtils;
.super Ljava/lang/Object;
.source "StateBroadcastUtils.java"


# direct methods
.method public static sendStateBroadcast(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, ""

    .line 30
    invoke-static {p0, p1, p2, v0}, Lcom/miui/home/recents/util/StateBroadcastUtils;->sendStateBroadcast(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static sendStateBroadcast(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 34
    new-instance v0, Lcom/miui/home/recents/util/StateBroadcastUtils$1;

    invoke-direct {v0, p1, p2, p3, p0}, Lcom/miui/home/recents/util/StateBroadcastUtils$1;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    invoke-static {v0}, Lcom/miui/home/launcher/common/BackgroundThread;->post(Ljava/lang/Runnable;)V

    return-void
.end method
