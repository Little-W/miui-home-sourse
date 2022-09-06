.class Lcom/miui/maml/data/ContentProviderBinder$WorkerTask;
.super Ljava/lang/Object;
.source "ContentProviderBinder.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/data/ContentProviderBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WorkerTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
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

    .line 470
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 471
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/maml/data/ContentProviderBinder$WorkerTask;->mResolver:Ljava/lang/ref/WeakReference;

    .line 472
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/miui/maml/data/ContentProviderBinder$WorkerTask;->mBinder:Ljava/lang/ref/WeakReference;

    .line 473
    iput-object p3, p0, Lcom/miui/maml/data/ContentProviderBinder$WorkerTask;->mWorkArgs:Lcom/miui/maml/data/AsyncQueryHandler$WorkerArgs;

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Boolean;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 478
    iget-object v0, p0, Lcom/miui/maml/data/ContentProviderBinder$WorkerTask;->mResolver:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/content/ContentResolver;

    .line 479
    iget-object v0, p0, Lcom/miui/maml/data/ContentProviderBinder$WorkerTask;->mBinder:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/maml/data/ContentProviderBinder;

    if-eqz v1, :cond_3

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const-string v2, "ContentProviderBinder"

    const-string v3, "resolver not null, go on!"

    .line 484
    invoke-static {v2, v3}, Lcom/miui/maml/util/MamlLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    :try_start_0
    iget-object v2, p0, Lcom/miui/maml/data/ContentProviderBinder$WorkerTask;->mWorkArgs:Lcom/miui/maml/data/AsyncQueryHandler$WorkerArgs;

    iget-object v2, v2, Lcom/miui/maml/data/AsyncQueryHandler$WorkerArgs;->uri:Landroid/net/Uri;

    iget-object v3, p0, Lcom/miui/maml/data/ContentProviderBinder$WorkerTask;->mWorkArgs:Lcom/miui/maml/data/AsyncQueryHandler$WorkerArgs;

    iget-object v3, v3, Lcom/miui/maml/data/AsyncQueryHandler$WorkerArgs;->projection:[Ljava/lang/String;

    iget-object v4, p0, Lcom/miui/maml/data/ContentProviderBinder$WorkerTask;->mWorkArgs:Lcom/miui/maml/data/AsyncQueryHandler$WorkerArgs;

    iget-object v4, v4, Lcom/miui/maml/data/AsyncQueryHandler$WorkerArgs;->selection:Ljava/lang/String;

    iget-object v5, p0, Lcom/miui/maml/data/ContentProviderBinder$WorkerTask;->mWorkArgs:Lcom/miui/maml/data/AsyncQueryHandler$WorkerArgs;

    iget-object v5, v5, Lcom/miui/maml/data/AsyncQueryHandler$WorkerArgs;->selectionArgs:[Ljava/lang/String;

    iget-object v6, p0, Lcom/miui/maml/data/ContentProviderBinder$WorkerTask;->mWorkArgs:Lcom/miui/maml/data/AsyncQueryHandler$WorkerArgs;

    iget-object v6, v6, Lcom/miui/maml/data/AsyncQueryHandler$WorkerArgs;->orderBy:Ljava/lang/String;

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 494
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    goto :goto_0

    :cond_1
    const-string v2, "ContentProviderBinder"

    const-string v3, "failed to query, cursor is null"

    .line 496
    invoke-static {v2, v3}, Lcom/miui/maml/util/MamlLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "ContentProviderBinder"

    const-string v3, "Exception thrown during handling EVENT_ARG_QUERY"

    .line 499
    invoke-static {v2, v3, v1}, Lcom/miui/maml/util/MamlLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v1, 0x0

    .line 503
    :goto_0
    iget-boolean v2, v0, Lcom/miui/maml/data/ContentProviderBinder;->mFinished:Z

    if-nez v2, :cond_2

    .line 504
    invoke-static {v0, v1}, Lcom/miui/maml/data/ContentProviderBinder;->access$100(Lcom/miui/maml/data/ContentProviderBinder;Landroid/database/Cursor;)V

    .line 506
    :cond_2
    invoke-static {v1}, Lmiuix/core/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    const/4 v0, 0x1

    .line 508
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_3
    :goto_1
    const-string v0, "ContentProviderBinder"

    const-string v1, "WorkerTask: resolver or binder is null"

    .line 481
    invoke-static {v0, v1}, Lcom/miui/maml/util/MamlLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 482
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 464
    invoke-virtual {p0}, Lcom/miui/maml/data/ContentProviderBinder$WorkerTask;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
