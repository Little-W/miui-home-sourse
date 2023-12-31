.class Lmiuix/internal/view/CheckWidgetDrawableAnims$5;
.super Lmiuix/animation/property/FloatProperty;
.source "CheckWidgetDrawableAnims.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/internal/view/CheckWidgetDrawableAnims;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmiuix/animation/property/FloatProperty<",
        "Lmiuix/internal/view/CheckWidgetCircleDrawable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lmiuix/internal/view/CheckWidgetDrawableAnims;


# direct methods
.method constructor <init>(Lmiuix/internal/view/CheckWidgetDrawableAnims;Ljava/lang/String;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims$5;->this$0:Lmiuix/internal/view/CheckWidgetDrawableAnims;

    invoke-direct {p0, p2}, Lmiuix/animation/property/FloatProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic getValue(Ljava/lang/Object;)F
    .locals 0

    .line 120
    check-cast p1, Lmiuix/internal/view/CheckWidgetCircleDrawable;

    invoke-virtual {p0, p1}, Lmiuix/internal/view/CheckWidgetDrawableAnims$5;->getValue(Lmiuix/internal/view/CheckWidgetCircleDrawable;)F

    move-result p0

    return p0
.end method

.method public getValue(Lmiuix/internal/view/CheckWidgetCircleDrawable;)F
    .locals 0

    .line 123
    invoke-virtual {p1}, Lmiuix/internal/view/CheckWidgetCircleDrawable;->getAlpha()I

    move-result p0

    div-int/lit16 p0, p0, 0xff

    int-to-float p0, p0

    return p0
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .locals 0

    .line 120
    check-cast p1, Lmiuix/internal/view/CheckWidgetCircleDrawable;

    invoke-virtual {p0, p1, p2}, Lmiuix/internal/view/CheckWidgetDrawableAnims$5;->setValue(Lmiuix/internal/view/CheckWidgetCircleDrawable;F)V

    return-void
.end method

.method public setValue(Lmiuix/internal/view/CheckWidgetCircleDrawable;F)V
    .locals 1

    const/high16 p0, 0x3f800000    # 1.0f

    cmpl-float v0, p2, p0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    move p0, p2

    :goto_0
    const/4 p2, 0x0

    cmpg-float v0, p0, p2

    if-gez v0, :cond_1

    move p0, p2

    :cond_1
    const/high16 p2, 0x437f0000    # 255.0f

    mul-float/2addr p0, p2

    float-to-int p0, p0

    .line 130
    invoke-virtual {p1, p0}, Lmiuix/internal/view/CheckWidgetCircleDrawable;->setAlpha(I)V

    return-void
.end method
