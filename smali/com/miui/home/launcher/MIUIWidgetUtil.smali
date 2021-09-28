.class public Lcom/miui/home/launcher/MIUIWidgetUtil;
.super Ljava/lang/Object;
.source "MIUIWidgetUtil.java"


# static fields
.field private static IS_MIUI_WIDGET_SUPPORT:Ljava/lang/Boolean;

.field private static sLauncherIconContentPaddingRect:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private static getMetaData(Landroid/content/Context;Landroid/content/ComponentName;)Landroid/os/Bundle;
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 74
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const v1, 0xc0080

    invoke-virtual {p0, p1, v1}, Landroid/content/pm/PackageManager;->getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v0

    .line 80
    :cond_1
    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "MIUIWidgetUtil"

    const-string v1, "parseMetaInfoFromAppWidgetProvider"

    .line 82
    return-object v0

    :cond_2
    :goto_0
    return-object v0
.end method

.method public static getMiuiWidgetPadding(Landroid/content/Context;)Landroid/graphics/Rect;
    .locals 1

    .line 145
    sget-object v0, Lcom/miui/home/launcher/MIUIWidgetUtil;->sLauncherIconContentPaddingRect:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    .line 148
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f070084

    .line 149
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    .line 150
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p0, p0, p0, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    sput-object v0, Lcom/miui/home/launcher/MIUIWidgetUtil;->sLauncherIconContentPaddingRect:Landroid/graphics/Rect;

    .line 155
    :cond_0
    sget-object p0, Lcom/miui/home/launcher/MIUIWidgetUtil;->sLauncherIconContentPaddingRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method public static isMIUIWidget(Landroid/content/Context;Landroid/content/ComponentName;)Z
    .locals 1

    .line 88
    invoke-static {p0, p1}, Lcom/miui/home/launcher/MIUIWidgetUtil;->getMetaData(Landroid/content/Context;Landroid/content/ComponentName;)Landroid/os/Bundle;

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_0

    return p1

    :cond_0
    const-string v0, "miuiWidget"

    .line 92
    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static isMIUIWidgetSupport()Z
    .locals 3

    .line 44
    sget-object v0, Lcom/miui/home/launcher/MIUIWidgetUtil;->IS_MIUI_WIDGET_SUPPORT:Ljava/lang/Boolean;

    if-nez v0, :cond_2

    .line 45
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/mi/mibridge/DeviceLevel;->IS_MIUI_LITE_VERSION:Z

    if-nez v0, :cond_0

    .line 47
    invoke-static {v1}, Lcom/mi/mibridge/DeviceLevel;->getDeviceLevel(I)I

    move-result v0

    sget v2, Lcom/mi/mibridge/DeviceLevel;->LOW:I

    if-eq v0, v2, :cond_0

    sget v0, Lcom/mi/mibridge/DeviceLevel;->TOTAL_RAM:I

    const/4 v2, 0x4

    if-gt v0, v2, :cond_1

    sget v0, Lcom/mi/mibridge/DeviceLevel;->TOTAL_RAM:I

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 45
    :cond_1
    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/miui/home/launcher/MIUIWidgetUtil;->IS_MIUI_WIDGET_SUPPORT:Ljava/lang/Boolean;

    .line 52
    :cond_2
    sget-object v0, Lcom/miui/home/launcher/MIUIWidgetUtil;->IS_MIUI_WIDGET_SUPPORT:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static isMIUIWidgetTransitionAnimation(Landroid/content/Context;Landroid/content/ComponentName;)Z
    .locals 1

    .line 96
    invoke-static {p0, p1}, Lcom/miui/home/launcher/MIUIWidgetUtil;->getMetaData(Landroid/content/Context;Landroid/content/ComponentName;)Landroid/os/Bundle;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const-string p1, "miuiWidgetTransitionAnimation"

    const/4 v0, 0x1

    .line 100
    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static parseMetaInfoFromAppWidgetProvider(Landroid/content/Context;Landroid/content/ComponentName;)Lcom/miui/home/launcher/widget/AppWidgetProviderMeta;
    .locals 3

    .line 59
    invoke-static {p0, p1}, Lcom/miui/home/launcher/MIUIWidgetUtil;->getMetaData(Landroid/content/Context;Landroid/content/ComponentName;)Landroid/os/Bundle;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string p1, "miuiWidget"

    const/4 v0, 0x0

    .line 63
    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    const-string v1, "miuiWidgetRefresh"

    const-string v2, ""

    .line 64
    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "miuiWidgetRefreshMinInterval"

    .line 65
    invoke-virtual {p0, v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    .line 66
    new-instance v0, Lcom/miui/home/launcher/widget/AppWidgetProviderMeta;

    invoke-direct {v0, p1, v1, p0}, Lcom/miui/home/launcher/widget/AppWidgetProviderMeta;-><init>(ZLjava/lang/String;I)V

    return-object v0
.end method

.method public static resetCache()V
    .locals 1

    const/4 v0, 0x0

    .line 141
    sput-object v0, Lcom/miui/home/launcher/MIUIWidgetUtil;->sLauncherIconContentPaddingRect:Landroid/graphics/Rect;

    return-void
.end method

.method public static startWidgetDetailPage(Landroid/app/Activity;Landroid/appwidget/AppWidgetProviderInfo;Landroid/os/Bundle;)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p0, :cond_5

    if-eqz p1, :cond_5

    .line 104
    iget-object v1, p1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    if-eqz v1, :cond_5

    if-nez p2, :cond_0

    goto/16 :goto_0

    .line 107
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/MIUIWidgetUtil;->isMIUIWidgetSupport()Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    .line 111
    :cond_1
    iget-object p1, p1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    .line 112
    invoke-static {p0, p1}, Lcom/miui/home/launcher/MIUIWidgetUtil;->isMIUIWidget(Landroid/content/Context;Landroid/content/ComponentName;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 113
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-string v1, "widgetName"

    const-string v2, ""

    .line 114
    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 115
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 116
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 118
    :cond_2
    new-instance v2, Landroid/net/Uri$Builder;

    invoke-direct {v2}, Landroid/net/Uri$Builder;-><init>()V

    const-string v3, "widget"

    .line 119
    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "picker"

    .line 120
    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "detail"

    .line 121
    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "packageName"

    .line 122
    invoke-virtual {v3, v4, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    const-string v3, "widgetName"

    .line 123
    invoke-virtual {p1, v3, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 124
    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    .line 125
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string p1, "widgetExtraData"

    .line 126
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_3

    const-string p2, "widgetExtraData"

    .line 128
    invoke-virtual {v1, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 130
    :cond_3
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 131
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    const/4 v0, 0x1

    :cond_4
    return v0

    :cond_5
    :goto_0
    return v0
.end method
