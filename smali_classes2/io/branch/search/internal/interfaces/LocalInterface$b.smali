.class public Lio/branch/search/internal/interfaces/LocalInterface$b;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/branch/search/internal/interfaces/LocalInterface;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/branch/search/internal/interfaces/LocalInterface$b$_lancet;
    }
.end annotation


# instance fields
.field public final synthetic a:Lio/branch/search/internal/interfaces/LocalInterface;


# direct methods
.method public constructor <init>(Lio/branch/search/internal/interfaces/LocalInterface;)V
    .locals 0

    iput-object p1, p0, Lio/branch/search/internal/interfaces/LocalInterface$b;->a:Lio/branch/search/internal/interfaces/LocalInterface;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lio/branch/search/internal/interfaces/LocalInterface$b;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lio/branch/search/internal/interfaces/LocalInterface$b;->onReceive$___twin___(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method private onReceive$___twin___(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-static {p1}, Lio/branch/search/Util;->b(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object p1

    iget-object p2, p0, Lio/branch/search/internal/interfaces/LocalInterface$b;->a:Lio/branch/search/internal/interfaces/LocalInterface;

    invoke-static {p2}, Lio/branch/search/internal/interfaces/LocalInterface;->b(Lio/branch/search/internal/interfaces/LocalInterface;)Lio/branch/search/l;

    move-result-object p2

    invoke-virtual {p2}, Lio/branch/search/l;->c()Lio/branch/search/e;

    move-result-object p2

    invoke-virtual {p2}, Lio/branch/search/e;->f()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lio/branch/search/internal/interfaces/LocalInterface$b;->a:Lio/branch/search/internal/interfaces/LocalInterface;

    invoke-virtual {p1}, Lio/branch/search/internal/interfaces/LocalInterface;->e()Lio/branch/search/s3;

    move-result-object p1

    new-instance p2, Lio/branch/search/internal/interfaces/LocalInterface$b$a;

    invoke-direct {p2, p0}, Lio/branch/search/internal/interfaces/LocalInterface$b$a;-><init>(Lio/branch/search/internal/interfaces/LocalInterface$b;)V

    invoke-virtual {p1, p2}, Lio/branch/search/s3;->a(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lio/branch/search/internal/interfaces/LocalInterface$b$_lancet;->com_miui_home_launcher_aop_BroadcastReceiverHooker_onReceive(Lio/branch/search/internal/interfaces/LocalInterface$b;Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
