.class Lcom/miui/home/recents/OverviewComponentObserver$1;
.super Landroid/content/BroadcastReceiver;
.source "OverviewComponentObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/recents/OverviewComponentObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/recents/OverviewComponentObserver$1$_lancet;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/recents/OverviewComponentObserver;


# direct methods
.method constructor <init>(Lcom/miui/home/recents/OverviewComponentObserver;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/miui/home/recents/OverviewComponentObserver$1;->this$0:Lcom/miui/home/recents/OverviewComponentObserver;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/recents/OverviewComponentObserver$1;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/home/recents/OverviewComponentObserver$1;->onReceive$___twin___(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method private onReceive$___twin___(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 46
    iget-object p1, p0, Lcom/miui/home/recents/OverviewComponentObserver$1;->this$0:Lcom/miui/home/recents/OverviewComponentObserver;

    invoke-virtual {p1}, Lcom/miui/home/recents/OverviewComponentObserver;->updateOverviewTargets()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/miui/home/recents/OverviewComponentObserver$1$_lancet;->com_miui_home_launcher_aop_BroadcastReceiverHooker_onReceive(Lcom/miui/home/recents/OverviewComponentObserver$1;Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
