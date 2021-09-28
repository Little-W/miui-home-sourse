.class public Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;
.super Lcom/miui/home/launcher/widget/MIUIAppWidgetInfo;
.source "LauncherAppWidgetProviderInfo.java"


# instance fields
.field private mAppWidgetId:I

.field public mWidgetCategory:I

.field public maxSpanX:I

.field public maxSpanY:I

.field public final providerInfo:Landroid/appwidget/AppWidgetProviderInfo;


# direct methods
.method private constructor <init>(Landroid/appwidget/AppWidgetProviderInfo;)V
    .locals 1

    .line 48
    invoke-direct {p0}, Lcom/miui/home/launcher/widget/MIUIAppWidgetInfo;-><init>()V

    const/16 v0, -0x3e8

    .line 35
    iput v0, p0, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->mWidgetCategory:I

    const/4 v0, -0x1

    .line 36
    iput v0, p0, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->mAppWidgetId:I

    .line 49
    iput-object p1, p0, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->providerInfo:Landroid/appwidget/AppWidgetProviderInfo;

    const/4 p1, 0x6

    .line 50
    iput p1, p0, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->itemType:I

    return-void
.end method

.method public static fromProviderInfo(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;)Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;
    .locals 1

    .line 42
    new-instance v0, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;

    invoke-direct {v0, p1}, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;-><init>(Landroid/appwidget/AppWidgetProviderInfo;)V

    .line 43
    iget-object p1, p1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->initMiuiAttribute(Landroid/content/ComponentName;)V

    .line 44
    iget-boolean p1, v0, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->isMIUIWidget:Z

    invoke-direct {v0, p0, p1}, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->initSpans(Landroid/content/Context;Z)V

    return-object v0
.end method

