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

    .line 64
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

    .line 65
    iput v0, p0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->itemType:I

    .line 66
    iput p1, p0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->appWidgetId:I

    return-void
.end method

.method public constructor <init>(ILcom/miui/home/launcher/LauncherAppWidgetProviderInfo;)V
    .locals 2

    .line 70
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;-><init>(I)V

    .line 71
    iget p1, p2, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->cellX:I

    iput p1, p0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->cellX:I

    .line 72
    iget p1, p2, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->cellY:I

    iput p1, p0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->cellY:I

    .line 73
    iget p1, p2, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->spanX:I

    iput p1, p0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->spanX:I

    .line 74
    iget p1, p2, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->spanY:I

    iput p1, p0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->spanY:I

    .line 75
    iget-wide v0, p2, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->screenId:J

    iput-wide v0, p0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->screenId:J

    const-wide/16 v0, -0x64

    .line 76
    iput-wide v0, p0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->container:J

    .line 77
    iget-object p1, p2, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->providerInfo:Landroid/appwidget/AppWidgetProviderInfo;

    if-eqz p1, :cond_0

    .line 78
    iget-object p1, p2, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->providerInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object p1, p1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->setProvider(Landroid/content/ComponentName;)V

    .line 80
    :cond_0
    iget-object p1, p2, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->providerInfo:Landroid/appwidget/AppWidgetProviderInfo;

    invoke-virtual {p1}, Landroid/appwidget/AppWidgetProviderInfo;->getProfile()Landroid/os/UserHandle;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->setUser(Landroid/os/UserHandle;)V

    .line 81
    iget-object p1, p2, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->appName:Ljava/lang/String;

    iput-object p1, p0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->appName:Ljava/lang/String;

    .line 82
    iget p1, p2, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->appVersion:I

    iput p1, p0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->appVersion:I

    .line 83
    iget-object p1, p2, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->pickerID:Ljava/lang/String;

    iput-object p1, p0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->pickerID:Ljava/lang/String;

    const/4 p1, 0x1

    .line 84
    iput p1, p0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->status:I

    .line 85
    invoke-virtual {p2}, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->getLable()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 86
    invoke-virtual {p2}, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->getLable()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->setLabel(Ljava/lang/CharSequence;)V

    .line 88
    :cond_1
    iget-boolean p1, p2, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->isMIUIWidget:Z

    iput-boolean p1, p0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->isMIUIWidget:Z

    .line 89
    iget-object p1, p2, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->miuiWidgetRefresh:Ljava/lang/String;

    iput-object p1, p0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->miuiWidgetRefresh:Ljava/lang/String;

    .line 90
    iget p1, p2, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->miuiWidgetRefreshMinInterval:I

    iput p1, p0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->miuiWidgetRefreshMinInterval:I

    .line 91
    iget p1, p2, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->originWidgetId:I

    iput p1, p0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->originWidgetId:I

    .line 92
    iget p1, p2, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->defaultSource:I

    iput p1, p0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->defaultSource:I

    .line 93
    iget p1, p2, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->addSource:I

    iput p1, p0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->addSource:I

    .line 94
    iget p1, p2, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->pickerTipSource:I

    iput p1, p0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->pickerTipSource:I

    .line 95
    iget-object p1, p2, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->pickerTrackId:Ljava/lang/String;

    iput-object p1, p0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->pickerTrackId:Ljava/lang/String;

    .line 96
    iget-boolean p1, p2, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->canDragFromHomeToPA:Z

    iput-boolean p1, p0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->canDragFromHomeToPA:Z

    .line 97
    iget-object p1, p2, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->widgetExtras:Landroid/os/Bundle;

    iput-object p1, p0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->widgetExtras:Landroid/os/Bundle;

    .line 98
    iget-boolean p1, p2, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->miuiAutoScale:Z

    iput-boolean p1, p0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->miuiAutoScale:Z

    .line 99
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->refreshAppNameFromPackageManager(Landroid/content/Context;)V

    return-void
.end method

