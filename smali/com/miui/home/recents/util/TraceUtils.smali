.class public Lcom/miui/home/recents/util/TraceUtils;
.super Ljava/lang/Object;
.source "TraceUtils.java"


# direct methods
.method public static beginSection(Ljava/lang/String;)V
    .locals 0

    .line 10
    invoke-static {p0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    return-void
.end method

.method public static endSection()V
    .locals 0

    .line 16
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method
