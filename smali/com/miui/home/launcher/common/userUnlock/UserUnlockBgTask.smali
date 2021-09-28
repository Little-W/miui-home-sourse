.class public Lcom/miui/home/launcher/common/userUnlock/UserUnlockBgTask;
.super Ljava/lang/Object;
.source "UserUnlockBgTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mBgSupplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "TR;>;"
        }
    .end annotation
.end field

.field private mFgConsumer:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/function/Supplier;Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "TR;>;",
            "Ljava/util/function/Consumer<",
            "TR;>;)V"
        }
    .end annotation

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/miui/home/launcher/common/userUnlock/UserUnlockBgTask;->mBgSupplier:Ljava/util/function/Supplier;

    .line 16
    iput-object p2, p0, Lcom/miui/home/launcher/common/userUnlock/UserUnlockBgTask;->mFgConsumer:Ljava/util/function/Consumer;

    return-void
.end method

.method public static synthetic lambda$run$0(Lcom/miui/home/launcher/common/userUnlock/UserUnlockBgTask;Ljava/lang/Void;)Ljava/lang/Object;
    .locals 0

    .line 22
    iget-object p1, p0, Lcom/miui/home/launcher/common/userUnlock/UserUnlockBgTask;->mBgSupplier:Ljava/util/function/Supplier;

    if-eqz p1, :cond_0

    .line 23
    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 20
    new-instance v0, Lcom/miui/home/launcher/common/userUnlock/-$$Lambda$UserUnlockBgTask$a68H8Xv85E7u3Z9Igwjf2z7QixQ;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/common/userUnlock/-$$Lambda$UserUnlockBgTask$a68H8Xv85E7u3Z9Igwjf2z7QixQ;-><init>(Lcom/miui/home/launcher/common/userUnlock/UserUnlockBgTask;)V

    iget-object v1, p0, Lcom/miui/home/launcher/common/userUnlock/UserUnlockBgTask;->mFgConsumer:Ljava/util/function/Consumer;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->execParallel(Ljava/util/function/Function;Ljava/util/function/Consumer;Ljava/lang/Object;)V

    return-void
.end method
