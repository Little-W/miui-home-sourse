.class Lcom/miui/home/launcher/common/userUnlock/UserUnlockController$1;
.super Landroid/content/BroadcastReceiver;
.source "UserUnlockController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/common/userUnlock/UserUnlockController;->getUserUnlockBroadcastReceiver()Landroid/content/BroadcastReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/common/userUnlock/UserUnlockController$1$_lancet;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/common/userUnlock/UserUnlockController;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/common/userUnlock/UserUnlockController;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/miui/home/launcher/common/userUnlock/UserUnlockController$1;->this$0:Lcom/miui/home/launcher/common/userUnlock/UserUnlockController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/common/userUnlock/UserUnlockController$1;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/common/userUnlock/UserUnlockController$1;->onReceive$___twin___(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method private onReceive$___twin___(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-string p1, "android.intent.extra.user_handle"

    const/4 v0, -0x1

    .line 37
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 38
    iget-object p2, p0, Lcom/miui/home/launcher/common/userUnlock/UserUnlockController$1;->this$0:Lcom/miui/home/launcher/common/userUnlock/UserUnlockController;

    invoke-static {p2}, Lcom/miui/home/launcher/common/userUnlock/UserUnlockController;->access$000(Lcom/miui/home/launcher/common/userUnlock/UserUnlockController;)Lcom/miui/home/library/compat/UserManagerCompat;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/miui/home/library/compat/UserManagerCompat;->getUserForUserId(I)Landroid/os/UserHandle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 40
    iget-object p2, p0, Lcom/miui/home/launcher/common/userUnlock/UserUnlockController$1;->this$0:Lcom/miui/home/launcher/common/userUnlock/UserUnlockController;

    invoke-static {p2, p1}, Lcom/miui/home/launcher/common/userUnlock/UserUnlockController;->access$100(Lcom/miui/home/launcher/common/userUnlock/UserUnlockController;Landroid/os/UserHandle;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/miui/home/launcher/common/userUnlock/UserUnlockController$1$_lancet;->com_miui_home_launcher_aop_BroadcastReceiverHooker_onReceive(Lcom/miui/home/launcher/common/userUnlock/UserUnlockController$1;Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
