.class public Lio/branch/search/internal/interfaces/LocalInterface$c;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


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
        Lio/branch/search/internal/interfaces/LocalInterface$c$_lancet;
    }
.end annotation


# instance fields
.field public final synthetic a:Lio/branch/search/internal/interfaces/LocalInterface;


# direct methods
.method public constructor <init>(Lio/branch/search/internal/interfaces/LocalInterface;)V
    .locals 0

    iput-object p1, p0, Lio/branch/search/internal/interfaces/LocalInterface$c;->a:Lio/branch/search/internal/interfaces/LocalInterface;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lio/branch/search/internal/interfaces/LocalInterface$c;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lio/branch/search/internal/interfaces/LocalInterface$c;->onReceive$___twin___(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method private onReceive$___twin___(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    invoke-static {p1}, Lio/branch/search/Util;->b(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object p2

    iget-object v0, p0, Lio/branch/search/internal/interfaces/LocalInterface$c;->a:Lio/branch/search/internal/interfaces/LocalInterface;

    invoke-static {v0}, Lio/branch/search/internal/interfaces/LocalInterface;->b(Lio/branch/search/internal/interfaces/LocalInterface;)Lio/branch/search/l;

    move-result-object v0

    invoke-virtual {v0}, Lio/branch/search/l;->c()Lio/branch/search/e;

    move-result-object v0

    invoke-virtual {v0}, Lio/branch/search/e;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lio/branch/search/internal/interfaces/LocalInterface$c;->a:Lio/branch/search/internal/interfaces/LocalInterface;

    invoke-virtual {p2}, Lio/branch/search/internal/interfaces/LocalInterface;->g()V

    iget-object p2, p0, Lio/branch/search/internal/interfaces/LocalInterface$c;->a:Lio/branch/search/internal/interfaces/LocalInterface;

    invoke-static {p2}, Lio/branch/search/internal/interfaces/LocalInterface;->b(Lio/branch/search/internal/interfaces/LocalInterface;)Lio/branch/search/l;

    move-result-object p2

    invoke-virtual {p2}, Lio/branch/search/l;->c()Lio/branch/search/e;

    move-result-object p2

    invoke-virtual {p2, p1}, Lio/branch/search/e;->a(Landroid/content/Context;)V

    iget-object p2, p0, Lio/branch/search/internal/interfaces/LocalInterface$c;->a:Lio/branch/search/internal/interfaces/LocalInterface;

    invoke-static {p2}, Lio/branch/search/internal/interfaces/LocalInterface;->b(Lio/branch/search/internal/interfaces/LocalInterface;)Lio/branch/search/l;

    move-result-object p2

    invoke-virtual {p2}, Lio/branch/search/l;->b()Lio/branch/search/BranchConfiguration;

    move-result-object p2

    invoke-virtual {p2, p1}, Lio/branch/search/BranchConfiguration;->a(Landroid/content/Context;)V

    iget-object p1, p0, Lio/branch/search/internal/interfaces/LocalInterface$c;->a:Lio/branch/search/internal/interfaces/LocalInterface;

    invoke-static {p1}, Lio/branch/search/internal/interfaces/LocalInterface;->b(Lio/branch/search/internal/interfaces/LocalInterface;)Lio/branch/search/l;

    move-result-object p1

    invoke-static {p1}, Lio/branch/search/internal/rawsqlite/BundleUpdateService;->a(Lio/branch/search/l;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lio/branch/search/internal/interfaces/LocalInterface$c$_lancet;->com_miui_home_launcher_aop_BroadcastReceiverHooker_onReceive(Lio/branch/search/internal/interfaces/LocalInterface$c;Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
