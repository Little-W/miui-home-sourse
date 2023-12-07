.class Lmiuix/pickerwidget/internal/util/async/WorkerThreads$ThreadWrapper;
.super Ljava/lang/Object;
.source "WorkerThreads.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/pickerwidget/internal/util/async/WorkerThreads;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ThreadWrapper"
.end annotation


# instance fields
.field refCount:I

.field final thread:Landroid/os/HandlerThread;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 21
    iput v0, p0, Lmiuix/pickerwidget/internal/util/async/WorkerThreads$ThreadWrapper;->refCount:I

    .line 24
    new-instance v0, Landroid/os/HandlerThread;

    invoke-direct {v0, p1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lmiuix/pickerwidget/internal/util/async/WorkerThreads$ThreadWrapper;->thread:Landroid/os/HandlerThread;

    .line 25
    iget-object p0, p0, Lmiuix/pickerwidget/internal/util/async/WorkerThreads$ThreadWrapper;->thread:Landroid/os/HandlerThread;

    invoke-virtual {p0}, Landroid/os/HandlerThread;->start()V

    return-void
.end method
