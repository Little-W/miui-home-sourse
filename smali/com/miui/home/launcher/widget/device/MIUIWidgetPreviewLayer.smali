.class public Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;
.super Landroid/widget/FrameLayout;
.source "MIUIWidgetPreviewLayer.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MIUIWidgetPreviewLayer"


# instance fields
.field private mPreview:Landroid/widget/ImageView;

.field private mPreviewRect:Landroid/graphics/Rect;

.field private mTempRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 27
    invoke-direct {p0, p1, v0}, Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 31
    invoke-direct {p0, p1, p2, v0}, Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;->mTempRect:Landroid/graphics/Rect;

    .line 37
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;->mPreviewRect:Landroid/graphics/Rect;

    .line 39
    new-instance p2, Landroid/widget/ImageView;

    invoke-direct {p2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;->mPreview:Landroid/widget/ImageView;

    .line 40
    iget-object p1, p0, Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;->mPreview:Landroid/widget/ImageView;

    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 p3, -0x2

    invoke-direct {p2, p3, p3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public drawPreview(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;->mPreview:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public setPreviewCorner(F)V
    .locals 2

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    .line 49
    iget-object p1, p0, Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;->mPreview:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setClipToOutline(Z)V

    .line 50
    iget-object p1, p0, Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;->mPreview:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    goto :goto_0

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;->mPreview:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setClipToOutline(Z)V

    .line 53
    iget-object v0, p0, Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;->mPreview:Landroid/widget/ImageView;

    new-instance v1, Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer$1;

    invoke-direct {v1, p0, p1}, Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer$1;-><init>(Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;F)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    :goto_0
    return-void
.end method

.method public updatePreviewPosition(Landroid/graphics/Rect;)V
    .locals 5

    .line 63
    iget-object v0, p0, Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 64
    iget-object v0, p0, Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;->mPreviewRect:Landroid/graphics/Rect;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    iget-object v4, p0, Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p1, v4

    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/graphics/Rect;->set(IIII)V

    .line 66
    iget-object p1, p0, Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;->mPreview:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;->mPreviewRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 67
    iget-object p1, p0, Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;->mPreview:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;->mPreviewRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setTranslationY(F)V

    return-void
.end method
