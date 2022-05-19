.class public Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;
.super Landroid/widget/FrameLayout;
.source "MIUIWidgetPreviewLayer.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MIUIWidgetPreviewLayer"


# instance fields
.field private mBackground:Landroid/widget/ImageView;

.field private mPreview:Landroid/widget/ImageView;

.field private mTempRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 31
    invoke-direct {p0, p1, v0}, Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 35
    invoke-direct {p0, p1, p2, v0}, Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 39
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;->mTempRect:Landroid/graphics/Rect;

    .line 42
    new-instance p2, Landroid/widget/ImageView;

    invoke-direct {p2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;->mBackground:Landroid/widget/ImageView;

    .line 43
    iget-object p2, p0, Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;->mBackground:Landroid/widget/ImageView;

    sget-object p3, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 44
    iget-object p2, p0, Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;->mBackground:Landroid/widget/ImageView;

    new-instance p3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p3, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p2, p3}, Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 46
    new-instance p2, Landroid/widget/ImageView;

    invoke-direct {p2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;->mPreview:Landroid/widget/ImageView;

    .line 47
    iget-object p1, p0, Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;->mPreview:Landroid/widget/ImageView;

    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 p3, -0x2

    invoke-direct {p2, p3, p3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public static synthetic lambda$updatePreviewPosition$0(Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;Landroid/graphics/Rect;)V
    .locals 3

    .line 71
    iget-object v0, p0, Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 72
    invoke-virtual {p0}, Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;->mPreview:Landroid/widget/ImageView;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTranslationX(F)V

    goto :goto_0

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;->mPreview:Landroid/widget/ImageView;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 77
    :goto_0
    iget-object v0, p0, Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;->mPreview:Landroid/widget/ImageView;

    iget p1, p1, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr p1, v1

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setTranslationY(F)V

    return-void
.end method


# virtual methods
.method public drawPreview(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;->mPreview:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;->mBackground:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setPreviewCorner(F)V
    .locals 2

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    .line 56
    iget-object p1, p0, Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;->mPreview:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setClipToOutline(Z)V

    .line 57
    iget-object p1, p0, Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;->mPreview:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    goto :goto_0

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;->mPreview:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setClipToOutline(Z)V

    .line 60
    iget-object v0, p0, Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;->mPreview:Landroid/widget/ImageView;

    new-instance v1, Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer$1;

    invoke-direct {v1, p0, p1}, Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer$1;-><init>(Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;F)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    :goto_0
    return-void
.end method

.method public updatePreviewPosition(Landroid/graphics/Rect;)V
    .locals 1

    .line 70
    new-instance v0, Lcom/miui/home/launcher/widget/device/-$$Lambda$MIUIWidgetPreviewLayer$jx49J_YQriqKlz1GyUjjP74gWj4;

    invoke-direct {v0, p0, p1}, Lcom/miui/home/launcher/widget/device/-$$Lambda$MIUIWidgetPreviewLayer$jx49J_YQriqKlz1GyUjjP74gWj4;-><init>(Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;Landroid/graphics/Rect;)V

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
