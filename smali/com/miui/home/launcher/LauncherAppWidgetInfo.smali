.class public Lcom/miui/home/launcher/LauncherAppWidgetInfo;
.super Lcom/miui/home/launcher/widget/MIUIAppWidgetInfo;
.source "LauncherAppWidgetInfo.java"


# instance fields
.field appWidgetId:I

.field public hostView:Lcom/miui/home/launcher/LauncherWidgetView;

.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private mHasNotifiedInitialWidgetSizeChanged:Z

.field private mProgress:I

.field private mProvider:Landroid/content/ComponentName;

.field public needPending:Z

.field public packageName:Ljava/lang/String;

.field public removePending:Z


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 63
    invoke-direct {p0}, Lcom/miui/home/launcher/widget/MIUIAppWidgetInfo;-><init>()V

    const/4 v0, 0x0

    .line 48
    iput-boolean v0, p0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->removePending:Z

    .line 50
    iput-boolean v0, p0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->needPending:Z

    const/4 v0, 0x0

    .line 55
    iput-object v0, p0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->hostView:Lcom/miui/home/launcher/LauncherWidgetView;

    const/4 v0, 0x4

    .line 64
    iput v0, p0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->itemType:I

    .line 65
    iput p1, p0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->appWidgetId:I

    return-void
.end method

.method constructor <init>(ILcom/miui/home/launcher/LauncherAppWidgetProviderInfo;)V
    .locals 2

    .line 69
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;-><init>(I)V

    .line 70
    iget p1, p2, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->cellX:I

    iput p1, p0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->cellX:I

    .line 71
    iget p1, p2, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->cellY:I

    iput p1, p0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->cellY:I

    .line 72
    iget p1, p2, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->spanX:I

    iput p1, p0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->spanX:I

    .line 73
    iget p1, p2, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->spanY:I

    iput p1, p0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->spanY:I

    .line 74
    iget-wide v0, p2, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->screenId:J

    iput-wide v0, p0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->screenId:J

    const-wide/16 v0, -0x64

    .line 75
    iput-wide v0, p0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->container:J

    .line 76
    iget-object p1, p2, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->providerInfo:Landroid/appwidget/AppWidgetProviderInfo;

    if-eqz p1, :cond_0

    .line 77
    iget-object p1, p2, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->providerInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object p1, p1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->setProvider(Landroid/content/ComponentName;)V

    .line 79
    :cond_0
    iget-object p1, p2, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->appName:Ljava/lang/String;

    iput-object p1, p0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->appName:Ljava/lang/String;

    .line 80
    iget p1, p2, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->appVersion:I

    iput p1, p0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->appVersion:I

    .line 81
    iget-object p1, p2, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->pickerID:Ljava/lang/String;

    iput-object p1, p0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->pickerID:Ljava/lang/String;

    const/4 p1, 0x1

    .line 82
    iput p1, p0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->status:I

    .line 83
    invoke-virtual {p2}, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->getLable()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 84
    invoke-virtual {p2}, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->getLable()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->setLabel(Ljava/lang/CharSequence;)V

    .line 86
    :cond_1
    iget-boolean p1, p2, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->isMIUIWidget:Z

    iput-boolean p1, p0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->isMIUIWidget:Z

    .line 87
    iget-object p1, p2, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->miuiWidgetRefresh:Ljava/lang/String;

    iput-object p1, p0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->miuiWidgetRefresh:Ljava/lang/String;

    .line 88
    iget p1, p2, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->miuiWidgetRefreshMinInterval:I

    iput p1, p0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->miuiWidgetRefreshMinInterval:I

    .line 89
    iget p1, p2, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->originWidgetId:I

    iput p1, p0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->originWidgetId:I

    .line 90
    iget p1, p2, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->defaultSource:I

    iput p1, p0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->defaultSource:I

    .line 91
    iget p1, p2, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->addSource:I

    iput p1, p0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->addSource:I

    .line 92
    iget p1, p2, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->tip_source:I

    iput p1, p0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->tip_source:I

    .line 93
    iget-boolean p1, p2, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->canDragFromHomeToPA:Z

    iput-boolean p1, p0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->canDragFromHomeToPA:Z

    .line 94
    iget-object p1, p2, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->widgetExtras:Landroid/os/Bundle;

    iput-object p1, p0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->widgetExtras:Landroid/os/Bundle;

    .line 95
    iget-boolean p1, p2, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->miuiAutoScale:Z

    iput-boolean p1, p0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->miuiAutoScale:Z

    .line 96
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->refreshAppNameFromPackageManager(Landroid/content/Context;)V

    return-void
