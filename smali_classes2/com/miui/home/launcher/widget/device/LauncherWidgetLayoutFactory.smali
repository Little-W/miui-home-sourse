.class public Lcom/miui/home/launcher/widget/device/LauncherWidgetLayoutFactory;
.super Lcom/miui/miuiwidget/MIUIWidgetLayoutFactory;
.source "LauncherWidgetLayoutFactory.java"


# static fields
.field private static final DM:Landroid/util/DisplayMetrics;

.field private static final TAG:Ljava/lang/String; = "LauncherWidgetLayoutFactory"


# instance fields
.field private mAutoScaleFactorTag:I

.field private mAutoScaleTag:I

.field private mDefaultDensity:F

.field private mDefaultScaleDensity:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    sput-object v0, Lcom/miui/home/launcher/widget/device/LauncherWidgetLayoutFactory;->DM:Landroid/util/DisplayMetrics;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Lcom/miui/miuiwidget/MIUIWidgetLayoutFactory;-><init>()V

    .line 26
    sget-object v0, Lcom/miui/home/launcher/widget/device/LauncherWidgetLayoutFactory;->DM:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/miui/home/launcher/widget/device/LauncherWidgetLayoutFactory;->mDefaultDensity:F

    .line 27
    sget-object v0, Lcom/miui/home/launcher/widget/device/LauncherWidgetLayoutFactory;->DM:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    iput v0, p0, Lcom/miui/home/launcher/widget/device/LauncherWidgetLayoutFactory;->mDefaultScaleDensity:F

    const v0, 0x7f0a0222

    .line 33
    iput v0, p0, Lcom/miui/home/launcher/widget/device/LauncherWidgetLayoutFactory;->mAutoScaleTag:I

    const v0, 0x7f0a0221

    .line 34
    iput v0, p0, Lcom/miui/home/launcher/widget/device/LauncherWidgetLayoutFactory;->mAutoScaleFactorTag:I

    return-void
.end method

.method private scaleDensity(Landroid/util/DisplayMetrics;F)V
    .locals 2

    .line 74
    iget v0, p1, Landroid/util/DisplayMetrics;->density:F

    iget v1, p0, Lcom/miui/home/launcher/widget/device/LauncherWidgetLayoutFactory;->mDefaultDensity:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    mul-float/2addr v1, p2

    .line 75
    iput v1, p1, Landroid/util/DisplayMetrics;->density:F

    .line 77
    :cond_0
    iget v0, p1, Landroid/util/DisplayMetrics;->scaledDensity:F

    iget v1, p0, Lcom/miui/home/launcher/widget/device/LauncherWidgetLayoutFactory;->mDefaultScaleDensity:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    mul-float/2addr v1, p2

    .line 78
    iput v1, p1, Landroid/util/DisplayMetrics;->scaledDensity:F

    :cond_1
    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 2

    .line 40
    invoke-virtual {p3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.miui.home"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 44
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/miui/miuiwidget/MIUIWidgetLayoutFactory;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDensityChanged(Landroid/content/Context;)V
    .locals 1

    .line 91
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    .line 92
    iget v0, p1, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/miui/home/launcher/widget/device/LauncherWidgetLayoutFactory;->mDefaultDensity:F

    .line 93
    iget p1, p1, Landroid/util/DisplayMetrics;->scaledDensity:F

    iput p1, p0, Lcom/miui/home/launcher/widget/device/LauncherWidgetLayoutFactory;->mDefaultScaleDensity:F

    return-void
.end method

.method protected onPostCreateView(Landroid/view/View;Landroid/view/View;)V
    .locals 2

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 85
    iget v0, p0, Lcom/miui/home/launcher/widget/device/LauncherWidgetLayoutFactory;->mAutoScaleTag:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 86
    iget v0, p0, Lcom/miui/home/launcher/widget/device/LauncherWidgetLayoutFactory;->mAutoScaleFactorTag:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method protected onPreCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 53
    :cond_0
    iget p2, p0, Lcom/miui/home/launcher/widget/device/LauncherWidgetLayoutFactory;->mAutoScaleTag:I

    invoke-virtual {p1, p2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p2

    const-string p4, "LauncherWidgetLayoutFactory"

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " autoScale "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_1

    const/4 p4, 0x0

    .line 55
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    return-void

    :cond_1
    const p2, 0x7f0701c2

    .line 60
    invoke-virtual {p3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p4

    const-string v0, "com.miui.personalassistant"

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_2

    const p2, 0x7f070576

    .line 63
    :cond_2
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p4

    invoke-virtual {p4}, Lcom/miui/home/launcher/Application;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    invoke-static {p4, p2}, Landroidx/core/content/res/ResourcesCompat;->getFloat(Landroid/content/res/Resources;I)F

    move-result p2

    .line 64
    iget p4, p0, Lcom/miui/home/launcher/widget/device/LauncherWidgetLayoutFactory;->mAutoScaleFactorTag:I

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p1, p4, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 65
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/widget/device/LauncherWidgetLayoutFactory;->scaleDensity(Landroid/util/DisplayMetrics;F)V

    return-void
.end method
