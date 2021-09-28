.class public Lcom/miui/home/launcher/widget/MIUIAppWidgetInfo;
.super Lcom/miui/home/launcher/MIUIWidgetBasicInfo;
.source "MIUIAppWidgetInfo.java"


# instance fields
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
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public getMIUIWidgetRefreshMinInterval()J
    .locals 2

    .line 41
    iget v0, p0, Lcom/miui/home/launcher/widget/MIUIAppWidgetInfo;->miuiWidgetRefreshMinInterval:I

    if-gtz v0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x2710

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-long v0, v0

    :goto_0
    return-wide v0
.end method

.method public initMiuiAttribute(Landroid/content/ComponentName;)V
    .locals 1

    .line 60
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/miui/home/launcher/MIUIWidgetUtil;->parseMetaInfoFromAppWidgetProvider(Landroid/content/Context;Landroid/content/ComponentName;)Lcom/miui/home/launcher/widget/AppWidgetProviderMeta;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 62
    iget-boolean v0, p1, Lcom/miui/home/launcher/widget/AppWidgetProviderMeta;->isMIUIWidget:Z

    iput-boolean v0, p0, Lcom/miui/home/launcher/widget/MIUIAppWidgetInfo;->isMIUIWidget:Z

    .line 63
    iget-object v0, p1, Lcom/miui/home/launcher/widget/AppWidgetProviderMeta;->refreshMode:Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/home/launcher/widget/MIUIAppWidgetInfo;->miuiWidgetRefresh:Ljava/lang/String;

    .line 64
    iget p1, p1, Lcom/miui/home/launcher/widget/AppWidgetProviderMeta;->minRefreshInterval:I

    iput p1, p0, Lcom/miui/home/launcher/widget/MIUIAppWidgetInfo;->miuiWidgetRefreshMinInterval:I

    :cond_0
    return-void
.end method

.method public needRefreshWhenExposure()Z
    .locals 2

    const-string v0, "exposure"

    .line 37
    iget-object v1, p0, Lcom/miui/home/launcher/widget/MIUIAppWidgetInfo;->miuiWidgetRefresh:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public obtainMIUIWidgetUpdateIntent([ILandroid/content/ComponentName;)Landroid/content/Intent;
    .locals 2

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 48
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "miui.appwidget.action.APPWIDGET_UPDATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "appWidgetIds"

    .line 49
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 50
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    return-object v0
.end method
