.class Lcom/miui/home/launcher/commercial/privacy/PrivacyAuthorizationObserver$1;
.super Landroid/database/ContentObserver;
.source "PrivacyAuthorizationObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/commercial/privacy/PrivacyAuthorizationObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/commercial/privacy/PrivacyAuthorizationObserver;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/commercial/privacy/PrivacyAuthorizationObserver;Landroid/os/Handler;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/miui/home/launcher/commercial/privacy/PrivacyAuthorizationObserver$1;->this$0:Lcom/miui/home/launcher/commercial/privacy/PrivacyAuthorizationObserver;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method

.method public static synthetic lambda$onChange$452(Lcom/miui/home/launcher/commercial/privacy/PrivacyAuthorizationObserver$1;)V
    .locals 3

    .line 39
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncherApplication()Lcom/miui/home/launcher/LauncherApplication;

    move-result-object v0

    .line 40
    iget-object v1, p0, Lcom/miui/home/launcher/commercial/privacy/PrivacyAuthorizationObserver$1;->this$0:Lcom/miui/home/launcher/commercial/privacy/PrivacyAuthorizationObserver;

    invoke-static {v0}, Lcom/miui/home/launcher/commercial/privacy/PrivacyAuthorizationObserver;->isMiuiSettingsPrivacyEnabled(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v1, v0}, Lcom/miui/home/launcher/commercial/privacy/PrivacyAuthorizationObserver;->access$202(Lcom/miui/home/launcher/commercial/privacy/PrivacyAuthorizationObserver;Z)Z

    const-string v0, "PrivacyAuthorizationObserver"

    .line 41
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " privacy_status msa ===>>>  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/home/launcher/commercial/privacy/PrivacyAuthorizationObserver$1;->this$0:Lcom/miui/home/launcher/commercial/privacy/PrivacyAuthorizationObserver;

    invoke-static {v2}, Lcom/miui/home/launcher/commercial/privacy/PrivacyAuthorizationObserver;->access$200(Lcom/miui/home/launcher/commercial/privacy/PrivacyAuthorizationObserver;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/home/launcher/MiuiHomeLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    .line 36
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 37
    new-instance p1, Lcom/miui/home/launcher/commercial/privacy/-$$Lambda$PrivacyAuthorizationObserver$1$2koGS4U9Cz-1l792407ALB3toQo;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/commercial/privacy/-$$Lambda$PrivacyAuthorizationObserver$1$2koGS4U9Cz-1l792407ALB3toQo;-><init>(Lcom/miui/home/launcher/commercial/privacy/PrivacyAuthorizationObserver$1;)V

    invoke-static {p1}, Lcom/miui/home/launcher/common/BackgroundThread;->post(Ljava/lang/Runnable;)V

    return-void
.end method
