.class public Lcom/miui/home/launcher/widget/PendingAddWidgetInfo;
.super Lcom/miui/home/launcher/PendingAddItemInfo;
.source "PendingAddWidgetInfo.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/miui/home/launcher/PendingAddItemInfo;-><init>()V

    return-void
.end method

.method public static newInstance(Lcom/miui/home/launcher/LauncherAppWidgetInfo;)Lcom/miui/home/launcher/widget/PendingAddWidgetInfo;
    .locals 2

    .line 44
    new-instance v0, Lcom/miui/home/launcher/widget/PendingAddWidgetInfo;

    invoke-direct {v0}, Lcom/miui/home/launcher/widget/PendingAddWidgetInfo;-><init>()V

    .line 45
    iget v1, p0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->spanX:I

    iput v1, v0, Lcom/miui/home/launcher/widget/PendingAddWidgetInfo;->spanX:I

    .line 46
    iget v1, p0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->spanY:I

    iput v1, v0, Lcom/miui/home/launcher/widget/PendingAddWidgetInfo;->spanY:I

    .line 47
    iget v1, p0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->minSpanX:I

    iput v1, v0, Lcom/miui/home/launcher/widget/PendingAddWidgetInfo;->minSpanX:I

    .line 48
    iget v1, p0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->minSpanY:I

    iput v1, v0, Lcom/miui/home/launcher/widget/PendingAddWidgetInfo;->minSpanY:I

    .line 49
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object p0

    iput-object p0, v0, Lcom/miui/home/launcher/widget/PendingAddWidgetInfo;->componentName:Landroid/content/ComponentName;

    return-object v0
.end method

.method public static newInstance(Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;)Lcom/miui/home/launcher/widget/PendingAddWidgetInfo;
    .locals 2

    .line 34
    new-instance v0, Lcom/miui/home/launcher/widget/PendingAddWidgetInfo;

    invoke-direct {v0}, Lcom/miui/home/launcher/widget/PendingAddWidgetInfo;-><init>()V

    .line 35
    iget v1, p0, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->spanX:I

    iput v1, v0, Lcom/miui/home/launcher/widget/PendingAddWidgetInfo;->spanX:I

    .line 36
    iget v1, p0, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->spanY:I

    iput v1, v0, Lcom/miui/home/launcher/widget/PendingAddWidgetInfo;->spanY:I

    .line 37
    iget v1, p0, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->minSpanX:I

    iput v1, v0, Lcom/miui/home/launcher/widget/PendingAddWidgetInfo;->minSpanX:I

    .line 38
    iget v1, p0, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->minSpanY:I

    iput v1, v0, Lcom/miui/home/launcher/widget/PendingAddWidgetInfo;->minSpanY:I

    .line 39
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object p0

    iput-object p0, v0, Lcom/miui/home/launcher/widget/PendingAddWidgetInfo;->componentName:Landroid/content/ComponentName;

    return-object v0
.end method
