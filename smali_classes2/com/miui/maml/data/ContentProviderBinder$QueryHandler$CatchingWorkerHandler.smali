.class public Lcom/miui/maml/data/ContentProviderBinder$QueryHandler$CatchingWorkerHandler;
.super Lcom/miui/maml/data/AsyncQueryHandler$WorkerHandler;
.source "ContentProviderBinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/data/ContentProviderBinder$QueryHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "CatchingWorkerHandler"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/maml/data/ContentProviderBinder$QueryHandler;


# direct methods
.method public constructor <init>(Lcom/miui/maml/data/ContentProviderBinder$QueryHandler;Landroid/os/Looper;)V
    .locals 0

    .line 459
    iput-object p1, p0, Lcom/miui/maml/data/ContentProviderBinder$QueryHandler$CatchingWorkerHandler;->this$1:Lcom/miui/maml/data/ContentProviderBinder$QueryHandler;

    .line 460
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/data/AsyncQueryHandler$WorkerHandler;-><init>(Lcom/miui/maml/data/AsyncQueryHandler;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 467
    :try_start_0
    invoke-super {p0, p1}, Lcom/miui/maml/data/AsyncQueryHandler$WorkerHandler;->handleMessage(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "ContentProviderBinder"

    const-string v1, "Exception on background worker thread"

    .line 469
    invoke-static {v0, v1, p1}, Lcom/miui/maml/util/MamlLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
