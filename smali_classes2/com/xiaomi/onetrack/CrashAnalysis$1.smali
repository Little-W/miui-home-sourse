.class final Lcom/xiaomi/onetrack/CrashAnalysis$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/xiaomi/onetrack/api/m;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/xiaomi/onetrack/api/m;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/onetrack/CrashAnalysis$1;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/xiaomi/onetrack/CrashAnalysis$1;->b:Lcom/xiaomi/onetrack/api/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const-string v0, "CrashAnalysis"

    :try_start_0
    new-instance v1, Lcom/xiaomi/onetrack/CrashAnalysis;

    iget-object v2, p0, Lcom/xiaomi/onetrack/CrashAnalysis$1;->a:Landroid/content/Context;

    iget-object p0, p0, Lcom/xiaomi/onetrack/CrashAnalysis$1;->b:Lcom/xiaomi/onetrack/api/m;

    const/4 v3, 0x0

    invoke-direct {v1, v2, p0, v3}, Lcom/xiaomi/onetrack/CrashAnalysis;-><init>(Landroid/content/Context;Lcom/xiaomi/onetrack/api/m;Lcom/xiaomi/onetrack/CrashAnalysis$1;)V

    invoke-static {v1}, Lcom/xiaomi/onetrack/CrashAnalysis;->a(Lcom/xiaomi/onetrack/CrashAnalysis;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {v1}, Lcom/xiaomi/onetrack/CrashAnalysis;->b(Lcom/xiaomi/onetrack/CrashAnalysis;)V

    goto :goto_0

    :cond_0
    const-string p0, "no crash file found"

    invoke-static {v0, p0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processCrash error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
