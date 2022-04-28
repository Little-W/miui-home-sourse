.class public Lcom/miui/home/launcher/widget/device/LauncherWidgetLayoutFactory;
.super Lcom/miui/miuiwidget/MIUIWidgetLayoutFactory;
.source "LauncherWidgetLayoutFactory.java"


# static fields
.field private static final DEFAULT_DENSITY:F

.field private static final DEFAULT_SCALED_DENSITY:F

.field private static final DM:Landroid/util/DisplayMetrics;

.field private static final TAG:Ljava/lang/String; = "LauncherWidgetLayoutFactory"


# instance fields
.field private mAutoScaleTag:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    sput-object v0, Lcom/miui/home/launcher/widget/device/LauncherWidgetLayoutFactory;->DM:Landroid/util/DisplayMetrics;

    .line 30
    sget-object v0, Lcom/miui/home/launcher/widget/device/LauncherWidgetLayoutFactory;->DM:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    sput v0, Lcom/miui/home/launcher/widget/device/LauncherWidgetLayoutFactory;->DEFAULT_DENSITY:F

    .line 31
    sget-object v0, Lcom/miui/home/launcher/widget/device/LauncherWidgetLayoutFactory;->DM:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    sput v0, Lcom/miui/home/launcher/widget/device/LauncherWidgetLayoutFactory;->DEFAULT_SCALED_DENSITY:F

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Lcom/miui/miuiwidget/MIUIWidgetLayoutFactory;-><init>()V

    const v0, 0x7f0a019e

    .line 36
    iput v0, p0, Lcom/miui/home/launcher/widget/device/LauncherWidgetLayoutFactory;->mAutoScaleTag:I

    return-void
.end method

.method public static scaleDensity(Landroid/util/DisplayMetrics;F)V
    .locals 2

    .line 80
    iget v0, p0, Landroid/util/DisplayMetrics;->density:F

    sget v1, Lcom/miui/home/launcher/widget/device/LauncherWidgetLayoutFactory;->DEFAULT_DENSITY:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    mul-float/2addr v1, p1

    .line 81
    iput v1, p0, Landroid/util/DisplayMetrics;->density:F

    .line 83
    :cond_0
    iget v0, p0, Landroid/util/DisplayMetrics;->scaledDensity:F

    sget v1, Lcom/miui/home/launcher/widget/device/LauncherWidgetLayoutFactory;->DEFAULT_SCALED_DENSITY:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    mul-float/2addr v1, p1

    .line 84
    iput v1, p0, Landroid/util/DisplayMetrics;->scaledDensity:F

    :cond_1
    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 2

    .line 42
    invoke-virtual {p3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.miui.home"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 46
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/miui/miuiwidget/MIUIWidgetLayoutFactory;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method protected onPostCreateView(Landroid/view/View;Landroid/view/View;)V
    .locals 1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 91
    iget v0, p0, Lcom/miui/home/launcher/widget/device/LauncherWidgetLayoutFactory;->mAutoScaleTag:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method protected onPreCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 51
    invoke-virtual {p3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    const-string p4, "com.miui.personalassistant"

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    .line 55
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p2

    .line 56
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    .line 57
    invoke-static {p2}, Lcom/miui/home/launcher/DeviceConfig;->isLargeScreen(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_1

    const-string p1, "LauncherWidgetLayoutFactory"

    const-string p2, "not in large screen mode"

    .line 58
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    if-eqz p1, :cond_2

    .line 63
    iget p2, p0, Lcom/miui/home/launcher/widget/device/LauncherWidgetLayoutFactory;->mAutoScaleTag:I

    invoke-virtual {p1, p2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    const-string p2, "LauncherWidgetLayoutFactory"

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " autoScale "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_2

    const/4 p2, 0x0

    .line 65
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return-void

    .line 70
    :cond_2
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    const p2, 0x7f070387

    .line 71
    invoke-static {p4, p2}, Landroidx/core/content/res/ResourcesCompat;->getFloat(Landroid/content/res/Resources;I)F

    move-result p2

    .line 70
    invoke-static {p1, p2}, Lcom/miui/home/launcher/widget/device/LauncherWidgetLayoutFactory;->scaleDensity(Landroid/util/DisplayMetrics;F)V

    return-void
.end method
