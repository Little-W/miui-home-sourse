.class public Lcom/miui/home/launcher/common/WidgetManagerUtils;
.super Ljava/lang/Object;
.source "WidgetManagerUtils.java"


# direct methods
.method public static bindAppWidgetIdIfAllowed(Landroid/content/Context;ILandroid/content/ComponentName;)Z
    .locals 0

    .line 88
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object p0

    .line 90
    :try_start_0
    invoke-virtual {p0, p1, p2}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetIdIfAllowed(ILandroid/content/ComponentName;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const-string p0, "Launcher.widgetManager"

    const-string p1, "Error when bind app widget"

    .line 92
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public static bindAppWidgetIdIfAllowed(Landroid/content/Context;ILandroid/os/UserHandle;Landroid/content/ComponentName;Landroid/os/Bundle;)Z
    .locals 0

    .line 78
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object p0

    .line 80
    :try_start_0
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetIdIfAllowed(ILandroid/os/UserHandle;Landroid/content/ComponentName;Landroid/os/Bundle;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const-string p0, "Launcher.widgetManager"

    const-string p1, "Error when bind app widget"

    .line 82
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public static gotoPicker(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/ItemInfo;)V
    .locals 6

    .line 98
    invoke-static {}, Lcom/miui/home/launcher/MIUIWidgetUtil;->isMIUIWidgetSupport()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 99
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/Launcher;->showWidgetsPreviewLayout(Z)V

    return-void

    .line 102
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x10000000

    .line 103
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v2, "openSource"

    const/4 v3, 0x2

    .line 104
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-eqz p1, :cond_1

    .line 107
    new-instance v2, Landroid/content/ComponentName;

    const-string v4, "com.miui.personalassistant"

    const-string v5, "com.miui.personalassistant.picker.business.detail.PickerDetailActivity"

    invoke-direct {v2, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 108
    instance-of v2, p1, Lcom/miui/home/launcher/ShortcutInfo;

    if-eqz v2, :cond_2

    .line 109
    check-cast p1, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 111
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "widget://picker/detail"

    .line 112
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "?"

    .line 113
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "packageName"

    .line 114
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "="

    .line 115
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&"

    .line 117
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "appName"

    .line 118
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "="

    .line 119
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->getTitle()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string p1, "&"

    .line 121
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "openSource"

    .line 122
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "="

    .line 123
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "&"

    .line 125
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "picker_tip_source"

    .line 126
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "="

    .line 127
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x3

    .line 128
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 129
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_0

    :cond_1
    const-string p1, "picker_tip_source"

    const/16 v2, 0xa

    .line 133
    invoke-virtual {v0, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 134
    new-instance p1, Landroid/content/ComponentName;

    const-string v2, "com.miui.personalassistant"

    const-string v3, "com.miui.personalassistant.picker.business.home.pages.PickerHomeActivity"

    invoke-direct {p1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 138
    :cond_2
    :goto_0
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/Launcher;->closeFolder(Z)Z

    .line 139
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v2, Lcom/miui/home/launcher/overlay/assistant/AssistantConnectMessage;

    invoke-direct {v2}, Lcom/miui/home/launcher/overlay/assistant/AssistantConnectMessage;-><init>()V

    invoke-virtual {p1, v2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 140
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

    .line 142
    invoke-static {v0, v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 143
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/Launcher;->showWidgetsPreviewLayout(Z)V

    :goto_1
    return-void
.end method

.method public static hasEditEntry(Landroid/content/Context;Lcom/miui/home/launcher/ItemInfo;)Z
    .locals 4

    .line 168
    instance-of v0, p1, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 169
    move-object v0, p1

    check-cast v0, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;

    iget v0, v0, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->status:I

    if-eq v0, v2, :cond_0

    return v1

    .line 174
    :cond_0
    instance-of v0, p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    if-eqz v0, :cond_4

    .line 175
    check-cast p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    .line 176
    invoke-virtual {p1}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->getAppWidgetId()I

    move-result v0

    .line 178
    invoke-virtual {p1}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->getLauncherProviderInfo()Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 180
    iget-boolean v1, p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->isMIUIWidget:Z

    if-nez v1, :cond_1

    .line 181
    invoke-virtual {v3}, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->isReconfigurable()Z

    move-result p0

    return p0

    .line 182
    :cond_1
    iget-object v1, p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->editUri:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 183
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/appwidget/AppWidgetManager;->getAppWidgetOptions(I)Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_2

    const-string v0, "miuiEditUri"

    .line 184
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_2
    const-string p0, ""

    .line 185
    :goto_0
    iput-object p0, p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->editUri:Ljava/lang/String;

    .line 187
    :cond_3
    iget-object p0, p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->editUri:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/2addr p0, v2

    return p0

    .line 189
    :cond_4
    instance-of p0, p1, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;

    if-eqz p0, :cond_5

    .line 190
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

    .line 149
    invoke-static {}, Lcom/miui/home/launcher/MIUIWidgetUtil;->isMIUIWidgetSupport()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 152
    :cond_0
    instance-of v0, p1, Lcom/miui/home/launcher/ShortcutInfo;

    if-eqz v0, :cond_2

    .line 153
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getAppWidgetManager()Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    move-object v2, p1

    check-cast v2, Lcom/miui/home/launcher/ShortcutInfo;

    .line 154
    invoke-virtual {v2}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/miui/home/launcher/ItemInfo;->getUser()Landroid/os/UserHandle;

    move-result-object p1

    .line 153
    invoke-virtual {v0, v2, p1}, Landroid/appwidget/AppWidgetManager;->getInstalledProvidersForPackage(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object p1

    .line 155
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/appwidget/AppWidgetProviderInfo;

    .line 157
    invoke-static {p0, v0}, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->fromProviderInfo(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;)Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;

    move-result-object v0

    .line 159
    iget-boolean v0, v0, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->isMIUIWidget:Z

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_2
    return v1
.end method

.method public static installWidget(Landroid/content/Context;Lcom/miui/home/launcher/LauncherAppWidgetInfo;)Z
    .locals 2

    .line 243
    iget-object v0, p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->downloadUri:Ljava/lang/String;

    .line 244
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 245
    invoke-virtual {p1}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->getProvider()Landroid/content/ComponentName;

    move-result-object p1

    .line 246
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 247
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

    .line 249
    :cond_0
    invoke-static {p0}, Lcom/market/sdk/MarketManager;->getManager(Landroid/content/Context;)Lcom/market/sdk/MarketManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/market/sdk/MarketManager;->getFloatCardManager()Lcom/market/sdk/FloatCardManager;

    move-result-object p0

    .line 250
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

    .line 251
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

    .line 258
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object p0

    .line 259
    invoke-virtual {p0, p1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 260
    iget-object p1, p0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    .line 261
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

    .line 265
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.appwidget.action.APPWIDGET_UPDATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 266
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/4 p1, 0x0

    .line 268
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/16 v1, 0x40

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

    .line 197
    :try_start_0
    instance-of v0, p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    if-eqz v0, :cond_2

    .line 198
    move-object v0, p1

    check-cast v0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    .line 199
    iget-object v1, v0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->editUri:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 200
    new-instance p1, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 201
    iget-object v1, v0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->editUri:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 202
    invoke-virtual {p1, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v2, "miuiEditIntentFlags"

    .line 204
    invoke-virtual {v1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 205
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "[1-9][0-9]*"

    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 206
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :cond_0
    const-string v1, "appWidgetId"

    .line 209
    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->getAppWidgetId()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 210
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Launcher;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 212
    :cond_1
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getAppWidgetHost()Lcom/miui/home/launcher/LauncherAppWidgetHost;

    move-result-object v0

    check-cast p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    .line 213
    invoke-virtual {p1}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->getAppWidgetId()I

    move-result p1

    const/16 v1, 0xd

    .line 212
    invoke-virtual {v0, p0, p1, v1}, Lcom/miui/home/launcher/LauncherAppWidgetHost;->startConfigActivity(Lcom/miui/home/launcher/BaseActivity;II)V

    goto :goto_0

    .line 216
    :cond_2
    instance-of v0, p1, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;

    if-eqz v0, :cond_4

    .line 217
    check-cast p1, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;

    .line 218
    iget-object v0, p1, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->customEditUri:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 219
    iget-object v0, p1, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->configPath:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/miui/home/launcher/widget/MIUIWidgetCompat;->grantAssistantPermission(Landroid/content/Context;Ljava/lang/String;Z)Landroid/net/Uri;

    .line 220
    iget-object v0, p1, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->productId:Ljava/lang/String;

    iget v1, p1, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->versionCode:I

    invoke-static {p0, v0, v1}, Lcom/miui/home/launcher/widget/MIUIWidgetCompat;->grantPaResPermission(Landroid/content/Context;Ljava/lang/String;I)Landroid/net/Uri;

    .line 222
    :cond_3
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.EDIT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 223
    invoke-static {p1}, Lcom/miui/home/launcher/common/WidgetManagerUtils;->parseEditUri(Lcom/miui/home/launcher/maml/MaMlWidgetInfo;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 224
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "appWidgetId"

    .line 225
    iget p1, p1, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->gadgetId:I

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "picker_tip_source"

    const/16 v1, 0xc

    .line 226
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 227
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 230
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    :goto_0
    return-void
.end method

.method private static parseEditUri(Lcom/miui/home/launcher/maml/MaMlWidgetInfo;)Landroid/net/Uri;
    .locals 3

    .line 235
    iget-object v0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->editUri:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 236
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getDeviceType()Lcom/miui/home/launcher/DeviceType;

    move-result-object v1

    sget-object v2, Lcom/miui/home/launcher/DeviceType;->PHONE:Lcom/miui/home/launcher/DeviceType;

    if-eq v1, v2, :cond_0

    const-string v1, "miuiWidgetId"

    .line 237
    iget p0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->gadgetId:I

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 239
    :cond_0
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static unbindAllWidgets(Landroid/content/Context;)V
    .locals 2

    .line 73
    new-instance v0, Landroid/appwidget/AppWidgetHost;

    const/16 v1, 0x400

    invoke-direct {v0, p0, v1}, Landroid/appwidget/AppWidgetHost;-><init>(Landroid/content/Context;I)V

    .line 74
    invoke-virtual {v0}, Landroid/appwidget/AppWidgetHost;->deleteHost()V

    return-void
.end method
