.class public Lcom/miui/maml/NotifierManager$ConfigChangeNotifier;
.super Lcom/miui/maml/NotifierManager$BaseNotifier;
.source "NotifierManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/NotifierManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConfigChangeNotifier"
.end annotation


# instance fields
.field private mComponentCallback:Landroid/content/ComponentCallbacks2;

.field private mConfiguration:Landroid/content/res/Configuration;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 598
    invoke-direct {p0, p1}, Lcom/miui/maml/NotifierManager$BaseNotifier;-><init>(Landroid/content/Context;)V

    .line 572
    new-instance v0, Lcom/miui/maml/NotifierManager$ConfigChangeNotifier$1;

    invoke-direct {v0, p0}, Lcom/miui/maml/NotifierManager$ConfigChangeNotifier$1;-><init>(Lcom/miui/maml/NotifierManager$ConfigChangeNotifier;)V

    iput-object v0, p0, Lcom/miui/maml/NotifierManager$ConfigChangeNotifier;->mComponentCallback:Landroid/content/ComponentCallbacks2;

    .line 599
    new-instance v0, Landroid/content/res/Configuration;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v0, p0, Lcom/miui/maml/NotifierManager$ConfigChangeNotifier;->mConfiguration:Landroid/content/res/Configuration;

    return-void
.end method

.method static synthetic access$500(Lcom/miui/maml/NotifierManager$ConfigChangeNotifier;)Landroid/content/res/Configuration;
    .locals 0

    .line 569
    iget-object p0, p0, Lcom/miui/maml/NotifierManager$ConfigChangeNotifier;->mConfiguration:Landroid/content/res/Configuration;

    return-object p0
.end method

.method static synthetic access$600(Lcom/miui/maml/NotifierManager$ConfigChangeNotifier;Landroid/content/res/Configuration;)V
    .locals 0

    .line 569
    invoke-direct {p0, p1}, Lcom/miui/maml/NotifierManager$ConfigChangeNotifier;->checkIfNeedToNotify(Landroid/content/res/Configuration;)V

    return-void
.end method

.method private checkIfNeedToNotify(Landroid/content/res/Configuration;)V
    .locals 1

    const/4 v0, 0x0

    .line 627
    invoke-virtual {p0, v0, v0, p1}, Lcom/miui/maml/NotifierManager$ConfigChangeNotifier;->onNotify(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/Object;)V

    const-string p1, "NotifierManager"

    const-string v0, "maml config changed"

    .line 628
    invoke-static {p1, v0}, Lcom/miui/maml/util/MamlLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onListenerAdded(Lcom/miui/maml/NotifierManager$OnNotifyListener;)V
    .locals 2

    .line 623
    iget-object v0, p0, Lcom/miui/maml/NotifierManager$ConfigChangeNotifier;->mConfiguration:Landroid/content/res/Configuration;

    const/4 v1, 0x0

    invoke-interface {p1, v1, v1, v0}, Lcom/miui/maml/NotifierManager$OnNotifyListener;->onNotify(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/Object;)V

    return-void
.end method

.method protected onRegister()V
    .locals 2

    .line 605
    :try_start_0
    iget-object v0, p0, Lcom/miui/maml/NotifierManager$ConfigChangeNotifier;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/maml/NotifierManager$ConfigChangeNotifier;->mComponentCallback:Landroid/content/ComponentCallbacks2;

    invoke-virtual {v0, v1}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 607
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 609
    :goto_0
    iget-object v0, p0, Lcom/miui/maml/NotifierManager$ConfigChangeNotifier;->mConfiguration:Landroid/content/res/Configuration;

    invoke-direct {p0, v0}, Lcom/miui/maml/NotifierManager$ConfigChangeNotifier;->checkIfNeedToNotify(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onUnregister()V
    .locals 2

    .line 615
    :try_start_0
    iget-object v0, p0, Lcom/miui/maml/NotifierManager$ConfigChangeNotifier;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/maml/NotifierManager$ConfigChangeNotifier;->mComponentCallback:Landroid/content/ComponentCallbacks2;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 617
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
