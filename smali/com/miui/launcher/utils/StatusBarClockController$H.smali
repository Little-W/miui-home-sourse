.class Lcom/miui/launcher/utils/StatusBarClockController$H;
.super Landroid/os/Handler;
.source "StatusBarClockController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/launcher/utils/StatusBarClockController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "H"
.end annotation


# static fields
.field public static final HIDE:I = 0x1

.field public static final SHOW:I


# instance fields
.field final synthetic this$0:Lcom/miui/launcher/utils/StatusBarClockController;


# direct methods
.method public constructor <init>(Lcom/miui/launcher/utils/StatusBarClockController;Landroid/os/Looper;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/miui/launcher/utils/StatusBarClockController$H;->this$0:Lcom/miui/launcher/utils/StatusBarClockController;

    .line 29
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 34
    iget-object v0, p0, Lcom/miui/launcher/utils/StatusBarClockController$H;->this$0:Lcom/miui/launcher/utils/StatusBarClockController;

    invoke-static {v0}, Lcom/miui/launcher/utils/StatusBarClockController;->access$000(Lcom/miui/launcher/utils/StatusBarClockController;)Landroid/app/StatusBarManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 35
    iget-object v0, p0, Lcom/miui/launcher/utils/StatusBarClockController$H;->this$0:Lcom/miui/launcher/utils/StatusBarClockController;

    invoke-static {v0}, Lcom/miui/launcher/utils/StatusBarClockController;->access$100(Lcom/miui/launcher/utils/StatusBarClockController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "statusbar"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/StatusBarManager;

    invoke-static {v0, v1}, Lcom/miui/launcher/utils/StatusBarClockController;->access$002(Lcom/miui/launcher/utils/StatusBarClockController;Landroid/app/StatusBarManager;)Landroid/app/StatusBarManager;

    .line 37
    :cond_0
    iget-object v0, p0, Lcom/miui/launcher/utils/StatusBarClockController$H;->this$0:Lcom/miui/launcher/utils/StatusBarClockController;

    invoke-static {v0}, Lcom/miui/launcher/utils/StatusBarClockController;->access$000(Lcom/miui/launcher/utils/StatusBarClockController;)Landroid/app/StatusBarManager;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 39
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 48
    :pswitch_0
    iget-object p1, p0, Lcom/miui/launcher/utils/StatusBarClockController$H;->this$0:Lcom/miui/launcher/utils/StatusBarClockController;

    invoke-static {p1}, Lcom/miui/launcher/utils/StatusBarClockController;->access$000(Lcom/miui/launcher/utils/StatusBarClockController;)Landroid/app/StatusBarManager;

    move-result-object p1

    const/high16 v0, 0x800000

    invoke-virtual {p1, v0}, Landroid/app/StatusBarManager;->disable(I)V

    const-string p1, "StatusBarClockController"

    const-string v0, "hide status bar clock"

    .line 49
    invoke-static {p1, v0}, Lmiui/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 41
    :pswitch_1
    iget-object v0, p0, Lcom/miui/launcher/utils/StatusBarClockController$H;->this$0:Lcom/miui/launcher/utils/StatusBarClockController;

    invoke-static {v0}, Lcom/miui/launcher/utils/StatusBarClockController;->access$000(Lcom/miui/launcher/utils/StatusBarClockController;)Landroid/app/StatusBarManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    const-string v0, "StatusBarClockController"

    const-string v1, "show status bar clock"

    .line 42
    invoke-static {v0, v1}, Lmiui/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    .line 44
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_2
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
