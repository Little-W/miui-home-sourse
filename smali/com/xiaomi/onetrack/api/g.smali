.class Lcom/xiaomi/onetrack/api/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/xiaomi/onetrack/api/f;


# direct methods
.method constructor <init>(Lcom/xiaomi/onetrack/api/f;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/xiaomi/onetrack/api/g;->a:Lcom/xiaomi/onetrack/api/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 115
    invoke-static {}, Lcom/xiaomi/onetrack/util/aa;->B()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 116
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/util/aa;->n(J)V

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/onetrack/api/g;->a:Lcom/xiaomi/onetrack/api/f;

    invoke-static {v0}, Lcom/xiaomi/onetrack/api/f;->a(Lcom/xiaomi/onetrack/api/f;)Lcom/xiaomi/onetrack/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/onetrack/Configuration;->getInstanceId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 119
    invoke-static {}, Lcom/xiaomi/onetrack/util/o;->a()Lcom/xiaomi/onetrack/util/o;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/onetrack/api/g;->a:Lcom/xiaomi/onetrack/api/f;

    invoke-static {v1}, Lcom/xiaomi/onetrack/api/f;->a(Lcom/xiaomi/onetrack/api/f;)Lcom/xiaomi/onetrack/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/onetrack/Configuration;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/onetrack/util/o;->a(Ljava/lang/String;)V

    .line 121
    :cond_1
    iget-object v0, p0, Lcom/xiaomi/onetrack/api/g;->a:Lcom/xiaomi/onetrack/api/f;

    invoke-static {v0}, Lcom/xiaomi/onetrack/api/f;->b(Lcom/xiaomi/onetrack/api/f;)V

    .line 122
    invoke-static {}, Lcom/xiaomi/onetrack/util/d;->a()Lcom/xiaomi/onetrack/util/d;

    const/4 v0, 0x0

    .line 123
    invoke-static {v0}, Lcom/xiaomi/onetrack/b/g;->c(Z)V

    .line 124
    sget-boolean v0, Lcom/xiaomi/onetrack/util/p;->a:Z

    if-eqz v0, :cond_2

    .line 125
    invoke-static {}, Lcom/xiaomi/onetrack/OneTrackDebugger;->getInstance()Lcom/xiaomi/onetrack/OneTrackDebugger;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/onetrack/api/g;->a:Lcom/xiaomi/onetrack/api/f;

    invoke-static {v1}, Lcom/xiaomi/onetrack/api/f;->a(Lcom/xiaomi/onetrack/api/f;)Lcom/xiaomi/onetrack/Configuration;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/onetrack/OneTrackDebugger;->setSdkConfig(Lcom/xiaomi/onetrack/Configuration;)V

    .line 126
    invoke-static {}, Lcom/xiaomi/onetrack/OneTrackDebugger;->getInstance()Lcom/xiaomi/onetrack/OneTrackDebugger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/onetrack/OneTrackDebugger;->startDebugger()V

    :cond_2
    return-void
.end method
