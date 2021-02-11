.class final Lcom/google/android/libraries/gsa/launcherclient/f;
.super Landroid/content/BroadcastReceiver;
.source "LauncherClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/libraries/gsa/launcherclient/f$_lancet;
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/libraries/gsa/launcherclient/f;->a:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/libraries/gsa/launcherclient/f;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/libraries/gsa/launcherclient/f;->onReceive$___twin___(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method private final onReceive$___twin___(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 2
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    .line 3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_0

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/f;->a:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    .line 4
    invoke-static {v0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->a(Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;)Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$ClientOptions;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$ClientOptions;->a(Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$ClientOptions;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    :cond_0
    iget-object p2, p0, Lcom/google/android/libraries/gsa/launcherclient/f;->a:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    .line 5
    invoke-static {p2}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->b(Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;)Lcom/google/android/libraries/gsa/launcherclient/l;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/libraries/gsa/launcherclient/l;->a()V

    iget-object p2, p0, Lcom/google/android/libraries/gsa/launcherclient/f;->a:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    .line 6
    invoke-static {p2}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->c(Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;)Lcom/google/android/libraries/gsa/launcherclient/c;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/libraries/gsa/launcherclient/l;->a()V

    iget-object p2, p0, Lcom/google/android/libraries/gsa/launcherclient/f;->a:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    .line 7
    invoke-static {p2, p1}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->a(Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;Landroid/content/Context;)V

    iget-object p1, p0, Lcom/google/android/libraries/gsa/launcherclient/f;->a:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    .line 8
    invoke-static {p1}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->d(Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;)I

    move-result p1

    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/libraries/gsa/launcherclient/f;->a:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    .line 9
    invoke-virtual {p1}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->reconnect()V

    :cond_1
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/libraries/gsa/launcherclient/f$_lancet;->com_miui_home_launcher_aop_BroadcastReceiverHooker_onReceive(Lcom/google/android/libraries/gsa/launcherclient/f;Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
