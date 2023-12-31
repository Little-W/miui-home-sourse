.class public abstract Lcom/miui/launcher/overlay/client/LauncherClient;
.super Ljava/lang/Object;
.source "LauncherClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/launcher/overlay/client/LauncherClient$ClientOptions;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "LauncherClient"


# instance fields
.field private isDestroyed:Z

.field private final mActivity:Landroid/app/Activity;

.field private mActivityState:I

.field private final mClientCallbacks:Lcom/miui/launcher/overlay/client/LauncherClientCallback;

.field private mLauncherOverlay:Lcom/miui/launcher/overlay/ILauncherOverlay;

.field private mLauncherOverlayCallback:Lcom/miui/launcher/overlay/client/LauncherOverlayCallback;

.field private final mLauncherOverlayConnection:Lcom/miui/launcher/overlay/client/LauncherOverlayConnectionCompat;

.field private mLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private mOptions:Lcom/miui/launcher/overlay/client/LauncherClient$ClientOptions;

.field private final mPackageReceiver:Landroid/content/BroadcastReceiver;

.field private mServerVersion:I

.field private mServiceState:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/miui/launcher/overlay/client/LauncherClient$ClientOptions;)V
    .locals 1

    .line 50
    new-instance v0, Lcom/miui/launcher/overlay/client/LauncherClientCallbackAdapter;

    invoke-direct {v0}, Lcom/miui/launcher/overlay/client/LauncherClientCallbackAdapter;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/launcher/overlay/client/LauncherClient;-><init>(Landroid/app/Activity;Lcom/miui/launcher/overlay/client/LauncherClient$ClientOptions;Lcom/miui/launcher/overlay/client/LauncherClientCallback;)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/miui/launcher/overlay/client/LauncherClient$ClientOptions;Lcom/miui/launcher/overlay/client/LauncherClientCallback;)V
    .locals 4

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 54
    iput-boolean v0, p0, Lcom/miui/launcher/overlay/client/LauncherClient;->isDestroyed:Z

    .line 55
    iput v0, p0, Lcom/miui/launcher/overlay/client/LauncherClient;->mActivityState:I

    .line 56
    iput v0, p0, Lcom/miui/launcher/overlay/client/LauncherClient;->mServiceState:I

    .line 58
    iput-object p1, p0, Lcom/miui/launcher/overlay/client/LauncherClient;->mActivity:Landroid/app/Activity;

    .line 59
    iput-object p2, p0, Lcom/miui/launcher/overlay/client/LauncherClient;->mOptions:Lcom/miui/launcher/overlay/client/LauncherClient$ClientOptions;

    .line 60
    iput-object p3, p0, Lcom/miui/launcher/overlay/client/LauncherClient;->mClientCallbacks:Lcom/miui/launcher/overlay/client/LauncherClientCallback;

    .line 61
    new-instance p3, Lcom/miui/launcher/overlay/client/LauncherOverlayConnectionCompat;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {p2}, Lcom/miui/launcher/overlay/client/LauncherClient$ClientOptions;->access$000(Lcom/miui/launcher/overlay/client/LauncherClient$ClientOptions;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p2}, Lcom/miui/launcher/overlay/client/LauncherClient$ClientOptions;->access$100(Lcom/miui/launcher/overlay/client/LauncherClient$ClientOptions;)I

    move-result v3

    invoke-direct {p3, v1, v2, v3}, Lcom/miui/launcher/overlay/client/LauncherOverlayConnectionCompat;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/miui/launcher/overlay/client/LauncherClient;->mLauncherOverlayConnection:Lcom/miui/launcher/overlay/client/LauncherOverlayConnectionCompat;

    .line 62
    iget-object p3, p0, Lcom/miui/launcher/overlay/client/LauncherClient;->mLauncherOverlayConnection:Lcom/miui/launcher/overlay/client/LauncherOverlayConnectionCompat;

    invoke-virtual {p3, p0}, Lcom/miui/launcher/overlay/client/LauncherOverlayConnectionCompat;->bindClient(Lcom/miui/launcher/overlay/client/LauncherClient;)Lcom/miui/launcher/overlay/ILauncherOverlay;

    move-result-object p3

    iput-object p3, p0, Lcom/miui/launcher/overlay/client/LauncherClient;->mLauncherOverlay:Lcom/miui/launcher/overlay/ILauncherOverlay;

    .line 64
    new-instance p3, Lcom/miui/launcher/overlay/client/PackageReceiver;

    invoke-direct {p3, p0}, Lcom/miui/launcher/overlay/client/PackageReceiver;-><init>(Lcom/miui/launcher/overlay/client/LauncherClient;)V

    iput-object p3, p0, Lcom/miui/launcher/overlay/client/LauncherClient;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    .line 65
    new-instance p3, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {p3, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "package"

    .line 66
    invoke-virtual {p3, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 67
    iget-object v1, p0, Lcom/miui/launcher/overlay/client/LauncherClient;->mOptions:Lcom/miui/launcher/overlay/client/LauncherClient$ClientOptions;

    invoke-static {v1}, Lcom/miui/launcher/overlay/client/LauncherClient$ClientOptions;->access$000(Lcom/miui/launcher/overlay/client/LauncherClient$ClientOptions;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1, v0}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    .line 68
    iget-object v0, p0, Lcom/miui/launcher/overlay/client/LauncherClient;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/miui/launcher/overlay/client/LauncherClient;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, p3}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 70
    invoke-static {p2}, Lcom/miui/launcher/overlay/client/LauncherClient$ClientOptions;->access$000(Lcom/miui/launcher/overlay/client/LauncherClient$ClientOptions;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/miui/launcher/overlay/client/LauncherClient;->loadServerVersion(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/miui/launcher/overlay/client/LauncherClient;->mServerVersion:I

    .line 71
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "serverVersion:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/miui/launcher/overlay/client/LauncherClient;->mOptions:Lcom/miui/launcher/overlay/client/LauncherClient$ClientOptions;

    invoke-static {p2}, Lcom/miui/launcher/overlay/client/LauncherClient$ClientOptions;->access$000(Lcom/miui/launcher/overlay/client/LauncherClient$ClientOptions;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ":"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/miui/launcher/overlay/client/LauncherClient;->mServerVersion:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "LauncherClient"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    iget-object p1, p0, Lcom/miui/launcher/overlay/client/LauncherClient;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/launcher/overlay/client/LauncherClient;->mActivity:Landroid/app/Activity;

    .line 74
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/launcher/overlay/client/LauncherClient;->mActivity:Landroid/app/Activity;

    .line 75
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 76
    invoke-virtual {p0}, Lcom/miui/launcher/overlay/client/LauncherClient;->onAttachedToWindow()V

    :cond_0
    return-void
.end method

.method static getServiceIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .line 391
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "app"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 392
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ":"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->encodedAuthority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    const/4 v0, 0x6

    .line 393
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "sv"

    invoke-virtual {p0, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    const/4 v0, 0x3

    .line 394
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "cv"

    invoke-virtual {p0, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    .line 395
    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    .line 396
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.miui.launcher.WINDOW_OVERLAY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 397
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 398
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    return-object v0
.end method

.method private isStarted()Z
    .locals 1

    .line 305
    iget p0, p0, Lcom/miui/launcher/overlay/client/LauncherClient;->mActivityState:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static loadServerVersion(Landroid/content/Context;Ljava/lang/String;)I
    .locals 1

    .line 403
    invoke-static {p0, p1}, Lcom/miui/launcher/overlay/client/LauncherClient;->getServiceIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 404
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const v0, 0xc0080

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p0

    const/4 p1, 0x0

    if-eqz p0, :cond_0

    .line 406
    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 409
    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object p0, p0, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    const-string v0, "service.api.version"

    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0

    :cond_0
    return p1
.end method

.method private onActivityStateChange()V
    .locals 2

    .line 111
    iget-object v0, p0, Lcom/miui/launcher/overlay/client/LauncherClient;->mLauncherOverlay:Lcom/miui/launcher/overlay/ILauncherOverlay;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/miui/launcher/overlay/client/LauncherClient;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    if-eqz v1, :cond_0

    .line 113
    :try_start_0
    iget p0, p0, Lcom/miui/launcher/overlay/client/LauncherClient;->mActivityState:I

    invoke-interface {v0, p0}, Lcom/miui/launcher/overlay/ILauncherOverlay;->setActivityState(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 115
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private updateLayoutParams(Landroid/view/WindowManager$LayoutParams;)V
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/miui/launcher/overlay/client/LauncherClient;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    if-eq v0, p1, :cond_1

    .line 161
    iput-object p1, p0, Lcom/miui/launcher/overlay/client/LauncherClient;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 162
    iget-object p1, p0, Lcom/miui/launcher/overlay/client/LauncherClient;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    if-eqz p1, :cond_0

    .line 163
    invoke-direct {p0}, Lcom/miui/launcher/overlay/client/LauncherClient;->updateOverlay()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 165
    invoke-virtual {p0, p1}, Lcom/miui/launcher/overlay/client/LauncherClient;->hideOverlay(I)V

    const/4 p1, 0x0

    .line 166
    iput-object p1, p0, Lcom/miui/launcher/overlay/client/LauncherClient;->mLauncherOverlay:Lcom/miui/launcher/overlay/ILauncherOverlay;

    :cond_1
    :goto_0
    return-void
.end method

.method private updateOverlay()V
    .locals 3

    .line 172
    iget-object v0, p0, Lcom/miui/launcher/overlay/client/LauncherClient;->mLauncherOverlay:Lcom/miui/launcher/overlay/ILauncherOverlay;

    if-eqz v0, :cond_1

    .line 173
    iget-object v0, p0, Lcom/miui/launcher/overlay/client/LauncherClient;->mLauncherOverlayCallback:Lcom/miui/launcher/overlay/client/LauncherOverlayCallback;

    if-nez v0, :cond_0

    .line 174
    new-instance v0, Lcom/miui/launcher/overlay/client/LauncherOverlayCallback;

    invoke-direct {v0, p0}, Lcom/miui/launcher/overlay/client/LauncherOverlayCallback;-><init>(Lcom/miui/launcher/overlay/client/LauncherClient;)V

    iput-object v0, p0, Lcom/miui/launcher/overlay/client/LauncherClient;->mLauncherOverlayCallback:Lcom/miui/launcher/overlay/client/LauncherOverlayCallback;

    .line 176
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 177
    iget-object v1, p0, Lcom/miui/launcher/overlay/client/LauncherClient;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const-string v2, "layout_params"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 178
    iget-object v1, p0, Lcom/miui/launcher/overlay/client/LauncherClient;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    const-string v2, "configuration"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 179
    iget-object v1, p0, Lcom/miui/launcher/overlay/client/LauncherClient;->mOptions:Lcom/miui/launcher/overlay/client/LauncherClient$ClientOptions;

    invoke-static {v1}, Lcom/miui/launcher/overlay/client/LauncherClient$ClientOptions;->access$200(Lcom/miui/launcher/overlay/client/LauncherClient$ClientOptions;)I

    move-result v1

    const-string v2, "client_options"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 181
    :try_start_0
    iget-object v1, p0, Lcom/miui/launcher/overlay/client/LauncherClient;->mLauncherOverlay:Lcom/miui/launcher/overlay/ILauncherOverlay;

    iget-object v2, p0, Lcom/miui/launcher/overlay/client/LauncherClient;->mLauncherOverlayCallback:Lcom/miui/launcher/overlay/client/LauncherOverlayCallback;

    invoke-interface {v1, v0, v2}, Lcom/miui/launcher/overlay/ILauncherOverlay;->windowAttached(Landroid/os/Bundle;Lcom/miui/launcher/overlay/ILauncherOverlayCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 183
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 186
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/miui/launcher/overlay/client/LauncherClient;->mLauncherOverlay:Lcom/miui/launcher/overlay/ILauncherOverlay;

    iget p0, p0, Lcom/miui/launcher/overlay/client/LauncherClient;->mActivityState:I

    invoke-interface {v0, p0}, Lcom/miui/launcher/overlay/ILauncherOverlay;->setActivityState(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    .line 188
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method public callOverlay(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0

    .line 328
    iget-object p0, p0, Lcom/miui/launcher/overlay/client/LauncherClient;->mLauncherOverlay:Lcom/miui/launcher/overlay/ILauncherOverlay;

    if-eqz p0, :cond_0

    .line 330
    :try_start_0
    invoke-interface {p0, p1, p2, p3}, Lcom/miui/launcher/overlay/ILauncherOverlay;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 332
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final connect()V
    .locals 1

    .line 309
    iget-boolean v0, p0, Lcom/miui/launcher/overlay/client/LauncherClient;->isDestroyed:Z

    if-nez v0, :cond_0

    .line 310
    iget-object v0, p0, Lcom/miui/launcher/overlay/client/LauncherClient;->mLauncherOverlayConnection:Lcom/miui/launcher/overlay/client/LauncherOverlayConnectionCompat;

    invoke-direct {p0}, Lcom/miui/launcher/overlay/client/LauncherClient;->isStarted()Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/miui/launcher/overlay/client/LauncherOverlayConnectionCompat;->connect(Z)V

    :cond_0
    return-void
.end method

.method public disconnect()V
    .locals 1

    .line 315
    iget-object v0, p0, Lcom/miui/launcher/overlay/client/LauncherClient;->mLauncherOverlayConnection:Lcom/miui/launcher/overlay/client/LauncherOverlayConnectionCompat;

    invoke-virtual {v0}, Lcom/miui/launcher/overlay/client/LauncherOverlayConnectionCompat;->disconnect()V

    const/4 v0, 0x0

    .line 316
    invoke-virtual {p0, v0}, Lcom/miui/launcher/overlay/client/LauncherClient;->setOverlay(Lcom/miui/launcher/overlay/ILauncherOverlay;)V

    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    .line 296
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "LauncherClient, packageName : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/miui/launcher/overlay/client/LauncherClient;->mOptions:Lcom/miui/launcher/overlay/client/LauncherClient$ClientOptions;

    invoke-static {v0}, Lcom/miui/launcher/overlay/client/LauncherClient$ClientOptions;->access$000(Lcom/miui/launcher/overlay/client/LauncherClient$ClientOptions;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 297
    invoke-static {p2, p3, p4}, Lcom/miui/launcher/overlay/BuildInfo;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 298
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "    mServerVersion: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/miui/launcher/overlay/client/LauncherClient;->mServerVersion:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 299
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "    isConnected: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/miui/launcher/overlay/client/LauncherClient;->mLauncherOverlay:Lcom/miui/launcher/overlay/ILauncherOverlay;

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 300
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "    mActivityState: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/miui/launcher/overlay/client/LauncherClient;->mActivityState:I

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 301
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "    isDestroyed: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/miui/launcher/overlay/client/LauncherClient;->isDestroyed:Z

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public endMove()V
    .locals 0

    .line 204
    iget-object p0, p0, Lcom/miui/launcher/overlay/client/LauncherClient;->mLauncherOverlay:Lcom/miui/launcher/overlay/ILauncherOverlay;

    if-eqz p0, :cond_0

    .line 206
    :try_start_0
    invoke-interface {p0}, Lcom/miui/launcher/overlay/ILauncherOverlay;->endScroll()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 208
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public final getOptions()I
    .locals 0

    .line 437
    iget-object p0, p0, Lcom/miui/launcher/overlay/client/LauncherClient;->mOptions:Lcom/miui/launcher/overlay/client/LauncherClient$ClientOptions;

    invoke-static {p0}, Lcom/miui/launcher/overlay/client/LauncherClient$ClientOptions;->access$200(Lcom/miui/launcher/overlay/client/LauncherClient$ClientOptions;)I

    move-result p0

    return p0
.end method

.method public final getPackageName()Ljava/lang/String;
    .locals 0

    .line 433
    iget-object p0, p0, Lcom/miui/launcher/overlay/client/LauncherClient;->mOptions:Lcom/miui/launcher/overlay/client/LauncherClient$ClientOptions;

    invoke-static {p0}, Lcom/miui/launcher/overlay/client/LauncherClient$ClientOptions;->access$000(Lcom/miui/launcher/overlay/client/LauncherClient$ClientOptions;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getServerVersion()I
    .locals 0

    .line 459
    iget p0, p0, Lcom/miui/launcher/overlay/client/LauncherClient;->mServerVersion:I

    return p0
.end method

.method public hideOverlay(I)V
    .locals 1

    .line 224
    iget-object v0, p0, Lcom/miui/launcher/overlay/client/LauncherClient;->mLauncherOverlay:Lcom/miui/launcher/overlay/ILauncherOverlay;

    if-eqz v0, :cond_0

    .line 226
    :try_start_0
    invoke-interface {v0, p1}, Lcom/miui/launcher/overlay/ILauncherOverlay;->closeOverlay(I)V

    .line 227
    iget-object p0, p0, Lcom/miui/launcher/overlay/client/LauncherClient;->mLauncherOverlayConnection:Lcom/miui/launcher/overlay/client/LauncherOverlayConnectionCompat;

    invoke-virtual {p0}, Lcom/miui/launcher/overlay/client/LauncherOverlayConnectionCompat;->hideOverlay()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 229
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public invokeOverlay(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .line 339
    iget-object p0, p0, Lcom/miui/launcher/overlay/client/LauncherClient;->mLauncherOverlay:Lcom/miui/launcher/overlay/ILauncherOverlay;

    if-eqz p0, :cond_0

    .line 341
    :try_start_0
    invoke-interface {p0, p1, p2, p3}, Lcom/miui/launcher/overlay/ILauncherOverlay;->invoke(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 343
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public isDestroyed()Z
    .locals 0

    .line 463
    iget-boolean p0, p0, Lcom/miui/launcher/overlay/client/LauncherClient;->isDestroyed:Z

    return p0
.end method

.method public onAttachedToWindow()V
    .locals 1

    .line 133
    iget-boolean v0, p0, Lcom/miui/launcher/overlay/client/LauncherClient;->isDestroyed:Z

    if-nez v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/miui/launcher/overlay/client/LauncherClient;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/launcher/overlay/client/LauncherClient;->updateLayoutParams(Landroid/view/WindowManager$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .line 121
    iget-boolean v0, p0, Lcom/miui/launcher/overlay/client/LauncherClient;->isDestroyed:Z

    if-nez v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/miui/launcher/overlay/client/LauncherClient;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/miui/launcher/overlay/client/LauncherClient;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    const/4 v0, 0x1

    .line 124
    iput-boolean v0, p0, Lcom/miui/launcher/overlay/client/LauncherClient;->isDestroyed:Z

    .line 125
    iget-object v1, p0, Lcom/miui/launcher/overlay/client/LauncherClient;->mLauncherOverlayCallback:Lcom/miui/launcher/overlay/client/LauncherOverlayCallback;

    if-eqz v1, :cond_1

    .line 126
    invoke-virtual {v1}, Lcom/miui/launcher/overlay/client/LauncherOverlayCallback;->release()V

    const/4 v1, 0x0

    .line 127
    iput-object v1, p0, Lcom/miui/launcher/overlay/client/LauncherClient;->mLauncherOverlayCallback:Lcom/miui/launcher/overlay/client/LauncherOverlayCallback;

    .line 129
    :cond_1
    iget-object v1, p0, Lcom/miui/launcher/overlay/client/LauncherClient;->mLauncherOverlayConnection:Lcom/miui/launcher/overlay/client/LauncherOverlayConnectionCompat;

    iget-object v2, p0, Lcom/miui/launcher/overlay/client/LauncherClient;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v2

    xor-int/2addr v0, v2

    invoke-virtual {v1, p0, v0}, Lcom/miui/launcher/overlay/client/LauncherOverlayConnectionCompat;->onDestroy(Lcom/miui/launcher/overlay/client/LauncherClient;Z)V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 139
    iget-boolean v0, p0, Lcom/miui/launcher/overlay/client/LauncherClient;->isDestroyed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 140
    invoke-direct {p0, v0}, Lcom/miui/launcher/overlay/client/LauncherClient;->updateLayoutParams(Landroid/view/WindowManager$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public onMultiWindowModeChanged(ZLandroid/content/res/Configuration;)V
    .locals 0

    .line 286
    iget-object p0, p0, Lcom/miui/launcher/overlay/client/LauncherClient;->mLauncherOverlay:Lcom/miui/launcher/overlay/ILauncherOverlay;

    if-eqz p0, :cond_0

    .line 288
    :try_start_0
    invoke-interface {p0, p1, p2}, Lcom/miui/launcher/overlay/ILauncherOverlay;->onMultiWindowModeChanged(ZLandroid/content/res/Configuration;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 290
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .line 246
    iget-object p0, p0, Lcom/miui/launcher/overlay/client/LauncherClient;->mLauncherOverlay:Lcom/miui/launcher/overlay/ILauncherOverlay;

    if-eqz p0, :cond_0

    .line 248
    :try_start_0
    invoke-interface {p0, p1}, Lcom/miui/launcher/overlay/ILauncherOverlay;->onNewIntent(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 250
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method onOverlayCall(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0

    .line 320
    iget-object p0, p0, Lcom/miui/launcher/overlay/client/LauncherClient;->mClientCallbacks:Lcom/miui/launcher/overlay/client/LauncherClientCallback;

    invoke-interface {p0, p1, p2, p3}, Lcom/miui/launcher/overlay/client/LauncherClientCallback;->onOverlayCall(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method onOverlayInvoke(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .line 324
    iget-object p0, p0, Lcom/miui/launcher/overlay/client/LauncherClient;->mClientCallbacks:Lcom/miui/launcher/overlay/client/LauncherClientCallback;

    invoke-interface {p0, p1, p2, p3}, Lcom/miui/launcher/overlay/client/LauncherClientCallback;->onOverlayInvoke(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method onOverlayScrollChanged(F)V
    .locals 0

    .line 371
    iget-object p0, p0, Lcom/miui/launcher/overlay/client/LauncherClient;->mClientCallbacks:Lcom/miui/launcher/overlay/client/LauncherClientCallback;

    invoke-interface {p0, p1}, Lcom/miui/launcher/overlay/client/LauncherClientCallback;->onOverlayScrollChanged(F)V

    return-void
.end method

.method onOverlayScrollEnd(F)V
    .locals 0

    .line 378
    iget-object p0, p0, Lcom/miui/launcher/overlay/client/LauncherClient;->mClientCallbacks:Lcom/miui/launcher/overlay/client/LauncherClientCallback;

    invoke-interface {p0, p1}, Lcom/miui/launcher/overlay/client/LauncherClientCallback;->onOverlayScrollEnd(F)V

    return-void
.end method

.method onOverlayScrollStart(F)V
    .locals 0

    .line 364
    iget-object p0, p0, Lcom/miui/launcher/overlay/client/LauncherClient;->mClientCallbacks:Lcom/miui/launcher/overlay/client/LauncherClientCallback;

    invoke-interface {p0, p1}, Lcom/miui/launcher/overlay/client/LauncherClientCallback;->onOverlayScrollStart(F)V

    return-void
.end method

.method onOverlayUpdate(Landroid/content/Context;)V
    .locals 2

    .line 416
    iget v0, p0, Lcom/miui/launcher/overlay/client/LauncherClient;->mServerVersion:I

    .line 417
    iget-object v1, p0, Lcom/miui/launcher/overlay/client/LauncherClient;->mOptions:Lcom/miui/launcher/overlay/client/LauncherClient$ClientOptions;

    invoke-static {v1}, Lcom/miui/launcher/overlay/client/LauncherClient$ClientOptions;->access$000(Lcom/miui/launcher/overlay/client/LauncherClient$ClientOptions;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/miui/launcher/overlay/client/LauncherClient;->loadServerVersion(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/miui/launcher/overlay/client/LauncherClient;->mServerVersion:I

    .line 418
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onServerUpdate:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/launcher/overlay/client/LauncherClient;->mOptions:Lcom/miui/launcher/overlay/client/LauncherClient$ClientOptions;

    invoke-static {v1}, Lcom/miui/launcher/overlay/client/LauncherClient$ClientOptions;->access$000(Lcom/miui/launcher/overlay/client/LauncherClient$ClientOptions;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/launcher/overlay/client/LauncherClient;->mServerVersion:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "LauncherClient"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    invoke-virtual {p0}, Lcom/miui/launcher/overlay/client/LauncherClient;->reconnect()V

    .line 420
    iget-object p1, p0, Lcom/miui/launcher/overlay/client/LauncherClient;->mClientCallbacks:Lcom/miui/launcher/overlay/client/LauncherClientCallback;

    iget p0, p0, Lcom/miui/launcher/overlay/client/LauncherClient;->mServerVersion:I

    invoke-interface {p1, v0, p0}, Lcom/miui/launcher/overlay/client/LauncherClientCallback;->onOverlayUpdate(II)V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 96
    iget-boolean v0, p0, Lcom/miui/launcher/overlay/client/LauncherClient;->isDestroyed:Z

    if-nez v0, :cond_0

    .line 97
    iget v0, p0, Lcom/miui/launcher/overlay/client/LauncherClient;->mActivityState:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/miui/launcher/overlay/client/LauncherClient;->mActivityState:I

    .line 98
    invoke-direct {p0}, Lcom/miui/launcher/overlay/client/LauncherClient;->onActivityStateChange()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 89
    iget-boolean v0, p0, Lcom/miui/launcher/overlay/client/LauncherClient;->isDestroyed:Z

    if-nez v0, :cond_0

    .line 90
    iget v0, p0, Lcom/miui/launcher/overlay/client/LauncherClient;->mActivityState:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/miui/launcher/overlay/client/LauncherClient;->mActivityState:I

    .line 91
    invoke-direct {p0}, Lcom/miui/launcher/overlay/client/LauncherClient;->onActivityStateChange()V

    :cond_0
    return-void
.end method

.method protected abstract onServiceStateChanged(Z)V
.end method

.method public onStart()V
    .locals 1

    .line 81
    iget-boolean v0, p0, Lcom/miui/launcher/overlay/client/LauncherClient;->isDestroyed:Z

    if-nez v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/miui/launcher/overlay/client/LauncherClient;->mLauncherOverlayConnection:Lcom/miui/launcher/overlay/client/LauncherOverlayConnectionCompat;

    invoke-virtual {v0}, Lcom/miui/launcher/overlay/client/LauncherOverlayConnectionCompat;->onStart()V

    .line 83
    iget v0, p0, Lcom/miui/launcher/overlay/client/LauncherClient;->mActivityState:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/miui/launcher/overlay/client/LauncherClient;->mActivityState:I

    .line 84
    invoke-direct {p0}, Lcom/miui/launcher/overlay/client/LauncherClient;->onActivityStateChange()V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 103
    iget-boolean v0, p0, Lcom/miui/launcher/overlay/client/LauncherClient;->isDestroyed:Z

    if-nez v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/miui/launcher/overlay/client/LauncherClient;->mLauncherOverlayConnection:Lcom/miui/launcher/overlay/client/LauncherOverlayConnectionCompat;

    invoke-virtual {v0}, Lcom/miui/launcher/overlay/client/LauncherOverlayConnectionCompat;->onStop()V

    .line 105
    iget v0, p0, Lcom/miui/launcher/overlay/client/LauncherClient;->mActivityState:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/miui/launcher/overlay/client/LauncherClient;->mActivityState:I

    .line 106
    invoke-direct {p0}, Lcom/miui/launcher/overlay/client/LauncherClient;->onActivityStateChange()V

    :cond_0
    return-void
.end method

.method public reattachOverlay()V
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/miui/launcher/overlay/client/LauncherClient;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    if-eqz v0, :cond_0

    .line 155
    invoke-direct {p0}, Lcom/miui/launcher/overlay/client/LauncherClient;->updateOverlay()V

    :cond_0
    return-void
.end method

.method public final reconnect()V
    .locals 1

    .line 424
    iget-object v0, p0, Lcom/miui/launcher/overlay/client/LauncherClient;->mLauncherOverlay:Lcom/miui/launcher/overlay/ILauncherOverlay;

    if-nez v0, :cond_0

    .line 425
    iget-object v0, p0, Lcom/miui/launcher/overlay/client/LauncherClient;->mLauncherOverlayConnection:Lcom/miui/launcher/overlay/client/LauncherOverlayConnectionCompat;

    invoke-virtual {v0}, Lcom/miui/launcher/overlay/client/LauncherOverlayConnectionCompat;->disconnect()V

    .line 426
    invoke-virtual {p0}, Lcom/miui/launcher/overlay/client/LauncherClient;->connect()V

    goto :goto_0

    :cond_0
    const-string p0, "LauncherClient"

    const-string v0, "already connected"

    .line 428
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public setAlpha(F)V
    .locals 0

    .line 266
    iget-object p0, p0, Lcom/miui/launcher/overlay/client/LauncherClient;->mLauncherOverlay:Lcom/miui/launcher/overlay/ILauncherOverlay;

    if-eqz p0, :cond_0

    .line 268
    :try_start_0
    invoke-interface {p0, p1}, Lcom/miui/launcher/overlay/ILauncherOverlay;->setAlpha(F)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 270
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public setAlphaAndScale(FF)V
    .locals 0

    .line 276
    iget-object p0, p0, Lcom/miui/launcher/overlay/client/LauncherClient;->mLauncherOverlay:Lcom/miui/launcher/overlay/ILauncherOverlay;

    if-eqz p0, :cond_0

    .line 278
    :try_start_0
    invoke-interface {p0, p1, p2}, Lcom/miui/launcher/overlay/ILauncherOverlay;->setAlphaAndScale(FF)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 280
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public setClientOptions(Lcom/miui/launcher/overlay/client/LauncherClient$ClientOptions;)V
    .locals 2

    .line 145
    iget-object v0, p0, Lcom/miui/launcher/overlay/client/LauncherClient;->mOptions:Lcom/miui/launcher/overlay/client/LauncherClient$ClientOptions;

    invoke-static {v0}, Lcom/miui/launcher/overlay/client/LauncherClient$ClientOptions;->access$200(Lcom/miui/launcher/overlay/client/LauncherClient$ClientOptions;)I

    move-result v0

    invoke-static {p1}, Lcom/miui/launcher/overlay/client/LauncherClient$ClientOptions;->access$200(Lcom/miui/launcher/overlay/client/LauncherClient$ClientOptions;)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 146
    iput-object p1, p0, Lcom/miui/launcher/overlay/client/LauncherClient;->mOptions:Lcom/miui/launcher/overlay/client/LauncherClient$ClientOptions;

    .line 147
    iget-object p1, p0, Lcom/miui/launcher/overlay/client/LauncherClient;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    if-eqz p1, :cond_0

    .line 148
    invoke-direct {p0}, Lcom/miui/launcher/overlay/client/LauncherClient;->updateOverlay()V

    :cond_0
    return-void
.end method

.method public setOverlay(Lcom/miui/launcher/overlay/ILauncherOverlay;)V
    .locals 0

    .line 382
    iput-object p1, p0, Lcom/miui/launcher/overlay/client/LauncherClient;->mLauncherOverlay:Lcom/miui/launcher/overlay/ILauncherOverlay;

    .line 383
    iget-object p1, p0, Lcom/miui/launcher/overlay/client/LauncherClient;->mLauncherOverlay:Lcom/miui/launcher/overlay/ILauncherOverlay;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 384
    invoke-virtual {p0, p1}, Lcom/miui/launcher/overlay/client/LauncherClient;->setServiceState(I)V

    goto :goto_0

    .line 385
    :cond_0
    iget-object p1, p0, Lcom/miui/launcher/overlay/client/LauncherClient;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    if-eqz p1, :cond_1

    .line 386
    invoke-direct {p0}, Lcom/miui/launcher/overlay/client/LauncherClient;->updateOverlay()V

    :cond_1
    :goto_0
    return-void
.end method

.method public setScale(F)V
    .locals 0

    .line 256
    iget-object p0, p0, Lcom/miui/launcher/overlay/client/LauncherClient;->mLauncherOverlay:Lcom/miui/launcher/overlay/ILauncherOverlay;

    if-eqz p0, :cond_0

    .line 258
    :try_start_0
    invoke-interface {p0, p1}, Lcom/miui/launcher/overlay/ILauncherOverlay;->setScale(F)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 260
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method setServiceState(I)V
    .locals 2

    .line 349
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setServiceState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LauncherClient"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    iget v0, p0, Lcom/miui/launcher/overlay/client/LauncherClient;->mServiceState:I

    if-eq v0, p1, :cond_1

    .line 351
    iput p1, p0, Lcom/miui/launcher/overlay/client/LauncherClient;->mServiceState:I

    const/4 v0, 0x1

    and-int/2addr p1, v0

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 353
    :goto_0
    iget-object p1, p0, Lcom/miui/launcher/overlay/client/LauncherClient;->mClientCallbacks:Lcom/miui/launcher/overlay/client/LauncherClientCallback;

    invoke-interface {p1, v0}, Lcom/miui/launcher/overlay/client/LauncherClientCallback;->onServiceStateChanged(Z)V

    .line 354
    invoke-virtual {p0, v0}, Lcom/miui/launcher/overlay/client/LauncherClient;->onServiceStateChanged(Z)V

    :cond_1
    return-void
.end method

.method public showOverlay(I)V
    .locals 1

    .line 235
    iget-object v0, p0, Lcom/miui/launcher/overlay/client/LauncherClient;->mLauncherOverlay:Lcom/miui/launcher/overlay/ILauncherOverlay;

    if-eqz v0, :cond_0

    .line 237
    :try_start_0
    invoke-interface {v0, p1}, Lcom/miui/launcher/overlay/ILauncherOverlay;->openOverlay(I)V

    .line 238
    iget-object p0, p0, Lcom/miui/launcher/overlay/client/LauncherClient;->mLauncherOverlayConnection:Lcom/miui/launcher/overlay/client/LauncherOverlayConnectionCompat;

    invoke-virtual {p0}, Lcom/miui/launcher/overlay/client/LauncherOverlayConnectionCompat;->showOverlay()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 240
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public startMove()V
    .locals 0

    .line 194
    iget-object p0, p0, Lcom/miui/launcher/overlay/client/LauncherClient;->mLauncherOverlay:Lcom/miui/launcher/overlay/ILauncherOverlay;

    if-eqz p0, :cond_0

    .line 196
    :try_start_0
    invoke-interface {p0}, Lcom/miui/launcher/overlay/ILauncherOverlay;->startScroll()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 198
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public updateMove(F)V
    .locals 0

    .line 214
    iget-object p0, p0, Lcom/miui/launcher/overlay/client/LauncherClient;->mLauncherOverlay:Lcom/miui/launcher/overlay/ILauncherOverlay;

    if-eqz p0, :cond_0

    .line 216
    :try_start_0
    invoke-interface {p0, p1}, Lcom/miui/launcher/overlay/ILauncherOverlay;->onScroll(F)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 218
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
