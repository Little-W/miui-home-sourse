.class public Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;
.super Ljava/lang/Object;
.source "LauncherClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$ClientOptions;
    }
.end annotation


# static fields
.field private static b:I = -0x1


# instance fields
.field protected a:Lcom/google/android/libraries/a/c;

.field private final c:Landroid/app/Activity;

.field private final d:Lcom/google/android/libraries/gsa/launcherclient/LauncherClientCallbacks;

.field private final e:Landroid/os/Handler;

.field private final f:Lcom/google/android/libraries/gsa/launcherclient/e;

.field private final g:Lcom/google/android/libraries/gsa/launcherclient/e;

.field private final h:Lcom/google/android/libraries/gsa/launcherclient/l;

.field private final i:Lcom/google/android/libraries/gsa/launcherclient/c;

.field private final j:Landroid/content/BroadcastReceiver;

.field private k:I

.field private l:Z

.field private m:I

.field private n:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$ClientOptions;

.field private o:Landroid/view/WindowManager$LayoutParams;

.field private p:Lcom/google/android/libraries/gsa/launcherclient/i;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    new-instance v0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClientCallbacksAdapter;

    invoke-direct {v0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClientCallbacksAdapter;-><init>()V

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;-><init>(Landroid/app/Activity;Lcom/google/android/libraries/gsa/launcherclient/LauncherClientCallbacks;)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/google/android/libraries/gsa/launcherclient/LauncherClientCallbacks;)V
    .locals 2

    new-instance v0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$ClientOptions;

    const/4 v1, 0x1

    .line 2
    invoke-direct {v0, v1, v1, v1}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$ClientOptions;-><init>(ZZZ)V

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;-><init>(Landroid/app/Activity;Lcom/google/android/libraries/gsa/launcherclient/LauncherClientCallbacks;Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$ClientOptions;)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/google/android/libraries/gsa/launcherclient/LauncherClientCallbacks;Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$ClientOptions;)V
    .locals 1

    .line 3
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;-><init>(Landroid/app/Activity;Lcom/google/android/libraries/gsa/launcherclient/LauncherClientCallbacks;Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$ClientOptions;Landroid/os/Looper;)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/google/android/libraries/gsa/launcherclient/LauncherClientCallbacks;Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$ClientOptions;Landroid/os/Looper;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/libraries/gsa/launcherclient/e;

    const-string v1, "Client"

    const/16 v2, 0x14

    .line 4
    invoke-direct {v0, v1, v2}, Lcom/google/android/libraries/gsa/launcherclient/e;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->f:Lcom/google/android/libraries/gsa/launcherclient/e;

    new-instance v0, Lcom/google/android/libraries/gsa/launcherclient/e;

    const-string v1, "Service"

    const/16 v2, 0xa

    .line 5
    invoke-direct {v0, v1, v2}, Lcom/google/android/libraries/gsa/launcherclient/e;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->g:Lcom/google/android/libraries/gsa/launcherclient/e;

    new-instance v0, Lcom/google/android/libraries/gsa/launcherclient/f;

    .line 6
    invoke-direct {v0, p0}, Lcom/google/android/libraries/gsa/launcherclient/f;-><init>(Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;)V

    iput-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->j:Landroid/content/BroadcastReceiver;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->k:I

    iput-boolean v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->l:Z

    iput v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->m:I

    iput-object p1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->c:Landroid/app/Activity;

    iput-object p2, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->d:Lcom/google/android/libraries/gsa/launcherclient/LauncherClientCallbacks;

    iput-object p3, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->n:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$ClientOptions;

    new-instance p2, Landroid/os/Handler;

    .line 7
    invoke-direct {p2, p4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->e:Landroid/os/Handler;

    new-instance p2, Lcom/google/android/libraries/gsa/launcherclient/l;

    iget-object p3, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->e:Landroid/os/Handler;

    iget-object p4, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->n:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$ClientOptions;

    .line 8
    invoke-static {p4}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$ClientOptions;->a(Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$ClientOptions;)Ljava/lang/String;

    move-result-object p4

    const/16 v1, 0x41

    invoke-direct {p2, p1, v1, p3, p4}, Lcom/google/android/libraries/gsa/launcherclient/l;-><init>(Landroid/content/Context;ILandroid/os/Handler;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->h:Lcom/google/android/libraries/gsa/launcherclient/l;

    iget-object p2, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->e:Landroid/os/Handler;

    iget-object p3, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->n:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$ClientOptions;

    .line 9
    invoke-static {p3}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$ClientOptions;->a(Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$ClientOptions;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p2, p3}, Lcom/google/android/libraries/gsa/launcherclient/c;->a(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)Lcom/google/android/libraries/gsa/launcherclient/c;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->i:Lcom/google/android/libraries/gsa/launcherclient/c;

    iget-object p2, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->i:Lcom/google/android/libraries/gsa/launcherclient/c;

    .line 10
    invoke-virtual {p2, p0}, Lcom/google/android/libraries/gsa/launcherclient/c;->a(Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;)Lcom/google/android/libraries/a/c;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->a:Lcom/google/android/libraries/a/c;

    new-instance p2, Landroid/content/IntentFilter;

    const-string p3, "android.intent.action.PACKAGE_ADDED"

    .line 11
    invoke-direct {p2, p3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string p3, "package"

    .line 12
    invoke-virtual {p2, p3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 13
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p4, 0x13

    if-lt p3, p4, :cond_0

    iget-object p3, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->n:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$ClientOptions;

    .line 14
    invoke-static {p3}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$ClientOptions;->a(Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$ClientOptions;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3, v0}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    :cond_0
    iget-object p3, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->c:Landroid/app/Activity;

    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->j:Landroid/content/BroadcastReceiver;

    .line 15
    invoke-virtual {p3, v0, p2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    sget p2, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->b:I

    if-gtz p2, :cond_1

    .line 16
    invoke-direct {p0, p1}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->a(Landroid/content/Context;)V

    .line 17
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->reconnect()V

    .line 18
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, p4, :cond_2

    iget-object p1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->c:Landroid/app/Activity;

    .line 19
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->c:Landroid/app/Activity;

    .line 20
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->c:Landroid/app/Activity;

    .line 21
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 22
    invoke-virtual {p0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->onAttachedToWindow()V

    :cond_2
    return-void
.end method

.method private static a(I)I
    .locals 1

    if-lez p0, :cond_0

    const/16 v0, 0x7ff

    if-gt p0, v0, :cond_0

    shl-int/lit8 p0, p0, 0x2

    or-int/lit8 p0, p0, 0x1

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid duration"

    .line 144
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 3

    .line 55
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x12

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "app://"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ":"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    .line 56
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p0

    const/16 v0, 0xa

    .line 57
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "v"

    invoke-virtual {p0, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    const/16 v0, 0x11

    .line 58
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "cv"

    invoke-virtual {p0, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    .line 59
    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.launcher3.WINDOW_OVERLAY"

    .line 60
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;)Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$ClientOptions;
    .locals 0

    iget-object p0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->n:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$ClientOptions;

    return-object p0
.end method

.method private final a()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->a:Lcom/google/android/libraries/a/c;

    if-eqz v0, :cond_5

    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->p:Lcom/google/android/libraries/gsa/launcherclient/i;

    if-nez v0, :cond_0

    .line 23
    new-instance v0, Lcom/google/android/libraries/gsa/launcherclient/i;

    invoke-direct {v0}, Lcom/google/android/libraries/gsa/launcherclient/i;-><init>()V

    iput-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->p:Lcom/google/android/libraries/gsa/launcherclient/i;

    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->p:Lcom/google/android/libraries/gsa/launcherclient/i;

    .line 24
    invoke-virtual {v0, p0}, Lcom/google/android/libraries/gsa/launcherclient/i;->a(Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;)V

    sget v0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->b:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->a:Lcom/google/android/libraries/a/c;

    iget-object v1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->o:Landroid/view/WindowManager$LayoutParams;

    iget-object v2, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->p:Lcom/google/android/libraries/gsa/launcherclient/i;

    iget-object v3, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->n:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$ClientOptions;

    .line 25
    invoke-static {v3}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$ClientOptions;->b(Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$ClientOptions;)I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/libraries/a/c;->a(Landroid/view/WindowManager$LayoutParams;Lcom/google/android/libraries/a/e;I)V

    goto :goto_0

    .line 39
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    .line 26
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "layout_params"

    iget-object v2, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->o:Landroid/view/WindowManager$LayoutParams;

    .line 27
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v1, "configuration"

    iget-object v2, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->c:Landroid/app/Activity;

    .line 28
    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v1, "client_options"

    iget-object v2, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->n:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$ClientOptions;

    .line 29
    invoke-static {v2}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$ClientOptions;->b(Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$ClientOptions;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->n:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$ClientOptions;

    .line 30
    invoke-static {v1}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$ClientOptions;->c(Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$ClientOptions;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v1, "partner_overlay_icon"

    iget-object v2, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->n:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$ClientOptions;

    .line 31
    invoke-static {v2}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$ClientOptions;->c(Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$ClientOptions;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v1, "google_overlay_is_default"

    iget-object v2, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->n:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$ClientOptions;

    .line 32
    invoke-static {v2}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$ClientOptions;->e(Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$ClientOptions;)Z

    move-result v2

    .line 33
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "partner_overlay_product_name"

    iget-object v2, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->n:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$ClientOptions;

    .line 34
    invoke-static {v2}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$ClientOptions;->d(Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$ClientOptions;)Ljava/lang/String;

    move-result-object v2

    .line 35
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object v1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->a:Lcom/google/android/libraries/a/c;

    iget-object v2, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->p:Lcom/google/android/libraries/gsa/launcherclient/i;

    .line 36
    invoke-interface {v1, v0, v2}, Lcom/google/android/libraries/a/c;->a(Landroid/os/Bundle;Lcom/google/android/libraries/a/e;)V

    .line 25
    :goto_0
    sget v0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->b:I

    const/4 v1, 0x4

    if-ge v0, v1, :cond_4

    iget v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->k:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->a:Lcom/google/android/libraries/a/c;

    .line 37
    invoke-interface {p0}, Lcom/google/android/libraries/a/c;->e()V

    return-void

    :cond_3
    iget-object p0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->a:Lcom/google/android/libraries/a/c;

    .line 38
    invoke-interface {p0}, Lcom/google/android/libraries/a/c;->d()V

    return-void

    :cond_4
    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->a:Lcom/google/android/libraries/a/c;

    iget p0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->k:I

    .line 39
    invoke-interface {v0, p0}, Lcom/google/android/libraries/a/c;->b(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_5
    return-void
.end method

.method private final a(Landroid/content/Context;)V
    .locals 1

    .line 99
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object p0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->n:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$ClientOptions;

    .line 100
    invoke-static {p0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$ClientOptions;->a(Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$ClientOptions;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    const/16 p1, 0x80

    .line 101
    invoke-virtual {v0, p0, p1}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p0

    const/4 p1, 0x1

    if-eqz p0, :cond_1

    .line 102
    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    if-nez v0, :cond_0

    goto :goto_0

    .line 103
    :cond_0
    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object p0, p0, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    const-string v0, "service.api.version"

    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    sput p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->b:I

    return-void

    .line 102
    :cond_1
    :goto_0
    sput p1, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->b:I

    return-void
.end method

.method private final a(Landroid/view/WindowManager$LayoutParams;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->o:Landroid/view/WindowManager$LayoutParams;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->o:Landroid/view/WindowManager$LayoutParams;

    iget-object p1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->o:Landroid/view/WindowManager$LayoutParams;

    if-eqz p1, :cond_1

    .line 123
    invoke-direct {p0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->a()V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->a:Lcom/google/android/libraries/a/c;

    if-eqz p1, :cond_2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->c:Landroid/app/Activity;

    .line 124
    invoke-virtual {v0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/google/android/libraries/a/c;->a(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->a:Lcom/google/android/libraries/a/c;

    :cond_2
    return-void
.end method

.method static synthetic a(Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->a(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;Landroid/os/Bundle;)V
    .locals 2

    const/4 v0, -0x1

    const-string v1, "service_status"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    if-eq p1, v0, :cond_0

    invoke-direct {p0, p1}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->b(I)V

    :cond_0
    iget-object p0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->d:Lcom/google/android/libraries/gsa/launcherclient/LauncherClientCallbacks;

    instance-of p1, p0, Lcom/google/android/libraries/gsa/launcherclient/j;

    if-eqz p1, :cond_1

    check-cast p0, Lcom/google/android/libraries/gsa/launcherclient/j;

    invoke-interface {p0}, Lcom/google/android/libraries/gsa/launcherclient/j;->a()V

    :cond_1
    return-void
.end method

.method private final a(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->l:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->c:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->j:Landroid/content/BroadcastReceiver;

    .line 104
    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->l:Z

    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->h:Lcom/google/android/libraries/gsa/launcherclient/l;

    .line 105
    invoke-virtual {v0}, Lcom/google/android/libraries/gsa/launcherclient/l;->a()V

    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->p:Lcom/google/android/libraries/gsa/launcherclient/i;

    if-eqz v0, :cond_1

    .line 106
    invoke-virtual {v0}, Lcom/google/android/libraries/gsa/launcherclient/i;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->p:Lcom/google/android/libraries/gsa/launcherclient/i;

    :cond_1
    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->i:Lcom/google/android/libraries/gsa/launcherclient/c;

    .line 107
    invoke-virtual {v0, p0, p1}, Lcom/google/android/libraries/gsa/launcherclient/c;->a(Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;Z)V

    return-void
.end method

.method static synthetic b(Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;)Lcom/google/android/libraries/gsa/launcherclient/l;
    .locals 0

    iget-object p0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->h:Lcom/google/android/libraries/gsa/launcherclient/l;

    return-object p0
.end method

.method private final b(I)V
    .locals 3

    iget v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->m:I

    if-eq v0, p1, :cond_2

    iput p1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->m:I

    iget-object p0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->d:Lcom/google/android/libraries/gsa/launcherclient/LauncherClientCallbacks;

    and-int/lit8 v0, p1, 0x1

    and-int/lit8 p1, p1, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    move p1, v2

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    if-eq v2, v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    .line 73
    :goto_1
    invoke-interface {p0, v1, p1}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClientCallbacks;->onServiceStateChanged(ZZ)V

    :cond_2
    return-void
.end method

.method static synthetic b(Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "overlay_animation_complete"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->d:Lcom/google/android/libraries/gsa/launcherclient/LauncherClientCallbacks;

    invoke-interface {p0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClientCallbacks;->onGoogleOverlayTransitionComplete()V

    :cond_0
    return-void
.end method

.method private final b()Z
    .locals 0

    iget-object p0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->a:Lcom/google/android/libraries/a/c;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic c(Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;)Lcom/google/android/libraries/gsa/launcherclient/c;
    .locals 0

    iget-object p0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->i:Lcom/google/android/libraries/gsa/launcherclient/c;

    return-object p0
.end method

.method static synthetic c(Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "google_overlay_icon"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->d:Lcom/google/android/libraries/gsa/launcherclient/LauncherClientCallbacks;

    invoke-interface {p0, p1}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClientCallbacks;->onGoogleOverlayIconChanged(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method static synthetic d(Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;)I
    .locals 0

    iget p0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->k:I

    return p0
.end method

.method static synthetic d(Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "initiate_overlay_switch"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->d:Lcom/google/android/libraries/gsa/launcherclient/LauncherClientCallbacks;

    invoke-interface {p0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClientCallbacks;->onSharedOverlaySwitchInitiated()V

    :cond_0
    return-void
.end method

.method static synthetic e(Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->c:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic f(Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;)I
    .locals 0

    iget p0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->m:I

    return p0
.end method

.method static synthetic g(Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;)Lcom/google/android/libraries/gsa/launcherclient/LauncherClientCallbacks;
    .locals 0

    iget-object p0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->d:Lcom/google/android/libraries/gsa/launcherclient/LauncherClientCallbacks;

    return-object p0
.end method

.method static synthetic h(Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;)Lcom/google/android/libraries/gsa/launcherclient/e;
    .locals 0

    iget-object p0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->g:Lcom/google/android/libraries/gsa/launcherclient/e;

    return-object p0
.end method

.method static synthetic i(Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->b(I)V

    return-void
.end method


# virtual methods
.method final a(Lcom/google/android/libraries/a/c;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->g:Lcom/google/android/libraries/gsa/launcherclient/e;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    const-string v3, "Connected"

    .line 93
    invoke-virtual {v0, v3, v2}, Lcom/google/android/libraries/gsa/launcherclient/e;->a(Ljava/lang/String;Z)V

    iput-object p1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->a:Lcom/google/android/libraries/a/c;

    iget-object p1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->a:Lcom/google/android/libraries/a/c;

    if-nez p1, :cond_1

    .line 94
    invoke-direct {p0, v1}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->b(I)V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->o:Landroid/view/WindowManager$LayoutParams;

    if-eqz p1, :cond_2

    .line 95
    invoke-direct {p0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->a()V

    :cond_2
    return-void
.end method

.method public disconnect()V
    .locals 1

    const/4 v0, 0x1

    .line 40
    invoke-direct {p0, v0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->a(Z)V

    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 3

    .line 41
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "LauncherClient"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 42
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "  "

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->b()Z

    move-result v0

    .line 43
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x12

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "isConnected: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->h:Lcom/google/android/libraries/gsa/launcherclient/l;

    .line 44
    invoke-virtual {v0}, Lcom/google/android/libraries/gsa/launcherclient/l;->c()Z

    move-result v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x12

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "act.isBound: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->i:Lcom/google/android/libraries/gsa/launcherclient/c;

    .line 45
    invoke-virtual {v0}, Lcom/google/android/libraries/gsa/launcherclient/l;->c()Z

    move-result v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x12

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "app.isBound: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    sget v0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->b:I

    .line 46
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1b

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "serviceVersion: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 47
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x11

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "clientVersion: 17"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->k:I

    .line 48
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1b

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mActivityState: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->m:I

    .line 49
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1b

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mServiceStatus: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->n:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$ClientOptions;

    .line 50
    invoke-static {v0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$ClientOptions;->b(Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$ClientOptions;)I

    move-result v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x2d

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mCurrentServiceConnectionOptions: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->f:Lcom/google/android/libraries/gsa/launcherclient/e;

    .line 51
    invoke-virtual {v0, p1, p2}, Lcom/google/android/libraries/gsa/launcherclient/e;->a(Ljava/lang/String;Ljava/io/PrintWriter;)V

    iget-object p0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->g:Lcom/google/android/libraries/gsa/launcherclient/e;

    .line 52
    invoke-virtual {p0, p1, p2}, Lcom/google/android/libraries/gsa/launcherclient/e;->a(Ljava/lang/String;Ljava/io/PrintWriter;)V

    return-void
.end method

.method public endMove()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->f:Lcom/google/android/libraries/gsa/launcherclient/e;

    const-string v1, "endMove"

    .line 53
    invoke-virtual {v0, v1}, Lcom/google/android/libraries/gsa/launcherclient/e;->a(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object p0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->a:Lcom/google/android/libraries/a/c;

    .line 54
    invoke-interface {p0}, Lcom/google/android/libraries/a/c;->c()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public hideOverlay(I)V
    .locals 3

    .line 61
    invoke-static {p1}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->a(I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->f:Lcom/google/android/libraries/gsa/launcherclient/e;

    const-string v2, "hideOverlay"

    .line 62
    invoke-virtual {v1, v2, p1}, Lcom/google/android/libraries/gsa/launcherclient/e;->a(Ljava/lang/String;I)V

    iget-object p0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->a:Lcom/google/android/libraries/a/c;

    if-eqz p0, :cond_0

    .line 63
    :try_start_0
    invoke-interface {p0, v0}, Lcom/google/android/libraries/a/c;->a(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public hideOverlay(Lcom/google/android/libraries/gsa/launcherclient/AnimationType;I)V
    .locals 4

    sget v0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->b:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 64
    invoke-virtual {p0, p2}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->hideOverlay(I)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->f:Lcom/google/android/libraries/gsa/launcherclient/e;

    .line 65
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0xf

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "hideOverlay: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/google/android/libraries/gsa/launcherclient/e;->a(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->a:Lcom/google/android/libraries/a/c;

    if-eqz v0, :cond_1

    new-instance v0, Landroid/os/Bundle;

    .line 66
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 67
    invoke-virtual {p1}, Lcom/google/android/libraries/gsa/launcherclient/AnimationType;->a()I

    move-result p1

    const-string v1, "overlay_animation_type"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "overlay_animation_duration"

    .line 68
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :try_start_0
    iget-object p0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->a:Lcom/google/android/libraries/a/c;

    .line 69
    invoke-interface {p0, v0}, Lcom/google/android/libraries/a/c;->a(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "DrawerOverlayClient"

    const-string p2, "Unable to close overlay"

    .line 70
    invoke-static {p1, p2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    return-void
.end method

.method public hideOverlay(Z)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->f:Lcom/google/android/libraries/gsa/launcherclient/e;

    const-string v1, "hideOverlay"

    .line 71
    invoke-virtual {v0, v1, p1}, Lcom/google/android/libraries/gsa/launcherclient/e;->a(Ljava/lang/String;Z)V

    iget-object p0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->a:Lcom/google/android/libraries/a/c;

    if-eqz p0, :cond_0

    .line 72
    :try_start_0
    invoke-interface {p0, p1}, Lcom/google/android/libraries/a/c;->a(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public final onAttachedToWindow()V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->l:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->f:Lcom/google/android/libraries/gsa/launcherclient/e;

    const-string v1, "attachedToWindow"

    .line 74
    invoke-virtual {v0, v1}, Lcom/google/android/libraries/gsa/launcherclient/e;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->c:Landroid/app/Activity;

    .line 75
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->a(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->c:Landroid/app/Activity;

    .line 76
    invoke-virtual {v0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->a(Z)V

    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->l:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->f:Lcom/google/android/libraries/gsa/launcherclient/e;

    const-string v1, "detachedFromWindow"

    .line 77
    invoke-virtual {v0, v1}, Lcom/google/android/libraries/gsa/launcherclient/e;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 78
    invoke-direct {p0, v0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->a(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public onPause()V
    .locals 3

    iget-boolean v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->l:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->k:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->k:I

    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->a:Lcom/google/android/libraries/a/c;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->o:Landroid/view/WindowManager$LayoutParams;

    if-eqz v1, :cond_2

    :try_start_0
    sget v1, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->b:I

    const/4 v2, 0x4

    if-ge v1, v2, :cond_1

    .line 79
    invoke-interface {v0}, Lcom/google/android/libraries/a/c;->d()V

    goto :goto_0

    .line 81
    :cond_1
    iget v1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->k:I

    .line 80
    invoke-interface {v0, v1}, Lcom/google/android/libraries/a/c;->b(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    :catch_0
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->f:Lcom/google/android/libraries/gsa/launcherclient/e;

    iget p0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->k:I

    const-string v1, "stateChanged "

    .line 81
    invoke-virtual {v0, v1, p0}, Lcom/google/android/libraries/gsa/launcherclient/e;->a(Ljava/lang/String;I)V

    return-void
.end method

.method public onResume()V
    .locals 3

    iget-boolean v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->l:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->k:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->k:I

    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->a:Lcom/google/android/libraries/a/c;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->o:Landroid/view/WindowManager$LayoutParams;

    if-eqz v1, :cond_2

    :try_start_0
    sget v1, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->b:I

    const/4 v2, 0x4

    if-ge v1, v2, :cond_1

    .line 82
    invoke-interface {v0}, Lcom/google/android/libraries/a/c;->e()V

    goto :goto_0

    .line 84
    :cond_1
    iget v1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->k:I

    .line 83
    invoke-interface {v0, v1}, Lcom/google/android/libraries/a/c;->b(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    :catch_0
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->f:Lcom/google/android/libraries/gsa/launcherclient/e;

    iget p0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->k:I

    const-string v1, "stateChanged "

    .line 84
    invoke-virtual {v0, v1, p0}, Lcom/google/android/libraries/gsa/launcherclient/e;->a(Ljava/lang/String;I)V

    return-void
.end method

.method public onStart()V
    .locals 3

    iget-boolean v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->l:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->i:Lcom/google/android/libraries/gsa/launcherclient/c;

    const/4 v1, 0x0

    .line 85
    invoke-virtual {v0, v1}, Lcom/google/android/libraries/gsa/launcherclient/c;->a(Z)V

    .line 86
    invoke-virtual {p0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->reconnect()V

    iget v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->k:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->k:I

    iget-object v1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->a:Lcom/google/android/libraries/a/c;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->o:Landroid/view/WindowManager$LayoutParams;

    if-eqz v2, :cond_1

    .line 87
    :try_start_0
    invoke-interface {v1, v0}, Lcom/google/android/libraries/a/c;->b(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->f:Lcom/google/android/libraries/gsa/launcherclient/e;

    iget p0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->k:I

    const-string v1, "stateChanged "

    .line 88
    invoke-virtual {v0, v1, p0}, Lcom/google/android/libraries/gsa/launcherclient/e;->a(Ljava/lang/String;I)V

    return-void
.end method

.method public onStop()V
    .locals 3

    iget-boolean v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->l:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->i:Lcom/google/android/libraries/gsa/launcherclient/c;

    const/4 v1, 0x1

    .line 89
    invoke-virtual {v0, v1}, Lcom/google/android/libraries/gsa/launcherclient/c;->a(Z)V

    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->h:Lcom/google/android/libraries/gsa/launcherclient/l;

    .line 90
    invoke-virtual {v0}, Lcom/google/android/libraries/gsa/launcherclient/l;->a()V

    iget v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->k:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->k:I

    iget-object v1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->a:Lcom/google/android/libraries/a/c;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->o:Landroid/view/WindowManager$LayoutParams;

    if-eqz v2, :cond_1

    .line 91
    :try_start_0
    invoke-interface {v1, v0}, Lcom/google/android/libraries/a/c;->b(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->f:Lcom/google/android/libraries/gsa/launcherclient/e;

    iget p0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->k:I

    const-string v1, "stateChanged "

    .line 92
    invoke-virtual {v0, v1, p0}, Lcom/google/android/libraries/gsa/launcherclient/e;->a(Ljava/lang/String;I)V

    return-void
.end method

.method public reattachOverlay()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->f:Lcom/google/android/libraries/gsa/launcherclient/e;

    const-string v1, "reattachOverlay"

    .line 96
    invoke-virtual {v0, v1}, Lcom/google/android/libraries/gsa/launcherclient/e;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->o:Landroid/view/WindowManager$LayoutParams;

    if-eqz v0, :cond_0

    sget v0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->b:I

    const/4 v1, 0x7

    if-lt v0, v1, :cond_0

    .line 97
    invoke-direct {p0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->a()V

    :cond_0
    return-void
.end method

.method public reconnect()V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->l:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->e:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/libraries/gsa/launcherclient/h;

    .line 98
    invoke-direct {v1, p0}, Lcom/google/android/libraries/gsa/launcherclient/h;-><init>(Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;)V

    invoke-static {v0, v1}, Lcom/google/android/libraries/gsa/launcherclient/l;->a(Landroid/os/Handler;Ljava/lang/Runnable;)V

    return-void
.end method

.method public requestHotwordDetection(Z)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->f:Lcom/google/android/libraries/gsa/launcherclient/e;

    const-string v1, "requestHotwordDetection"

    .line 108
    invoke-virtual {v0, v1, p1}, Lcom/google/android/libraries/gsa/launcherclient/e;->a(Ljava/lang/String;Z)V

    iget-object p0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->a:Lcom/google/android/libraries/a/c;

    if-eqz p0, :cond_0

    .line 109
    :try_start_0
    invoke-interface {p0, p1}, Lcom/google/android/libraries/a/c;->b(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public setClientOptions(Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$ClientOptions;)V
    .locals 3

    const-string v0, "DrawerOverlayClient"

    iget-object v1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->n:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$ClientOptions;

    .line 110
    invoke-static {v1}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$ClientOptions;->b(Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$ClientOptions;)I

    move-result v1

    invoke-static {p1}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$ClientOptions;->b(Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$ClientOptions;)I

    move-result v2

    if-eq v1, v2, :cond_1

    iput-object p1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->n:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$ClientOptions;

    iget-object p1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->o:Landroid/view/WindowManager$LayoutParams;

    if-eqz p1, :cond_0

    .line 111
    invoke-direct {p0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->a()V

    :cond_0
    iget-object p1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->f:Lcom/google/android/libraries/gsa/launcherclient/e;

    iget-object p0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->n:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$ClientOptions;

    .line 112
    invoke-static {p0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$ClientOptions;->b(Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$ClientOptions;)I

    move-result p0

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x1c

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "setClientOptions "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/google/android/libraries/gsa/launcherclient/e;->a(Ljava/lang/String;)V

    return-void

    :cond_1
    sget v1, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->b:I

    const/16 v2, 0xa

    if-ge v1, v2, :cond_2

    return-void

    :cond_2
    iget-object v1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->n:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$ClientOptions;

    .line 113
    invoke-static {v1}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$ClientOptions;->c(Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$ClientOptions;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-static {p1}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$ClientOptions;->c(Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$ClientOptions;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    :try_start_0
    iput-object p1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->n:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$ClientOptions;

    iget-object p1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->a:Lcom/google/android/libraries/a/c;

    if-eqz p1, :cond_4

    new-instance p1, Landroid/os/Bundle;

    .line 114
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v1, "partner_overlay_icon"

    iget-object v2, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->n:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$ClientOptions;

    .line 115
    invoke-static {v2}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$ClientOptions;->c(Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$ClientOptions;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v1, "partner_overlay_product_name"

    iget-object v2, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->n:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$ClientOptions;

    .line 116
    invoke-static {v2}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$ClientOptions;->d(Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$ClientOptions;)Ljava/lang/String;

    move-result-object v2

    .line 117
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "google_overlay_is_default"

    iget-object v2, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->n:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$ClientOptions;

    .line 118
    invoke-static {v2}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$ClientOptions;->e(Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$ClientOptions;)Z

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->a:Lcom/google/android/libraries/a/c;

    .line 119
    invoke-interface {v1, p1}, Lcom/google/android/libraries/a/c;->c(Landroid/os/Bundle;)V

    iget-object p0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->f:Lcom/google/android/libraries/gsa/launcherclient/e;

    const-string/jumbo p1, "updateClientOptions"

    .line 120
    invoke-virtual {p0, p1}, Lcom/google/android/libraries/gsa/launcherclient/e;->a(Ljava/lang/String;)V

    return-void

    :cond_4
    const-string/jumbo p0, "updateClientOptions not called since the overlay has not yet attached"

    .line 121
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string/jumbo p1, "updateClientOptions() to set partner overlay icon failed"

    .line 122
    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_5
    :goto_0
    return-void
.end method

.method public showOverlay(I)V
    .locals 3

    .line 125
    invoke-static {p1}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->a(I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->f:Lcom/google/android/libraries/gsa/launcherclient/e;

    const-string v2, "showOverlay"

    .line 126
    invoke-virtual {v1, v2, p1}, Lcom/google/android/libraries/gsa/launcherclient/e;->a(Ljava/lang/String;I)V

    iget-object p0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->a:Lcom/google/android/libraries/a/c;

    if-eqz p0, :cond_0

    .line 127
    :try_start_0
    invoke-interface {p0, v0}, Lcom/google/android/libraries/a/c;->c(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public showOverlay(Lcom/google/android/libraries/gsa/launcherclient/AnimationType;I)V
    .locals 4

    sget v0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->b:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 128
    invoke-virtual {p0, p2}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->showOverlay(I)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->f:Lcom/google/android/libraries/gsa/launcherclient/e;

    .line 129
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0xf

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "showOverlay: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/google/android/libraries/gsa/launcherclient/e;->a(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->a:Lcom/google/android/libraries/a/c;

    if-eqz v0, :cond_1

    new-instance v0, Landroid/os/Bundle;

    .line 130
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 131
    invoke-virtual {p1}, Lcom/google/android/libraries/gsa/launcherclient/AnimationType;->a()I

    move-result p1

    const-string v1, "overlay_animation_type"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "overlay_animation_duration"

    .line 132
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :try_start_0
    iget-object p0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->a:Lcom/google/android/libraries/a/c;

    .line 133
    invoke-interface {p0, v0}, Lcom/google/android/libraries/a/c;->b(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "DrawerOverlayClient"

    const-string p2, "Unable to show overlay"

    .line 134
    invoke-static {p1, p2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    return-void
.end method

.method public showOverlay(Z)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->f:Lcom/google/android/libraries/gsa/launcherclient/e;

    const-string v1, "showOverlay"

    .line 135
    invoke-virtual {v0, v1, p1}, Lcom/google/android/libraries/gsa/launcherclient/e;->a(Ljava/lang/String;Z)V

    iget-object p0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->a:Lcom/google/android/libraries/a/c;

    if-eqz p0, :cond_0

    .line 136
    :try_start_0
    invoke-interface {p0, p1}, Lcom/google/android/libraries/a/c;->c(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public startMove()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->f:Lcom/google/android/libraries/gsa/launcherclient/e;

    const-string v1, "startMove"

    .line 137
    invoke-virtual {v0, v1}, Lcom/google/android/libraries/gsa/launcherclient/e;->a(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object p0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->a:Lcom/google/android/libraries/a/c;

    .line 138
    invoke-interface {p0}, Lcom/google/android/libraries/a/c;->b()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public updateMove(F)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->f:Lcom/google/android/libraries/gsa/launcherclient/e;

    const-string/jumbo v1, "updateMove"

    .line 139
    invoke-virtual {v0, v1, p1}, Lcom/google/android/libraries/gsa/launcherclient/e;->a(Ljava/lang/String;F)V

    invoke-direct {p0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object p0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->a:Lcom/google/android/libraries/a/c;

    .line 140
    invoke-interface {p0, p1}, Lcom/google/android/libraries/a/c;->a(F)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public updatePartnerOverlayIcon(Landroid/graphics/Bitmap;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->n:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$ClientOptions;

    .line 141
    invoke-static {v0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$ClientOptions;->d(Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$ClientOptions;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->n:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$ClientOptions;

    invoke-static {v1}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$ClientOptions;->e(Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$ClientOptions;)Z

    move-result v1

    .line 142
    invoke-static {v0, p1, v1}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$ClientOptions;->createForSharedOverlay(Ljava/lang/String;Landroid/graphics/Bitmap;Z)Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$ClientOptions;

    move-result-object p1

    .line 143
    invoke-virtual {p0, p1}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->setClientOptions(Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$ClientOptions;)V

    return-void
.end method
