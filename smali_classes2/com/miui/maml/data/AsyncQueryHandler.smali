.class public abstract Lcom/miui/maml/data/AsyncQueryHandler;
.super Landroid/os/Handler;
.source "AsyncQueryHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/maml/data/AsyncQueryHandler$WorkerHandler;,
        Lcom/miui/maml/data/AsyncQueryHandler$WorkerArgs;
    }
.end annotation


# static fields
.field private static final EVENT_ARG_DELETE:I = 0x4

.field private static final EVENT_ARG_INSERT:I = 0x2

.field private static final EVENT_ARG_QUERY:I = 0x1

.field private static final EVENT_ARG_UPDATE:I = 0x3

.field private static final TAG:Ljava/lang/String; = "AsyncQuery"

.field private static final localLOGV:Z

.field private static sLooper:Landroid/os/Looper;


# instance fields
.field private final mResolver:Landroid/content/ContentResolver;

.field private mWorkerThreadHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/ContentResolver;)V
    .locals 2

    .line 139
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 140
    iput-object p1, p0, Lcom/miui/maml/data/AsyncQueryHandler;->mResolver:Landroid/content/ContentResolver;

    .line 141
    const-class p1, Landroid/content/AsyncQueryHandler;

    monitor-enter p1

    .line 142
    :try_start_0
    sget-object v0, Lcom/miui/maml/data/AsyncQueryHandler;->sLooper:Landroid/os/Looper;

    if-nez v0, :cond_0

    .line 143
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "AsyncQueryWorker"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 144
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 146
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    sput-object v0, Lcom/miui/maml/data/AsyncQueryHandler;->sLooper:Landroid/os/Looper;

    .line 149
    :cond_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 150
    sget-object p1, Lcom/miui/maml/data/AsyncQueryHandler;->sLooper:Landroid/os/Looper;

    invoke-virtual {p0, p1}, Lcom/miui/maml/data/AsyncQueryHandler;->createHandler(Landroid/os/Looper;)Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/maml/data/AsyncQueryHandler;->mWorkerThreadHandler:Landroid/os/Handler;

    return-void

    :catchall_0
    move-exception v0

    .line 149
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/ContentResolver;)V
    .locals 1

    .line 154
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 155
    iput-object p2, p0, Lcom/miui/maml/data/AsyncQueryHandler;->mResolver:Landroid/content/ContentResolver;

    .line 156
    const-class p1, Landroid/content/AsyncQueryHandler;

    monitor-enter p1

    .line 157
    :try_start_0
    sget-object p2, Lcom/miui/maml/data/AsyncQueryHandler;->sLooper:Landroid/os/Looper;

    if-nez p2, :cond_0

    .line 158
    new-instance p2, Landroid/os/HandlerThread;

    const-string v0, "AsyncQueryWorker"

    invoke-direct {p2, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 159
    invoke-virtual {p2}, Landroid/os/HandlerThread;->start()V

    .line 161
    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    sput-object p2, Lcom/miui/maml/data/AsyncQueryHandler;->sLooper:Landroid/os/Looper;

    .line 163
    :cond_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    sget-object p1, Lcom/miui/maml/data/AsyncQueryHandler;->sLooper:Landroid/os/Looper;

    invoke-virtual {p0, p1}, Lcom/miui/maml/data/AsyncQueryHandler;->createHandler(Landroid/os/Looper;)Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/maml/data/AsyncQueryHandler;->mWorkerThreadHandler:Landroid/os/Handler;

    return-void

    :catchall_0
    move-exception p2

    .line 163
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p2
.end method

.method static synthetic access$000(Lcom/miui/maml/data/AsyncQueryHandler;)Landroid/content/ContentResolver;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/miui/maml/data/AsyncQueryHandler;->mResolver:Landroid/content/ContentResolver;

    return-object p0
.end method


# virtual methods
.method public final cancelOperation(I)V
    .locals 1

    .line 223
    iget-object v0, p0, Lcom/miui/maml/data/AsyncQueryHandler;->mWorkerThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method protected createHandler(Landroid/os/Looper;)Landroid/os/Handler;
    .locals 1

    .line 168
    new-instance v0, Lcom/miui/maml/data/AsyncQueryHandler$WorkerHandler;

    invoke-direct {v0, p0, p1}, Lcom/miui/maml/data/AsyncQueryHandler$WorkerHandler;-><init>(Lcom/miui/maml/data/AsyncQueryHandler;Landroid/os/Looper;)V

    return-object v0
.end method

.method doUpdateOfCursor(Landroid/database/Cursor;)V
    .locals 0

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 361
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/miui/maml/data/AsyncQueryHandler$WorkerArgs;

    .line 368
    iget v1, p1, Landroid/os/Message;->what:I

    .line 369
    iget p1, p1, Landroid/os/Message;->arg1:I

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 386
    :pswitch_0
    iget-object p1, v0, Lcom/miui/maml/data/AsyncQueryHandler$WorkerArgs;->cookie:Ljava/lang/Object;

    iget-object v0, v0, Lcom/miui/maml/data/AsyncQueryHandler$WorkerArgs;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v1, p1, v0}, Lcom/miui/maml/data/AsyncQueryHandler;->onDeleteComplete(ILjava/lang/Object;I)V

    goto :goto_0

    .line 382
    :pswitch_1
    iget-object p1, v0, Lcom/miui/maml/data/AsyncQueryHandler$WorkerArgs;->cookie:Ljava/lang/Object;

    iget-object v0, v0, Lcom/miui/maml/data/AsyncQueryHandler$WorkerArgs;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v1, p1, v0}, Lcom/miui/maml/data/AsyncQueryHandler;->onUpdateComplete(ILjava/lang/Object;I)V

    goto :goto_0

    .line 378
    :pswitch_2
    iget-object p1, v0, Lcom/miui/maml/data/AsyncQueryHandler$WorkerArgs;->cookie:Ljava/lang/Object;

    iget-object v0, v0, Lcom/miui/maml/data/AsyncQueryHandler$WorkerArgs;->result:Ljava/lang/Object;

    check-cast v0, Landroid/net/Uri;

    invoke-virtual {p0, v1, p1, v0}, Lcom/miui/maml/data/AsyncQueryHandler;->onInsertComplete(ILjava/lang/Object;Landroid/net/Uri;)V

    goto :goto_0

    .line 374
    :pswitch_3
    iget-object p1, v0, Lcom/miui/maml/data/AsyncQueryHandler$WorkerArgs;->cookie:Ljava/lang/Object;

    invoke-virtual {p0, v1, p1}, Lcom/miui/maml/data/AsyncQueryHandler;->onQueryComplete(ILjava/lang/Object;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onDeleteComplete(ILjava/lang/Object;I)V
    .locals 0

    return-void
.end method

.method protected onInsertComplete(ILjava/lang/Object;Landroid/net/Uri;)V
    .locals 0

    return-void
.end method

.method protected onQueryComplete(ILjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method protected onUpdateComplete(ILjava/lang/Object;I)V
    .locals 0

    return-void
.end method

.method public final startDelete(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1

    .line 293
    iget-object v0, p0, Lcom/miui/maml/data/AsyncQueryHandler;->mWorkerThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    const/4 v0, 0x4

    .line 294
    iput v0, p1, Landroid/os/Message;->arg1:I

    .line 296
    new-instance v0, Lcom/miui/maml/data/AsyncQueryHandler$WorkerArgs;

    invoke-direct {v0}, Lcom/miui/maml/data/AsyncQueryHandler$WorkerArgs;-><init>()V

    .line 297
    iput-object p0, v0, Lcom/miui/maml/data/AsyncQueryHandler$WorkerArgs;->handler:Landroid/os/Handler;

    .line 298
    iput-object p3, v0, Lcom/miui/maml/data/AsyncQueryHandler$WorkerArgs;->uri:Landroid/net/Uri;

    .line 299
    iput-object p2, v0, Lcom/miui/maml/data/AsyncQueryHandler$WorkerArgs;->cookie:Ljava/lang/Object;

    .line 300
    iput-object p4, v0, Lcom/miui/maml/data/AsyncQueryHandler$WorkerArgs;->selection:Ljava/lang/String;

    .line 301
    iput-object p5, v0, Lcom/miui/maml/data/AsyncQueryHandler$WorkerArgs;->selectionArgs:[Ljava/lang/String;

    .line 302
    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 304
    iget-object p2, p0, Lcom/miui/maml/data/AsyncQueryHandler;->mWorkerThreadHandler:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final startInsert(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;)V
    .locals 1

    .line 239
    iget-object v0, p0, Lcom/miui/maml/data/AsyncQueryHandler;->mWorkerThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    const/4 v0, 0x2

    .line 240
    iput v0, p1, Landroid/os/Message;->arg1:I

    .line 242
    new-instance v0, Lcom/miui/maml/data/AsyncQueryHandler$WorkerArgs;

    invoke-direct {v0}, Lcom/miui/maml/data/AsyncQueryHandler$WorkerArgs;-><init>()V

    .line 243
    iput-object p0, v0, Lcom/miui/maml/data/AsyncQueryHandler$WorkerArgs;->handler:Landroid/os/Handler;

    .line 244
    iput-object p3, v0, Lcom/miui/maml/data/AsyncQueryHandler$WorkerArgs;->uri:Landroid/net/Uri;

    .line 245
    iput-object p2, v0, Lcom/miui/maml/data/AsyncQueryHandler$WorkerArgs;->cookie:Ljava/lang/Object;

    .line 246
    iput-object p4, v0, Lcom/miui/maml/data/AsyncQueryHandler$WorkerArgs;->values:Landroid/content/ContentValues;

    .line 247
    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 249
    iget-object p2, p0, Lcom/miui/maml/data/AsyncQueryHandler;->mWorkerThreadHandler:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 197
    iget-object v0, p0, Lcom/miui/maml/data/AsyncQueryHandler;->mWorkerThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    const/4 v0, 0x1

    .line 198
    iput v0, p1, Landroid/os/Message;->arg1:I

    .line 200
    new-instance v0, Lcom/miui/maml/data/AsyncQueryHandler$WorkerArgs;

    invoke-direct {v0}, Lcom/miui/maml/data/AsyncQueryHandler$WorkerArgs;-><init>()V

    .line 201
    iput-object p0, v0, Lcom/miui/maml/data/AsyncQueryHandler$WorkerArgs;->handler:Landroid/os/Handler;

    .line 202
    iput-object p3, v0, Lcom/miui/maml/data/AsyncQueryHandler$WorkerArgs;->uri:Landroid/net/Uri;

    .line 203
    iput-object p4, v0, Lcom/miui/maml/data/AsyncQueryHandler$WorkerArgs;->projection:[Ljava/lang/String;

    .line 204
    iput-object p5, v0, Lcom/miui/maml/data/AsyncQueryHandler$WorkerArgs;->selection:Ljava/lang/String;

    .line 205
    iput-object p6, v0, Lcom/miui/maml/data/AsyncQueryHandler$WorkerArgs;->selectionArgs:[Ljava/lang/String;

    .line 206
    iput-object p7, v0, Lcom/miui/maml/data/AsyncQueryHandler$WorkerArgs;->orderBy:Ljava/lang/String;

    .line 207
    iput-object p2, v0, Lcom/miui/maml/data/AsyncQueryHandler$WorkerArgs;->cookie:Ljava/lang/Object;

    .line 208
    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 210
    iget-object p2, p0, Lcom/miui/maml/data/AsyncQueryHandler;->mWorkerThreadHandler:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1

    .line 265
    iget-object v0, p0, Lcom/miui/maml/data/AsyncQueryHandler;->mWorkerThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    const/4 v0, 0x3

    .line 266
    iput v0, p1, Landroid/os/Message;->arg1:I

    .line 268
    new-instance v0, Lcom/miui/maml/data/AsyncQueryHandler$WorkerArgs;

    invoke-direct {v0}, Lcom/miui/maml/data/AsyncQueryHandler$WorkerArgs;-><init>()V

    .line 269
    iput-object p0, v0, Lcom/miui/maml/data/AsyncQueryHandler$WorkerArgs;->handler:Landroid/os/Handler;

    .line 270
    iput-object p3, v0, Lcom/miui/maml/data/AsyncQueryHandler$WorkerArgs;->uri:Landroid/net/Uri;

    .line 271
    iput-object p2, v0, Lcom/miui/maml/data/AsyncQueryHandler$WorkerArgs;->cookie:Ljava/lang/Object;

    .line 272
    iput-object p4, v0, Lcom/miui/maml/data/AsyncQueryHandler$WorkerArgs;->values:Landroid/content/ContentValues;

    .line 273
    iput-object p5, v0, Lcom/miui/maml/data/AsyncQueryHandler$WorkerArgs;->selection:Ljava/lang/String;

    .line 274
    iput-object p6, v0, Lcom/miui/maml/data/AsyncQueryHandler$WorkerArgs;->selectionArgs:[Ljava/lang/String;

    .line 275
    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 277
    iget-object p2, p0, Lcom/miui/maml/data/AsyncQueryHandler;->mWorkerThreadHandler:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
