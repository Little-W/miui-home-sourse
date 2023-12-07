.class Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$StaticColorLayer;
.super Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$StaticLayer;
.source "LayerAdaptiveIconDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "StaticColorLayer"
.end annotation


# instance fields
.field private final mLayerShader:Landroid/graphics/LinearGradient;


# direct methods
.method private constructor <init>(Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;Landroid/graphics/drawable/ColorDrawable;I)V
    .locals 9

    const/4 v0, 0x0

    .line 471
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$StaticLayer;-><init>(Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;Landroid/graphics/drawable/Drawable;ILcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$1;)V

    .line 472
    invoke-virtual {p2}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v7

    .line 473
    new-instance p1, Landroid/graphics/LinearGradient;

    sget-object v8, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    move v6, v7

    invoke-direct/range {v1 .. v8}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    iput-object p1, p0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$StaticColorLayer;->mLayerShader:Landroid/graphics/LinearGradient;

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;Landroid/graphics/drawable/ColorDrawable;ILcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$1;)V
    .locals 0

    .line 467
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$StaticColorLayer;-><init>(Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;Landroid/graphics/drawable/ColorDrawable;I)V

    return-void
.end method


# virtual methods
.method getShader()Landroid/graphics/Shader;
    .locals 0

    .line 478
    iget-object p0, p0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$StaticColorLayer;->mLayerShader:Landroid/graphics/LinearGradient;

    return-object p0
.end method