.method private refreshAppNameFromPackageManager(Landroid/content/Context;)V
    .locals 4

    .line 227
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->mProvider:Landroid/content/ComponentName;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->user:Landroid/os/UserHandle;

    if-eqz v0, :cond_0

    .line 228
    invoke-static {p1}, Lcom/miui/home/library/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/miui/home/library/compat/LauncherAppsCompat;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->mProvider:Landroid/content/ComponentName;

    .line 229
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/home/library/compat/LauncherAppsCompat;->getApplicationInfo(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 231
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
.method public clearRestore()V
    .locals 1

    .line 183
    iget v0, p0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->itemFlags:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->itemFlags:I

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 168
    instance-of v0, p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    if-eqz v0, :cond_0

    .line 169
    move-object v0, p1

    check-cast v0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    .line 170
    iget v1, v0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->appWidgetId:I

    iget v2, p0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->appWidgetId:I

    if-ne v1, v2, :cond_0

    iget-object v0, v0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->packageName:Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->packageName:Ljava/lang/String;

    .line 171
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 175
    :cond_0
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public getAnnounceForDelete()Ljava/lang/String;
    .locals 1

    .line 163
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p0

    const v0, 0x7f110069

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Application;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getAppWidgetId()I
    .locals 0

    .line 237
    iget p0, p0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->appWidgetId:I

    return p0
.end method

.method public getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 191
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->mDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public getExtraIntentParams()Landroid/content/Intent;
    .locals 3

    .line 116
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 117
    iget-object v1, p0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->pickerID:Ljava/lang/String;

    const-string v2, "pickerID"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 118
    iget-object v1, p0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->appName:Ljava/lang/String;

    const-string v2, "appName"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 119
    iget v1, p0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->addSource:I

    const-string v2, "source"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 120
    iget v1, p0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->appVersion:I

    const-string/jumbo v2, "ver"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 121
    iget-object v1, p0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->appIconPreUrl:Ljava/lang/String;

    const-string v2, "iconUri"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 122
    iget-object v1, p0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->downloadUri:Ljava/lang/String;

    const-string/jumbo v2, "uri"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 123
    iget-object v1, p0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->previewUrlDark:Ljava/lang/String;

    const-string v2, "previewDark"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 124
    iget-object v1, p0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->previewUrlLight:Ljava/lang/String;

    const-string v2, "previewLight"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 125
    iget v1, p0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->status:I

    const-string v2, "status"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 126
    iget v1, p0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->defaultSource:I

    const-string v2, "default_source"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 127
    iget-object v1, p0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->appVersionName:Ljava/lang/String;

    const-string/jumbo v2, "verName"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 128
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->downloadAppInfo:Ljava/lang/String;

    const-string v1, "downloadAppInfo"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public getLauncherProviderInfo()Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;
    .locals 1

    .line 252
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->hostView:Lcom/miui/home/launcher/LauncherWidgetView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherWidgetView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->hostView:Lcom/miui/home/launcher/LauncherWidgetView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherWidgetView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->hostView:Lcom/miui/home/launcher/LauncherWidgetView;

    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherWidgetView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->fromProviderInfo(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;)Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getProvider()Landroid/content/ComponentName;
    .locals 0

    .line 207
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->mProvider:Landroid/content/ComponentName;

    return-object p0
.end method

.method public getUniqueTag()Ljava/lang/String;
    .locals 2

    .line 268
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

    .line 270
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 271
    iget-object v1, p0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    .line 272
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->mProvider:Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p0

    .line 274
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const-string p0, ""

    return-object p0
.end method

.method public isRestore()Z
    .locals 1

    .line 179
    iget p0, p0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->itemFlags:I

    const/16 v0, 0x8

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public load(Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 2

    .line 217
    invoke-super {p0, p1, p2}, Lcom/miui/home/launcher/widget/MIUIAppWidgetInfo;->load(Landroid/content/Context;Landroid/database/Cursor;)V

    const/16 v0, 0x17

    .line 218
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 219
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 220
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->setProvider(Landroid/content/ComponentName;)V

    :cond_0
    const/16 v0, 0x16

    .line 222
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->setLabel(Ljava/lang/CharSequence;)V

    .line 223
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->refreshAppNameFromPackageManager(Landroid/content/Context;)V

    return-void
.end method

.method public onAddToDatabase(Landroid/content/Context;Landroid/content/ContentValues;)V
    .locals 1

    .line 104
    invoke-super {p0, p1, p2}, Lcom/miui/home/launcher/widget/MIUIAppWidgetInfo;->onAddToDatabase(Landroid/content/Context;Landroid/content/ContentValues;)V

    .line 105
    iget p1, p0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->appWidgetId:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "appWidgetId"

    invoke-virtual {p2, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 106
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->getLable()Ljava/lang/CharSequence;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 107
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->getLable()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "label"

    invoke-virtual {p2, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    :cond_0
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->mProvider:Landroid/content/ComponentName;

    if-eqz p0, :cond_1

    .line 110
    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "appWidgetProvider"

    invoke-virtual {p2, p1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onBindAppWidget(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/LauncherWidgetView;)V
    .locals 2

    .line 283
    iget-boolean v0, p0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->mHasNotifiedInitialWidgetSizeChanged:Z

    if-nez v0, :cond_0

    .line 284
    iget v0, p0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->spanX:I

    iget v1, p0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->spanY:I

    invoke-static {p2, p1, v0, v1}, Lcom/miui/home/launcher/AppWidgetResizeFrame;->updateWidgetSizeRanges(Lcom/miui/home/launcher/LauncherWidgetView;Lcom/miui/home/launcher/Launcher;II)V

    const/4 p1, 0x1

    .line 285
    iput-boolean p1, p0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->mHasNotifiedInitialWidgetSizeChanged:Z

    :cond_0
    return-void
.end method

.method protected parsePendingWidgetParams(Landroid/content/Intent;)V
    .locals 3

    const-string v0, "pickerID"

    .line 134
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->pickerID:Ljava/lang/String;

    const-string v0, "appName"

    .line 135
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->appName:Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "source"

    .line 136
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->addSource:I

    .line 137
    iget v1, p0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->appVersion:I

    const-string/jumbo v2, "ver"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->appVersion:I

    const-string/jumbo v1, "verName"

    .line 138
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->appVersionName:Ljava/lang/String;

    const-string v1, "iconUri"

    .line 139
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->appIconPreUrl:Ljava/lang/String;

    const-string/jumbo v1, "uri"

    .line 140
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->downloadUri:Ljava/lang/String;

    const-string v1, "previewDark"

    .line 141
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->previewUrlDark:Ljava/lang/String;

    const-string v1, "previewLight"

    .line 142
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->previewUrlLight:Ljava/lang/String;

    const-string v1, "status"

    .line 143
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->status:I

    const-string v1, "default_source"

    .line 144
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->defaultSource:I

    const-string v0, "downloadAppInfo"

    .line 145
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->downloadAppInfo:Ljava/lang/String;

    return-void
.end method

.method public setAppWidgetId(I)V
    .locals 0

    .line 241
    iput p1, p0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->appWidgetId:I

    return-void
.end method

.method public setDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 195
    iput-object p1, p0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->mDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setProgress(I)V
    .locals 0

    .line 203
    iput p1, p0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->mProgress:I

    return-void
.end method

.method public setProvider(Landroid/content/ComponentName;)V
    .locals 0

    .line 211
    iput-object p1, p0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->mProvider:Landroid/content/ComponentName;

    .line 212
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->packageName:Ljava/lang/String;

    return-void
.end method

.method public setRestore()V
    .locals 1

    .line 187
    iget v0, p0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->itemFlags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->itemFlags:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 150
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

    iget-object p0, p0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->mProvider:Landroid/content/ComponentName;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public unbind()V
    .locals 1

    .line 157
    invoke-super {p0}, Lcom/miui/home/launcher/widget/MIUIAppWidgetInfo;->unbind()V

    const/4 v0, 0x0

    .line 158
    iput-object v0, p0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->hostView:Lcom/miui/home/launcher/LauncherWidgetView;

    return-void
.end method
