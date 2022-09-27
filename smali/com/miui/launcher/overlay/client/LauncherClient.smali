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

.field private final mClientService:Lcom/miui/launcher/overlay/client/LauncherClientService;

.field private mLauncherOverlay:Lcom/miui/launcher/overlay/ILauncherOverlay;

.field private mLauncherOverlayCallback:Lcom/miui/launcher/overlay/client/LauncherOverlayCallback;

.field private mLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private mOptions:Lcom/miui/launcher/overlay/client/LauncherClient$ClientOptions;

.field private final mPackageReceiver:Landroid/content/BroadcastReceiver;

.field private mServerVersion:I

.field private mServiceState:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/miui/launcher/overlay/client/LauncherClient$ClientOptions;)V
    .locals 1

    .line 49
    new-instance v0, Lcom/miui/launcher/overlay/client/LauncherClientCallbackAdapter;

    invoke-direct {v0}, Lcom/miui/launcher/overlay/client/LauncherClientCallbackAdapter;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/launcher/overlay/client/LauncherClient;-><init>(Landroid/app/Activity;Lcom/miui/launcher/overlay/client/LauncherClient$ClientOptions;Lcom/miui/launcher/overlay/client/LauncherClientCallback;)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/miui/launcher/overlay/client/LauncherClient$ClientOptions;Lcom/miui/launcher/overlay/client/LauncherClientCallback;)V
    .locals 2

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 53
    iput-boolean v0, p0, Lcom/miui/launcher/overlay/client/LauncherClient;->isDestroyed:Z

    .line 54
    iput v0, p0, Lcom/miui/launcher/overlay/client/LauncherClient;->mActivityState:I

    .line 55
    iput v0, p0, Lcom/miui/launcher/overlay/client/LauncherClient;->mServiceState:I

    .line 57
    iput-object p1, p0, Lcom/miui/launcher/overlay/client/LauncherClient;->mActivity:Landroid/app/Activity;

    .line 58
    iput-object p2, p0, Lcom/miui/launcher/overlay/client/LauncherClient;->mOptions:Lcom/miui/launcher/overlay/client/LauncherClient$ClientOptions;

    .line 59
    iput-object p3, p0, Lcom/miui/launcher/overlay/client/LauncherClient;->mClientCallbacks:Lcom/miui/launcher/overlay/client/LauncherClientCallback;

    .line 60
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p2}, Lcom/miui/launcher/overlay/client/LauncherClient$ClientOptions;->access$000(Lcom/miui/launcher/overlay/client/LauncherClient$ClientOptions;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p3, v1}, Lcom/miui/launcher/overlay/client/LauncherClientService;->getService(Landroid/content/Context;Ljava/lang/String;)Lcom/miui/launcher/overlay/client/LauncherClientService;

    move-result-object p3

    iput-object p3, p0, Lcom/miui/launcher/overlay/client/LauncherClient;->mClientService:Lcom/miui/launcher/overlay/client/LauncherClientService;

    .line 61
    iget-object p3, p0, Lcom/miui/launcher/overlay/client/LauncherClient;->mClientService:Lcom/miui/launcher/overlay/client/LauncherClientService;

    invoke-virtual {p3, p0}, Lcom/miui/launcher/overlay/client/LauncherClientService;->bindClient(Lcom/miui/launcher/overlay/client/LauncherClient;)Lcom/miui/launcher/overlay/ILauncherOverlay;

    move-result-object p3

    iput-object p3, p0, Lcom/miui/launcher/overlay/client/LauncherClient;->mLauncherOverlay:Lcom/miui/launcher/overlay/ILauncherOverlay;

    .line 63
    new-instance p3, Lcom/miui/launcher/overlay/client/PackageReceiver;

    invoke-direct {p3, p0}, Lcom/miui/launcher/overlay/client/PackageReceiver;-><init>(Lcom/miui/launcher/overlay/client/LauncherClient;)V

    iput-object p3, p0, Lcom/miui/launcher/overlay/client/LauncherClient;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    .line 64
    new-instance p3, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {p3, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "package"

    .line 65
    invoke-virtual {p3, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 66
    iget-object v1, p0, Lcom/miui/launcher/overlay/client/LauncherClient;->mOptions:Lcom/miui/launcher/overlay/client/LauncherClient$ClientOptions;

    invoke-static {v1}, Lcom/miui/launcher/overlay/client/LauncherClient$ClientOptions;->access$000(Lcom/miui/launcher/overlay/client/LauncherClient$ClientOptions;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1, v0}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    .line 67
    iget-object v0, p0, Lcom/miui/launcher/overlay/client/LauncherClient;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/miui/launcher/overlay/client/LauncherClient;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, p3}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 69
    invoke-static {p2}, Lcom/miui/launcher/overlay/client/LauncherClient$ClientOptions;->access$000(Lcom/miui/launcher/overlay/client/LauncherClient$ClientOptions;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/miui/launcher/overlay/client/LauncherClient;->loadServerVersion(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/miui/launcher/overlay/client/LauncherClient;->mServerVersion:I

    const-string p1, "LauncherClient"

    .line 70
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "serverVersion:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/miui/launcher/overlay/client/LauncherClient;->mOptions:Lcom/miui/launcher/overlay/client/LauncherClient$ClientOptions;

    invoke-static {p3}, Lcom/miui/launcher/overlay/client/LauncherClient$ClientOptions;->access$000(Lcom/miui/launcher/overlay/client/LauncherClient$ClientOptions;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ":"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/miui/launcher/overlay/client/LauncherClient;->mServerVersion:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    iget-object p1, p0, Lcom/miui/launcher/overlay/client/LauncherClient;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/launcher/overlay/client/LauncherClient;->mActivity:Landroid/app/Activity;

    .line 73
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/launcher/overlay/client/LauncherClient;->mActivity:Landroid/app/Activity;

    .line 74
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 75
    invoke-virtual {p0}, Lcom/miui/launcher/overlay/client/LauncherClient;->onAttachedToWindow()V

    :cond_0
    return-void
.end method

.method static getServiceIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 3

    .line 384
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "app"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 385
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

    const-string v0, "sv"

    const/4 v1, 0x3

    .line 386
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    const-string v0, "cv"

    .line 387
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    .line 388
    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    .line 389
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.miui.launcher.WINDOW_OVERLAY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 390
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 391
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    return-object v0
.end method

.method public static loadServerVersion(Landroid/content/Context;Ljava/lang/String;)I
    .locals 1

    .line 396
    invoke-static {p0, p1}, Lcom/miui/launcher/overlay/client/LauncherClient;->getServiceIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 397
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const v0, 0xc0080

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p0

    const/4 p1, 0x0

    if-eqz p0, :cond_0

    .line 399
    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 402
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

    .line 110
    iget-object v0, p0, Lcom/miui/launcher/overlay/client/LauncherClient;->mLauncherOverlay:Lcom/miui/launcher/overlay/ILauncherOverlay;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/miui/launcher/overlay/client/LauncherClient;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    if-eqz v1, :cond_0

    .line 112
    :try_start_0
    iget v1, p0, Lcom/miui/launcher/overlay/client/LauncherClient;->mActivityState:I

    invoke-interface {v0, v1}, Lcom/miui/launcher/overlay/ILauncherOverlay;->setActivityState(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 114
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private updateLayoutParams(Landroid/view/WindowManager$LayoutParams;)V
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/miui/launcher/overlay/client/LauncherClient;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    if-eq v0, p1, :cond_1

    .line 160
    iput-object p1, p0, Lcom/miui/launcher/overlay/client/LauncherClient;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 161
    iget-object p1, p0, Lcom/miui/launcher/overlay/client/LauncherClient;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    if-eqz p1, :cond_0

    .line 162
    invoke-direct {p0}, Lcom/miui/launcher/overlay/client/LauncherClient;->updateOverlay()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 164
    invoke-virtual {p0, p1}, Lcom/miui/launcher/overlay/client/LauncherClient;->hideOverlay(I)V

    const/4 p1, 0x0

    .line 165
    iput-object p1, p0, Lcom/miui/launcher/overlay/client/LauncherClient;->mLauncherOverlay:Lcom/miui/launcher/overlay/ILauncherOverlay;

    :cond_1
    :goto_0
    return-void
.end method

.method private updateOverlay()V
    .locals 3

    .line 171
    iget-object v0, p0, Lcom/miui/launcher/overlay/client/LauncherClient;->mLauncherOverlay:Lcom/miui/launcher/overlay/ILauncherOverlay;

    if-eqz v0, :cond_1

    .line 172
    iget-object v0, p0, Lcom/miui/launcher/overlay/client/LauncherClient;->mLauncherOverlayCallback:Lcom/miui/launcher/overlay/client/LauncherOverlayCallback;

    if-nez v0, :cond_0

    .line 173
    new-instance v0, Lcom/miui/launcher/overlay/client/LauncherOverlayCallback;

    invoke-direct {v0, p0}, Lcom/miui/launcher/overlay/client/LauncherOverlayCallback;-><init>(Lcom/miui/launcher/overlay/client/LauncherClient;)V

    iput-object v0, p0, Lcom/miui/launcher/overlay/client/LauncherClient;->mLauncherOverlayCallback:Lcom/miui/launcher/overlay/client/LauncherOverlayCallback;

    .line 175
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "layout_params"

    .line 176
    iget-object v2, p0, Lcom/miui/launcher/overlay/client/LauncherClient;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v1, "configuration"

    .line 177
    iget-object v2, p0, Lcom/miui/launcher/overlay/client/LauncherClient;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v1, "client_options"

    .line 178
    iget-object v2, p0, Lcom/miui/launcher/overlay/client/LauncherClient;->mOptions:Lcom/miui/launcher/overlay/client/LauncherClient$ClientOptions;

    invoke-static {v2}, Lcom/miui/launcher/overlay/client/LauncherClient$ClientOptions;->access$100(Lcom/miui/launcher/overlay/client/LauncherClient$ClientOptions;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 180
    :try_start_0
    iget-object v1, p0, Lcom/miui/launcher/overlay/client/LauncherClient;->mLauncherOverlay:Lcom/miui/launcher/overlay/ILauncherOverlay;

    iget-object v2, p0, Lcom/miui/launcher/overlay/client/LauncherClient;->mLauncherOverlayCallback:Lcom/miui/launcher/overlay/client/LauncherOverlayCallback;

    invoke-interface {v1, v0, v2}, Lcom/miui/launcher/overlay/ILauncherOverlay;->windowAttached(Landroid/os/Bundle;Lcom/miui/launcher/overlay/ILauncherOverlayCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 182
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 185
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/miui/launcher/overlay/client/LauncherClient;->mLauncherOverlay:Lcom/miui/launcher/overlay/ILauncherOverlay;

    iget v1, p0, Lcom/miui/launcher/overlay/client/LauncherClient;->mActivityState:I

    invoke-interface {v0, v1}, Lcom/miui/launcher/overlay/ILauncherOverlay;->setActivityState(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 187
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method public callOverlay(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1

    .line 321
    iget-object v0, p0, Lcom/miui/launcher/overlay/client/LauncherClient;->mLauncherOverlay:Lcom/miui/launcher/overlay/ILauncherOverlay;

    if-eqz v0, :cond_0

    .line 323
    :try_start_0
    invoke-interface {v0, p1, p2, p3}, Lcom/miui/launcher/overlay/ILauncherOverlay;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 325
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final connect()V
    .locals 1

    .line 302
    iget-boolean v0, p0, Lcom/miui/launcher/overlay/client/LauncherClient;->isDestroyed:Z

    if-nez v0, :cond_0

    .line 303
    iget-object v0, p0, Lcom/miui/launcher/overlay/client/LauncherClient;->mClientService:Lcom/miui/launcher/overlay/client/LauncherClientService;

    invoke-virtual {v0}, Lcom/miui/launcher/overlay/client/LauncherClientService;->connect()V

    :cond_0
    return-void
.end method

.method public disconnect()V
    .locals 1

    .line 308
    iget-object v0, p0, Lcom/miui/launcher/overlay/client/LauncherClient;->mClientService:Lcom/miui/launcher/overlay/client/LauncherClientService;

    invoke-virtual {v0}, Lcom/miui/launcher/overlay/client/LauncherClientService;->disconnect()V

    const/4 v0, 0x0

    .line 309
    invoke-virtual {p0, v0}, Lcom/miui/launcher/overlay/client/LauncherClient;->setOverlay(Lcom/miui/launcher/overlay/ILauncherOverlay;)V

    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    .line 293
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

    .line 294
    invoke-static {p2, p3, p4}, Lcom/miui/launcher/overlay/BuildInfo;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 295
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "    mServerVersion: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/miui/launcher/overlay/client/LauncherClient;->mServerVersion:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 296
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

    .line 297
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

    .line 298
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "    isDestroyed: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/miui/launcher/overlay/client/LauncherClient;->isDestroyed:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public endMove()V
    .locals 1

    .line 203
    iget-object v0, p0, Lcom/miui/launcher/overlay/client/LauncherClient;->mLauncherOverlay:Lcom/miui/launcher/overlay/ILauncherOverlay;

    if-eqz v0, :cond_0

    .line 205
    :try_start_0
    invoke-interface {v0}, Lcom/miui/launcher/overlay/ILauncherOverlay;->endScroll()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 207
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public final getOptions()I
    .locals 1

    .line 430
    iget-object v0, p0, Lcom/miui/launcher/overlay/client/LauncherClient;->mOptions:Lcom/miui/launcher/overlay/client/LauncherClient$ClientOptions;

    invoke-static {v0}, Lcom/miui/launcher/overlay/client/LauncherClient$ClientOptions;->access$100(Lcom/miui/launcher/overlay/client/LauncherClient$ClientOptions;)I

    move-result v0

    return v0
.end method

.method public final getPackageName()Ljava/lang/String;
    .locals 1

    .line 426
    iget-object v0, p0, Lcom/miui/launcher/overlay/client/LauncherClient;->mOptions:Lcom/miui/launcher/overlay/client/LauncherClient$ClientOptions;

    invoke-static {v0}, Lcom/miui/launcher/overlay/client/LauncherClient$ClientOptions;->access$000(Lcom/miui/launcher/overlay/client/LauncherClient$ClientOptions;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getServerVersion()I
    .locals 1

    .line 444
    iget v0, p0, Lcom/miui/launcher/overlay/client/LauncherClient;->mServerVersion:I

    return v0
.end method

.method public hideOverlay(I)V
    .locals 1

    .line 223
    iget-object v0, p0, Lcom/miui/launcher/overlay/client/LauncherClient;->mLauncherOverlay:Lcom/miui/launcher/overlay/ILauncherOverlay;

    if-eqz v0, :cond_0

    .line 225
    :try_start_0
    invoke-interface {v0, p1}, Lcom/miui/launcher/overlay/ILauncherOverlay;->closeOverlay(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 227
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public invokeOverlay(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .line 332
    iget-object v0, p0, Lcom/miui/launcher/overlay/client/LauncherClient;->mLauncherOverlay:Lcom/miui/launcher/overlay/ILauncherOverlay;

    if-eqz v0, :cond_0

    .line 334
    :try_start_0
    invoke-interface {v0, p1, p2, p3}, Lcom/miui/launcher/overlay/ILauncherOverlay;->invoke(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 336
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public isDestroyed()Z
    .locals 1

    .line 448
    iget-boolean v0, p0, Lcom/miui/launcher/overlay/client/LauncherClient;->isDestroyed:Z

    return v0
.end method

.method public onAttachedToWindow()V
    .locals 1

    .line 132
    iget-boolean v0, p0, Lcom/miui/launcher/overlay/client/LauncherClient;->isDestroyed:Z

    if-nez v0, :cond_0

    .line 133
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

    .line 120
    iget-boolean v0, p0, Lcom/miui/launcher/overlay/client/LauncherClient;->isDestroyed:Z

    if-nez v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/miui/launcher/overlay/client/LauncherClient;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/miui/launcher/overlay/client/LauncherClient;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    const/4 v0, 0x1

    .line 123
    iput-boolean v0, p0, Lcom/miui/launcher/overlay/client/LauncherClient;->isDestroyed:Z

    .line 124
    iget-object v1, p0, Lcom/miui/launcher/overlay/client/LauncherClient;->mLauncherOverlayCallback:Lcom/miui/launcher/overlay/client/LauncherOverlayCallback;

    if-eqz v1, :cond_1

    .line 125
    invoke-virtual {v1}, Lcom/miui/launcher/overlay/client/LauncherOverlayCallback;->release()V

    const/4 v1, 0x0

    .line 126
    iput-object v1, p0, Lcom/miui/launcher/overlay/client/LauncherClient;->mLauncherOverlayCallback:Lcom/miui/launcher/overlay/client/LauncherOverlayCallback;

    .line 128
    :cond_1
    iget-object v1, p0, Lcom/miui/launcher/overlay/client/LauncherClient;->mClientService:Lcom/miui/launcher/overlay/client/LauncherClientService;

    iget-object v2, p0, Lcom/miui/launcher/overlay/client/LauncherClient;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v2

    xor-int/2addr v0, v2

    invoke-virtual {v1, p0, v0}, Lcom/miui/launcher/overlay/client/LauncherClientService;->unbindClient(Lcom/miui/launcher/overlay/client/LauncherClient;Z)V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 138
    iget-boolean v0, p0, Lcom/miui/launcher/overlay/client/LauncherClient;->isDestroyed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 139
    invoke-direct {p0, v0}, Lcom/miui/launcher/overlay/client/LauncherClient;->updateLayoutParams(Landroid/view/WindowManager$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public onMultiWindowModeChanged(ZLandroid/content/res/Configuration;)V
    .locals 1

    .line 283
    iget-object v0, p0, Lcom/miui/launcher/overlay/client/LauncherClient;->mLauncherOverlay:Lcom/miui/launcher/overlay/ILauncherOverlay;

    if-eqz v0, :cond_0

    .line 285
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/miui/launcher/overlay/ILauncherOverlay;->onMultiWindowModeChanged(ZLandroid/content/res/Configuration;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 287
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 1

    .line 243
    iget-object v0, p0, Lcom/miui/launcher/overlay/client/LauncherClient;->mLauncherOverlay:Lcom/miui/launcher/overlay/ILauncherOverlay;

    if-eqz v0, :cond_0

    .line 245
    :try_start_0
    invoke-interface {v0, p1}, Lcom/miui/launcher/overlay/ILauncherOverlay;->onNewIntent(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 247
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method onOverlayCall(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1

    .line 313
    iget-object v0, p0, Lcom/miui/launcher/overlay/client/LauncherClient;->mClientCallbacks:Lcom/miui/launcher/overlay/client/LauncherClientCallback;

    invoke-interface {v0, p1, p2, p3}, Lcom/miui/launcher/overlay/client/LauncherClientCallback;->onOverlayCall(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method

.method onOverlayInvoke(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .line 317
    iget-object v0, p0, Lcom/miui/launcher/overlay/client/LauncherClient;->mClientCallbacks:Lcom/miui/launcher/overlay/client/LauncherClientCallback;

    invoke-interface {v0, p1, p2, p3}, Lcom/miui/launcher/overlay/client/LauncherClientCallback;->onOverlayInvoke(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method onOverlayScrollChanged(F)V
    .locals 1

    .line 364
    iget-object v0, p0, Lcom/miui/launcher/overlay/client/LauncherClient;->mClientCallbacks:Lcom/miui/launcher/overlay/client/LauncherClientCallback;

    invoke-interface {v0, p1}, Lcom/miui/launcher/overlay/client/LauncherClientCallback;->onOverlayScrollChanged(F)V

    return-void
.end method

.method onOverlayScrollEnd(F)V
    .locals 1

    .line 371
    iget-object v0, p0, Lcom/miui/launcher/overlay/client/LauncherClient;->mClientCallbacks:Lcom/miui/launcher/overlay/client/LauncherClientCallback;

    invoke-interface {v0, p1}, Lcom/miui/launcher/overlay/client/LauncherClientCallback;->onOverlayScrollEnd(F)V

    return-void
.end method

.method onOverlayScrollStart(F)V
    .locals 1

    .line 357
    iget-object v0, p0, Lcom/miui/launcher/overlay/client/LauncherClient;->mClientCallbacks:Lcom/miui/launcher/overlay/client/LauncherClientCallback;

    invoke-interface {v0, p1}, Lcom/miui/launcher/overlay/client/LauncherClientCallback;->onOverlayScrollStart(F)V

    return-void
.end method

.method onOverlayUpdate(Landroid/content/Context;)V
    .locals 3

    .line 409
    iget v0, p0, Lcom/miui/launcher/overlay/client/LauncherClient;->mServerVersion:I

    .line 410
    iget-object v1, p0, Lcom/miui/launcher/overlay/client/LauncherClient;->mOptions:Lcom/miui/launcher/overlay/client/LauncherClient$ClientOptions;

    invoke-static {v1}, Lcom/miui/launcher/overlay/client/LauncherClient$ClientOptions;->access$000(Lcom/miui/launcher/overlay/client/LauncherClient$ClientOptions;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/miui/launcher/overlay/client/LauncherClient;->loadServerVersion(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/miui/launcher/overlay/client/LauncherClient;->mServerVersion:I

    const-string p1, "LauncherClient"

    .line 411
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServerUpdate:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/launcher/overlay/client/LauncherClient;->mOptions:Lcom/miui/launcher/overlay/client/LauncherClient$ClientOptions;

    invoke-static {v2}, Lcom/miui/launcher/overlay/client/LauncherClient$ClientOptions;->access$000(Lcom/miui/launcher/overlay/client/LauncherClient$ClientOptions;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/miui/launcher/overlay/client/LauncherClient;->mServerVersion:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    invoke-virtual {p0}, Lcom/miui/launcher/overlay/client/LauncherClient;->reconnect()V

    .line 413
    iget-object p1, p0, Lcom/miui/launcher/overlay/client/LauncherClient;->mClientCallbacks:Lcom/miui/launcher/overlay/client/LauncherClientCallback;

    iget v1, p0, Lcom/miui/launcher/overlay/client/LauncherClient;->mServerVersion:I

    invoke-interface {p1, v0, v1}, Lcom/miui/launcher/overlay/client/LauncherClientCallback;->onOverlayUpdate(II)V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 95
    iget-boolean v0, p0, Lcom/miui/launcher/overlay/client/LauncherClient;->isDestroyed:Z

    if-nez v0, :cond_0

    .line 96
    iget v0, p0, Lcom/miui/launcher/overlay/client/LauncherClient;->mActivityState:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/miui/launcher/overlay/client/LauncherClient;->mActivityState:I

    .line 97
    invoke-direct {p0}, Lcom/miui/launcher/overlay/client/LauncherClient;->onActivityStateChange()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 88
    iget-boolean v0, p0, Lcom/miui/launcher/overlay/client/LauncherClient;->isDestroyed:Z

    if-nez v0, :cond_0

    .line 89
    iget v0, p0, Lcom/miui/launcher/overlay/client/LauncherClient;->mActivityState:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/miui/launcher/overlay/client/LauncherClient;->mActivityState:I

    .line 90
    invoke-direct {p0}, Lcom/miui/launcher/overlay/client/LauncherClient;->onActivityStateChange()V

    :cond_0
    return-void
.end method

.method protected abstract onServiceStateChanged(Z)V
.end method

.method public onStart()V
    .locals 2

    .line 80
    iget-boolean v0, p0, Lcom/miui/launcher/overlay/client/LauncherClient;->isDestroyed:Z

    if-nez v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/miui/launcher/overlay/client/LauncherClient;->mClientService:Lcom/miui/launcher/overlay/client/LauncherClientService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/launcher/overlay/client/LauncherClientService;->setStopped(Z)V

    .line 82
    iget v0, p0, Lcom/miui/launcher/overlay/client/LauncherClient;->mActivityState:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/miui/launcher/overlay/client/LauncherClient;->mActivityState:I

    .line 83
    invoke-direct {p0}, Lcom/miui/launcher/overlay/client/LauncherClient;->onActivityStateChange()V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    .line 102
    iget-boolean v0, p0, Lcom/miui/launcher/overlay/client/LauncherClient;->isDestroyed:Z

    if-nez v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/miui/launcher/overlay/client/LauncherClient;->mClientService:Lcom/miui/launcher/overlay/client/LauncherClientService;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/launcher/overlay/client/LauncherClientService;->setStopped(Z)V

    .line 104
    iget v0, p0, Lcom/miui/launcher/overlay/client/LauncherClient;->mActivityState:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/miui/launcher/overlay/client/LauncherClient;->mActivityState:I

    .line 105
    invoke-direct {p0}, Lcom/miui/launcher/overlay/client/LauncherClient;->onActivityStateChange()V

    :cond_0
    return-void
.end method

.method public reattachOverlay()V
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/miui/launcher/overlay/client/LauncherClient;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    if-eqz v0, :cond_0

    .line 154
    invoke-direct {p0}, Lcom/miui/launcher/overlay/client/LauncherClient;->updateOverlay()V

    :cond_0
    return-void
.end method

.method public final reconnect()V
    .locals 2

    .line 417
    iget-object v0, p0, Lcom/miui/launcher/overlay/client/LauncherClient;->mLauncherOverlay:Lcom/miui/launcher/overlay/ILauncherOverlay;

    if-nez v0, :cond_0

    .line 418
    iget-object v0, p0, Lcom/miui/launcher/overlay/client/LauncherClient;->mClientService:Lcom/miui/launcher/overlay/client/LauncherClientService;

    invoke-virtual {v0}, Lcom/miui/launcher/overlay/client/LauncherClientService;->disconnect()V

    .line 419
    invoke-virtual {p0}, Lcom/miui/launcher/overlay/client/LauncherClient;->connect()V

    goto :goto_0

    :cond_0
    const-string v0, "LauncherClient"

    const-string v1, "already connected"

    .line 421
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public setAlpha(F)V
    .locals 1

    .line 263
    iget-object v0, p0, Lcom/miui/launcher/overlay/client/LauncherClient;->mLauncherOverlay:Lcom/miui/launcher/overlay/ILauncherOverlay;

    if-eqz v0, :cond_0

    .line 265
    :try_start_0
    invoke-interface {v0, p1}, Lcom/miui/launcher/overlay/ILauncherOverlay;->setAlpha(F)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 267
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public setAlphaAndScale(FF)V
    .locals 1

    .line 273
    iget-object v0, p0, Lcom/miui/launcher/overlay/client/LauncherClient;->mLauncherOverlay:Lcom/miui/launcher/overlay/ILauncherOverlay;

    if-eqz v0, :cond_0

    .line 275
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/miui/launcher/overlay/ILauncherOverlay;->setAlphaAndScale(FF)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 277
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public setClientOptions(Lcom/miui/launcher/overlay/client/LauncherClient$ClientOptions;)V
    .locals 2

    .line 144
    iget-object v0, p0, Lcom/miui/launcher/overlay/client/LauncherClient;->mOptions:Lcom/miui/launcher/overlay/client/LauncherClient$ClientOptions;

    invoke-static {v0}, Lcom/miui/launcher/overlay/client/LauncherClient$ClientOptions;->access$100(Lcom/miui/launcher/overlay/client/LauncherClient$ClientOptions;)I

    move-result v0

    invoke-static {p1}, Lcom/miui/launcher/overlay/client/LauncherClient$ClientOptions;->access$100(Lcom/miui/launcher/overlay/client/LauncherClient$ClientOptions;)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 145
    iput-object p1, p0, Lcom/miui/launcher/overlay/client/LauncherClient;->mOptions:Lcom/miui/launcher/overlay/client/LauncherClient$ClientOptions;

    .line 146
    iget-object p1, p0, Lcom/miui/launcher/overlay/client/LauncherClient;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    if-eqz p1, :cond_0

    .line 147
    invoke-direct {p0}, Lcom/miui/launcher/overlay/client/LauncherClient;->updateOverlay()V

    :cond_0
    return-void
.end method

.method public setOverlay(Lcom/miui/launcher/overlay/ILauncherOverlay;)V
    .locals 0

    .line 375
    iput-object p1, p0, Lcom/miui/launcher/overlay/client/LauncherClient;->mLauncherOverlay:Lcom/miui/launcher/overlay/ILauncherOverlay;

    .line 376
    iget-object p1, p0, Lcom/miui/launcher/overlay/client/LauncherClient;->mLauncherOverlay:Lcom/miui/launcher/overlay/ILauncherOverlay;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 377
    invoke-virtual {p0, p1}, Lcom/miui/launcher/overlay/client/LauncherClient;->setServiceState(I)V

    goto :goto_0

    .line 378
    :cond_0
    iget-object p1, p0, Lcom/miui/launcher/overlay/client/LauncherClient;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    if-eqz p1, :cond_1

    .line 379
    invoke-direct {p0}, Lcom/miui/launcher/overlay/client/LauncherClient;->updateOverlay()V

    :cond_1
    :goto_0
    return-void
.end method

.method public setScale(F)V
    .locals 1

    .line 253
    iget-object v0, p0, Lcom/miui/launcher/overlay/client/LauncherClient;->mLauncherOverlay:Lcom/miui/launcher/overlay/ILauncherOverlay;

    if-eqz v0, :cond_0

    .line 255
    :try_start_0
    invoke-interface {v0, p1}, Lcom/miui/launcher/overlay/ILauncherOverlay;->setScale(F)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 257
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method setServiceState(I)V
    .locals 3

    const-string v0, "LauncherClient"

    .line 342
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setServiceState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    iget v0, p0, Lcom/miui/launcher/overlay/client/LauncherClient;->mServiceState:I

    if-eq v0, p1, :cond_1

    .line 344
    iput p1, p0, Lcom/miui/launcher/overlay/client/LauncherClient;->mServiceState:I

    const/4 v0, 0x1

    and-int/2addr p1, v0

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 346
    :goto_0
    iget-object p1, p0, Lcom/miui/launcher/overlay/client/LauncherClient;->mClientCallbacks:Lcom/miui/launcher/overlay/client/LauncherClientCallback;

    invoke-interface {p1, v0}, Lcom/miui/launcher/overlay/client/LauncherClientCallback;->onServiceStateChanged(Z)V

    .line 347
    invoke-virtual {p0, v0}, Lcom/miui/launcher/overlay/client/LauncherClient;->onServiceStateChanged(Z)V

    :cond_1
    return-void
.end method

.method public showOverlay(I)V
    .locals 1

    .line 233
    iget-object v0, p0, Lcom/miui/launcher/overlay/client/LauncherClient;->mLauncherOverlay:Lcom/miui/launcher/overlay/ILauncherOverlay;

    if-eqz v0, :cond_0

    .line 235
    :try_start_0
    invoke-interface {v0, p1}, Lcom/miui/launcher/overlay/ILauncherOverlay;->openOverlay(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 237
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public startMove()V
    .locals 1

    .line 193
    iget-object v0, p0, Lcom/miui/launcher/overlay/client/LauncherClient;->mLauncherOverlay:Lcom/miui/launcher/overlay/ILauncherOverlay;

    if-eqz v0, :cond_0

    .line 195
    :try_start_0
    invoke-interface {v0}, Lcom/miui/launcher/overlay/ILauncherOverlay;->startScroll()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 197
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public updateMove(F)V
    .locals 1

    .line 213
    iget-object v0, p0, Lcom/miui/launcher/overlay/client/LauncherClient;->mLauncherOverlay:Lcom/miui/launcher/overlay/ILauncherOverlay;

    if-eqz v0, :cond_0

    .line 215
    :try_start_0
    invoke-interface {v0, p1}, Lcom/miui/launcher/overlay/ILauncherOverlay;->onScroll(F)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 217
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
