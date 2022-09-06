.class Lcom/miui/home/launcher/LauncherCallbacksGlobal$ProvisionObserver;
.super Landroid/database/ContentObserver;
.source "LauncherCallbacksGlobal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/LauncherCallbacksGlobal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProvisionObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/LauncherCallbacksGlobal;


# direct methods
.method public constructor <init>(Lcom/miui/home/launcher/LauncherCallbacksGlobal;)V
    .locals 1

    .line 113
    iput-object p1, p0, Lcom/miui/home/launcher/LauncherCallbacksGlobal$ProvisionObserver;->this$0:Lcom/miui/home/launcher/LauncherCallbacksGlobal;

    .line 114
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    const-string p1, "ro.com.miui.rsa"

    const-string v0, ""

    .line 120
    invoke-static {p1, v0}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->getStringFromSystemProperites(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 121
    sget-object v0, Lcom/miui/home/launcher/LauncherAssistantCompat;->CLIENT_ID_BASE:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 122
    invoke-static {}, Lcom/miui/home/launcher/LauncherAssistantCompat;->resetRSAConstants()V

    .line 123
    iget-object p1, p0, Lcom/miui/home/launcher/LauncherCallbacksGlobal$ProvisionObserver;->this$0:Lcom/miui/home/launcher/LauncherCallbacksGlobal;

    invoke-static {p1}, Lcom/miui/home/launcher/LauncherCallbacksGlobal;->access$000(Lcom/miui/home/launcher/LauncherCallbacksGlobal;)V

    :cond_0
    return-void
.end method
