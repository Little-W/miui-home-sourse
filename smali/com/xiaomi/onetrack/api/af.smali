.class public Lcom/xiaomi/onetrack/api/af;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/xiaomi/onetrack/api/d;


# static fields
.field private static final a:Ljava/lang/String; = "OneTrackLocalImp"

.field private static final b:I = 0x19000

.field private static final c:I = 0x2


# instance fields
.field private d:Lcom/xiaomi/onetrack/Configuration;

.field private e:Lcom/xiaomi/onetrack/util/v;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/xiaomi/onetrack/Configuration;Lcom/xiaomi/onetrack/util/v;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-static {p1}, Lcom/xiaomi/onetrack/e/f;->a(Landroid/content/Context;)V

    .line 36
    iput-object p2, p0, Lcom/xiaomi/onetrack/api/af;->d:Lcom/xiaomi/onetrack/Configuration;

    .line 37
    iput-object p3, p0, Lcom/xiaomi/onetrack/api/af;->e:Lcom/xiaomi/onetrack/util/v;

    return-void
.end method

.method private b(Ljava/lang/String;)Z
    .locals 9

    .line 112
    invoke-static {}, Lcom/xiaomi/onetrack/a/f;->a()Lcom/xiaomi/onetrack/a/f;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/onetrack/api/af;->d:Lcom/xiaomi/onetrack/Configuration;

    invoke-virtual {v1}, Lcom/xiaomi/onetrack/Configuration;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/xiaomi/onetrack/a/f;->b(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    .line 113
    invoke-static {}, Lcom/xiaomi/onetrack/e/a;->a()Landroid/content/Context;

    move-result-object v2

    .line 114
    invoke-static {}, Lcom/xiaomi/onetrack/util/oaid/a;->a()Lcom/xiaomi/onetrack/util/oaid/a;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/xiaomi/onetrack/util/oaid/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 115
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    rem-int/lit8 v2, v2, 0x64

    int-to-long v2, v2

    cmp-long v4, v0, v2

    const/4 v5, 0x1

    if-lez v4, :cond_0

    move v4, v5

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    const-string v6, "OneTrackLocalImp"

    .line 117
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "shouldUploadBySampling "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ",  shouldUpload="

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", sample="

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ", val="

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    xor-int/lit8 p1, v4, 0x1

    return p1
.end method


# virtual methods
.method public a(I)V
    .locals 1

    .line 70
    invoke-static {}, Lcom/xiaomi/onetrack/b/g;->b()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 74
    new-instance p1, Lcom/xiaomi/onetrack/api/ag;

    invoke-direct {p1, p0}, Lcom/xiaomi/onetrack/api/ag;-><init>(Lcom/xiaomi/onetrack/api/af;)V

    invoke-static {p1}, Lcom/xiaomi/onetrack/util/i;->a(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 42
    iget-object v0, p0, Lcom/xiaomi/onetrack/api/af;->e:Lcom/xiaomi/onetrack/util/v;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/xiaomi/onetrack/util/v;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "OneTrackLocalImp"

    const-string p2, "The privacy policy is not permitted, and the event is not basic or recommend event or custom dau event, skip it."

    .line 43
    invoke-static {p1, p2}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 47
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/onetrack/api/af;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 50
    :cond_1
    invoke-static {}, Lcom/xiaomi/onetrack/b/g;->b()Z

    move-result v0

    if-nez v0, :cond_2

    .line 51
    invoke-static {p1, p2}, Lcom/xiaomi/onetrack/b/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 54
    :cond_2
    invoke-static {p0}, Lcom/xiaomi/onetrack/b/g;->a(Lcom/xiaomi/onetrack/api/d;)V

    .line 57
    sget-boolean v0, Lcom/xiaomi/onetrack/util/p;->a:Z

    if-eqz v0, :cond_3

    const-string v0, "onetrack_bug_report"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "OneTrackLocalImp"

    .line 58
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "track data:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    :cond_3
    iget-object v0, p0, Lcom/xiaomi/onetrack/api/af;->d:Lcom/xiaomi/onetrack/Configuration;

    invoke-virtual {v0}, Lcom/xiaomi/onetrack/Configuration;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/onetrack/a/a;->a(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p0, p1}, Lcom/xiaomi/onetrack/api/af;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    return-void

    .line 65
    :cond_4
    iget-object v0, p0, Lcom/xiaomi/onetrack/api/af;->d:Lcom/xiaomi/onetrack/Configuration;

    invoke-virtual {v0}, Lcom/xiaomi/onetrack/Configuration;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/xiaomi/onetrack/e/a;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1, p2}, Lcom/xiaomi/onetrack/e/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x0

    .line 102
    :try_start_0
    invoke-static {}, Lcom/xiaomi/onetrack/a/f;->a()Lcom/xiaomi/onetrack/a/f;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/onetrack/api/af;->d:Lcom/xiaomi/onetrack/Configuration;

    invoke-virtual {v2}, Lcom/xiaomi/onetrack/Configuration;->getAppId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "disable_log"

    invoke-virtual {v1, v2, v3}, Lcom/xiaomi/onetrack/a/f;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 103
    :try_start_1
    invoke-static {}, Lcom/xiaomi/onetrack/a/f;->a()Lcom/xiaomi/onetrack/a/f;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaomi/onetrack/api/af;->d:Lcom/xiaomi/onetrack/Configuration;

    invoke-virtual {v3}, Lcom/xiaomi/onetrack/Configuration;->getAppId()Ljava/lang/String;

    move-result-object v3

    const-string v4, "disable_log"

    invoke-virtual {v2, v3, p1, v4, v0}, Lcom/xiaomi/onetrack/a/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 104
    :try_start_2
    invoke-direct {p0, p1}, Lcom/xiaomi/onetrack/api/af;->b(Ljava/lang/String;)Z

    move-result p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    move v2, v0

    goto :goto_0

    :catch_2
    move-exception p1

    move v1, v0

    move v2, v1

    :goto_0
    const-string v3, "OneTrackLocalImp"

    .line 106
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isDisableTrack: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    move p1, v0

    :goto_1
    if-nez v1, :cond_0

    if-nez v2, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .line 85
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

    .line 89
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

    .line 90
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    mul-int/lit8 p1, p1, 0x2

    const p2, 0x19000

    if-le p1, p2, :cond_2

    const-string p1, "OneTrackLocalImp"

    const-string p2, "Event size exceed limitation!"

    .line 91
    invoke-static {p1, p2}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_2
    return v0

    :cond_3
    :goto_1
    return v1
.end method
