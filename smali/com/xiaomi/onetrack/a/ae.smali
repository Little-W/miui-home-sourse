.class public Lcom/xiaomi/onetrack/a/ae;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/xiaomi/onetrack/a/d;


# static fields
.field private static final a:Ljava/lang/String; = "OneTrackLocalImp"

.field private static final b:I = 0x19000

.field private static final c:I = 0x2


# instance fields
.field private d:Lcom/xiaomi/onetrack/Configuration;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/xiaomi/onetrack/Configuration;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-static {p1}, Lcom/xiaomi/onetrack/f/f;->a(Landroid/content/Context;)V

    .line 33
    iput-object p2, p0, Lcom/xiaomi/onetrack/a/ae;->d:Lcom/xiaomi/onetrack/Configuration;

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    .line 61
    invoke-static {}, Lcom/xiaomi/onetrack/c/g;->b()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 65
    new-instance p1, Lcom/xiaomi/onetrack/a/af;

    invoke-direct {p1, p0}, Lcom/xiaomi/onetrack/a/af;-><init>(Lcom/xiaomi/onetrack/a/ae;)V

    invoke-static {p1}, Lcom/xiaomi/onetrack/h/j;->a(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 38
    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/onetrack/a/ae;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 41
    :cond_0
    invoke-static {}, Lcom/xiaomi/onetrack/c/g;->b()Z

    move-result v0

    if-nez v0, :cond_1

    .line 42
    invoke-static {p1, p2}, Lcom/xiaomi/onetrack/c/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 45
    :cond_1
    invoke-static {p0}, Lcom/xiaomi/onetrack/c/g;->a(Lcom/xiaomi/onetrack/a/d;)V

    .line 48
    sget-boolean v0, Lcom/xiaomi/onetrack/h/q;->a:Z

    if-eqz v0, :cond_2

    const-string v0, "onetrack_bug_report"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "OneTrackLocalImp"

    .line 49
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "track data:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/h/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    :cond_2
    iget-object v0, p0, Lcom/xiaomi/onetrack/a/ae;->d:Lcom/xiaomi/onetrack/Configuration;

    invoke-virtual {v0}, Lcom/xiaomi/onetrack/Configuration;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/onetrack/b/a;->a(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p0, p1}, Lcom/xiaomi/onetrack/a/ae;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    .line 56
    :cond_3
    iget-object v0, p0, Lcom/xiaomi/onetrack/a/ae;->d:Lcom/xiaomi/onetrack/Configuration;

    invoke-virtual {v0}, Lcom/xiaomi/onetrack/Configuration;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/xiaomi/onetrack/f/a;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1, p2}, Lcom/xiaomi/onetrack/f/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    .line 93
    :try_start_0
    invoke-static {}, Lcom/xiaomi/onetrack/b/f;->a()Lcom/xiaomi/onetrack/b/f;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/onetrack/a/ae;->d:Lcom/xiaomi/onetrack/Configuration;

    invoke-virtual {v2}, Lcom/xiaomi/onetrack/Configuration;->getAppId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "disable_log"

    invoke-virtual {v1, v2, v3}, Lcom/xiaomi/onetrack/b/f;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 94
    :try_start_1
    invoke-static {}, Lcom/xiaomi/onetrack/b/f;->a()Lcom/xiaomi/onetrack/b/f;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaomi/onetrack/a/ae;->d:Lcom/xiaomi/onetrack/Configuration;

    invoke-virtual {v3}, Lcom/xiaomi/onetrack/Configuration;->getAppId()Ljava/lang/String;

    move-result-object v3

    const-string v4, "disable_log"

    invoke-virtual {v2, v3, p1, v4, v0}, Lcom/xiaomi/onetrack/b/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    move v1, v0

    :goto_0
    const-string v2, "OneTrackLocalImp"

    .line 96
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isDisableTrack: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/xiaomi/onetrack/h/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    move p1, v0

    :goto_1
    if-nez v1, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .line 77
    invoke-static {}, Lcom/xiaomi/onetrack/OneTrack;->isDisable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/xiaomi/onetrack/OneTrack;->isUseSystemNetTrafficOnly()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    if-eqz p1, :cond_1

    const-string v2, "onetrack_bug_report"

    .line 81
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    move p1, v0

    goto :goto_0

    :cond_1
    move p1, v1

    :goto_0
    if-nez p1, :cond_2

    if-eqz p2, :cond_2

    .line 82
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    mul-int/lit8 p1, p1, 0x2

    const p2, 0x19000

    if-le p1, p2, :cond_2

    const-string p1, "OneTrackLocalImp"

    const-string p2, "Event size exceed limitation!"

    .line 83
    invoke-static {p1, p2}, Lcom/xiaomi/onetrack/h/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_2
    return v0

    :cond_3
    :goto_1
    return v1
.end method
