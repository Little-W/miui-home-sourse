.class Lcom/miui/home/launcher/LauncherCallbacksGlobal$AssistantSwitchObserver;
.super Landroid/database/ContentObserver;
.source "LauncherCallbacksGlobal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/LauncherCallbacksGlobal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AssistantSwitchObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/LauncherCallbacksGlobal;


# direct methods
.method public constructor <init>(Lcom/miui/home/launcher/LauncherCallbacksGlobal;)V
    .locals 1

    .line 83
    iput-object p1, p0, Lcom/miui/home/launcher/LauncherCallbacksGlobal$AssistantSwitchObserver;->this$0:Lcom/miui/home/launcher/LauncherCallbacksGlobal;

    .line 84
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

    const-string p1, "Launcher.CallbacksGlobal"

    const-string v0, "AssistantSwitchObserver onChange.."

    .line 89
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    invoke-static {}, Lcom/miui/home/launcher/MIUIWidgetUtil;->resetMIUIWidgetSupport()V

    .line 91
    iget-object p1, p0, Lcom/miui/home/launcher/LauncherCallbacksGlobal$AssistantSwitchObserver;->this$0:Lcom/miui/home/launcher/LauncherCallbacksGlobal;

    invoke-static {p1}, Lcom/miui/home/launcher/LauncherCallbacksGlobal;->access$000(Lcom/miui/home/launcher/LauncherCallbacksGlobal;)V

    return-void
.end method
