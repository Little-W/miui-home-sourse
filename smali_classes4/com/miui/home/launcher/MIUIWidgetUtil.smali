.class public Lcom/miui/home/launcher/MIUIWidgetUtil;
.super Ljava/lang/Object;
.source "MIUIWidgetUtil.java"


# static fields
.field private static IS_MINUS_SCREEN_2X1_ENABLED:Ljava/lang/Boolean;

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

    .line 91
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const v1, 0xc0080

    invoke-virtual {p0, p1, v1}, Landroid/content/pm/PackageManager;->getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v0

    .line 97
    :cond_1
    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "MIUIWidgetUtil"

    const-string v1, "parseMetaInfoFromAppWidgetProvider"

    .line 99
    invoke-static {p1, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_0
    return-object v0
.end method

.method public static getMiuiWidgetPadding(Landroid/content/Context;)Landroid/graphics/Rect;
    .locals 1

    .line 164
    sget-object v0, Lcom/miui/home/launcher/MIUIWidgetUtil;->sLauncherIconContentPaddingRect:Landroid/graphics/Rect;

    if-nez v0, :cond_1

    .line 165
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 167
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isNewIcons()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getIconImageViewPadding()I

    move-result p0

    goto :goto_0

    :cond_0
    const v0, 0x7f0700af

    .line 170
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    .line 172
    :goto_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p0, p0, p0, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    sput-object v0, Lcom/miui/home/launcher/MIUIWidgetUtil;->sLauncherIconContentPaddingRect:Landroid/graphics/Rect;

    .line 175
    :cond_1
    sget-object p0, Lcom/miui/home/launcher/MIUIWidgetUtil;->sLauncherIconContentPaddingRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method public static isMIUIWidget(Landroid/content/Context;Landroid/content/ComponentName;)Z
    .locals 1

    .line 105
    invoke-static {p0, p1}, Lcom/miui/home/launcher/MIUIWidgetUtil;->getMetaData(Landroid/content/Context;Landroid/content/ComponentName;)Landroid/os/Bundle;

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_0

    return p1

    :cond_0
    const-string v0, "miuiWidget"

    .line 109
    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static isMIUIWidgetSupport()Z
    .locals 1

    const-string v0, "old_widgets"

    invoke-static {v0}, Landroid/preference/SettingsHelper;->getIntofSettings(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isMIUIWidgetTransitionAnimation(Landroid/content/Context;Landroid/content/ComponentName;)Z
    .locals 1

    .line 113
    invoke-static {p0, p1}, Lcom/miui/home/launcher/MIUIWidgetUtil;->getMetaData(Landroid/content/Context;Landroid/content/ComponentName;)Landroid/os/Bundle;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p1, 0x1

    const-string v0, "miuiWidgetTransitionAnimation"

    .line 117
    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static isMinusScreen2x1Enabled()Z
    .locals 1

    .line 57
    sget-object v0, Lcom/miui/home/launcher/MIUIWidgetUtil;->IS_MINUS_SCREEN_2X1_ENABLED:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 58
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/DeviceConfig;->isMinusScreen2x1Enabled(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/miui/home/launcher/MIUIWidgetUtil;->IS_MINUS_SCREEN_2X1_ENABLED:Ljava/lang/Boolean;

    .line 60
    :cond_0
    sget-object v0, Lcom/miui/home/launcher/MIUIWidgetUtil;->IS_MINUS_SCREEN_2X1_ENABLED:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static parseMetaInfoFromAppWidgetProvider(Landroid/content/Context;Landroid/content/ComponentName;)Lcom/miui/home/launcher/widget/AppWidgetProviderMeta;
    .locals 4

    .line 75
    invoke-static {p0, p1}, Lcom/miui/home/launcher/MIUIWidgetUtil;->getMetaData(Landroid/content/Context;Landroid/content/ComponentName;)Landroid/os/Bundle;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 p1, 0x0

    const-string v0, "miuiWidget"

    .line 79
    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const-string v1, "miuiWidgetRefresh"

    const-string v2, ""

    .line 80
    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "miuiWidgetRefreshMinInterval"

    .line 81
    invoke-virtual {p0, v2, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    const/4 v2, 0x1

    const-string v3, "miuiAutoScale"

    .line 82
    invoke-virtual {p0, v3, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    .line 83
    new-instance v2, Lcom/miui/home/launcher/widget/AppWidgetProviderMeta;

    invoke-direct {v2, v0, v1, p1, p0}, Lcom/miui/home/launcher/widget/AppWidgetProviderMeta;-><init>(ZLjava/lang/String;IZ)V

    return-object v2
.end method

.method public static resetCache()V
    .locals 1

    const/4 v0, 0x0

    .line 160
    sput-object v0, Lcom/miui/home/launcher/MIUIWidgetUtil;->sLauncherIconContentPaddingRect:Landroid/graphics/Rect;

    return-void
.end method

.method public static resetMIUIWidgetSupport()V
    .locals 1

    const/4 v0, 0x0

    .line 64
    sput-object v0, Lcom/miui/home/launcher/MIUIWidgetUtil;->IS_MIUI_WIDGET_SUPPORT:Ljava/lang/Boolean;

    return-void
.end method

.method public static resetMinusScreen2x1Enabled()V
    .locals 1

    const/4 v0, 0x0

    .line 68
    sput-object v0, Lcom/miui/home/launcher/MIUIWidgetUtil;->IS_MINUS_SCREEN_2X1_ENABLED:Ljava/lang/Boolean;

    return-void
.end method

.method public static startWidgetDetailPage(Landroid/app/Activity;Landroid/appwidget/AppWidgetProviderInfo;Landroid/os/Bundle;)Z
    .locals 8

    const/4 v0, 0x0

    if-eqz p0, :cond_4

    if-eqz p1, :cond_4

    .line 121
    iget-object v1, p1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    if-eqz v1, :cond_4

    if-nez p2, :cond_0

    goto/16 :goto_0

    .line 124
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/MIUIWidgetUtil;->isMIUIWidgetSupport()Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    .line 128
    :cond_1
    iget-object p1, p1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    .line 129
    invoke-static {p0, p1}, Lcom/miui/home/launcher/MIUIWidgetUtil;->isMIUIWidget(Landroid/content/Context;Landroid/content/ComponentName;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 130
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v1, "widgetName"

    const-string v2, ""

    .line 131
    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "implUniqueCode"

    .line 132
    invoke-virtual {p2, v4, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 133
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 134
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 136
    :cond_2
    new-instance v2, Landroid/net/Uri$Builder;

    invoke-direct {v2}, Landroid/net/Uri$Builder;-><init>()V

    const-string/jumbo v6, "widget"

    .line 137
    invoke-virtual {v2, v6}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v6

    const-string v7, "picker"

    .line 138
    invoke-virtual {v6, v7}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v6

    const-string v7, "detail"

    .line 139
    invoke-virtual {v6, v7}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v6

    const-string v7, "packageName"

    .line 140
    invoke-virtual {v6, v7, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    .line 141
    invoke-virtual {p1, v1, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    .line 142
    invoke-virtual {p1, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 143
    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    .line 144
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string/jumbo p1, "widgetExtraData"

    .line 145
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 147
    invoke-virtual {v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 149
    :cond_3
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 150
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    const/4 v0, 0x1

    :cond_4
    :goto_0
    return v0
.end method
