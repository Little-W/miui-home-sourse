.class Lcom/xiaomi/dist/utils/ExecutorHelper$TimeoutThreadPoolExecutor$WorkerInfo;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/dist/utils/ExecutorHelper$TimeoutThreadPoolExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WorkerInfo"
.end annotation


# instance fields
.field final mTask:Ljava/lang/Runnable;

.field final mThread:Ljava/lang/Thread;

.field final mTid:I


# direct methods
.method public constructor <init>(Ljava/lang/Thread;Ljava/lang/Runnable;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/dist/utils/ExecutorHelper$TimeoutThreadPoolExecutor$WorkerInfo;->mThread:Ljava/lang/Thread;

    iput-object p2, p0, Lcom/xiaomi/dist/utils/ExecutorHelper$TimeoutThreadPoolExecutor$WorkerInfo;->mTask:Ljava/lang/Runnable;

    iput p3, p0, Lcom/xiaomi/dist/utils/ExecutorHelper$TimeoutThreadPoolExecutor$WorkerInfo;->mTid:I

    return-void
.end method
