.class Lcom/miui/maml/data/BroadcastBinder$MyBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BroadcastBinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/data/BroadcastBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyBroadcastReceiver"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/maml/data/BroadcastBinder$MyBroadcastReceiver$_lancet;
    }
.end annotation


# instance fields
.field private mBinder:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/maml/data/BroadcastBinder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/miui/maml/data/BroadcastBinder;)V
    .locals 1

    .line 56
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 57
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/maml/data/BroadcastBinder$MyBroadcastReceiver;->mBinder:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/maml/data/BroadcastBinder$MyBroadcastReceiver;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/maml/data/BroadcastBinder$MyBroadcastReceiver;->onReceive$___twin___(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method private onReceive$___twin___(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 62
    iget-object p0, p0, Lcom/miui/maml/data/BroadcastBinder$MyBroadcastReceiver;->mBinder:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/miui/maml/data/BroadcastBinder;

    const-string v0, "BroadcastBinder"

    if-nez p0, :cond_0

    const-string p0, "ContentQueryTask: resolver or binder is null"

    .line 64
    invoke-static {v0, p0}, Lcom/miui/maml/util/MamlLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 68
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNotify: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/maml/util/MamlLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 71
    invoke-virtual {p0, p1, p2, v0}, Lcom/miui/maml/data/BroadcastBinder;->onNotify(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/miui/maml/data/BroadcastBinder$MyBroadcastReceiver$_lancet;->com_miui_home_launcher_aop_BroadcastReceiverHooker_onReceive(Lcom/miui/maml/data/BroadcastBinder$MyBroadcastReceiver;Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
