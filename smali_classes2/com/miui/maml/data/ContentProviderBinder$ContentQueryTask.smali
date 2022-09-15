.class Lcom/miui/maml/data/ContentProviderBinder$ContentQueryTask;
.super Landroid/os/AsyncTask;
.source "ContentProviderBinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/data/ContentProviderBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ContentQueryTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private final mBinder:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/maml/data/ContentProviderBinder;",
            ">;"
        }
    .end annotation
.end field

.field private final mResolver:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/ContentResolver;",
            ">;"
        }
    .end annotation
.end field

.field private final mWorkArgs:Lcom/miui/maml/data/AsyncQueryHandler$WorkerArgs;


# direct methods
.method public constructor <init>(Lcom/miui/maml/data/ContentProviderBinder;Landroid/content/ContentResolver;Lcom/miui/maml/data/AsyncQueryHandler$WorkerArgs;)V
    .locals 1

    .line 517
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 518
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/maml/data/ContentProviderBinder$ContentQueryTask;->mResolver:Ljava/lang/ref/WeakReference;

    .line 519
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/miui/maml/data/ContentProviderBinder$ContentQueryTask;->mBinder:Ljava/lang/ref/WeakReference;

    .line 520
    iput-object p3, p0, Lcom/miui/maml/data/ContentProviderBinder$ContentQueryTask;->mWorkArgs:Lcom/miui/maml/data/AsyncQueryHandler$WorkerArgs;

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 6

    .line 525
    iget-object p1, p0, Lcom/miui/maml/data/ContentProviderBinder$ContentQueryTask;->mResolver:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ContentResolver;

    .line 526
    iget-object v0, p0, Lcom/miui/maml/data/ContentProviderBinder$ContentQueryTask;->mBinder:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/maml/data/ContentProviderBinder;

    if-eqz p1, :cond_1

    if-eqz v0, :cond_1

    .line 527
    iget-object v1, p0, Lcom/miui/maml/data/ContentProviderBinder$ContentQueryTask;->mWorkArgs:Lcom/miui/maml/data/AsyncQueryHandler$WorkerArgs;

    if-nez v1, :cond_0

    goto :goto_1

    .line 532
    :cond_0
    new-instance v2, Lcom/miui/maml/data/ContentProviderBinder$WorkerTask;

    invoke-direct {v2, v0, p1, v1}, Lcom/miui/maml/data/ContentProviderBinder$WorkerTask;-><init>(Lcom/miui/maml/data/ContentProviderBinder;Landroid/content/ContentResolver;Lcom/miui/maml/data/AsyncQueryHandler$WorkerArgs;)V

    .line 533
    new-instance p1, Ljava/util/concurrent/FutureTask;

    invoke-direct {p1, v2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 534
    invoke-static {}, Lcom/miui/maml/util/ExecutorHelper;->getLocalTaskExecutor()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    const-wide/16 v1, 0x4e20

    const/4 v3, 0x1

    .line 536
    :try_start_0
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v1, v2, v4}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "ContentProviderBinder"

    .line 542
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "WorkerTask execute error, maybe timeout, uri = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/miui/maml/data/ContentProviderBinder$ContentQueryTask;->mWorkArgs:Lcom/miui/maml/data/AsyncQueryHandler$WorkerArgs;

    iget-object v5, v5, Lcom/miui/maml/data/AsyncQueryHandler$WorkerArgs;->uri:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v1}, Lcom/miui/maml/util/MamlLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 543
    invoke-virtual {p1, v3}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    goto :goto_0

    :catch_1
    const-string p1, "ContentProviderBinder"

    const-string v1, "WorkerTask interrupted"

    .line 540
    invoke-static {p1, v1}, Lcom/miui/maml/util/MamlLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_2
    move-exception p1

    const-string v1, "ContentProviderBinder"

    const-string v2, "WorkerTask execute exception, maybe timeout"

    .line 538
    invoke-static {v1, v2, p1}, Lcom/miui/maml/util/MamlLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 545
    :goto_0
    invoke-static {v0}, Lcom/miui/maml/data/ContentProviderBinder;->access$200(Lcom/miui/maml/data/ContentProviderBinder;)V

    .line 546
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_1
    const-string p1, "ContentProviderBinder"

    const-string v0, "ContentQueryTask: resolver or binder is null"

    .line 528
    invoke-static {p1, v0}, Lcom/miui/maml/util/MamlLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 529
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 512
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/miui/maml/data/ContentProviderBinder$ContentQueryTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 1

    .line 551
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 552
    iget-object p1, p0, Lcom/miui/maml/data/ContentProviderBinder$ContentQueryTask;->mBinder:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/maml/data/ContentProviderBinder;

    if-nez p1, :cond_0

    const-string p1, "ContentProviderBinder"

    const-string v0, "ContentQueryTask onPost: binder is null"

    .line 554
    invoke-static {p1, v0}, Lcom/miui/maml/util/MamlLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 557
    :cond_0
    invoke-static {p1}, Lcom/miui/maml/data/ContentProviderBinder;->access$200(Lcom/miui/maml/data/ContentProviderBinder;)V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 512
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/miui/maml/data/ContentProviderBinder$ContentQueryTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
