.class Lcom/market/sdk/EnableStateManager$EnableStateUpdateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "EnableStateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/market/sdk/EnableStateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EnableStateUpdateReceiver"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/market/sdk/EnableStateManager$EnableStateUpdateReceiver$_lancet;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market/sdk/EnableStateManager;


# direct methods
.method private constructor <init>(Lcom/market/sdk/EnableStateManager;)V
    .locals 0

    .line 338
    iput-object p1, p0, Lcom/market/sdk/EnableStateManager$EnableStateUpdateReceiver;->this$0:Lcom/market/sdk/EnableStateManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/market/sdk/EnableStateManager;Lcom/market/sdk/EnableStateManager$1;)V
    .locals 0

    .line 338
    invoke-direct {p0, p1}, Lcom/market/sdk/EnableStateManager$EnableStateUpdateReceiver;-><init>(Lcom/market/sdk/EnableStateManager;)V

    return-void
.end method

.method static synthetic access$000(Lcom/market/sdk/EnableStateManager$EnableStateUpdateReceiver;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/market/sdk/EnableStateManager$EnableStateUpdateReceiver;->onReceive$___twin___(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method private onReceive$___twin___(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 342
    invoke-static {}, Lcom/market/sdk/utils/Utils;->isScreenOff()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 343
    iget-object p0, p0, Lcom/market/sdk/EnableStateManager$EnableStateUpdateReceiver;->this$0:Lcom/market/sdk/EnableStateManager;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/market/sdk/EnableStateManager;->access$300(Lcom/market/sdk/EnableStateManager;Z)V

    return-void

    .line 346
    :cond_0
    iget-object p0, p0, Lcom/market/sdk/EnableStateManager$EnableStateUpdateReceiver;->this$0:Lcom/market/sdk/EnableStateManager;

    .line 347
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    const-wide/32 v0, 0x5265c00

    add-long/2addr p1, v0

    .line 346
    invoke-static {p0, p1, p2}, Lcom/market/sdk/EnableStateManager;->access$100(Lcom/market/sdk/EnableStateManager;J)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/market/sdk/EnableStateManager$EnableStateUpdateReceiver$_lancet;->com_miui_home_launcher_aop_BroadcastReceiverHooker_onReceive(Lcom/market/sdk/EnableStateManager$EnableStateUpdateReceiver;Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
