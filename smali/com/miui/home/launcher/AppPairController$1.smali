.class Lcom/miui/home/launcher/AppPairController$1;
.super Landroid/os/Handler;
.source "AppPairController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/AppPairController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/AppPairController;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/AppPairController;Landroid/os/Looper;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/miui/home/launcher/AppPairController$1;->this$0:Lcom/miui/home/launcher/AppPairController;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 71
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 73
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 74
    iget-object p1, p0, Lcom/miui/home/launcher/AppPairController$1;->this$0:Lcom/miui/home/launcher/AppPairController;

    invoke-static {p1}, Lcom/miui/home/launcher/AppPairController;->access$000(Lcom/miui/home/launcher/AppPairController;)V

    goto :goto_0

    .line 75
    :cond_0
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x2bc

    if-ne p1, v0, :cond_1

    .line 76
    iget-object p1, p0, Lcom/miui/home/launcher/AppPairController$1;->this$0:Lcom/miui/home/launcher/AppPairController;

    invoke-static {p1}, Lcom/miui/home/launcher/AppPairController;->access$100(Lcom/miui/home/launcher/AppPairController;)V

    :cond_1
    :goto_0
    return-void
.end method
