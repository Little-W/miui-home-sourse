.class public Lcom/miui/home/recents/util/TraceUtils;
.super Ljava/lang/Object;
.source "TraceUtils.java"


# direct methods
.method public static beginSection(Ljava/lang/String;)V
    .locals 1

    .line 13
    new-instance v0, Lcom/miui/home/recents/util/-$$Lambda$TraceUtils$UQ_Ts7sUR428mfc8COaYRGjL_1g;

    invoke-direct {v0, p0}, Lcom/miui/home/recents/util/-$$Lambda$TraceUtils$UQ_Ts7sUR428mfc8COaYRGjL_1g;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/miui/home/launcher/common/BackgroundThread;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static endSection()V
    .locals 1

    .line 19
    sget-object v0, Lcom/miui/home/recents/util/-$$Lambda$TraceUtils$dWas3sN2o9uMvX5QOXlq_HRgiik;->INSTANCE:Lcom/miui/home/recents/util/-$$Lambda$TraceUtils$dWas3sN2o9uMvX5QOXlq_HRgiik;

    invoke-static {v0}, Lcom/miui/home/launcher/common/BackgroundThread;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic lambda$beginSection$0(Ljava/lang/String;)V
    .locals 0

    .line 13
    invoke-static {p0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$endSection$1()V
    .locals 0

    .line 19
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method
