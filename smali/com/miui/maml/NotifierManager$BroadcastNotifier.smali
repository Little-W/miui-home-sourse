.class public Lcom/miui/maml/NotifierManager$BroadcastNotifier;
.super Lcom/miui/maml/NotifierManager$BaseNotifier;
.source "NotifierManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/NotifierManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BroadcastNotifier"
.end annotation


# instance fields
.field private mAction:Ljava/lang/String;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 357
    invoke-direct {p0, p1}, Lcom/miui/maml/NotifierManager$BaseNotifier;-><init>(Landroid/content/Context;)V

    .line 344
    new-instance p1, Lcom/miui/maml/NotifierManager$BroadcastNotifier$1;

    invoke-direct {p1, p0}, Lcom/miui/maml/NotifierManager$BroadcastNotifier$1;-><init>(Lcom/miui/maml/NotifierManager$BroadcastNotifier;)V

    iput-object p1, p0, Lcom/miui/maml/NotifierManager$BroadcastNotifier;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 361
    invoke-direct {p0, p1}, Lcom/miui/maml/NotifierManager$BaseNotifier;-><init>(Landroid/content/Context;)V

    .line 344
    new-instance p1, Lcom/miui/maml/NotifierManager$BroadcastNotifier$1;

    invoke-direct {p1, p0}, Lcom/miui/maml/NotifierManager$BroadcastNotifier$1;-><init>(Lcom/miui/maml/NotifierManager$BroadcastNotifier;)V

    iput-object p1, p0, Lcom/miui/maml/NotifierManager$BroadcastNotifier;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 362
    iput-object p2, p0, Lcom/miui/maml/NotifierManager$BroadcastNotifier;->mAction:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected createIntentFilter()Landroid/content/IntentFilter;
    .locals 2

    .line 388
    invoke-virtual {p0}, Lcom/miui/maml/NotifierManager$BroadcastNotifier;->getIntentAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 389
    :cond_0
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    :goto_0
    return-object v0
.end method

.method protected getIntentAction()Ljava/lang/String;
    .locals 1

    .line 393
    iget-object v0, p0, Lcom/miui/maml/NotifierManager$BroadcastNotifier;->mAction:Ljava/lang/String;

    return-object v0
.end method

.method protected onRegister()V
    .locals 3

    .line 367
    iget-object v0, p0, Lcom/miui/maml/NotifierManager$BroadcastNotifier;->mIntentFilter:Landroid/content/IntentFilter;

    if-nez v0, :cond_0

    .line 368
    invoke-virtual {p0}, Lcom/miui/maml/NotifierManager$BroadcastNotifier;->createIntentFilter()Landroid/content/IntentFilter;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/maml/NotifierManager$BroadcastNotifier;->mIntentFilter:Landroid/content/IntentFilter;

    .line 369
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/NotifierManager$BroadcastNotifier;->mIntentFilter:Landroid/content/IntentFilter;

    if-nez v0, :cond_1

    const-string v0, "NotifierManager"

    const-string v1, "onRegister: mIntentFilter is null"

    .line 370
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 373
    :cond_1
    iget-object v0, p0, Lcom/miui/maml/NotifierManager$BroadcastNotifier;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/maml/NotifierManager$BroadcastNotifier;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/miui/maml/NotifierManager$BroadcastNotifier;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 375
    iget-object v1, p0, Lcom/miui/maml/NotifierManager$BroadcastNotifier;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Lcom/miui/maml/NotifierManager$BroadcastNotifier;->onNotify(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method protected onUnregister()V
    .locals 2

    .line 382
    :try_start_0
    iget-object v0, p0, Lcom/miui/maml/NotifierManager$BroadcastNotifier;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/maml/NotifierManager$BroadcastNotifier;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
