.class public Lcom/miui/home/launcher/common/MemoryUtils;
.super Ljava/lang/Object;
.source "MemoryUtils.java"


# static fields
.field private static mTrimMemoryRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    new-instance v0, Lcom/miui/home/launcher/common/MemoryUtils$1;

    invoke-direct {v0}, Lcom/miui/home/launcher/common/MemoryUtils$1;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/common/MemoryUtils;->mTrimMemoryRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public static removeTrimMemoryInSubThreadCallbacks()V
    .locals 1

    .line 37
    sget-object v0, Lcom/miui/home/launcher/common/MemoryUtils;->mTrimMemoryRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/miui/home/launcher/common/BackgroundThread;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static trimMemoryInSubThreadDelayed(J)V
    .locals 1

    .line 32
    invoke-static {}, Lcom/miui/home/launcher/common/MemoryUtils;->removeTrimMemoryInSubThreadCallbacks()V

    .line 33
    sget-object v0, Lcom/miui/home/launcher/common/MemoryUtils;->mTrimMemoryRunnable:Ljava/lang/Runnable;

    invoke-static {v0, p0, p1}, Lcom/miui/home/launcher/common/BackgroundThread;->postDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method
