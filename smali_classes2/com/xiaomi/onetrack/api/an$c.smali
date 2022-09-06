.class Lcom/xiaomi/onetrack/api/an$c;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/onetrack/api/an;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaomi/onetrack/api/an;


# direct methods
.method public constructor <init>(Lcom/xiaomi/onetrack/api/an;Landroid/os/Looper;)V
    .locals 0

    .line 211
    iput-object p1, p0, Lcom/xiaomi/onetrack/api/an$c;->a:Lcom/xiaomi/onetrack/api/an;

    .line 212
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 217
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 218
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 219
    iget-object p1, p0, Lcom/xiaomi/onetrack/api/an$c;->a:Lcom/xiaomi/onetrack/api/an;

    invoke-static {p1}, Lcom/xiaomi/onetrack/api/an;->f(Lcom/xiaomi/onetrack/api/an;)V

    goto :goto_0

    .line 220
    :cond_0
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 221
    iget-object p1, p0, Lcom/xiaomi/onetrack/api/an$c;->a:Lcom/xiaomi/onetrack/api/an;

    invoke-static {p1}, Lcom/xiaomi/onetrack/api/an;->g(Lcom/xiaomi/onetrack/api/an;)V

    :cond_1
    :goto_0
    return-void
.end method
