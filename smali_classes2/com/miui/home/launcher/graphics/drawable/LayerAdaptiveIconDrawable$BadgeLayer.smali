.class Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$BadgeLayer;
.super Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;
.source "LayerAdaptiveIconDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BadgeLayer"
.end annotation


# direct methods
.method private constructor <init>(Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;Landroid/graphics/drawable/Drawable;I)V
    .locals 1

    const/4 v0, 0x0

    .line 515
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;-><init>(Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;Landroid/graphics/drawable/Drawable;ILcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;Landroid/graphics/drawable/Drawable;ILcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$1;)V
    .locals 0

    .line 513
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$BadgeLayer;-><init>(Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;Landroid/graphics/drawable/Drawable;I)V

    return-void
.end method


# virtual methods
.method onBoundsChange(Landroid/graphics/Rect;FF)V
    .locals 0

    .line 520
    invoke-super {p0, p1, p2, p3}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;->onBoundsChange(Landroid/graphics/Rect;FF)V

    .line 521
    invoke-virtual {p0}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$BadgeLayer;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method onDraw(Landroid/graphics/Canvas;Landroid/graphics/Path;)V
    .locals 0

    .line 526
    invoke-virtual {p0}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$BadgeLayer;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method
