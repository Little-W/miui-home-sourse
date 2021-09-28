.class public Lcom/miui/home/launcher/DragView$CountLabel;
.super Ljava/lang/Object;
.source "DragView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/DragView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CountLabel"
.end annotation


# instance fields
.field private mCountLabelBgPaint:Landroid/graphics/Paint;

.field private mCountLabelBgRadius:F

.field private mCountLabelCenterPos:[F

.field private mCountLabelNumPaint:Landroid/graphics/Paint;

.field private mCountLabelTextBaseY:F


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Lcom/miui/home/launcher/ItemIcon;)V
    .locals 3

    .line 250
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7f07009b

    .line 251
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/DragView$CountLabel;->mCountLabelBgRadius:F

    .line 253
    invoke-direct {p0, p2}, Lcom/miui/home/launcher/DragView$CountLabel;->getCountLabelCenterPos(Lcom/miui/home/launcher/ItemIcon;)[F

    move-result-object p2

    iput-object p2, p0, Lcom/miui/home/launcher/DragView$CountLabel;->mCountLabelCenterPos:[F

    .line 255
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/miui/home/launcher/DragView$CountLabel;->mCountLabelBgPaint:Landroid/graphics/Paint;

    .line 256
    iget-object p2, p0, Lcom/miui/home/launcher/DragView$CountLabel;->mCountLabelBgPaint:Landroid/graphics/Paint;

    const/4 v0, -0x1

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 257
    iget-object p2, p0, Lcom/miui/home/launcher/DragView$CountLabel;->mCountLabelBgPaint:Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 259
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/miui/home/launcher/DragView$CountLabel;->mCountLabelNumPaint:Landroid/graphics/Paint;

    .line 260
    iget-object p2, p0, Lcom/miui/home/launcher/DragView$CountLabel;->mCountLabelNumPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 261
    iget-object p2, p0, Lcom/miui/home/launcher/DragView$CountLabel;->mCountLabelNumPaint:Landroid/graphics/Paint;

    const v1, 0x7f060304

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 262
    iget-object p2, p0, Lcom/miui/home/launcher/DragView$CountLabel;->mCountLabelNumPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 263
    iget-object p2, p0, Lcom/miui/home/launcher/DragView$CountLabel;->mCountLabelNumPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 264
    iget-object p2, p0, Lcom/miui/home/launcher/DragView$CountLabel;->mCountLabelNumPaint:Landroid/graphics/Paint;

    const v1, 0x7f07009c

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 266
    iget-object p1, p0, Lcom/miui/home/launcher/DragView$CountLabel;->mCountLabelNumPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object p1

    .line 267
    iget-object p2, p0, Lcom/miui/home/launcher/DragView$CountLabel;->mCountLabelCenterPos:[F

    aget p2, p2, v0

    iget v0, p1, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget v1, p1, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    sub-float/2addr p2, v0

    iget p1, p1, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr p2, p1

    iput p2, p0, Lcom/miui/home/launcher/DragView$CountLabel;->mCountLabelTextBaseY:F

    return-void
.end method

.method private getCountLabelCenterPos(Lcom/miui/home/launcher/ItemIcon;)[F
    .locals 3

    .line 271
    invoke-virtual {p1}, Lcom/miui/home/launcher/ItemIcon;->getIconContainer()Landroid/view/View;

    move-result-object p1

    .line 272
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/miui/home/launcher/DragView$CountLabel;->mCountLabelBgRadius:F

    sub-float/2addr v0, v1

    .line 273
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    int-to-float p1, p1

    iget v1, p0, Lcom/miui/home/launcher/DragView$CountLabel;->mCountLabelBgRadius:F

    add-float/2addr p1, v1

    const/4 v1, 0x2

    .line 274
    new-array v1, v1, [F

    const/4 v2, 0x0

    aput v0, v1, v2

    const/4 v0, 0x1

    aput p1, v1, v0

    return-object v1
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;I)V
    .locals 5

    .line 283
    iget-object v0, p0, Lcom/miui/home/launcher/DragView$CountLabel;->mCountLabelCenterPos:[F

    const/4 v1, 0x0

    aget v2, v0, v1

    const/4 v3, 0x1

    aget v0, v0, v3

    iget v3, p0, Lcom/miui/home/launcher/DragView$CountLabel;->mCountLabelBgRadius:F

    iget-object v4, p0, Lcom/miui/home/launcher/DragView$CountLabel;->mCountLabelBgPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v0, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 284
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/miui/home/launcher/DragView$CountLabel;->mCountLabelCenterPos:[F

    aget v0, v0, v1

    iget v1, p0, Lcom/miui/home/launcher/DragView$CountLabel;->mCountLabelTextBaseY:F

    iget-object v2, p0, Lcom/miui/home/launcher/DragView$CountLabel;->mCountLabelNumPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public updateAlpha(I)V
    .locals 1

    .line 278
    iget-object v0, p0, Lcom/miui/home/launcher/DragView$CountLabel;->mCountLabelBgPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 279
    iget-object v0, p0, Lcom/miui/home/launcher/DragView$CountLabel;->mCountLabelNumPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method
