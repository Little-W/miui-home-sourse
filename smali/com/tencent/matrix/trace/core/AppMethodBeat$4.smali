.class final Lcom/tencent/matrix/trace/core/AppMethodBeat$4;
.super Ljava/lang/Object;
.source "AppMethodBeat.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/matrix/trace/core/AppMethodBeat;->realExecute()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 170
    invoke-static {}, Lcom/tencent/matrix/trace/core/AppMethodBeat;->access$800()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    const-string v1, "Matrix.AppMethodBeat"

    const-string v2, "[startExpired] timestamp:%s status:%s"

    const/4 v3, 0x2

    .line 171
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {}, Lcom/tencent/matrix/trace/core/AppMethodBeat;->access$000()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Lcom/tencent/matrix/util/MatrixLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 172
    invoke-static {}, Lcom/tencent/matrix/trace/core/AppMethodBeat;->access$000()I

    move-result v1

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_0

    invoke-static {}, Lcom/tencent/matrix/trace/core/AppMethodBeat;->access$000()I

    move-result v1

    if-ne v1, v5, :cond_1

    :cond_0
    const/4 v1, -0x2

    .line 173
    invoke-static {v1}, Lcom/tencent/matrix/trace/core/AppMethodBeat;->access$002(I)I

    .line 175
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
