.class Lcom/android/systemui/shared/recents/webapps/WebAppDAO$DataChangeBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WebAppDAO.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/shared/recents/webapps/WebAppDAO;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DataChangeBroadcastReceiver"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/shared/recents/webapps/WebAppDAO$DataChangeBroadcastReceiver$_lancet;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/shared/recents/webapps/WebAppDAO;


# direct methods
.method private constructor <init>(Lcom/android/systemui/shared/recents/webapps/WebAppDAO;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/android/systemui/shared/recents/webapps/WebAppDAO$DataChangeBroadcastReceiver;->this$0:Lcom/android/systemui/shared/recents/webapps/WebAppDAO;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/shared/recents/webapps/WebAppDAO;Lcom/android/systemui/shared/recents/webapps/WebAppDAO$1;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/android/systemui/shared/recents/webapps/WebAppDAO$DataChangeBroadcastReceiver;-><init>(Lcom/android/systemui/shared/recents/webapps/WebAppDAO;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/shared/recents/webapps/WebAppDAO$DataChangeBroadcastReceiver;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/shared/recents/webapps/WebAppDAO$DataChangeBroadcastReceiver;->onReceive$___twin___(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method private onReceive$___twin___(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 39
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "miui.browser.webapps.action.DATA_CHANGE"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 42
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/shared/recents/webapps/WebAppDAO$DataChangeBroadcastReceiver;->this$0:Lcom/android/systemui/shared/recents/webapps/WebAppDAO;

    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/webapps/WebAppDAO;->reset()V

    .line 43
    iget-object p0, p0, Lcom/android/systemui/shared/recents/webapps/WebAppDAO$DataChangeBroadcastReceiver;->this$0:Lcom/android/systemui/shared/recents/webapps/WebAppDAO;

    invoke-static {p0}, Lcom/android/systemui/shared/recents/webapps/WebAppDAO;->access$100(Lcom/android/systemui/shared/recents/webapps/WebAppDAO;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/systemui/shared/recents/webapps/WebAppDAO$DataChangeBroadcastReceiver$_lancet;->com_miui_home_launcher_aop_BroadcastReceiverHooker_onReceive(Lcom/android/systemui/shared/recents/webapps/WebAppDAO$DataChangeBroadcastReceiver;Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
