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


# virtual methods
.method public synthetic lambda$onChange$0$PrivacyAuthorizationObserver$1()V
    .locals 2

    .line 39
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncherApplication()Lcom/miui/home/launcher/Application;

    move-result-object v0

    .line 40
    iget-object v1, p0, Lcom/miui/home/launcher/commercial/privacy/PrivacyAuthorizationObserver$1;->this$0:Lcom/miui/home/launcher/commercial/privacy/PrivacyAuthorizationObserver;

    invoke-static {v0}, Lcom/miui/home/launcher/commercial/privacy/PrivacyAuthorizationObserver;->isMiuiSettingsPrivacyEnabled(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v1, v0}, Lcom/miui/home/launcher/commercial/privacy/PrivacyAuthorizationObserver;->access$202(Lcom/miui/home/launcher/commercial/privacy/PrivacyAuthorizationObserver;Z)Z

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " privacy_status msa ===>>>  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/miui/home/launcher/commercial/privacy/PrivacyAuthorizationObserver$1;->this$0:Lcom/miui/home/launcher/commercial/privacy/PrivacyAuthorizationObserver;

    invoke-static {p0}, Lcom/miui/home/launcher/commercial/privacy/PrivacyAuthorizationObserver;->access$200(Lcom/miui/home/launcher/commercial/privacy/PrivacyAuthorizationObserver;)Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "PrivacyAuthorizationObserver"

    invoke-static {v0, p0}, Lcom/miui/home/launcher/MiuiHomeLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onChange(Z)V
    .locals 0

    .line 36
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 37
    new-instance p1, Lcom/miui/home/launcher/commercial/privacy/-$$Lambda$PrivacyAuthorizationObserver$1$LJzH4J5T5G58-xsNyqAqtfWVTKw;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/commercial/privacy/-$$Lambda$PrivacyAuthorizationObserver$1$LJzH4J5T5G58-xsNyqAqtfWVTKw;-><init>(Lcom/miui/home/launcher/commercial/privacy/PrivacyAuthorizationObserver$1;)V

    invoke-static {p1}, Lcom/miui/home/launcher/common/BackgroundThread;->post(Ljava/lang/Runnable;)V

    return-void
.end method
