.class Lcom/xiaomi/dist/utils/Schedulers$1;
.super Ljava/lang/Object;
.source "Schedulers.java"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/dist/utils/Schedulers;->createThreadFactory(Ljava/lang/String;I)Ljava/util/concurrent/ThreadFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final mThreadId:Ljava/util/concurrent/atomic/AtomicInteger;

.field final synthetic val$priority:I

.field final synthetic val$tag:Ljava/lang/String;


# direct methods
.method constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 58
    iput p1, p0, Lcom/xiaomi/dist/utils/Schedulers$1;->val$priority:I

    iput-object p2, p0, Lcom/xiaomi/dist/utils/Schedulers$1;->val$tag:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Lcom/xiaomi/dist/utils/Schedulers$1;->mThreadId:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 3

    .line 63
    new-instance v0, Lcom/xiaomi/dist/utils/Schedulers$InnerThread;

    iget v1, p0, Lcom/xiaomi/dist/utils/Schedulers$1;->val$priority:I

    invoke-direct {v0, p1, v1}, Lcom/xiaomi/dist/utils/Schedulers$InnerThread;-><init>(Ljava/lang/Runnable;I)V

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    .line 64
    iget-object v1, p0, Lcom/xiaomi/dist/utils/Schedulers$1;->val$tag:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, p1, v2

    iget-object p0, p0, Lcom/xiaomi/dist/utils/Schedulers$1;->mThreadId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x1

    aput-object p0, p1, v1

    const-string p0, "dist-%s-%s"

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/xiaomi/dist/utils/Schedulers$InnerThread;->setName(Ljava/lang/String;)V

    return-object v0
.end method
