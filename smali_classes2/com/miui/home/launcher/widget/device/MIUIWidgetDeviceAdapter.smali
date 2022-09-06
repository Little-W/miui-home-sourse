.class public interface abstract Lcom/miui/home/launcher/widget/device/MIUIWidgetDeviceAdapter;
.super Ljava/lang/Object;
.source "MIUIWidgetDeviceAdapter.java"


# static fields
.field public static final ADAPTERS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/miui/home/launcher/DeviceType;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final MIUI_WIDGET_LARGE_SCREEN_FLAG:Ljava/lang/String; = "miuiLargeScreenDevice"


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x3

    .line 39
    new-array v0, v0, [Lkotlin/Pair;

    new-instance v1, Lkotlin/Pair;

    sget-object v2, Lcom/miui/home/launcher/DeviceType;->FOLDABLE_DEVICE:Lcom/miui/home/launcher/DeviceType;

    const-string v3, "com.miui.home.launcher.widget.device.FoldMIUIWidgetDeviceAdapter"

    invoke-direct {v1, v2, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/Pair;

    sget-object v2, Lcom/miui/home/launcher/DeviceType;->PAD:Lcom/miui/home/launcher/DeviceType;

    const-string v3, "com.miui.home.launcher.widget.device.PadMIUIWidgetDeviceAdapter"

    invoke-direct {v1, v2, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/Pair;

    sget-object v2, Lcom/miui/home/launcher/DeviceType;->PHONE:Lcom/miui/home/launcher/DeviceType;

    const-string v3, "com.miui.home.launcher.widget.device.PhoneMIUIWidgetDeviceAdapter"

    invoke-direct {v1, v2, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/miui/home/launcher/widget/device/MIUIWidgetDeviceAdapter;->ADAPTERS:Ljava/util/Map;

    return-void
.end method

.method public static getDeviceAdapter(Landroid/app/Activity;Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;)Lcom/miui/home/launcher/widget/device/MIUIWidgetDeviceAdapter;
    .locals 3

    const/4 v0, 0x0

    .line 67
    :try_start_0
    invoke-static {}, Lcom/miui/home/launcher/MIUIWidgetUtil;->isMIUIWidgetSupport()Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    .line 70
    :cond_0
    sget-object v1, Lcom/miui/home/launcher/widget/device/MIUIWidgetDeviceAdapter;->ADAPTERS:Ljava/util/Map;

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getDeviceType()Lcom/miui/home/launcher/DeviceType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 71
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v0

    .line 74
    :cond_1
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/widget/device/MIUIWidgetDeviceAdapter;

    .line 75
    invoke-interface {v1, p0, p1}, Lcom/miui/home/launcher/widget/device/MIUIWidgetDeviceAdapter;->init(Landroid/app/Activity;Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p0

    .line 78
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0
.end method

.method public static miuiLargeScreenDevice(Landroid/os/Bundle;)V
    .locals 2

    .line 91
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getDeviceType()Lcom/miui/home/launcher/DeviceType;

    move-result-object v0

    sget-object v1, Lcom/miui/home/launcher/DeviceType;->PHONE:Lcom/miui/home/launcher/DeviceType;

    if-eq v0, v1, :cond_0

    const-string v0, "miuiLargeScreenDevice"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "miuiLargeScreenDevice"

    const/4 v1, 0x1

    .line 92
    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public static updateMIUILargeScreenDeviceOptions(Landroid/content/Context;I)V
    .locals 3

    .line 97
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isPhone()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 101
    :cond_0
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object p0

    .line 102
    invoke-virtual {p0, p1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetOptions(I)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "miuiLargeScreenDevice"

    const/4 v2, 0x0

    .line 103
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "miuiLargeScreenDevice"

    const/4 v2, 0x1

    .line 107
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 108
    invoke-virtual {p0, p1, v0}, Landroid/appwidget/AppWidgetManager;->updateAppWidgetOptions(ILandroid/os/Bundle;)V

    return-void

    :cond_2
    :goto_0
    const-string p0, "MIUIWidgetDeviceAdapter"

    .line 104
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateMIUILargeScreenDeviceOptions "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public changeMIUIWidgetEditMode(Z)V
    .locals 1

    .line 59
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 61
    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/Launcher;->changeMIUIWidgetEditMode(Z)V

    :cond_0
    return-void
.end method

.method public getSystemService(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public init(Landroid/app/Activity;Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;)V
    .locals 0

    return-void
.end method

.method public onDestroy()V
    .locals 0

    return-void
.end method

.method public onStart()V
    .locals 0

    return-void
.end method

.method public onStop()V
    .locals 0

    return-void
.end method

.method public startActivity(Landroid/view/View;Landroid/content/Intent;I)V
    .locals 0

    return-void
.end method

.method public startIntentSender(Landroid/view/View;Landroid/content/IntentSender;Landroid/content/Intent;I)V
    .locals 0

    return-void
.end method
