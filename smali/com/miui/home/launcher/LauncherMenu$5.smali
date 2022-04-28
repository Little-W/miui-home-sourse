.class Lcom/miui/home/launcher/LauncherMenu$5;
.super Ljava/lang/Object;
.source "LauncherMenu.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/LauncherMenu;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/LauncherMenu;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/LauncherMenu;)V
    .locals 0

    .line 136
    iput-object p1, p0, Lcom/miui/home/launcher/LauncherMenu$5;->this$0:Lcom/miui/home/launcher/LauncherMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .line 139
    iget-object p1, p0, Lcom/miui/home/launcher/LauncherMenu$5;->this$0:Lcom/miui/home/launcher/LauncherMenu;

    invoke-static {p1}, Lcom/miui/home/launcher/LauncherMenu;->access$300(Lcom/miui/home/launcher/LauncherMenu;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "miui_home_lock_screen_cells"

    invoke-static {p1, v0, p2}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->putBooleanToSystem(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    if-eqz p2, :cond_0

    .line 143
    iget-object p1, p0, Lcom/miui/home/launcher/LauncherMenu$5;->this$0:Lcom/miui/home/launcher/LauncherMenu;

    invoke-static {p1}, Lcom/miui/home/launcher/LauncherMenu;->access$000(Lcom/miui/home/launcher/LauncherMenu;)Lcom/miui/home/launcher/Launcher;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getShakeMonitor()Lcom/miui/home/launcher/ShakeMonitor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/ShakeMonitor;->stopMonitorIfNeed()V

    goto :goto_0

    .line 145
    :cond_0
    iget-object p1, p0, Lcom/miui/home/launcher/LauncherMenu$5;->this$0:Lcom/miui/home/launcher/LauncherMenu;

    invoke-static {p1}, Lcom/miui/home/launcher/LauncherMenu;->access$000(Lcom/miui/home/launcher/LauncherMenu;)Lcom/miui/home/launcher/Launcher;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getShakeMonitor()Lcom/miui/home/launcher/ShakeMonitor;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/ShakeMonitor;->startMonitorIfNeed(Ljava/lang/Runnable;)V

    .line 147
    :goto_0
    invoke-static {p2}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackHomeSettingSubLockLayout(Z)V

    return-void
.end method
