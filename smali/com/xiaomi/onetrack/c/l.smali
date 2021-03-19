.class Lcom/xiaomi/onetrack/c/l;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/onetrack/c/l$_lancet;
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaomi/onetrack/c/k;


# direct methods
.method constructor <init>(Lcom/xiaomi/onetrack/c/k;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/xiaomi/onetrack/c/l;->a:Lcom/xiaomi/onetrack/c/k;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/xiaomi/onetrack/c/l;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/onetrack/c/l;->onReceive$___twin___(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method private onReceive$___twin___(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    .line 124
    invoke-static {}, Lcom/xiaomi/onetrack/g/c;->a()Z

    move-result p1

    const-string p2, "UploadTimer"

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UploadTimer netReceiver, \u7f51\u7edc\u662f\u5426\u53ef\u7528="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/xiaomi/onetrack/h/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    const/4 p1, 0x3

    .line 129
    new-array p1, p1, [I

    fill-array-data p1, :array_0

    .line 135
    array-length p2, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_1

    aget v1, p1, v0

    .line 136
    invoke-static {v1}, Lcom/xiaomi/onetrack/b/l;->a(I)I

    move-result v2

    .line 137
    iget-object v3, p0, Lcom/xiaomi/onetrack/c/l;->a:Lcom/xiaomi/onetrack/c/k;

    invoke-virtual {v3, v1}, Lcom/xiaomi/onetrack/c/k;->hasMessages(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 138
    iget-object v3, p0, Lcom/xiaomi/onetrack/c/l;->a:Lcom/xiaomi/onetrack/c/k;

    int-to-long v4, v2

    invoke-virtual {v3, v1, v4, v5}, Lcom/xiaomi/onetrack/c/k;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void

    :array_0
    .array-data 4
        0x0
        0x1
        0x2
    .end array-data
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/xiaomi/onetrack/c/l$_lancet;->com_miui_home_launcher_aop_BroadcastReceiverHooker_onReceive(Lcom/xiaomi/onetrack/c/l;Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
