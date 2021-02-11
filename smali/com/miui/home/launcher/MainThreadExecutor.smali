.class public Lcom/miui/home/launcher/MainThreadExecutor;
.super Lcom/miui/home/launcher/util/LooperExecutor;
.source "MainThreadExecutor.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/util/LooperExecutor;-><init>(Landroid/os/Looper;)V

    return-void
.end method
