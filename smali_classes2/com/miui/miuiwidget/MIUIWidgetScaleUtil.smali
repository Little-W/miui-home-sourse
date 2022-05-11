.class public Lcom/miui/miuiwidget/MIUIWidgetScaleUtil;
.super Ljava/lang/Object;
.source "MIUIWidgetScaleUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MIUIWidgetScaleUtil"

.field private static sScaleFactor:F = 1.0f


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getScaleFactor(Landroid/view/View;)F
    .locals 1

    .line 19
    sget v0, Lcom/miui/miuiwidget/R$id;->miui_widget_auto_scale_factor_tag:I

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 21
    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    return p0

    :cond_0
    const/high16 p0, 0x3f800000    # 1.0f

    return p0
.end method

.method public static getScaledSize(Landroid/view/View;F)F
    .locals 3

    const-string v0, "MIUIWidgetScaleUtil"

    .line 27
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getScaledSize size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    invoke-static {p0}, Lcom/miui/miuiwidget/MIUIWidgetScaleUtil;->getScaleFactor(Landroid/view/View;)F

    move-result p0

    const-string v0, "MIUIWidgetScaleUtil"

    .line 29
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getScaledSize sScaleFactor = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    mul-float/2addr p1, p0

    return p1
.end method

.method public static setScaleFactor(F)V
    .locals 0

    .line 15
    sput p0, Lcom/miui/miuiwidget/MIUIWidgetScaleUtil;->sScaleFactor:F

    return-void
.end method
