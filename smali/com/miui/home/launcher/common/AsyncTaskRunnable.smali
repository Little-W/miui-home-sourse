.class public abstract Lcom/miui/home/launcher/common/AsyncTaskRunnable;
.super Ljava/lang/Object;
.source "AsyncTaskRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# static fields
.field private static final sUIHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 11
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/miui/home/launcher/common/AsyncTaskRunnable;->sUIHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic lambda$run$0(Lcom/miui/home/launcher/common/AsyncTaskRunnable;Ljava/lang/Object;)V
    .locals 0

    .line 19
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/common/AsyncTaskRunnable;->onPostExecute(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected abstract doInBackground()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method protected abstract onPostExecute(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public run()V
    .locals 3

    .line 15
    invoke-virtual {p0}, Lcom/miui/home/launcher/common/AsyncTaskRunnable;->doInBackground()Ljava/lang/Object;

    move-result-object v0

    .line 16
    sget-object v1, Lcom/miui/home/launcher/common/AsyncTaskRunnable;->sUIHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 17
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/common/AsyncTaskRunnable;->onPostExecute(Ljava/lang/Object;)V

    goto :goto_0

    .line 19
    :cond_0
    sget-object v1, Lcom/miui/home/launcher/common/AsyncTaskRunnable;->sUIHandler:Landroid/os/Handler;

    new-instance v2, Lcom/miui/home/launcher/common/-$$Lambda$AsyncTaskRunnable$mdM-BtTKtxGqNbBE00SCkXwSMuc;

    invoke-direct {v2, p0, v0}, Lcom/miui/home/launcher/common/-$$Lambda$AsyncTaskRunnable$mdM-BtTKtxGqNbBE00SCkXwSMuc;-><init>(Lcom/miui/home/launcher/common/AsyncTaskRunnable;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method
