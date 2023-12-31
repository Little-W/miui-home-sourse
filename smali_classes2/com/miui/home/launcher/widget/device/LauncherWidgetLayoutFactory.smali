.class public Lcom/miui/home/launcher/widget/device/LauncherWidgetLayoutFactory;
.super Lcom/miui/miuiwidget/MIUIWidgetLayoutFactory;
.source "LauncherWidgetLayoutFactory.java"


# static fields
.field private static final DEFAULT_DENSITY:F

.field private static final DEFAULT_SCALED_DENSITY:F

.field private static final DM:Landroid/util/DisplayMetrics;

.field private static final TAG:Ljava/lang/String; = "LauncherWidgetLayoutFactory"


# instance fields
.field private mAutoScaleFactorTag:I

.field private mAutoScaleTag:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    sput-object v0, Lcom/miui/home/launcher/widget/device/LauncherWidgetLayoutFactory;->DM:Landroid/util/DisplayMetrics;

    .line 28
    sget-object v0, Lcom/miui/home/launcher/widget/device/LauncherWidgetLayoutFactory;->DM:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    sput v0, Lcom/miui/home/launcher/widget/device/LauncherWidgetLayoutFactory;->DEFAULT_DENSITY:F

    .line 29
    sget-object v0, Lcom/miui/home/launcher/widget/device/LauncherWidgetLayoutFactory;->DM:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    sput v0, Lcom/miui/home/launcher/widget/device/LauncherWidgetLayoutFactory;->DEFAULT_SCALED_DENSITY:F

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Lcom/miui/miuiwidget/MIUIWidgetLayoutFactory;-><init>()V

    const v0, 0x7f0a0236

    .line 35
    iput v0, p0, Lcom/miui/home/launcher/widget/device/LauncherWidgetLayoutFactory;->mAutoScaleTag:I

    const v0, 0x7f0a0235

    .line 36
    iput v0, p0, Lcom/miui/home/launcher/widget/device/LauncherWidgetLayoutFactory;->mAutoScaleFactorTag:I

    return-void
.end method

.method public static scaleDensity(Landroid/util/DisplayMetrics;F)V
    .locals 2

    .line 76
    iget v0, p0, Landroid/util/DisplayMetrics;->density:F

    sget v1, Lcom/miui/home/launcher/widget/device/LauncherWidgetLayoutFactory;->DEFAULT_DENSITY:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    mul-float/2addr v1, p1

    .line 77
    iput v1, p0, Landroid/util/DisplayMetrics;->density:F

    .line 79
    :cond_0
    iget v0, p0, Landroid/util/DisplayMetrics;->scaledDensity:F

    sget v1, Lcom/miui/home/launcher/widget/device/LauncherWidgetLayoutFactory;->DEFAULT_SCALED_DENSITY:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    mul-float/2addr v1, p1

    .line 80
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

    const/4 p0, 0x0

    return-object p0

    .line 46
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/miui/miuiwidget/MIUIWidgetLayoutFactory;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method protected onPostCreateView(Landroid/view/View;Landroid/view/View;)V
    .locals 2

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 87
    iget v0, p0, Lcom/miui/home/launcher/widget/device/LauncherWidgetLayoutFactory;->mAutoScaleTag:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 88
    iget p0, p0, Lcom/miui/home/launcher/widget/device/LauncherWidgetLayoutFactory;->mAutoScaleFactorTag:I

    invoke-virtual {p1, p0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p0, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method protected onPreCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 55
    :cond_0
    iget p2, p0, Lcom/miui/home/launcher/widget/device/LauncherWidgetLayoutFactory;->mAutoScaleTag:I

    invoke-virtual {p1, p2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p2

    .line 56
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " autoScale "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    const-string v0, "LauncherWidgetLayoutFactory"

    invoke-static {v0, p4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_1

    const/4 p4, 0x0

    .line 57
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    return-void

    :cond_1
    const p2, 0x7f07021a

    .line 62
    invoke-virtual {p3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p4

    const-string v0, "com.miui.personalassistant"

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_2

    const p2, 0x7f0705de

    .line 65
    :cond_2
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p4

    invoke-virtual {p4}, Lcom/miui/home/launcher/Application;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    invoke-static {p4, p2}, Landroidx/core/content/res/ResourcesCompat;->getFloat(Landroid/content/res/Resources;I)F

    move-result p2

    .line 66
    iget p0, p0, Lcom/miui/home/launcher/widget/device/LauncherWidgetLayoutFactory;->mAutoScaleFactorTag:I

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p4

    invoke-virtual {p1, p0, p4}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 67
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    invoke-static {p0, p2}, Lcom/miui/home/launcher/widget/device/LauncherWidgetLayoutFactory;->scaleDensity(Landroid/util/DisplayMetrics;F)V

    return-void
.end method