.end method

.method private refreshAppNameFromPackageManager(Landroid/content/Context;)V
    .locals 4

    .line 228
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->mProvider:Landroid/content/ComponentName;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->user:Landroid/os/UserHandle;

    if-eqz v0, :cond_0

    .line 229
    invoke-static {p1}, Lcom/miui/home/library/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/miui/home/library/compat/LauncherAppsCompat;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->mProvider:Landroid/content/ComponentName;

    .line 230
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/home/library/compat/LauncherAppsCompat;->getApplicationInfo(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 232
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->appName:Ljava/lang/String;

    :cond_0
    return-void
.end method


# virtual methods
.method public canInstallFromRemote()Z
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->downloadUri:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public clearRestore()V
    .locals 1

    .line 184
    iget v0, p0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->itemFlags:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->itemFlags:I

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 165
    instance-of v0, p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    if-eqz v0, :cond_0

    .line 166
    move-object v0, p1

    check-cast v0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    .line 167
    iget v1, v0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->appWidgetId:I

    iget v2, p0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->appWidgetId:I

    if-ne v1, v2, :cond_0

    iget-object v0, v0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->packageName:Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->packageName:Ljava/lang/String;

    .line 168
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 172
    :cond_0
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getAnnounceForDelete()Ljava/lang/String;
    .locals 2

    .line 160
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    const v1, 0x7f110068

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAppWidgetId()I
    .locals 1

    .line 238
    iget v0, p0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->appWidgetId:I

    return v0
.end method

.method public getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->mDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method protected getExtraIntentParams()Landroid/content/Intent;
    .locals 3

    .line 113
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "pickerID"

    .line 114
    iget-object v2, p0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->pickerID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "appName"

    .line 115
    iget-object v2, p0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->appName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "source"

    .line 116
    iget v2, p0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->addSource:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v1, "ver"

    .line 117
    iget v2, p0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->appVersion:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "iconUri"

    .line 118
    iget-object v2, p0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->appIconPreUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "uri"

    .line 119
    iget-object v2, p0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->downloadUri:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "previewDark"

    .line 120
    iget-object v2, p0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->previewUrlDark:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "previewLight"

    .line 121
    iget-object v2, p0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->previewUrlLight:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "status"

    .line 122
    iget v2, p0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->status:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "default_source"

    .line 123
    iget v2, p0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->defaultSource:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v1, "verName"

    .line 124
    iget-object v2, p0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->appVersionName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "downloadAppInfo"

    .line 125
    iget-object v2, p0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->downloadAppInfo:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public getLauncherProviderInfo()Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;
    .locals 2

    .line 249
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->hostView:Lcom/miui/home/launcher/LauncherWidgetView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherWidgetView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->hostView:Lcom/miui/home/launcher/LauncherWidgetView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherWidgetView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->hostView:Lcom/miui/home/launcher/LauncherWidgetView;

    invoke-virtual {v1}, Lcom/miui/home/launcher/LauncherWidgetView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->fromProviderInfo(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;)Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getProvider()Landroid/content/ComponentName;
    .locals 1

    .line 208
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->mProvider:Landroid/content/ComponentName;

    return-object v0
.end method

.method public getUniqueTag()Ljava/lang/String;
    .locals 2

    .line 265
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->packageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->mProvider:Landroid/content/ComponentName;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 267
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 268
    iget-object v1, p0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    .line 269
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    iget-object v1, p0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->mProvider:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 271
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    const-string v0, ""

    return-object v0
.end method

.method public isRestore()Z
    .locals 2

    .line 176
    iget v0, p0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->itemFlags:I

    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public load(Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 2

    .line 218
    invoke-super {p0, p1, p2}, Lcom/miui/home/launcher/widget/MIUIAppWidgetInfo;->load(Landroid/content/Context;Landroid/database/Cursor;)V

    const/16 v0, 0x17

    .line 219
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 220
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 221
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->setProvider(Landroid/content/ComponentName;)V

    :cond_0
    const/16 v0, 0x16

    .line 223
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->setLabel(Ljava/lang/CharSequence;)V

    .line 224
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->refreshAppNameFromPackageManager(Landroid/content/Context;)V

    return-void
.end method

.method public onAddToDatabase(Landroid/content/Context;Landroid/content/ContentValues;)V
    .locals 1

    .line 101
    invoke-super {p0, p1, p2}, Lcom/miui/home/launcher/widget/MIUIAppWidgetInfo;->onAddToDatabase(Landroid/content/Context;Landroid/content/ContentValues;)V

    const-string p1, "appWidgetId"

    .line 102
    iget v0, p0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->appWidgetId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 103
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->getLable()Ljava/lang/CharSequence;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string p1, "label"

    .line 104
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->getLable()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    :cond_0
    iget-object p1, p0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->mProvider:Landroid/content/ComponentName;

    if-eqz p1, :cond_1

    const-string v0, "appWidgetProvider"

    .line 107
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onBindAppWidget(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/LauncherWidgetView;)V
    .locals 2

    .line 280
    iget-boolean v0, p0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->mHasNotifiedInitialWidgetSizeChanged:Z

    if-nez v0, :cond_0

    .line 281
    iget v0, p0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->spanX:I

    iget v1, p0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->spanY:I

    invoke-static {p2, p1, v0, v1}, Lcom/miui/home/launcher/AppWidgetResizeFrame;->updateWidgetSizeRanges(Lcom/miui/home/launcher/LauncherWidgetView;Lcom/miui/home/launcher/Launcher;II)V

    const/4 p1, 0x1

    .line 282
    iput-boolean p1, p0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->mHasNotifiedInitialWidgetSizeChanged:Z

    :cond_0
    return-void
.end method

.method protected parsePendingWidgetParams(Landroid/content/Intent;)V
    .locals 3

    const-string v0, "pickerID"

    .line 131
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->pickerID:Ljava/lang/String;

    const-string v0, "appName"

    .line 132
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->appName:Ljava/lang/String;

    const-string v0, "source"

    const/4 v1, 0x0

    .line 133
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->addSource:I

    const-string/jumbo v0, "ver"

    .line 134
    iget v2, p0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->appVersion:I

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->appVersion:I

    const-string/jumbo v0, "verName"

    .line 135
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->appVersionName:Ljava/lang/String;

    const-string v0, "iconUri"

    .line 136
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->appIconPreUrl:Ljava/lang/String;

    const-string/jumbo v0, "uri"

    .line 137
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->downloadUri:Ljava/lang/String;

    const-string v0, "previewDark"

    .line 138
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->previewUrlDark:Ljava/lang/String;

    const-string v0, "previewLight"

    .line 139
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->previewUrlLight:Ljava/lang/String;

    const-string v0, "status"

    .line 140
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->status:I

    const-string v0, "default_source"

    .line 141
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->defaultSource:I

    const-string v0, "downloadAppInfo"

    .line 142
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->downloadAppInfo:Ljava/lang/String;

    return-void
.end method

.method public setDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 196
    iput-object p1, p0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->mDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setProgress(I)V
    .locals 0

    .line 204
    iput p1, p0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->mProgress:I

    return-void
.end method

.method public setProvider(Landroid/content/ComponentName;)V
    .locals 0

    .line 212
    iput-object p1, p0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->mProvider:Landroid/content/ComponentName;

    .line 213
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->packageName:Ljava/lang/String;

    return-void
.end method

.method public setRestore()V
    .locals 1

    .line 188
    iget v0, p0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->itemFlags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->itemFlags:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AppWidget(appWidgetId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->appWidgetId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "| id_inDB="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "| widgetProvider="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->mProvider:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unbind()V
    .locals 1

    .line 154
    invoke-super {p0}, Lcom/miui/home/launcher/widget/MIUIAppWidgetInfo;->unbind()V

    const/4 v0, 0x0

    .line 155
    iput-object v0, p0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->hostView:Lcom/miui/home/launcher/LauncherWidgetView;

    return-void
.end method
