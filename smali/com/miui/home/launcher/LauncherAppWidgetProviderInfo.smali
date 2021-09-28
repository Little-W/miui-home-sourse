.class public Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;
.super Lcom/miui/home/launcher/ItemInfo;
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

    .line 45
    invoke-direct {p0}, Lcom/miui/home/launcher/ItemInfo;-><init>()V

    const/16 v0, -0x3e8

    .line 33
    iput v0, p0, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->mWidgetCategory:I

    const/4 v0, -0x1

    .line 34
    iput v0, p0, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->mAppWidgetId:I

    .line 46
    iput-object p1, p0, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->providerInfo:Landroid/appwidget/AppWidgetProviderInfo;

    const/4 p1, 0x6

    .line 47
    iput p1, p0, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->itemType:I

    return-void
.end method

.method public static fromProviderInfo(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;)Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;
    .locals 1

    .line 40
    new-instance v0, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;

    invoke-direct {v0, p1}, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;-><init>(Landroid/appwidget/AppWidgetProviderInfo;)V

    .line 41
    invoke-direct {v0, p0}, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->initSpans(Landroid/content/Context;)V

    return-object v0
.end method

.method private initSpans(Landroid/content/Context;)V
    .locals 1

    .line 51
    iget-object p1, p0, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->providerInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iget p1, p1, Landroid/appwidget/AppWidgetProviderInfo;->minResizeWidth:I

    invoke-static {p1}, Lcom/miui/home/launcher/DeviceConfig;->getWidgetSpanX(I)I

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->minSpanX:I

    .line 52
    iget-object p1, p0, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->providerInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iget p1, p1, Landroid/appwidget/AppWidgetProviderInfo;->minResizeHeight:I

    invoke-static {p1}, Lcom/miui/home/launcher/DeviceConfig;->getWidgetSpanY(I)I

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->minSpanY:I

    .line 56
    sget-boolean p1, Lcom/miui/home/launcher/common/Utilities;->ATLEAST_S:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->providerInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iget p1, p1, Landroid/appwidget/AppWidgetProviderInfo;->maxResizeWidth:I

    if-lez p1, :cond_0

    .line 57
    iget-object p1, p0, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->providerInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iget p1, p1, Landroid/appwidget/AppWidgetProviderInfo;->maxResizeWidth:I

    invoke-static {p1}, Lcom/miui/home/launcher/DeviceConfig;->getWidgetSpanX(I)I

    move-result p1

    goto :goto_0

    .line 58
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountX()I

    move-result p1

    :goto_0
    iput p1, p0, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->maxSpanX:I

    .line 60
    sget-boolean p1, Lcom/miui/home/launcher/common/Utilities;->ATLEAST_S:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->providerInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iget p1, p1, Landroid/appwidget/AppWidgetProviderInfo;->maxResizeHeight:I

    if-lez p1, :cond_1

    .line 61
    iget-object p1, p0, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->providerInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iget p1, p1, Landroid/appwidget/AppWidgetProviderInfo;->maxResizeHeight:I

    invoke-static {p1}, Lcom/miui/home/launcher/DeviceConfig;->getWidgetSpanY(I)I

    move-result p1

    goto :goto_1

    .line 62
    :cond_1
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountY()I

    move-result p1

    :goto_1
    iput p1, p0, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->maxSpanY:I

    .line 66
    sget-boolean p1, Lcom/miui/home/launcher/common/Utilities;->ATLEAST_S:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->providerInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iget p1, p1, Landroid/appwidget/AppWidgetProviderInfo;->targetCellWidth:I

    iget v0, p0, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->minSpanX:I

    if-lt p1, v0, :cond_2

    iget-object p1, p0, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->providerInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iget p1, p1, Landroid/appwidget/AppWidgetProviderInfo;->targetCellWidth:I

    iget v0, p0, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->maxSpanX:I

    if-gt p1, v0, :cond_2

    iget-object p1, p0, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->providerInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iget p1, p1, Landroid/appwidget/AppWidgetProviderInfo;->targetCellHeight:I

    iget v0, p0, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->minSpanY:I

    if-lt p1, v0, :cond_2

    iget-object p1, p0, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->providerInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iget p1, p1, Landroid/appwidget/AppWidgetProviderInfo;->targetCellHeight:I

    iget v0, p0, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->maxSpanY:I

    if-gt p1, v0, :cond_2

    .line 71
    iget-object p1, p0, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->providerInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iget p1, p1, Landroid/appwidget/AppWidgetProviderInfo;->targetCellWidth:I

    iput p1, p0, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->spanX:I

    .line 72
    iget-object p1, p0, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->providerInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iget p1, p1, Landroid/appwidget/AppWidgetProviderInfo;->targetCellHeight:I

    iput p1, p0, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->spanY:I

    goto :goto_2

    .line 74
    :cond_2
    iget-object p1, p0, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->providerInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iget p1, p1, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    invoke-static {p1}, Lcom/miui/home/launcher/DeviceConfig;->getWidgetSpanX(I)I

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->spanX:I

    .line 75
    iget-object p1, p0, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->providerInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iget p1, p1, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    invoke-static {p1}, Lcom/miui/home/launcher/DeviceConfig;->getWidgetSpanY(I)I

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->spanY:I

    :goto_2
    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Lcom/miui/home/launcher/ItemInfo;
    .locals 1

    .line 27
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->clone()Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;
    .locals 1

    .line 80
    invoke-super {p0}, Lcom/miui/home/launcher/ItemInfo;->clone()Lcom/miui/home/launcher/ItemInfo;

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

    .line 27
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->clone()Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;

    move-result-object v0

    return-object v0
.end method

.method public getAppWidgetId()I
    .locals 1

    .line 84
    iget v0, p0, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->mAppWidgetId:I

    return v0
.end method

.method public setAppWidgetId(I)V
    .locals 0

    .line 88
    iput p1, p0, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->mAppWidgetId:I

    return-void
.end method
