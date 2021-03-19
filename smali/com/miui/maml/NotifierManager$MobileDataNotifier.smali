.class public Lcom/miui/maml/NotifierManager$MobileDataNotifier;
.super Lcom/miui/maml/NotifierManager$ContentChangeNotifier;
.source "NotifierManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/NotifierManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MobileDataNotifier"
.end annotation


# instance fields
.field private mMobileDataUtils:Lcom/miui/maml/util/MobileDataUtils;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 401
    invoke-direct {p0, p1, v0}, Lcom/miui/maml/NotifierManager$ContentChangeNotifier;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    .line 402
    invoke-static {}, Lcom/miui/maml/util/MobileDataUtils;->getInstance()Lcom/miui/maml/util/MobileDataUtils;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/maml/NotifierManager$MobileDataNotifier;->mMobileDataUtils:Lcom/miui/maml/util/MobileDataUtils;

    return-void
.end method


# virtual methods
.method protected onRegister()V
    .locals 3

    .line 407
    iget-object v0, p0, Lcom/miui/maml/NotifierManager$MobileDataNotifier;->mMobileDataUtils:Lcom/miui/maml/util/MobileDataUtils;

    iget-object v1, p0, Lcom/miui/maml/NotifierManager$MobileDataNotifier;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/miui/maml/NotifierManager$MobileDataNotifier;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2}, Lcom/miui/maml/util/MobileDataUtils;->registerContentObserver(Landroid/content/Context;Landroid/database/ContentObserver;)V

    const/4 v0, 0x1

    .line 408
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v1, v0}, Lcom/miui/maml/NotifierManager$MobileDataNotifier;->onNotify(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/Object;)V

    return-void
.end method
