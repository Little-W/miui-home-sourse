.class Lcom/xiaomi/dist/utils/Schedulers$InnerThread;
.super Ljava/lang/Thread;
.source "Schedulers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/dist/utils/Schedulers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InnerThread"
.end annotation


# instance fields
.field private final mPriority:I


# direct methods
.method constructor <init>(Ljava/lang/Runnable;I)V
    .locals 0

    .line 222
    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 223
    iput p2, p0, Lcom/xiaomi/dist/utils/Schedulers$InnerThread;->mPriority:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 228
    iget v0, p0, Lcom/xiaomi/dist/utils/Schedulers$InnerThread;->mPriority:I

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 229
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    return-void
.end method
