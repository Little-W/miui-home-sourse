.class final Lcom/xiaomi/onetrack/CrashAnalysis$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/xiaomi/onetrack/a/f;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/xiaomi/onetrack/a/f;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/xiaomi/onetrack/CrashAnalysis$1;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/xiaomi/onetrack/CrashAnalysis$1;->b:Lcom/xiaomi/onetrack/a/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 117
    :try_start_0
    new-instance v0, Lcom/xiaomi/onetrack/CrashAnalysis;

    iget-object v1, p0, Lcom/xiaomi/onetrack/CrashAnalysis$1;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/xiaomi/onetrack/CrashAnalysis$1;->b:Lcom/xiaomi/onetrack/a/f;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/onetrack/CrashAnalysis;-><init>(Landroid/content/Context;Lcom/xiaomi/onetrack/a/f;Lcom/xiaomi/onetrack/CrashAnalysis$1;)V

    const-string v1, "CrashAnalysis"

    const-string v2, "CrashAnalysis create success"

    .line 118
    invoke-static {v1, v2}, Lcom/xiaomi/onetrack/h/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    invoke-static {v0}, Lcom/xiaomi/onetrack/CrashAnalysis;->a(Lcom/xiaomi/onetrack/CrashAnalysis;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 120
    invoke-static {v0}, Lcom/xiaomi/onetrack/CrashAnalysis;->b(Lcom/xiaomi/onetrack/CrashAnalysis;)V

    goto :goto_0

    :cond_0
    const-string v0, "CrashAnalysis"

    const-string v1, "no crash file found"

    .line 122
    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/h/q;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "CrashAnalysis"

    .line 125
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processCrash error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xiaomi/onetrack/h/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
