.class public Lcom/miui/home/launcher/commercial/privacy/PrivacyAuthorizationObserver;
.super Ljava/lang/Object;
.source "PrivacyAuthorizationObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/commercial/privacy/PrivacyAuthorizationObserver$PrivacyAuthorizationObserverHoler;
    }
.end annotation


# instance fields
.field private mAuthorizeRecallObserver:Landroid/database/ContentObserver;

.field private final mHandler:Landroid/os/Handler;

.field private volatile mPrivacyPolicyAllow:Z


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Lcom/miui/home/launcher/commercial/privacy/PrivacyAuthorizationObserver;->mPrivacyPolicyAllow:Z

    .line 31
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncherApplication()Lcom/miui/home/launcher/Application;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/Application;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/miui/home/launcher/commercial/privacy/PrivacyAuthorizationObserver;->mHandler:Landroid/os/Handler;

    .line 33
    new-instance v0, Lcom/miui/home/launcher/commercial/privacy/PrivacyAuthorizationObserver$1;

    iget-object v1, p0, Lcom/miui/home/launcher/commercial/privacy/PrivacyAuthorizationObserver;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/miui/home/launcher/commercial/privacy/PrivacyAuthorizationObserver$1;-><init>(Lcom/miui/home/launcher/commercial/privacy/PrivacyAuthorizationObserver;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/miui/home/launcher/commercial/privacy/PrivacyAuthorizationObserver;->mAuthorizeRecallObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/home/launcher/commercial/privacy/PrivacyAuthorizationObserver$1;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/miui/home/launcher/commercial/privacy/PrivacyAuthorizationObserver;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lcom/miui/home/launcher/commercial/privacy/PrivacyAuthorizationObserver;)Z
    .locals 0

    .line 16
    iget-boolean p0, p0, Lcom/miui/home/launcher/commercial/privacy/PrivacyAuthorizationObserver;->mPrivacyPolicyAllow:Z

    return p0
.end method

.method static synthetic access$202(Lcom/miui/home/launcher/commercial/privacy/PrivacyAuthorizationObserver;Z)Z
    .locals 0

    .line 16
    iput-boolean p1, p0, Lcom/miui/home/launcher/commercial/privacy/PrivacyAuthorizationObserver;->mPrivacyPolicyAllow:Z

    return p1
.end method

.method public static getInstance()Lcom/miui/home/launcher/commercial/privacy/PrivacyAuthorizationObserver;
    .locals 1

    .line 28
    invoke-static {}, Lcom/miui/home/launcher/commercial/privacy/PrivacyAuthorizationObserver$PrivacyAuthorizationObserverHoler;->access$100()Lcom/miui/home/launcher/commercial/privacy/PrivacyAuthorizationObserver;

    move-result-object v0

    return-object v0
.end method

.method public static isMiuiSettingsPrivacyEnabled(Landroid/content/Context;)Z
    .locals 9

    const-string v0, "PrivacyAuthorizationObserver"

    const-string v1, "isMiuiSettingsPrivacyEnabled"

    .line 68
    invoke-static {v0, v1}, Lcom/miui/home/launcher/MiuiHomeLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "android.provider.MiuiSettings$Privacy"

    .line 71
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const-string v4, "isEnabled"

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/Class;

    const-class v7, Landroid/content/Context;

    aput-object v7, v6, v1

    const-class v7, Ljava/lang/String;

    const/4 v8, 0x1

    aput-object v7, v6, v8

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p0, v5, v1

    const-string p0, "com.miui.msa.global"

    aput-object p0, v5, v8

    invoke-static {v2, v3, v4, v6, v5}, Lcom/miui/launcher/utils/ReflectUtils;->callStaticMethod(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 74
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "result = "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/miui/home/launcher/MiuiHomeLog;->log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 76
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/miui/home/launcher/MiuiHomeLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v1
.end method


# virtual methods
.method public getPrivacyPolicyAllow()Z
    .locals 0

    .line 63
    iget-boolean p0, p0, Lcom/miui/home/launcher/commercial/privacy/PrivacyAuthorizationObserver;->mPrivacyPolicyAllow:Z

    return p0
.end method

.method public synthetic lambda$register$0$PrivacyAuthorizationObserver(Landroid/content/Context;)V
    .locals 2

    .line 49
    invoke-static {p1}, Lcom/miui/home/launcher/commercial/privacy/PrivacyAuthorizationObserver;->isMiuiSettingsPrivacyEnabled(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/home/launcher/commercial/privacy/PrivacyAuthorizationObserver;->mPrivacyPolicyAllow:Z

    const-string v0, "privacy_status_com.miui.msa.global"

    .line 50
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 51
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object p0, p0, Lcom/miui/home/launcher/commercial/privacy/PrivacyAuthorizationObserver;->mAuthorizeRecallObserver:Landroid/database/ContentObserver;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string p0, "PrivacyAuthorizationObserver"

    const-string p1, "register"

    .line 53
    invoke-static {p0, p1}, Lcom/miui/home/launcher/MiuiHomeLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public register(Landroid/content/Context;)V
    .locals 1

    .line 47
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/commercial/privacy/PrivacyAuthorizationObserver;->unregister(Landroid/content/Context;)V

    .line 48
    new-instance v0, Lcom/miui/home/launcher/commercial/privacy/-$$Lambda$PrivacyAuthorizationObserver$wPB9KLgUMD6evT_a4xal-3N2RDY;

    invoke-direct {v0, p0, p1}, Lcom/miui/home/launcher/commercial/privacy/-$$Lambda$PrivacyAuthorizationObserver$wPB9KLgUMD6evT_a4xal-3N2RDY;-><init>(Lcom/miui/home/launcher/commercial/privacy/PrivacyAuthorizationObserver;Landroid/content/Context;)V

    invoke-static {v0}, Lcom/miui/home/launcher/common/BackgroundThread;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public unregister(Landroid/content/Context;)V
    .locals 0

    .line 58
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object p0, p0, Lcom/miui/home/launcher/commercial/privacy/PrivacyAuthorizationObserver;->mAuthorizeRecallObserver:Landroid/database/ContentObserver;

    invoke-virtual {p1, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const-string p0, "PrivacyAuthorizationObserver"

    const-string p1, "unregister"

    .line 59
    invoke-static {p0, p1}, Lcom/miui/home/launcher/MiuiHomeLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
