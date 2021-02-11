.class public Lcom/xiaomi/onetrack/h/a/a/c;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static c()Ljava/lang/String;
    .locals 1

    .line 20
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const-string v0, ""

    :try_start_0
    const-string v1, "ASUS"

    .line 26
    invoke-static {}, Lcom/xiaomi/onetrack/h/a/a/c;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 27
    new-instance v1, Lcom/xiaomi/onetrack/h/a/a/a;

    invoke-direct {v1}, Lcom/xiaomi/onetrack/h/a/a/a;-><init>()V

    invoke-virtual {v1, p1}, Lcom/xiaomi/onetrack/h/a/a/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    move-object v0, p1

    goto/16 :goto_2

    :cond_0
    const-string v1, "HUAWEI"

    .line 28
    invoke-static {}, Lcom/xiaomi/onetrack/h/a/a/c;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 29
    new-instance v1, Lcom/xiaomi/onetrack/h/a/a/d;

    invoke-direct {v1}, Lcom/xiaomi/onetrack/h/a/a/d;-><init>()V

    invoke-virtual {v1, p1}, Lcom/xiaomi/onetrack/h/a/a/d;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    move-object v0, p1

    goto/16 :goto_2

    :cond_1
    const-string v1, "LENOVO"

    .line 30
    invoke-static {}, Lcom/xiaomi/onetrack/h/a/a/c;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 31
    new-instance v1, Lcom/xiaomi/onetrack/h/a/a/f;

    invoke-direct {v1}, Lcom/xiaomi/onetrack/h/a/a/f;-><init>()V

    invoke-virtual {v1, p1}, Lcom/xiaomi/onetrack/h/a/a/f;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    move-object v0, p1

    goto/16 :goto_2

    :cond_2
    const-string v1, "MOTOLORA"

    .line 32
    invoke-static {}, Lcom/xiaomi/onetrack/h/a/a/c;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 33
    new-instance v1, Lcom/xiaomi/onetrack/h/a/a/f;

    invoke-direct {v1}, Lcom/xiaomi/onetrack/h/a/a/f;-><init>()V

    invoke-virtual {v1, p1}, Lcom/xiaomi/onetrack/h/a/a/f;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    move-object v0, p1

    goto/16 :goto_2

    :cond_3
    const-string v1, "MEIZU"

    .line 34
    invoke-static {}, Lcom/xiaomi/onetrack/h/a/a/c;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 35
    new-instance v1, Lcom/xiaomi/onetrack/h/a/a/h;

    invoke-direct {v1}, Lcom/xiaomi/onetrack/h/a/a/h;-><init>()V

    invoke-virtual {v1, p1}, Lcom/xiaomi/onetrack/h/a/a/h;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    move-object v0, p1

    goto/16 :goto_2

    :cond_4
    const-string v1, "OPPO"

    .line 36
    invoke-static {}, Lcom/xiaomi/onetrack/h/a/a/c;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 37
    new-instance v1, Lcom/xiaomi/onetrack/h/a/a/m;

    invoke-direct {v1}, Lcom/xiaomi/onetrack/h/a/a/m;-><init>()V

    invoke-virtual {v1, p1}, Lcom/xiaomi/onetrack/h/a/a/m;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    move-object v0, p1

    goto/16 :goto_2

    :cond_5
    const-string v1, "SAMSUNG"

    .line 38
    invoke-static {}, Lcom/xiaomi/onetrack/h/a/a/c;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 39
    new-instance v1, Lcom/xiaomi/onetrack/h/a/a/o;

    invoke-direct {v1}, Lcom/xiaomi/onetrack/h/a/a/o;-><init>()V

    invoke-virtual {v1, p1}, Lcom/xiaomi/onetrack/h/a/a/o;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    move-object v0, p1

    goto/16 :goto_2

    :cond_6
    const-string v1, "NUBIA"

    .line 40
    invoke-static {}, Lcom/xiaomi/onetrack/h/a/a/c;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 41
    new-instance v1, Lcom/xiaomi/onetrack/h/a/a/j;

    invoke-direct {v1}, Lcom/xiaomi/onetrack/h/a/a/j;-><init>()V

    invoke-virtual {v1, p1}, Lcom/xiaomi/onetrack/h/a/a/j;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    move-object v0, p1

    goto/16 :goto_2

    :cond_7
    const-string v1, "VIVO"

    .line 42
    invoke-static {}, Lcom/xiaomi/onetrack/h/a/a/c;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 43
    new-instance v1, Lcom/xiaomi/onetrack/h/a/a/q;

    invoke-direct {v1}, Lcom/xiaomi/onetrack/h/a/a/q;-><init>()V

    invoke-virtual {v1, p1}, Lcom/xiaomi/onetrack/h/a/a/q;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    move-object v0, p1

    goto/16 :goto_2

    :cond_8
    const-string v1, "XIAOMI"

    .line 44
    invoke-static {}, Lcom/xiaomi/onetrack/h/a/a/c;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    const-string v1, "REDMI"

    invoke-static {}, Lcom/xiaomi/onetrack/h/a/a/c;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    goto/16 :goto_1

    :cond_9
    const-string v1, "BLACKSHARK"

    .line 46
    invoke-static {}, Lcom/xiaomi/onetrack/h/a/a/c;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 47
    invoke-static {p1}, Lcom/xiaomi/onetrack/h/m;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    move-object v0, p1

    goto/16 :goto_2

    :cond_a
    const-string v1, "ONEPLUS"

    .line 48
    invoke-static {}, Lcom/xiaomi/onetrack/h/a/a/c;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 49
    new-instance v1, Lcom/xiaomi/onetrack/h/a/a/k;

    invoke-direct {v1}, Lcom/xiaomi/onetrack/h/a/a/k;-><init>()V

    invoke-virtual {v1, p1}, Lcom/xiaomi/onetrack/h/a/a/k;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    move-object v0, p1

    goto/16 :goto_2

    :cond_b
    const-string v1, "ZTE"

    .line 50
    invoke-static {}, Lcom/xiaomi/onetrack/h/a/a/c;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 51
    new-instance v1, Lcom/xiaomi/onetrack/h/a/a/r;

    invoke-direct {v1}, Lcom/xiaomi/onetrack/h/a/a/r;-><init>()V

    invoke-virtual {v1, p1}, Lcom/xiaomi/onetrack/h/a/a/r;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    move-object v0, p1

    goto :goto_2

    :cond_c
    const-string v1, "FERRMEOS"

    .line 52
    invoke-static {}, Lcom/xiaomi/onetrack/h/a/a/c;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    invoke-virtual {p0}, Lcom/xiaomi/onetrack/h/a/a/c;->a()Z

    move-result v1

    if-eqz v1, :cond_d

    goto :goto_0

    :cond_d
    const-string v1, "SSUI"

    .line 54
    invoke-static {}, Lcom/xiaomi/onetrack/h/a/a/c;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    invoke-virtual {p0}, Lcom/xiaomi/onetrack/h/a/a/c;->b()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 55
    :cond_e
    new-instance v1, Lcom/xiaomi/onetrack/h/a/a/r;

    invoke-direct {v1}, Lcom/xiaomi/onetrack/h/a/a/r;-><init>()V

    invoke-virtual {v1, p1}, Lcom/xiaomi/onetrack/h/a/a/r;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    move-object v0, p1

    goto :goto_2

    .line 53
    :cond_f
    :goto_0
    new-instance v1, Lcom/xiaomi/onetrack/h/a/a/r;

    invoke-direct {v1}, Lcom/xiaomi/onetrack/h/a/a/r;-><init>()V

    invoke-virtual {v1, p1}, Lcom/xiaomi/onetrack/h/a/a/r;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    move-object v0, p1

    goto :goto_2

    .line 45
    :cond_10
    :goto_1
    invoke-static {p1}, Lcom/xiaomi/onetrack/h/m;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p1

    goto :goto_2

    :catch_0
    move-exception p1

    const-string v1, "DevicesIDsHelper"

    .line 58
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/xiaomi/onetrack/h/n;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_11
    :goto_2
    return-object v0
.end method

.method public a()Z
    .locals 2

    const-string v0, "ro.build.freeme.label"

    .line 65
    invoke-static {v0}, Lcom/xiaomi/onetrack/h/w;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 66
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "FREEMEOS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public b()Z
    .locals 2

    const-string v0, "ro.ssui.product"

    .line 73
    invoke-static {v0}, Lcom/xiaomi/onetrack/h/w;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 74
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "unknown"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
