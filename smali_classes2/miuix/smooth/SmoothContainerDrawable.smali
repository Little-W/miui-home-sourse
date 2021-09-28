.class public Lmiuix/smooth/SmoothContainerDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "SmoothContainerDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/smooth/SmoothContainerDrawable$ContainerState;,
        Lmiuix/smooth/SmoothContainerDrawable$ChildDrawable;
    }
.end annotation


# static fields
.field private static final XFERMODE_DST_OUT:Landroid/graphics/PorterDuffXfermode;


# instance fields
.field private mContainerState:Lmiuix/smooth/SmoothContainerDrawable$ContainerState;

.field private mHelper:Lmiuix/smooth/internal/SmoothDrawHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 28
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    sput-object v0, Lmiuix/smooth/SmoothContainerDrawable;->XFERMODE_DST_OUT:Landroid/graphics/PorterDuffXfermode;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 32
    new-instance v0, Lmiuix/smooth/internal/SmoothDrawHelper;

    invoke-direct {v0}, Lmiuix/smooth/internal/SmoothDrawHelper;-><init>()V

    iput-object v0, p0, Lmiuix/smooth/SmoothContainerDrawable;->mHelper:Lmiuix/smooth/internal/SmoothDrawHelper;

    .line 35
    new-instance v0, Lmiuix/smooth/SmoothContainerDrawable$ContainerState;

    invoke-direct {v0}, Lmiuix/smooth/SmoothContainerDrawable$ContainerState;-><init>()V

    iput-object v0, p0, Lmiuix/smooth/SmoothContainerDrawable;->mContainerState:Lmiuix/smooth/SmoothContainerDrawable$ContainerState;

    return-void
.end method

.method private constructor <init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lmiuix/smooth/SmoothContainerDrawable$ContainerState;)V
    .locals 1

    .line 38
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 32
    new-instance v0, Lmiuix/smooth/internal/SmoothDrawHelper;

    invoke-direct {v0}, Lmiuix/smooth/internal/SmoothDrawHelper;-><init>()V

    iput-object v0, p0, Lmiuix/smooth/SmoothContainerDrawable;->mHelper:Lmiuix/smooth/internal/SmoothDrawHelper;

    .line 39
    new-instance v0, Lmiuix/smooth/SmoothContainerDrawable$ContainerState;

    invoke-direct {v0, p3, p0, p1, p2}, Lmiuix/smooth/SmoothContainerDrawable$ContainerState;-><init>(Lmiuix/smooth/SmoothContainerDrawable$ContainerState;Lmiuix/smooth/SmoothContainerDrawable;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)V

    iput-object v0, p0, Lmiuix/smooth/SmoothContainerDrawable;->mContainerState:Lmiuix/smooth/SmoothContainerDrawable$ContainerState;

    .line 40
    iget-object p1, p0, Lmiuix/smooth/SmoothContainerDrawable;->mHelper:Lmiuix/smooth/internal/SmoothDrawHelper;

    iget p2, p3, Lmiuix/smooth/SmoothContainerDrawable$ContainerState;->mStrokeWidth:I

    invoke-virtual {p1, p2}, Lmiuix/smooth/internal/SmoothDrawHelper;->setStrokeWidth(I)V

    .line 41
    iget-object p1, p0, Lmiuix/smooth/SmoothContainerDrawable;->mHelper:Lmiuix/smooth/internal/SmoothDrawHelper;

    iget p2, p3, Lmiuix/smooth/SmoothContainerDrawable$ContainerState;->mStrokeColor:I

    invoke-virtual {p1, p2}, Lmiuix/smooth/internal/SmoothDrawHelper;->setStrokeColor(I)V

    .line 42
    iget-object p1, p0, Lmiuix/smooth/SmoothContainerDrawable;->mHelper:Lmiuix/smooth/internal/SmoothDrawHelper;

    iget-object p2, p3, Lmiuix/smooth/SmoothContainerDrawable$ContainerState;->mRadii:[F

    invoke-virtual {p1, p2}, Lmiuix/smooth/internal/SmoothDrawHelper;->setRadii([F)V

    .line 43
    iget-object p1, p0, Lmiuix/smooth/SmoothContainerDrawable;->mHelper:Lmiuix/smooth/internal/SmoothDrawHelper;

    iget p2, p3, Lmiuix/smooth/SmoothContainerDrawable$ContainerState;->mRadius:F

    invoke-virtual {p1, p2}, Lmiuix/smooth/internal/SmoothDrawHelper;->setRadius(F)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lmiuix/smooth/SmoothContainerDrawable$ContainerState;Lmiuix/smooth/SmoothContainerDrawable$1;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2, p3}, Lmiuix/smooth/SmoothContainerDrawable;-><init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lmiuix/smooth/SmoothContainerDrawable$ContainerState;)V

    return-void
