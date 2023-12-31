.class public Lcom/miui/home/launcher/widget/MIUIAppWidgetInfo;
.super Lcom/miui/home/launcher/MIUIWidgetBasicInfo;
.source "MIUIAppWidgetInfo.java"


# instance fields
.field public miuiAutoScale:Z

.field public miuiWidgetRefresh:Ljava/lang/String;

.field public miuiWidgetRefreshMinInterval:I

.field public widgetExtras:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public getAppWidgetId()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public getMIUIWidgetRefreshMinInterval()J
    .locals 2

    .line 43
    iget p0, p0, Lcom/miui/home/launcher/widget/MIUIAppWidgetInfo;->miuiWidgetRefreshMinInterval:I

    if-gtz p0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x2710

    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    int-to-long v0, p0

    :goto_0
    return-wide v0
.end method

.method public initMiuiAttribute(Landroid/content/ComponentName;)V
    .locals 1

    .line 62
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/miui/home/launcher/MIUIWidgetUtil;->parseMetaInfoFromAppWidgetProvider(Landroid/content/Context;Landroid/content/ComponentName;)Lcom/miui/home/launcher/widget/AppWidgetProviderMeta;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 64
    iget-boolean v0, p1, Lcom/miui/home/launcher/widget/AppWidgetProviderMeta;->isMIUIWidget:Z

    iput-boolean v0, p0, Lcom/miui/home/launcher/widget/MIUIAppWidgetInfo;->isMIUIWidget:Z

    .line 65
    iget-object v0, p1, Lcom/miui/home/launcher/widget/AppWidgetProviderMeta;->refreshMode:Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/home/launcher/widget/MIUIAppWidgetInfo;->miuiWidgetRefresh:Ljava/lang/String;

    .line 66
    iget v0, p1, Lcom/miui/home/launcher/widget/AppWidgetProviderMeta;->minRefreshInterval:I

    iput v0, p0, Lcom/miui/home/launcher/widget/MIUIAppWidgetInfo;->miuiWidgetRefreshMinInterval:I

    .line 67
    iget-boolean p1, p1, Lcom/miui/home/launcher/widget/AppWidgetProviderMeta;->miuiAutoScale:Z

    iput-boolean p1, p0, Lcom/miui/home/launcher/widget/MIUIAppWidgetInfo;->miuiAutoScale:Z

    :cond_0
    return-void
.end method

.method public needRefreshWhenExposure()Z
    .locals 1

    .line 39
    iget-object p0, p0, Lcom/miui/home/launcher/widget/MIUIAppWidgetInfo;->miuiWidgetRefresh:Ljava/lang/String;

    const-string v0, "exposure"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public obtainMIUIWidgetUpdateIntent([ILandroid/content/ComponentName;)Landroid/content/Intent;
    .locals 1

    if-nez p2, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 50
    :cond_0
    new-instance p0, Landroid/content/Intent;

    const-string v0, "miui.appwidget.action.APPWIDGET_UPDATE"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "appWidgetIds"

    .line 51
    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 52
    invoke-virtual {p0, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    return-object p0
.end method
