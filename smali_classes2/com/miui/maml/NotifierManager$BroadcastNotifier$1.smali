.class Lcom/miui/maml/NotifierManager$BroadcastNotifier$1;
.super Landroid/content/BroadcastReceiver;
.source "NotifierManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/NotifierManager$BroadcastNotifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/maml/NotifierManager$BroadcastNotifier$1$_lancet;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/maml/NotifierManager$BroadcastNotifier;


# direct methods
.method constructor <init>(Lcom/miui/maml/NotifierManager$BroadcastNotifier;)V
    .locals 0

    .line 346
    iput-object p1, p0, Lcom/miui/maml/NotifierManager$BroadcastNotifier$1;->this$0:Lcom/miui/maml/NotifierManager$BroadcastNotifier;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/maml/NotifierManager$BroadcastNotifier$1;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/maml/NotifierManager$BroadcastNotifier$1;->onReceive$___twin___(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method private onReceive$___twin___(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 349
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onNotify: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/maml/NotifierManager$BroadcastNotifier$1;->this$0:Lcom/miui/maml/NotifierManager$BroadcastNotifier;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NotifierManager"

    invoke-static {v1, v0}, Lcom/miui/maml/util/MamlLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    iget-object p0, p0, Lcom/miui/maml/NotifierManager$BroadcastNotifier$1;->this$0:Lcom/miui/maml/NotifierManager$BroadcastNotifier;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/miui/maml/NotifierManager$BroadcastNotifier;->onNotify(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/miui/maml/NotifierManager$BroadcastNotifier$1$_lancet;->com_miui_home_launcher_aop_BroadcastReceiverHooker_onReceive(Lcom/miui/maml/NotifierManager$BroadcastNotifier$1;Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