.method private initSpans(Landroid/content/Context;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 54
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getMiuiTitleHeight()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 56
    :goto_0
    iget-object p2, p0, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->providerInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iget p2, p2, Landroid/appwidget/AppWidgetProviderInfo;->minResizeWidth:I

    invoke-static {p2}, Lcom/miui/home/launcher/DeviceConfig;->getWidgetSpanX(I)I

    move-result p2

    iput p2, p0, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->minSpanX:I

    .line 57
    iget-object p2, p0, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->providerInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iget p2, p2, Landroid/appwidget/AppWidgetProviderInfo;->minResizeHeight:I

    add-int/2addr p2, p1

    invoke-static {p2}, Lcom/miui/home/launcher/DeviceConfig;->getWidgetSpanY(I)I

    move-result p2

    iput p2, p0, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->minSpanY:I

    .line 61
    sget-boolean p2, Lcom/miui/home/launcher/common/Utilities;->ATLEAST_S:Z

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->providerInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iget p2, p2, Landroid/appwidget/AppWidgetProviderInfo;->maxResizeWidth:I

    if-lez p2, :cond_1

    .line 62
    iget-object p2, p0, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->providerInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iget p2, p2, Landroid/appwidget/AppWidgetProviderInfo;->maxResizeWidth:I

    invoke-static {p2}, Lcom/miui/home/launcher/DeviceConfig;->getWidgetSpanX(I)I

    move-result p2

    goto :goto_1

    .line 63
    :cond_1
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountX()I

    move-result p2

    :goto_1
    iput p2, p0, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->maxSpanX:I

    .line 65
    sget-boolean p2, Lcom/miui/home/launcher/common/Utilities;->ATLEAST_S:Z

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->providerInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iget p2, p2, Landroid/appwidget/AppWidgetProviderInfo;->maxResizeHeight:I

    if-lez p2, :cond_2

    .line 66
    iget-object p2, p0, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->providerInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iget p2, p2, Landroid/appwidget/AppWidgetProviderInfo;->maxResizeHeight:I

    add-int/2addr p2, p1

    invoke-static {p2}, Lcom/miui/home/launcher/DeviceConfig;->getWidgetSpanY(I)I

    move-result p1

    goto :goto_2

    .line 67
    :cond_2
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountY()I

    move-result p1

    :goto_2
    iput p1, p0, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->maxSpanY:I

    .line 71
    sget-boolean p1, Lcom/miui/home/launcher/common/Utilities;->ATLEAST_S:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->providerInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iget p1, p1, Landroid/appwidget/AppWidgetProviderInfo;->targetCellWidth:I

    iget p2, p0, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->minSpanX:I

    if-lt p1, p2, :cond_3

    iget-object p1, p0, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->providerInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iget p1, p1, Landroid/appwidget/AppWidgetProviderInfo;->targetCellWidth:I

    iget p2, p0, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->maxSpanX:I

    if-gt p1, p2, :cond_3

    iget-object p1, p0, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->providerInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iget p1, p1, Landroid/appwidget/AppWidgetProviderInfo;->targetCellHeight:I

    iget p2, p0, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->minSpanY:I

    if-lt p1, p2, :cond_3

    iget-object p1, p0, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->providerInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iget p1, p1, Landroid/appwidget/AppWidgetProviderInfo;->targetCellHeight:I

    iget p2, p0, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->maxSpanY:I

    if-gt p1, p2, :cond_3

    .line 76
    iget-object p1, p0, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->providerInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iget p1, p1, Landroid/appwidget/AppWidgetProviderInfo;->targetCellWidth:I

    iput p1, p0, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->spanX:I

    .line 77
    iget-object p1, p0, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->providerInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iget p1, p1, Landroid/appwidget/AppWidgetProviderInfo;->targetCellHeight:I

    iput p1, p0, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->spanY:I

    goto :goto_3

    .line 79
    :cond_3
    iget-object p1, p0, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->providerInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iget p1, p1, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    invoke-static {p1}, Lcom/miui/home/launcher/DeviceConfig;->getWidgetSpanX(I)I

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->spanX:I

    .line 80
    iget-object p1, p0, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->providerInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iget p1, p1, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    invoke-static {p1}, Lcom/miui/home/launcher/DeviceConfig;->getWidgetSpanY(I)I

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->spanY:I

    :goto_3
    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Lcom/miui/home/launcher/ItemInfo;
    .locals 1

    .line 29
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->clone()Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;
    .locals 1

    .line 121
    invoke-super {p0}, Lcom/miui/home/launcher/widget/MIUIAppWidgetInfo;->clone()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 29
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->clone()Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;

    move-result-object v0

    return-object v0
.end method

.method public getAppWidgetId()I
    .locals 1

    .line 125
    iget v0, p0, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->mAppWidgetId:I

    return v0
.end method

.method public getUniqueTag()Ljava/lang/String;
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->providerInfo:Landroid/appwidget/AppWidgetProviderInfo;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->providerInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->providerInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getWidgetFeatures()I
    .locals 1

    .line 85
    sget-boolean v0, Lcom/miui/home/launcher/common/Utilities;->ATLEAST_P:Z

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->providerInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iget v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->widgetFeatures:I

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isReconfigurable()Z
    .locals 2

    .line 97
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->providerInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 98
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->getWidgetFeatures()I

    move-result v0

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public needsConfigure()Z
    .locals 4

    .line 110
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->getWidgetFeatures()I

    move-result v0

    and-int/lit8 v1, v0, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    and-int/2addr v0, v3

    if-eqz v0, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    .line 116
    :goto_0
    invoke-static {}, Lcom/miui/home/launcher/MIUIWidgetUtil;->isMIUIWidgetSupport()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->isMIUIWidget:Z

    if-nez v1, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->providerInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v1, v1, Landroid/appwidget/AppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    if-eqz v1, :cond_2

    if-nez v0, :cond_2

    move v2, v3

    :cond_2
    return v2
.end method

.method public needsHideFromPicker()Z
    .locals 1

    .line 93
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->getWidgetFeatures()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setAppWidgetId(I)V
    .locals 0

    .line 129
    iput p1, p0, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->mAppWidgetId:I

    return-void
.end method
