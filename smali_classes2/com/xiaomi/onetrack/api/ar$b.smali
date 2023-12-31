.class Lcom/xiaomi/onetrack/api/ar$b;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/onetrack/api/ar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaomi/onetrack/api/ar;


# direct methods
.method public constructor <init>(Lcom/xiaomi/onetrack/api/ar;Landroid/os/Looper;)V
    .locals 0

    .line 245
    iput-object p1, p0, Lcom/xiaomi/onetrack/api/ar$b;->a:Lcom/xiaomi/onetrack/api/ar;

    .line 246
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 251
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 252
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 253
    iget-object p0, p0, Lcom/xiaomi/onetrack/api/ar$b;->a:Lcom/xiaomi/onetrack/api/ar;

    invoke-static {p0}, Lcom/xiaomi/onetrack/api/ar;->h(Lcom/xiaomi/onetrack/api/ar;)V

    goto :goto_0

    .line 254
    :cond_0
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 255
    iget-object p0, p0, Lcom/xiaomi/onetrack/api/ar$b;->a:Lcom/xiaomi/onetrack/api/ar;

    invoke-static {p0}, Lcom/xiaomi/onetrack/api/ar;->i(Lcom/xiaomi/onetrack/api/ar;)V

    :cond_1
    :goto_0
    return-void
.end method
