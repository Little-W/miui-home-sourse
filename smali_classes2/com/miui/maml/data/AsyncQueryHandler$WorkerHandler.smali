.class public Lcom/miui/maml/data/AsyncQueryHandler$WorkerHandler;
.super Landroid/os/Handler;
.source "AsyncQueryHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/data/AsyncQueryHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "WorkerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/maml/data/AsyncQueryHandler;


# direct methods
.method public constructor <init>(Lcom/miui/maml/data/AsyncQueryHandler;Landroid/os/Looper;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/miui/maml/data/AsyncQueryHandler$WorkerHandler;->this$0:Lcom/miui/maml/data/AsyncQueryHandler;

    .line 66
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8

    .line 71
    iget-object v0, p0, Lcom/miui/maml/data/AsyncQueryHandler$WorkerHandler;->this$0:Lcom/miui/maml/data/AsyncQueryHandler;

    invoke-static {v0}, Lcom/miui/maml/data/AsyncQueryHandler;->access$000(Lcom/miui/maml/data/AsyncQueryHandler;)Landroid/content/ContentResolver;

    move-result-object v1

    if-nez v1, :cond_0

    const-string p1, "ContentProviderBinder"

    const-string v0, "resolver == null"

    .line 74
    invoke-static {p1, v0}, Lcom/miui/maml/util/MamlLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "ContentProviderBinder"

    const-string v2, "resolver not null, go on!"

    .line 78
    invoke-static {v0, v2}, Lcom/miui/maml/util/MamlLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/miui/maml/data/AsyncQueryHandler$WorkerArgs;

    .line 82
    iget v7, p1, Landroid/os/Message;->what:I

    .line 83
    iget v2, p1, Landroid/os/Message;->arg1:I

    packed-switch v2, :pswitch_data_0

    goto :goto_1

    .line 119
    :pswitch_0
    iget-object v2, v0, Lcom/miui/maml/data/AsyncQueryHandler$WorkerArgs;->uri:Landroid/net/Uri;

    iget-object v3, v0, Lcom/miui/maml/data/AsyncQueryHandler$WorkerArgs;->selection:Ljava/lang/String;

    iget-object v4, v0, Lcom/miui/maml/data/AsyncQueryHandler$WorkerArgs;->selectionArgs:[Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/maml/data/AsyncQueryHandler$WorkerArgs;->result:Ljava/lang/Object;

    goto :goto_1

    .line 114
    :pswitch_1
    iget-object v2, v0, Lcom/miui/maml/data/AsyncQueryHandler$WorkerArgs;->uri:Landroid/net/Uri;

    iget-object v3, v0, Lcom/miui/maml/data/AsyncQueryHandler$WorkerArgs;->values:Landroid/content/ContentValues;

    iget-object v4, v0, Lcom/miui/maml/data/AsyncQueryHandler$WorkerArgs;->selection:Ljava/lang/String;

    iget-object v5, v0, Lcom/miui/maml/data/AsyncQueryHandler$WorkerArgs;->selectionArgs:[Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/maml/data/AsyncQueryHandler$WorkerArgs;->result:Ljava/lang/Object;

    goto :goto_1

    .line 110
    :pswitch_2
    iget-object v2, v0, Lcom/miui/maml/data/AsyncQueryHandler$WorkerArgs;->uri:Landroid/net/Uri;

    iget-object v3, v0, Lcom/miui/maml/data/AsyncQueryHandler$WorkerArgs;->values:Landroid/content/ContentValues;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/maml/data/AsyncQueryHandler$WorkerArgs;->result:Ljava/lang/Object;

    goto :goto_1

    .line 89
    :pswitch_3
    :try_start_0
    iget-object v2, v0, Lcom/miui/maml/data/AsyncQueryHandler$WorkerArgs;->uri:Landroid/net/Uri;

    iget-object v3, v0, Lcom/miui/maml/data/AsyncQueryHandler$WorkerArgs;->projection:[Ljava/lang/String;

    iget-object v4, v0, Lcom/miui/maml/data/AsyncQueryHandler$WorkerArgs;->selection:Ljava/lang/String;

    iget-object v5, v0, Lcom/miui/maml/data/AsyncQueryHandler$WorkerArgs;->selectionArgs:[Ljava/lang/String;

    iget-object v6, v0, Lcom/miui/maml/data/AsyncQueryHandler$WorkerArgs;->orderBy:Ljava/lang/String;

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 95
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    goto :goto_0

    :cond_1
    const-string v2, "AsyncQuery"

    const-string v3, "failed to query, cursor is null"

    .line 97
    invoke-static {v2, v3}, Lcom/miui/maml/util/MamlLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "AsyncQuery"

    const-string v3, "Exception thrown during handling EVENT_ARG_QUERY"

    .line 100
    invoke-static {v2, v3, v1}, Lcom/miui/maml/util/MamlLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v1, 0x0

    .line 104
    :goto_0
    iget-object v2, p0, Lcom/miui/maml/data/AsyncQueryHandler$WorkerHandler;->this$0:Lcom/miui/maml/data/AsyncQueryHandler;

    invoke-virtual {v2, v1}, Lcom/miui/maml/data/AsyncQueryHandler;->doUpdateOfCursor(Landroid/database/Cursor;)V

    .line 105
    invoke-static {v1}, Lmiuix/core/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 125
    :goto_1
    iget-object v1, v0, Lcom/miui/maml/data/AsyncQueryHandler$WorkerArgs;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 126
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 127
    iget p1, p1, Landroid/os/Message;->arg1:I

    iput p1, v1, Landroid/os/Message;->arg1:I

    .line 134
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
