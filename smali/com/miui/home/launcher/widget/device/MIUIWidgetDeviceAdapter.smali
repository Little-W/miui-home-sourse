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


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x3

    .line 32
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

.method public static getDeviceAdapter(Landroid/app/Activity;)Lcom/miui/home/launcher/widget/device/MIUIWidgetDeviceAdapter;
    .locals 3

    const/4 v0, 0x0

    .line 49
    :try_start_0
    sget-object v1, Lcom/miui/home/launcher/widget/device/MIUIWidgetDeviceAdapter;->ADAPTERS:Ljava/util/Map;

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getDeviceType()Lcom/miui/home/launcher/DeviceType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 50
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v0

    .line 53
    :cond_0
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/widget/device/MIUIWidgetDeviceAdapter;

    .line 54
    invoke-interface {v1, p0}, Lcom/miui/home/launcher/widget/device/MIUIWidgetDeviceAdapter;->init(Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p0

    .line 57
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0
.end method

.method public static miuiLargeScreenDevice(Landroid/os/Bundle;)V
    .locals 2

    .line 68
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

    .line 69
    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getSystemService(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public init(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onDestroy()V
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
