.class Lcom/miui/launcher/utils/StatusBarController$H;
.super Landroid/os/Handler;
.source "StatusBarController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/launcher/utils/StatusBarController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/launcher/utils/StatusBarController;


# direct methods
.method public constructor <init>(Lcom/miui/launcher/utils/StatusBarController;Landroid/os/Looper;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/miui/launcher/utils/StatusBarController$H;->this$0:Lcom/miui/launcher/utils/StatusBarController;

    .line 32
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .line 37
    iget-object v0, p0, Lcom/miui/launcher/utils/StatusBarController$H;->this$0:Lcom/miui/launcher/utils/StatusBarController;

    invoke-static {v0}, Lcom/miui/launcher/utils/StatusBarController;->access$000(Lcom/miui/launcher/utils/StatusBarController;)Landroid/app/StatusBarManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/miui/launcher/utils/StatusBarController$H;->this$0:Lcom/miui/launcher/utils/StatusBarController;

    invoke-static {v0}, Lcom/miui/launcher/utils/StatusBarController;->access$100(Lcom/miui/launcher/utils/StatusBarController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "statusbar"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/StatusBarManager;

    invoke-static {v0, v1}, Lcom/miui/launcher/utils/StatusBarController;->access$002(Lcom/miui/launcher/utils/StatusBarController;Landroid/app/StatusBarManager;)Landroid/app/StatusBarManager;

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/miui/launcher/utils/StatusBarController$H;->this$0:Lcom/miui/launcher/utils/StatusBarController;

    invoke-static {v0}, Lcom/miui/launcher/utils/StatusBarController;->access$000(Lcom/miui/launcher/utils/StatusBarController;)Landroid/app/StatusBarManager;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 42
    :cond_1
    iget-object v0, p0, Lcom/miui/launcher/utils/StatusBarController$H;->this$0:Lcom/miui/launcher/utils/StatusBarController;

    invoke-static {v0}, Lcom/miui/launcher/utils/StatusBarController;->access$000(Lcom/miui/launcher/utils/StatusBarController;)Landroid/app/StatusBarManager;

    move-result-object v0

    iget-object p0, p0, Lcom/miui/launcher/utils/StatusBarController$H;->this$0:Lcom/miui/launcher/utils/StatusBarController;

    iget v1, p1, Landroid/os/Message;->what:I

    iget v2, p1, Landroid/os/Message;->arg1:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v2, v4, :cond_2

    move v2, v4

    goto :goto_0

    :cond_2
    move v2, v3

    :goto_0
    invoke-static {p0, v1, v2}, Lcom/miui/launcher/utils/StatusBarController;->access$200(Lcom/miui/launcher/utils/StatusBarController;IZ)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/app/StatusBarManager;->disable(I)V

    .line 43
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of p0, p0, Ljava/lang/Runnable;

    if-eqz p0, :cond_3

    .line 44
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 46
    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "handleMessage: flag "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p1, Landroid/os/Message;->what:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "  disable "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p1, v4, :cond_4

    move v3, v4

    :cond_4
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "StatusBarController"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
