.class Lcom/xiaomi/onetrack/a/ai$c;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/onetrack/a/ai;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaomi/onetrack/a/ai;


# direct methods
.method public constructor <init>(Lcom/xiaomi/onetrack/a/ai;Landroid/os/Looper;)V
    .locals 0

    .line 193
    iput-object p1, p0, Lcom/xiaomi/onetrack/a/ai$c;->a:Lcom/xiaomi/onetrack/a/ai;

    .line 194
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 199
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 200
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 201
    iget-object p1, p0, Lcom/xiaomi/onetrack/a/ai$c;->a:Lcom/xiaomi/onetrack/a/ai;

    invoke-static {p1}, Lcom/xiaomi/onetrack/a/ai;->f(Lcom/xiaomi/onetrack/a/ai;)V

    :cond_0
    return-void
.end method
