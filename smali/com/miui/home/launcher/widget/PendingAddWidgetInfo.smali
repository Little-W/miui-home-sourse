.class public Lcom/miui/home/launcher/widget/PendingAddWidgetInfo;
.super Lcom/miui/home/launcher/PendingAddItemInfo;
.source "PendingAddWidgetInfo.java"


# instance fields
.field public isMiuiWidget:Z

.field public widgetExtras:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/miui/home/launcher/PendingAddItemInfo;-><init>()V

    return-void
.end method

.method public static newInstance(Lcom/miui/home/launcher/LauncherAppWidgetInfo;)Lcom/miui/home/launcher/widget/PendingAddWidgetInfo;
    .locals 2

    .line 50
    new-instance v0, Lcom/miui/home/launcher/widget/PendingAddWidgetInfo;

    invoke-direct {v0}, Lcom/miui/home/launcher/widget/PendingAddWidgetInfo;-><init>()V

    .line 51
    iget v1, p0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->spanX:I

    iput v1, v0, Lcom/miui/home/launcher/widget/PendingAddWidgetInfo;->spanX:I

    .line 52
    iget v1, p0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->spanY:I

    iput v1, v0, Lcom/miui/home/launcher/widget/PendingAddWidgetInfo;->spanY:I

    .line 53
    iget v1, p0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->minSpanX:I

    iput v1, v0, Lcom/miui/home/launcher/widget/PendingAddWidgetInfo;->minSpanX:I

    .line 54
    iget v1, p0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->minSpanY:I

    iput v1, v0, Lcom/miui/home/launcher/widget/PendingAddWidgetInfo;->minSpanY:I

    .line 55
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/home/launcher/widget/PendingAddWidgetInfo;->componentName:Landroid/content/ComponentName;

    .line 56
    iget-boolean v1, p0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->isMIUIWidget:Z

    iput-boolean v1, v0, Lcom/miui/home/launcher/widget/PendingAddWidgetInfo;->isMiuiWidget:Z

    .line 57
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->widgetExtras:Landroid/os/Bundle;

    iput-object p0, v0, Lcom/miui/home/launcher/widget/PendingAddWidgetInfo;->widgetExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public static newInstance(Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;)Lcom/miui/home/launcher/widget/PendingAddWidgetInfo;
    .locals 2

    .line 39
    new-instance v0, Lcom/miui/home/launcher/widget/PendingAddWidgetInfo;

    invoke-direct {v0}, Lcom/miui/home/launcher/widget/PendingAddWidgetInfo;-><init>()V

    .line 40
    iget v1, p0, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->spanX:I

    iput v1, v0, Lcom/miui/home/launcher/widget/PendingAddWidgetInfo;->spanX:I

    .line 41
    iget v1, p0, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->spanY:I

    iput v1, v0, Lcom/miui/home/launcher/widget/PendingAddWidgetInfo;->spanY:I

    .line 42
    iget v1, p0, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->minSpanX:I

    iput v1, v0, Lcom/miui/home/launcher/widget/PendingAddWidgetInfo;->minSpanX:I

    .line 43
    iget v1, p0, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->minSpanY:I

    iput v1, v0, Lcom/miui/home/launcher/widget/PendingAddWidgetInfo;->minSpanY:I

    .line 44
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/home/launcher/widget/PendingAddWidgetInfo;->componentName:Landroid/content/ComponentName;

    .line 45
    iget-boolean p0, p0, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->isMIUIWidget:Z

    iput-boolean p0, v0, Lcom/miui/home/launcher/widget/PendingAddWidgetInfo;->isMiuiWidget:Z

    return-object v0
.end method
