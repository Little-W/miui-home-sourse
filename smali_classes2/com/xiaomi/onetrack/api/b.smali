.class Lcom/xiaomi/onetrack/api/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Intent;

.field final synthetic b:Lcom/xiaomi/onetrack/api/a;


# direct methods
.method constructor <init>(Lcom/xiaomi/onetrack/api/a;Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/onetrack/api/b;->b:Lcom/xiaomi/onetrack/api/a;

    iput-object p2, p0, Lcom/xiaomi/onetrack/api/b;->a:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v0, p0

    const-string v1, "userId"

    const-string v2, "activeTime"

    const-string v3, "miuiActiveTime"

    const-string v4, "miuiActiveId"

    const-string v5, "installer"

    const-string v6, "package"

    const-string v7, ""

    :try_start_0
    invoke-static {}, Lcom/xiaomi/onetrack/api/a;->d()Z

    move-result v9

    if-nez v9, :cond_0

    return-object v7

    :cond_0
    iget-object v9, v0, Lcom/xiaomi/onetrack/api/b;->a:Landroid/content/Intent;

    invoke-virtual {v9, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iget-object v10, v0, Lcom/xiaomi/onetrack/api/b;->a:Landroid/content/Intent;

    invoke-virtual {v10, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iget-object v11, v0, Lcom/xiaomi/onetrack/api/b;->a:Landroid/content/Intent;

    invoke-virtual {v11, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iget-object v12, v0, Lcom/xiaomi/onetrack/api/b;->a:Landroid/content/Intent;

    const-wide/16 v13, -0x1

    invoke-virtual {v12, v3, v13, v14}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v15

    iget-object v12, v0, Lcom/xiaomi/onetrack/api/b;->a:Landroid/content/Intent;

    invoke-virtual {v12, v2, v13, v14}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v12

    iget-object v14, v0, Lcom/xiaomi/onetrack/api/b;->a:Landroid/content/Intent;

    const/4 v8, -0x1

    invoke-virtual {v14, v1, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v14

    const-string v18, "content://com.miui.analytics.OneTrackProvider/traceId"

    invoke-static/range {v18 .. v18}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v18
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v19, v7

    :try_start_1
    invoke-virtual/range {v18 .. v18}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v7

    const-string v0, "pkg"

    move-object/from16 v18, v1

    invoke-static {}, Lcom/xiaomi/onetrack/api/a;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string v0, "sign"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v20, v8

    const-string v8, "traceId"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/xiaomi/onetrack/api/a;->e()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/onetrack/d/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-virtual {v7, v6, v9}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-virtual {v7, v5, v10}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-virtual {v7, v4, v11}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v3, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v2, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, v18

    invoke-virtual {v7, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string v0, "queryTime"

    invoke-virtual {v7, v0, v14}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/onetrack/api/b;->b:Lcom/xiaomi/onetrack/api/a;

    invoke-static {v0}, Lcom/xiaomi/onetrack/api/a;->a(Lcom/xiaomi/onetrack/api/a;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v7}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v8, :cond_2

    move-object/from16 v7, v19

    :goto_0
    :try_start_2
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :cond_1
    move-object/from16 v19, v7

    goto :goto_1

    :catch_0
    move-exception v0

    move-object/from16 v19, v7

    goto :goto_4

    :cond_2
    :goto_1
    if-eqz v8, :cond_3

    :goto_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_5

    :catch_1
    move-exception v0

    goto :goto_3

    :catchall_0
    move-exception v0

    const/16 v17, 0x0

    goto :goto_6

    :catch_2
    move-exception v0

    move-object/from16 v19, v7

    :goto_3
    const/4 v8, 0x0

    :goto_4
    :try_start_3
    const-string v1, "AppActiveBroadcastManager"

    const-string v2, "exception while getTraceId"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v8, :cond_3

    goto :goto_2

    :cond_3
    :goto_5
    return-object v19

    :catchall_1
    move-exception v0

    move-object/from16 v17, v8

    :goto_6
    if-eqz v17, :cond_4

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/xiaomi/onetrack/api/b;->a()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
