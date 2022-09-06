.class public Lcom/xiaomi/onetrack/a/b/a;
.super Ljava/lang/Object;


# static fields
.field public static final a:I = 0x0

.field public static final b:I = 0x1

.field public static final c:I = 0x2

.field private static final d:Ljava/lang/String; = "AdMonitor"


# instance fields
.field private e:I

.field private f:Ljava/lang/String;

.field private g:J

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 18
    iput-object v0, p0, Lcom/xiaomi/onetrack/a/b/a;->h:Ljava/lang/String;

    const-string v0, ""

    .line 19
    iput-object v0, p0, Lcom/xiaomi/onetrack/a/b/a;->i:Ljava/lang/String;

    const-string v0, ""

    .line 20
    iput-object v0, p0, Lcom/xiaomi/onetrack/a/b/a;->j:Ljava/lang/String;

    const/4 v0, 0x0

    .line 21
    iput v0, p0, Lcom/xiaomi/onetrack/a/b/a;->k:I

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/xiaomi/onetrack/a/b/a;->j:Ljava/lang/String;

    return-object v0
.end method

.method public a(I)V
    .locals 0

    .line 41
    iput p1, p0, Lcom/xiaomi/onetrack/a/b/a;->e:I

    return-void
.end method

.method public a(J)V
    .locals 0

    .line 57
    iput-wide p1, p0, Lcom/xiaomi/onetrack/a/b/a;->g:J

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/xiaomi/onetrack/a/b/a;->j:Ljava/lang/String;

    return-void
.end method

.method public b()I
    .locals 1

    .line 37
    iget v0, p0, Lcom/xiaomi/onetrack/a/b/a;->e:I

    return v0
.end method

.method public b(I)V
    .locals 0

    .line 81
    iput p1, p0, Lcom/xiaomi/onetrack/a/b/a;->k:I

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/xiaomi/onetrack/a/b/a;->f:Ljava/lang/String;

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/xiaomi/onetrack/a/b/a;->f:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/xiaomi/onetrack/a/b/a;->h:Ljava/lang/String;

    return-void
.end method

.method public d()J
    .locals 2

    .line 53
    iget-wide v0, p0, Lcom/xiaomi/onetrack/a/b/a;->g:J

    return-wide v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/xiaomi/onetrack/a/b/a;->i:Ljava/lang/String;

    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/xiaomi/onetrack/a/b/a;->h:Ljava/lang/String;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/xiaomi/onetrack/a/b/a;->i:Ljava/lang/String;

    return-object v0
.end method

.method public g()I
    .locals 1

    .line 77
    iget v0, p0, Lcom/xiaomi/onetrack/a/b/a;->k:I

    return v0
.end method

.method public h()Z
    .locals 4

    .line 86
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/onetrack/a/b/a;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/onetrack/a/b/a;->h:Ljava/lang/String;

    .line 87
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/onetrack/a/b/a;->i:Ljava/lang/String;

    .line 88
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    const-string v1, "AdMonitor"

    .line 92
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "check AdMonitor isValid error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