.end method

.method private inflateInnerDrawable(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 79
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 82
    :cond_0
    :goto_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    if-eq v2, v1, :cond_7

    .line 83
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-ge v3, v0, :cond_1

    const/4 v4, 0x3

    if-eq v2, v4, :cond_7

    :cond_1
    const/4 v4, 0x2

    if-eq v2, v4, :cond_2

    goto :goto_0

    :cond_2
    if-gt v3, v0, :cond_0

    .line 88
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "child"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    .line 91
    :cond_3
    :goto_1
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_4

    goto :goto_1

    :cond_4
    if-ne v0, v4, :cond_6

    .line 98
    new-instance v0, Lmiuix/smooth/SmoothContainerDrawable$ChildDrawable;

    invoke-direct {v0}, Lmiuix/smooth/SmoothContainerDrawable$ChildDrawable;-><init>()V

    .line 99
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_5

    .line 100
    invoke-static {p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, v0, Lmiuix/smooth/SmoothContainerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_2

    .line 102
    :cond_5
    invoke-static {p1, p2, p3}, Landroid/graphics/drawable/Drawable;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, v0, Lmiuix/smooth/SmoothContainerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 104
    :goto_2
    iget-object p1, v0, Lmiuix/smooth/SmoothContainerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 105
    iget-object p1, p0, Lmiuix/smooth/SmoothContainerDrawable;->mContainerState:Lmiuix/smooth/SmoothContainerDrawable$ContainerState;

    iput-object v0, p1, Lmiuix/smooth/SmoothContainerDrawable$ContainerState;->mChildDrawable:Lmiuix/smooth/SmoothContainerDrawable$ChildDrawable;

    return-void

    .line 94
    :cond_6
    new-instance p1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ": <child> tag requires a \'drawable\' attribute or "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "child tag defining a drawable"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    return-void
.end method

.method private obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;
    .locals 0

    if-nez p2, :cond_0

    .line 211
    invoke-virtual {p1, p3, p4}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    .line 213
    invoke-virtual {p2, p3, p4, p1, p1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public applyTheme(Landroid/content/res/Resources$Theme;)V
    .locals 2

    .line 112
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->applyTheme(Landroid/content/res/Resources$Theme;)V

    .line 113
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 114
    iget-object v0, p0, Lmiuix/smooth/SmoothContainerDrawable;->mContainerState:Lmiuix/smooth/SmoothContainerDrawable$ContainerState;

    iget-object v0, v0, Lmiuix/smooth/SmoothContainerDrawable$ContainerState;->mChildDrawable:Lmiuix/smooth/SmoothContainerDrawable$ChildDrawable;

    iget-object v0, v0, Lmiuix/smooth/SmoothContainerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->applyTheme(Landroid/content/res/Resources$Theme;)V

    :cond_0
    return-void
.end method

.method public canApplyTheme()Z
    .locals 1

    .line 120
    iget-object v0, p0, Lmiuix/smooth/SmoothContainerDrawable;->mContainerState:Lmiuix/smooth/SmoothContainerDrawable$ContainerState;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lmiuix/smooth/SmoothContainerDrawable$ContainerState;->canApplyTheme()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->canApplyTheme()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 279
    invoke-virtual {p0}, Lmiuix/smooth/SmoothContainerDrawable;->getBoundsInner()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v0

    invoke-virtual {p0}, Lmiuix/smooth/SmoothContainerDrawable;->getBoundsInner()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v3, v0

    .line 280
    invoke-virtual {p0}, Lmiuix/smooth/SmoothContainerDrawable;->getBoundsInner()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v4, v0

    invoke-virtual {p0}, Lmiuix/smooth/SmoothContainerDrawable;->getBoundsInner()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v0

    const/4 v6, 0x0

    const/16 v7, 0x1f

    move-object v1, p1

    .line 279
    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    move-result v0

    .line 282
    iget-object v1, p0, Lmiuix/smooth/SmoothContainerDrawable;->mContainerState:Lmiuix/smooth/SmoothContainerDrawable$ContainerState;

    iget-object v1, v1, Lmiuix/smooth/SmoothContainerDrawable$ContainerState;->mChildDrawable:Lmiuix/smooth/SmoothContainerDrawable$ChildDrawable;

    iget-object v1, v1, Lmiuix/smooth/SmoothContainerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 283
    iget-object v1, p0, Lmiuix/smooth/SmoothContainerDrawable;->mHelper:Lmiuix/smooth/internal/SmoothDrawHelper;

    sget-object v2, Lmiuix/smooth/SmoothContainerDrawable;->XFERMODE_DST_OUT:Landroid/graphics/PorterDuffXfermode;

    invoke-virtual {v1, p1, v2}, Lmiuix/smooth/internal/SmoothDrawHelper;->drawMask(Landroid/graphics/Canvas;Landroid/graphics/Xfermode;)V

    .line 284
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 285
    iget-object v0, p0, Lmiuix/smooth/SmoothContainerDrawable;->mHelper:Lmiuix/smooth/internal/SmoothDrawHelper;

    invoke-virtual {v0, p1}, Lmiuix/smooth/internal/SmoothDrawHelper;->drawStroke(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public getAlpha()I
    .locals 1

    .line 290
    iget-object v0, p0, Lmiuix/smooth/SmoothContainerDrawable;->mContainerState:Lmiuix/smooth/SmoothContainerDrawable$ContainerState;

    invoke-virtual {v0}, Lmiuix/smooth/SmoothContainerDrawable$ContainerState;->getAlpha()I

    move-result v0

    return v0
.end method

.method public final getBoundsInner()Landroid/graphics/Rect;
    .locals 1

    .line 248
    iget-object v0, p0, Lmiuix/smooth/SmoothContainerDrawable;->mContainerState:Lmiuix/smooth/SmoothContainerDrawable$ContainerState;

    invoke-virtual {v0}, Lmiuix/smooth/SmoothContainerDrawable$ContainerState;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 1

    .line 312
    iget-object v0, p0, Lmiuix/smooth/SmoothContainerDrawable;->mContainerState:Lmiuix/smooth/SmoothContainerDrawable$ContainerState;

    return-object v0
.end method

.method public getCornerRadius()F
    .locals 1

    .line 193
    iget-object v0, p0, Lmiuix/smooth/SmoothContainerDrawable;->mContainerState:Lmiuix/smooth/SmoothContainerDrawable$ContainerState;

    iget v0, v0, Lmiuix/smooth/SmoothContainerDrawable$ContainerState;->mRadius:F

    return v0
.end method

.method public getDirtyBounds()Landroid/graphics/Rect;
    .locals 1

    .line 254
    iget-object v0, p0, Lmiuix/smooth/SmoothContainerDrawable;->mContainerState:Lmiuix/smooth/SmoothContainerDrawable$ContainerState;

    invoke-virtual {v0}, Lmiuix/smooth/SmoothContainerDrawable$ContainerState;->getDirtyBounds()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .line 238
    iget-object v0, p0, Lmiuix/smooth/SmoothContainerDrawable;->mContainerState:Lmiuix/smooth/SmoothContainerDrawable$ContainerState;

    invoke-virtual {v0}, Lmiuix/smooth/SmoothContainerDrawable$ContainerState;->getIntrinsicHeight()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .line 233
    iget-object v0, p0, Lmiuix/smooth/SmoothContainerDrawable;->mContainerState:Lmiuix/smooth/SmoothContainerDrawable$ContainerState;

    invoke-virtual {v0}, Lmiuix/smooth/SmoothContainerDrawable$ContainerState;->getIntrinsicWidth()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .line 307
    iget-object v0, p0, Lmiuix/smooth/SmoothContainerDrawable;->mContainerState:Lmiuix/smooth/SmoothContainerDrawable$ContainerState;

    invoke-virtual {v0}, Lmiuix/smooth/SmoothContainerDrawable$ContainerState;->getOpacity()I

    move-result v0

    return v0
.end method

.method public getOutline(Landroid/graphics/Outline;)V
    .locals 2

    .line 198
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    .line 199
    iget-object v0, p0, Lmiuix/smooth/SmoothContainerDrawable;->mHelper:Lmiuix/smooth/internal/SmoothDrawHelper;

    invoke-virtual {p0}, Lmiuix/smooth/SmoothContainerDrawable;->getBoundsInner()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiuix/smooth/internal/SmoothDrawHelper;->getSmoothPath(Landroid/graphics/Rect;)Landroid/graphics/Path;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Outline;->setPath(Landroid/graphics/Path;)V

    goto :goto_0

    .line 200
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    .line 201
    invoke-virtual {p0}, Lmiuix/smooth/SmoothContainerDrawable;->getBoundsInner()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0}, Lmiuix/smooth/SmoothContainerDrawable;->getCornerRadius()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Outline;->setRoundRect(Landroid/graphics/Rect;F)V

    :cond_1
    :goto_0
    return-void
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .locals 1

    .line 274
    iget-object v0, p0, Lmiuix/smooth/SmoothContainerDrawable;->mContainerState:Lmiuix/smooth/SmoothContainerDrawable$ContainerState;

    invoke-virtual {v0, p1}, Lmiuix/smooth/SmoothContainerDrawable$ContainerState;->getPadding(Landroid/graphics/Rect;)Z

    move-result p1

    return p1
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 48
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 49
    sget-object v0, Lmiuix/smooth/R$styleable;->MiuixSmoothContainerDrawable:[I

    invoke-direct {p0, p1, p4, p3, v0}, Lmiuix/smooth/SmoothContainerDrawable;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 50
    sget v1, Lmiuix/smooth/R$styleable;->MiuixSmoothContainerDrawable_android_radius:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    int-to-float v1, v1

    .line 51
    invoke-virtual {p0, v1}, Lmiuix/smooth/SmoothContainerDrawable;->setCornerRadius(F)V

    .line 52
    sget v1, Lmiuix/smooth/R$styleable;->MiuixSmoothContainerDrawable_android_topLeftRadius:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-nez v1, :cond_0

    sget v1, Lmiuix/smooth/R$styleable;->MiuixSmoothContainerDrawable_android_topRightRadius:I

    .line 53
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-nez v1, :cond_0

    sget v1, Lmiuix/smooth/R$styleable;->MiuixSmoothContainerDrawable_android_bottomRightRadius:I

    .line 54
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-nez v1, :cond_0

    sget v1, Lmiuix/smooth/R$styleable;->MiuixSmoothContainerDrawable_android_bottomLeftRadius:I

    .line 55
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 56
    :cond_0
    sget v1, Lmiuix/smooth/R$styleable;->MiuixSmoothContainerDrawable_android_topLeftRadius:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    int-to-float v1, v1

    .line 57
    sget v3, Lmiuix/smooth/R$styleable;->MiuixSmoothContainerDrawable_android_topRightRadius:I

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    int-to-float v3, v3

    .line 58
    sget v4, Lmiuix/smooth/R$styleable;->MiuixSmoothContainerDrawable_android_bottomRightRadius:I

    invoke-virtual {v0, v4, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    int-to-float v4, v4

    .line 59
    sget v5, Lmiuix/smooth/R$styleable;->MiuixSmoothContainerDrawable_android_bottomLeftRadius:I

    invoke-virtual {v0, v5, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    int-to-float v5, v5

    const/16 v6, 0x8

    .line 60
    new-array v6, v6, [F

    aput v1, v6, v2

    const/4 v7, 0x1

    aput v1, v6, v7

    const/4 v1, 0x2

    aput v3, v6, v1

    const/4 v1, 0x3

    aput v3, v6, v1

    const/4 v1, 0x4

    aput v4, v6, v1

    const/4 v1, 0x5

    aput v4, v6, v1

    const/4 v1, 0x6

    aput v5, v6, v1

    const/4 v1, 0x7

    aput v5, v6, v1

    .line 66
    invoke-virtual {p0, v6}, Lmiuix/smooth/SmoothContainerDrawable;->setCornerRadii([F)V

    .line 68
    :cond_1
    sget v1, Lmiuix/smooth/R$styleable;->MiuixSmoothContainerDrawable_miuix_strokeWidth:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    .line 69
    invoke-virtual {p0, v1}, Lmiuix/smooth/SmoothContainerDrawable;->setStrokeWidth(I)V

    .line 70
    sget v1, Lmiuix/smooth/R$styleable;->MiuixSmoothContainerDrawable_miuix_strokeColor:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 71
    invoke-virtual {p0, v1}, Lmiuix/smooth/SmoothContainerDrawable;->setStrokeColor(I)V

    .line 72
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 74
    invoke-direct {p0, p1, p2, p3, p4}, Lmiuix/smooth/SmoothContainerDrawable;->inflateInnerDrawable(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    return-void
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 218
    invoke-virtual {p0}, Lmiuix/smooth/SmoothContainerDrawable;->invalidateSelf()V

    return-void
.end method

.method public isStateful()Z
    .locals 1

    .line 327
    iget-object v0, p0, Lmiuix/smooth/SmoothContainerDrawable;->mContainerState:Lmiuix/smooth/SmoothContainerDrawable$ContainerState;

    invoke-virtual {v0}, Lmiuix/smooth/SmoothContainerDrawable$ContainerState;->isStateful()Z

    move-result v0

    return v0
.end method

.method public jumpToCurrentState()V
    .locals 1

    .line 317
    iget-object v0, p0, Lmiuix/smooth/SmoothContainerDrawable;->mContainerState:Lmiuix/smooth/SmoothContainerDrawable$ContainerState;

    invoke-virtual {v0}, Lmiuix/smooth/SmoothContainerDrawable$ContainerState;->jumpToCurrentState()V

    return-void
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1

    .line 243
    iget-object v0, p0, Lmiuix/smooth/SmoothContainerDrawable;->mContainerState:Lmiuix/smooth/SmoothContainerDrawable$ContainerState;

    invoke-virtual {v0, p1}, Lmiuix/smooth/SmoothContainerDrawable$ContainerState;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 244
    iget-object v0, p0, Lmiuix/smooth/SmoothContainerDrawable;->mHelper:Lmiuix/smooth/internal/SmoothDrawHelper;

    invoke-virtual {v0, p1}, Lmiuix/smooth/internal/SmoothDrawHelper;->onBoundsChange(Landroid/graphics/Rect;)V

    return-void
.end method

.method protected onStateChange([I)Z
    .locals 1

    .line 322
    iget-object v0, p0, Lmiuix/smooth/SmoothContainerDrawable;->mContainerState:Lmiuix/smooth/SmoothContainerDrawable$ContainerState;

    invoke-virtual {v0, p1}, Lmiuix/smooth/SmoothContainerDrawable$ContainerState;->onStateChange([I)Z

    move-result p1

    return p1
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 0

    .line 223
    invoke-virtual {p0, p2, p3, p4}, Lmiuix/smooth/SmoothContainerDrawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    .line 295
    iget-object v0, p0, Lmiuix/smooth/SmoothContainerDrawable;->mContainerState:Lmiuix/smooth/SmoothContainerDrawable$ContainerState;

    invoke-virtual {v0, p1}, Lmiuix/smooth/SmoothContainerDrawable$ContainerState;->setAlpha(I)V

    .line 296
    iget-object v0, p0, Lmiuix/smooth/SmoothContainerDrawable;->mHelper:Lmiuix/smooth/internal/SmoothDrawHelper;

    invoke-virtual {v0, p1}, Lmiuix/smooth/internal/SmoothDrawHelper;->setAlpha(I)V

    .line 297
    invoke-virtual {p0}, Lmiuix/smooth/SmoothContainerDrawable;->invalidateSelf()V

    return-void
.end method

.method public setChangingConfigurations(I)V
    .locals 1

    .line 259
    iget-object v0, p0, Lmiuix/smooth/SmoothContainerDrawable;->mContainerState:Lmiuix/smooth/SmoothContainerDrawable$ContainerState;

    invoke-virtual {v0, p1}, Lmiuix/smooth/SmoothContainerDrawable$ContainerState;->setChangingConfigurations(I)V

    return-void
.end method

.method public setChildDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 124
    iget-object v0, p0, Lmiuix/smooth/SmoothContainerDrawable;->mContainerState:Lmiuix/smooth/SmoothContainerDrawable$ContainerState;

    if-eqz v0, :cond_0

    .line 125
    new-instance v0, Lmiuix/smooth/SmoothContainerDrawable$ChildDrawable;

    invoke-direct {v0}, Lmiuix/smooth/SmoothContainerDrawable$ChildDrawable;-><init>()V

    .line 126
    iput-object p1, v0, Lmiuix/smooth/SmoothContainerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 127
    iget-object p1, v0, Lmiuix/smooth/SmoothContainerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 128
    iget-object p1, p0, Lmiuix/smooth/SmoothContainerDrawable;->mContainerState:Lmiuix/smooth/SmoothContainerDrawable$ContainerState;

    iput-object v0, p1, Lmiuix/smooth/SmoothContainerDrawable$ContainerState;->mChildDrawable:Lmiuix/smooth/SmoothContainerDrawable$ChildDrawable;

    :cond_0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 302
    iget-object v0, p0, Lmiuix/smooth/SmoothContainerDrawable;->mContainerState:Lmiuix/smooth/SmoothContainerDrawable$ContainerState;

    invoke-virtual {v0, p1}, Lmiuix/smooth/SmoothContainerDrawable$ContainerState;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method public setCornerRadii([F)V
    .locals 1

    .line 165
    iget-object v0, p0, Lmiuix/smooth/SmoothContainerDrawable;->mContainerState:Lmiuix/smooth/SmoothContainerDrawable$ContainerState;

    iput-object p1, v0, Lmiuix/smooth/SmoothContainerDrawable$ContainerState;->mRadii:[F

    .line 166
    iget-object v0, p0, Lmiuix/smooth/SmoothContainerDrawable;->mHelper:Lmiuix/smooth/internal/SmoothDrawHelper;

    invoke-virtual {v0, p1}, Lmiuix/smooth/internal/SmoothDrawHelper;->setRadii([F)V

    if-nez p1, :cond_0

    .line 168
    iget-object p1, p0, Lmiuix/smooth/SmoothContainerDrawable;->mContainerState:Lmiuix/smooth/SmoothContainerDrawable$ContainerState;

    const/4 v0, 0x0

    iput v0, p1, Lmiuix/smooth/SmoothContainerDrawable$ContainerState;->mRadius:F

    .line 169
    iget-object p1, p0, Lmiuix/smooth/SmoothContainerDrawable;->mHelper:Lmiuix/smooth/internal/SmoothDrawHelper;

    invoke-virtual {p1, v0}, Lmiuix/smooth/internal/SmoothDrawHelper;->setRadius(F)V

    .line 171
    :cond_0
    invoke-virtual {p0}, Lmiuix/smooth/SmoothContainerDrawable;->invalidateSelf()V

    return-void
.end method

.method public setCornerRadius(F)V
    .locals 2

    .line 179
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gez v1, :cond_1

    move p1, v0

    .line 185
    :cond_1
    iget-object v0, p0, Lmiuix/smooth/SmoothContainerDrawable;->mContainerState:Lmiuix/smooth/SmoothContainerDrawable$ContainerState;

    iput p1, v0, Lmiuix/smooth/SmoothContainerDrawable$ContainerState;->mRadius:F

    const/4 v1, 0x0

    .line 186
    iput-object v1, v0, Lmiuix/smooth/SmoothContainerDrawable$ContainerState;->mRadii:[F

    .line 187
    iget-object v0, p0, Lmiuix/smooth/SmoothContainerDrawable;->mHelper:Lmiuix/smooth/internal/SmoothDrawHelper;

    invoke-virtual {v0, p1}, Lmiuix/smooth/internal/SmoothDrawHelper;->setRadius(F)V

    .line 188
    iget-object p1, p0, Lmiuix/smooth/SmoothContainerDrawable;->mHelper:Lmiuix/smooth/internal/SmoothDrawHelper;

    invoke-virtual {p1, v1}, Lmiuix/smooth/internal/SmoothDrawHelper;->setRadii([F)V

    .line 189
    invoke-virtual {p0}, Lmiuix/smooth/SmoothContainerDrawable;->invalidateSelf()V

    return-void
.end method

.method public setDither(Z)V
    .locals 1

    .line 264
    iget-object v0, p0, Lmiuix/smooth/SmoothContainerDrawable;->mContainerState:Lmiuix/smooth/SmoothContainerDrawable$ContainerState;

    invoke-virtual {v0, p1}, Lmiuix/smooth/SmoothContainerDrawable$ContainerState;->setDither(Z)V

    return-void
.end method

.method public setFilterBitmap(Z)V
    .locals 1

    .line 269
    iget-object v0, p0, Lmiuix/smooth/SmoothContainerDrawable;->mContainerState:Lmiuix/smooth/SmoothContainerDrawable$ContainerState;

    invoke-virtual {v0, p1}, Lmiuix/smooth/SmoothContainerDrawable$ContainerState;->setFilterBitmap(Z)V

    return-void
.end method

.method public setStrokeColor(I)V
    .locals 1

    .line 153
    iget-object v0, p0, Lmiuix/smooth/SmoothContainerDrawable;->mContainerState:Lmiuix/smooth/SmoothContainerDrawable$ContainerState;

    iget v0, v0, Lmiuix/smooth/SmoothContainerDrawable$ContainerState;->mStrokeColor:I

    if-eq v0, p1, :cond_0

    .line 154
    iget-object v0, p0, Lmiuix/smooth/SmoothContainerDrawable;->mContainerState:Lmiuix/smooth/SmoothContainerDrawable$ContainerState;

    iput p1, v0, Lmiuix/smooth/SmoothContainerDrawable$ContainerState;->mStrokeColor:I

    .line 155
    iget-object v0, p0, Lmiuix/smooth/SmoothContainerDrawable;->mHelper:Lmiuix/smooth/internal/SmoothDrawHelper;

    invoke-virtual {v0, p1}, Lmiuix/smooth/internal/SmoothDrawHelper;->setStrokeColor(I)V

    .line 156
    invoke-virtual {p0}, Lmiuix/smooth/SmoothContainerDrawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public setStrokeWidth(I)V
    .locals 1

    .line 141
    iget-object v0, p0, Lmiuix/smooth/SmoothContainerDrawable;->mContainerState:Lmiuix/smooth/SmoothContainerDrawable$ContainerState;

    iget v0, v0, Lmiuix/smooth/SmoothContainerDrawable$ContainerState;->mStrokeWidth:I

    if-eq v0, p1, :cond_0

    .line 142
    iget-object v0, p0, Lmiuix/smooth/SmoothContainerDrawable;->mContainerState:Lmiuix/smooth/SmoothContainerDrawable$ContainerState;

    iput p1, v0, Lmiuix/smooth/SmoothContainerDrawable$ContainerState;->mStrokeWidth:I

    .line 143
    iget-object v0, p0, Lmiuix/smooth/SmoothContainerDrawable;->mHelper:Lmiuix/smooth/internal/SmoothDrawHelper;

    invoke-virtual {v0, p1}, Lmiuix/smooth/internal/SmoothDrawHelper;->setStrokeWidth(I)V

    .line 144
    invoke-virtual {p0}, Lmiuix/smooth/SmoothContainerDrawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 0

    .line 228
    invoke-virtual {p0, p2}, Lmiuix/smooth/SmoothContainerDrawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    return-void
.end method
