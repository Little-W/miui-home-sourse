.class public Lio/branch/search/internal/interfaces/LocalInterface$e;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/branch/search/internal/interfaces/LocalInterface;->b(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/branch/search/internal/interfaces/LocalInterface$e$_lancet;
    }
.end annotation


# instance fields
.field public final synthetic a:Lio/branch/search/internal/interfaces/LocalInterface;


# direct methods
.method public constructor <init>(Lio/branch/search/internal/interfaces/LocalInterface;)V
    .locals 0

    iput-object p1, p0, Lio/branch/search/internal/interfaces/LocalInterface$e;->a:Lio/branch/search/internal/interfaces/LocalInterface;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lio/branch/search/internal/interfaces/LocalInterface$e;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lio/branch/search/internal/interfaces/LocalInterface$e;->onReceive$___twin___(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method private onReceive$___twin___(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    const-string v0, "android.intent.extra.USER"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/os/UserHandle;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onManagedProfileAdded, UserHandle ID = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Landroid/os/UserManager;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide p1

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object p1, p0, Lio/branch/search/internal/interfaces/LocalInterface$e;->a:Lio/branch/search/internal/interfaces/LocalInterface;

    invoke-static {p1}, Lio/branch/search/internal/interfaces/LocalInterface;->a(Lio/branch/search/internal/interfaces/LocalInterface;)Lio/branch/search/s3;

    move-result-object p1

    invoke-virtual {p1}, Lio/branch/search/s3;->a()Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lio/branch/search/internal/interfaces/LocalInterface$e$a;

    invoke-direct {p2, p0}, Lio/branch/search/internal/interfaces/LocalInterface$e$a;-><init>(Lio/branch/search/internal/interfaces/LocalInterface$e;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lio/branch/search/internal/interfaces/LocalInterface$e$_lancet;->com_miui_home_launcher_aop_BroadcastReceiverHooker_onReceive(Lio/branch/search/internal/interfaces/LocalInterface$e;Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
