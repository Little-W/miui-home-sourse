.class Lcom/miui/home/launcher/LauncherCallbacksGlobal$AssistantOpenObserver;
.super Landroid/database/ContentObserver;
.source "LauncherCallbacksGlobal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/LauncherCallbacksGlobal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AssistantOpenObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/LauncherCallbacksGlobal;


# direct methods
.method public constructor <init>(Lcom/miui/home/launcher/LauncherCallbacksGlobal;)V
    .locals 1

    .line 238
    iput-object p1, p0, Lcom/miui/home/launcher/LauncherCallbacksGlobal$AssistantOpenObserver;->this$0:Lcom/miui/home/launcher/LauncherCallbacksGlobal;

    .line 239
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    .line 244
    iget-object p1, p0, Lcom/miui/home/launcher/LauncherCallbacksGlobal$AssistantOpenObserver;->this$0:Lcom/miui/home/launcher/LauncherCallbacksGlobal;

    invoke-static {p1}, Lcom/miui/home/launcher/LauncherCallbacksGlobal;->access$000(Lcom/miui/home/launcher/LauncherCallbacksGlobal;)Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 245
    iget-object p1, p0, Lcom/miui/home/launcher/LauncherCallbacksGlobal$AssistantOpenObserver;->this$0:Lcom/miui/home/launcher/LauncherCallbacksGlobal;

    invoke-static {p1}, Lcom/miui/home/launcher/LauncherCallbacksGlobal;->access$000(Lcom/miui/home/launcher/LauncherCallbacksGlobal;)Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/home/launcher/LauncherCallbacksGlobal$AssistantOpenObserver;->this$0:Lcom/miui/home/launcher/LauncherCallbacksGlobal;

    .line 246
    invoke-static {v0}, Lcom/miui/home/launcher/LauncherCallbacksGlobal;->access$100(Lcom/miui/home/launcher/LauncherCallbacksGlobal;)Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    sget-boolean v1, Lcom/miui/home/launcher/DeviceConfig;->IS_USE_GOOGLE_MINUS_SCREEN:Z

    invoke-static {v0, v1}, Lcom/miui/home/launcher/LauncherCallbacksGlobal;->access$400(Landroid/content/Context;Z)Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$ClientOptions;

    move-result-object v0

    .line 245
    invoke-virtual {p1, v0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->setClientOptions(Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$ClientOptions;)V

    .line 247
    iget-object p1, p0, Lcom/miui/home/launcher/LauncherCallbacksGlobal$AssistantOpenObserver;->this$0:Lcom/miui/home/launcher/LauncherCallbacksGlobal;

    invoke-static {p1}, Lcom/miui/home/launcher/LauncherCallbacksGlobal;->access$300(Lcom/miui/home/launcher/LauncherCallbacksGlobal;)V

    :cond_0
    return-void
.end method
