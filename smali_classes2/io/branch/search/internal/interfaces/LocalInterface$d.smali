.class public Lio/branch/search/internal/interfaces/LocalInterface$d;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/branch/search/internal/interfaces/LocalInterface;->c(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/branch/search/internal/interfaces/LocalInterface$d$_lancet;
    }
.end annotation


# instance fields
.field public final synthetic a:Lio/branch/search/internal/interfaces/LocalInterface;


# direct methods
.method public constructor <init>(Lio/branch/search/internal/interfaces/LocalInterface;)V
    .locals 0

    iput-object p1, p0, Lio/branch/search/internal/interfaces/LocalInterface$d;->a:Lio/branch/search/internal/interfaces/LocalInterface;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lio/branch/search/internal/interfaces/LocalInterface$d;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lio/branch/search/internal/interfaces/LocalInterface$d;->onReceive$___twin___(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method private onReceive$___twin___(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const/4 p1, -0x1

    const-string v0, "android.intent.extra.user_handle"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onManagedProfileRemoved, UserHandle ID = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    if-eq p2, p1, :cond_0

    iget-object p1, p0, Lio/branch/search/internal/interfaces/LocalInterface$d;->a:Lio/branch/search/internal/interfaces/LocalInterface;

    invoke-static {p1}, Lio/branch/search/internal/interfaces/LocalInterface;->a(Lio/branch/search/internal/interfaces/LocalInterface;)Lio/branch/search/s3;

    move-result-object p1

    invoke-virtual {p1}, Lio/branch/search/s3;->a()Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lio/branch/search/internal/interfaces/LocalInterface$d$a;

    invoke-direct {v0, p0, p2}, Lio/branch/search/internal/interfaces/LocalInterface$d$a;-><init>(Lio/branch/search/internal/interfaces/LocalInterface$d;I)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lio/branch/search/internal/interfaces/LocalInterface$d$_lancet;->com_miui_home_launcher_aop_BroadcastReceiverHooker_onReceive(Lio/branch/search/internal/interfaces/LocalInterface$d;Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
