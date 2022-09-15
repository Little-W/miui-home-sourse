.class public Lcom/miui/home/launcher/common/WidgetManagerUtils;
.super Ljava/lang/Object;
.source "WidgetManagerUtils.java"


# direct methods
.method public static bindAppWidgetIdIfAllowed(Landroid/content/Context;ILandroid/content/ComponentName;)Z
    .locals 0

    .line 86
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object p0

    .line 88
    :try_start_0
    invoke-virtual {p0, p1, p2}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetIdIfAllowed(ILandroid/content/ComponentName;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const-string p0, "Launcher.widgetManager"

    const-string p1, "Error when bind app widget"

    .line 90
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public static bindAppWidgetIdIfAllowed(Landroid/content/Context;ILandroid/os/UserHandle;Landroid/content/ComponentName;Landroid/os/Bundle;)Z
    .locals 0

    .line 76
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object p0

    .line 78
    :try_start_0
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetIdIfAllowed(ILandroid/os/UserHandle;Landroid/content/ComponentName;Landroid/os/Bundle;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const-string p0, "Launcher.widgetManager"

    const-string p1, "Error when bind app widget"

    .line 80
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public static gotoPicker(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/ItemInfo;)V
    .locals 6

    .line 96
    invoke-static {}, Lcom/miui/home/launcher/MIUIWidgetUtil;->isMIUIWidgetSupport()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 97
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/Launcher;->showWidgetsPreviewLayout(Z)V

    return-void

    .line 100
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x10000000

    .line 101
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v2, "openSource"

    const/4 v3, 0x2

    .line 102
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-eqz p1, :cond_1

    .line 105
    sget-object v2, Lcom/miui/home/launcher/widget/MIUIWidgetCompat;->sAssistantWidget:Lcom/miui/home/launcher/AssistantWidget;

    invoke-interface {v2}, Lcom/miui/home/launcher/AssistantWidget;->getPickerDetailActivity()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 106
    instance-of v2, p1, Lcom/miui/home/launcher/ShortcutInfo;

    if-eqz v2, :cond_2

    .line 107
    check-cast p1, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 109
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "widget://picker/detail"

    .line 110
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "?"

    .line 111
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "packageName"

    .line 112
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "="

    .line 113
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&"

    .line 115
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "appName"

    .line 116
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "="

    .line 117
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->getTitle()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string p1, "&"

    .line 119
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "openSource"

    .line 120
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "="

    .line 121
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "&"

    .line 123
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "picker_tip_source"

    .line 124
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "="

    .line 125
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x3

    .line 126
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 127
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_0

    :cond_1
    const-string p1, "picker_tip_source"

    const/16 v2, 0xa

    .line 131
    invoke-virtual {v0, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 132
    sget-object p1, Lcom/miui/home/launcher/widget/MIUIWidgetCompat;->sAssistantWidget:Lcom/miui/home/launcher/AssistantWidget;

    invoke-interface {p1}, Lcom/miui/home/launcher/AssistantWidget;->getPickerHomeActivity()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 136
    :cond_2
    :goto_0
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/Launcher;->closeFolder(Z)Z

    .line 137
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v2, Lcom/miui/home/launcher/overlay/assistant/AssistantConnectMessage;

    invoke-direct {v2}, Lcom/miui/home/launcher/overlay/assistant/AssistantConnectMessage;-><init>()V

    invoke-virtual {p1, v2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 138
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string v0, "Launcher.widgetManager"

    const-string v2, "no intent"

    .line 140
    invoke-static {v0, v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 141
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/Launcher;->showWidgetsPreviewLayout(Z)V

    :goto_1
    return-void
.end method

.method public static hasEditEntry(Landroid/content/Context;Lcom/miui/home/launcher/ItemInfo;)Z
    .locals 4

    .line 166
    instance-of v0, p1, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 167
    move-object v0, p1

    check-cast v0, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;

    iget v0, v0, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->status:I

    if-eq v0, v2, :cond_0

    return v1

    .line 172
    :cond_0
    instance-of v0, p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    if-eqz v0, :cond_4

    .line 173
    check-cast p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    .line 174
    invoke-virtual {p1}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->getAppWidgetId()I

    move-result v0

    .line 176
    invoke-virtual {p1}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->getLauncherProviderInfo()Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 178
    iget-boolean v1, p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->isMIUIWidget:Z

    if-nez v1, :cond_1

    .line 179
    invoke-virtual {v3}, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->isReconfigurable()Z

    move-result p0

    return p0

    .line 180
    :cond_1
    iget-object v1, p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->editUri:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 181
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/appwidget/AppWidgetManager;->getAppWidgetOptions(I)Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_2

    const-string v0, "miuiEditUri"

    .line 182
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_2
    const-string p0, ""

    .line 183
    :goto_0
    iput-object p0, p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->editUri:Ljava/lang/String;

    .line 185
    :cond_3
    iget-object p0, p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->editUri:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/2addr p0, v2

    return p0

    .line 187
    :cond_4
    instance-of p0, p1, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;

    if-eqz p0, :cond_5

    .line 188
    check-cast p1, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;

    iget-object p0, p1, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->editUri:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/2addr p0, v2

    return p0

    :cond_5
    return v1
.end method

.method public static hasWidgets(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/ItemInfo;)Z
    .locals 3

    .line 147
    invoke-static {}, Lcom/miui/home/launcher/MIUIWidgetUtil;->isMIUIWidgetSupport()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 150
    :cond_0
    instance-of v0, p1, Lcom/miui/home/launcher/ShortcutInfo;

    if-eqz v0, :cond_2

    .line 151
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getAppWidgetManager()Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    move-object v2, p1

    check-cast v2, Lcom/miui/home/launcher/ShortcutInfo;

    .line 152
    invoke-virtual {v2}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/miui/home/launcher/ItemInfo;->getUser()Landroid/os/UserHandle;

    move-result-object p1

    .line 151
    invoke-virtual {v0, v2, p1}, Landroid/appwidget/AppWidgetManager;->getInstalledProvidersForPackage(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object p1

    .line 153
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/appwidget/AppWidgetProviderInfo;

    .line 155
    invoke-static {p0, v0}, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->fromProviderInfo(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;)Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;

    move-result-object v0

    .line 157
    iget-boolean v0, v0, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->isMIUIWidget:Z

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_2
    return v1
.end method

.method public static installWidget(Landroid/content/Context;Lcom/miui/home/launcher/LauncherAppWidgetInfo;)Z
    .locals 2

    .line 241
    iget-object v0, p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->downloadUri:Ljava/lang/String;

    .line 242
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 243
    invoke-virtual {p1}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->getProvider()Landroid/content/ComponentName;

    move-result-object p1

    .line 244
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 245
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mimarket://details/detailfloat?finishWhenInstalled=true&overlayPosition=1&id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&senderPackageName="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 247
    :cond_0
    invoke-static {p0}, Lcom/market/sdk/MarketManager;->getManager(Landroid/content/Context;)Lcom/market/sdk/MarketManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/market/sdk/MarketManager;->getFloatCardManager()Lcom/market/sdk/FloatCardManager;

    move-result-object p0

    .line 248
    invoke-virtual {p0, v0}, Lcom/market/sdk/FloatCardManager;->resumeByFloat(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0, v0}, Lcom/market/sdk/FloatCardManager;->downloadByFloat(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    const-string p0, "Launcher.widgetManager"

    .line 249
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "download failure for package:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public static isAppWidgetAvailable(Landroid/content/Context;ILandroid/content/ComponentName;)Z
    .locals 0

    .line 256
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object p0

    .line 257
    invoke-virtual {p0, p1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 258
    iget-object p1, p0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    .line 259
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {p0, p2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isProviderAvailable(Landroid/content/Context;Landroid/content/ComponentName;)Z
    .locals 2

    .line 263
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.appwidget.action.APPWIDGET_UPDATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 264
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/4 p1, 0x0

    .line 266
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const v1, 0xc0040

    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 269
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-lez p0, :cond_0

    const/4 p1, 0x1

    :cond_0
    return p1

    :catch_0
    return p1
.end method

.method public static openEditPage(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/ItemInfo;)V
    .locals 3

    .line 195
    :try_start_0
    instance-of v0, p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    if-eqz v0, :cond_2

    .line 196
    move-object v0, p1

    check-cast v0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    .line 197
    iget-object v1, v0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->editUri:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 198
    new-instance p1, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 199
    iget-object v1, v0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->editUri:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 200
    invoke-virtual {p1, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v2, "miuiEditIntentFlags"

    .line 202
    invoke-virtual {v1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 203
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "[1-9][0-9]*"

    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 204
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :cond_0
    const-string v1, "appWidgetId"

    .line 207
    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->getAppWidgetId()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 208
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Launcher;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 210
    :cond_1
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getAppWidgetHost()Lcom/miui/home/launcher/LauncherAppWidgetHost;

    move-result-object v0

    check-cast p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    .line 211
    invoke-virtual {p1}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->getAppWidgetId()I

    move-result p1

    const/16 v1, 0xd

    .line 210
    invoke-virtual {v0, p0, p1, v1}, Lcom/miui/home/launcher/LauncherAppWidgetHost;->startConfigActivity(Lcom/miui/home/launcher/BaseActivity;II)V

    goto :goto_0

    .line 214
    :cond_2
    instance-of v0, p1, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;

    if-eqz v0, :cond_4

    .line 215
    check-cast p1, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;

    .line 216
    iget-object v0, p1, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->customEditUri:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 217
    iget-object v0, p1, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->configPath:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/miui/home/launcher/widget/MIUIWidgetCompat;->grantAssistantPermission(Landroid/content/Context;Ljava/lang/String;Z)Landroid/net/Uri;

    .line 218
    iget-object v0, p1, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->productId:Ljava/lang/String;

    iget v1, p1, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->versionCode:I

    invoke-static {p0, v0, v1}, Lcom/miui/home/launcher/widget/MIUIWidgetCompat;->grantPaResPermission(Landroid/content/Context;Ljava/lang/String;I)Landroid/net/Uri;

    .line 220
    :cond_3
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.EDIT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 221
    invoke-static {p1}, Lcom/miui/home/launcher/common/WidgetManagerUtils;->parseEditUri(Lcom/miui/home/launcher/maml/MaMlWidgetInfo;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 222
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "appWidgetId"

    .line 223
    iget p1, p1, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->gadgetId:I

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "picker_tip_source"

    const/16 v1, 0xc

    .line 224
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 225
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 228
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    :goto_0
    return-void
.end method

.method private static parseEditUri(Lcom/miui/home/launcher/maml/MaMlWidgetInfo;)Landroid/net/Uri;
    .locals 3

    .line 233
    iget-object v0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->editUri:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 234
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getDeviceType()Lcom/miui/home/launcher/DeviceType;

    move-result-object v1

    sget-object v2, Lcom/miui/home/launcher/DeviceType;->PHONE:Lcom/miui/home/launcher/DeviceType;

    if-eq v1, v2, :cond_0

    const-string v1, "miuiWidgetId"

    .line 235
    iget p0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->gadgetId:I

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 237
    :cond_0
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static unbindAllWidgets(Landroid/content/Context;)V
    .locals 2

    .line 71
    new-instance v0, Landroid/appwidget/AppWidgetHost;

    const/16 v1, 0x400

    invoke-direct {v0, p0, v1}, Landroid/appwidget/AppWidgetHost;-><init>(Landroid/content/Context;I)V

    .line 72
    invoke-virtual {v0}, Landroid/appwidget/AppWidgetHost;->deleteHost()V

    return-void
.end method
