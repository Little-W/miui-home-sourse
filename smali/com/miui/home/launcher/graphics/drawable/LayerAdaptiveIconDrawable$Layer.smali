.class public abstract Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;
.super Ljava/lang/Object;
.source "LayerAdaptiveIconDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Layer"
.end annotation


# static fields
.field static final TRANSLATION_X:Landroidx/dynamicanimation/animation/FloatPropertyCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/dynamicanimation/animation/FloatPropertyCompat<",
            "Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;",
            ">;"
        }
    .end annotation
.end field

.field static final TRANSLATION_Y:Landroidx/dynamicanimation/animation/FloatPropertyCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/dynamicanimation/animation/FloatPropertyCompat<",
            "Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAnimationIndex:I

.field private final mContainer:Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;

.field private final mDrawable:Landroid/graphics/drawable/Drawable;

.field private mScaleX:F

.field private mScaleY:F

.field private final mSpringAnimationX:Landroidx/dynamicanimation/animation/SpringAnimation;

.field private final mSpringAnimationY:Landroidx/dynamicanimation/animation/SpringAnimation;

.field private mTranslationX:F

.field private mTranslationY:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 189
    new-instance v0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer$1;

    const-string v1, "translationX"

    invoke-direct {v0, v1}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;->TRANSLATION_X:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    .line 201
    new-instance v0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer$2;

    const-string v1, "translationY"

    invoke-direct {v0, v1}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer$2;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;->TRANSLATION_Y:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    return-void
.end method

.method private constructor <init>(Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;Landroid/graphics/drawable/Drawable;I)V
    .locals 1

    .line 223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 217
    iput v0, p0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;->mScaleX:F

    .line 218
    iput v0, p0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;->mScaleY:F

    .line 224
    iput-object p1, p0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;->mContainer:Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;

    .line 225
    iput-object p2, p0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 226
    iput p3, p0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;->mAnimationIndex:I

    .line 227
    new-instance p1, Landroidx/dynamicanimation/animation/SpringAnimation;

    sget-object p2, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;->TRANSLATION_X:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    const/4 p3, 0x0

    invoke-direct {p1, p0, p2, p3}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;F)V

    iput-object p1, p0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;->mSpringAnimationX:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 228
    new-instance p1, Landroidx/dynamicanimation/animation/SpringAnimation;

    sget-object p2, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;->TRANSLATION_Y:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    invoke-direct {p1, p0, p2, p3}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;F)V

    iput-object p1, p0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;->mSpringAnimationY:Landroidx/dynamicanimation/animation/SpringAnimation;

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;Landroid/graphics/drawable/Drawable;ILcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$1;)V
    .locals 0

    .line 188
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;-><init>(Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;Landroid/graphics/drawable/Drawable;I)V

    return-void
.end method


# virtual methods
.method animateToTranslationX(FFFF)V
    .locals 2

    .line 299
    invoke-static {p1}, Lcom/miui/home/launcher/common/Utilities;->checkFloat(F)Z

    .line 300
    invoke-static {p2}, Lcom/miui/home/launcher/common/Utilities;->checkFloat(F)Z

    .line 301
    invoke-static {p3}, Lcom/miui/home/launcher/common/Utilities;->checkFloat(F)Z

    .line 302
    invoke-static {p4}, Lcom/miui/home/launcher/common/Utilities;->checkFloat(F)Z

    .line 303
    iget-object v0, p0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;->mSpringAnimationX:Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance v1, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {v1, p1}, Landroidx/dynamicanimation/animation/SpringForce;-><init>(F)V

    .line 304
    invoke-virtual {v1, p2}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p1

    .line 305
    invoke-static {p3}, Lcom/miui/home/launcher/animate/SpringAnimator;->stiffnessConvert(F)F

    move-result p2

    invoke-virtual {p1, p2}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p1

    .line 303
    invoke-virtual {v0, p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 306
    iget-object p1, p0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;->mSpringAnimationX:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p1, p4}, Landroidx/dynamicanimation/animation/SpringAnimation;->setStartVelocity(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 307
    iget-object p1, p0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;->mSpringAnimationX:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p0}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;->getTranslationX()F

    move-result p2

    invoke-virtual {p1, p2}, Landroidx/dynamicanimation/animation/SpringAnimation;->setStartValue(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 308
    iget-object p1, p0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;->mSpringAnimationX:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    return-void
.end method

.method animateToTranslationY(FFFF)V
    .locals 2

    .line 312
    invoke-static {p1}, Lcom/miui/home/launcher/common/Utilities;->checkFloat(F)Z

    .line 313
    invoke-static {p2}, Lcom/miui/home/launcher/common/Utilities;->checkFloat(F)Z

    .line 314
    invoke-static {p3}, Lcom/miui/home/launcher/common/Utilities;->checkFloat(F)Z

    .line 315
    invoke-static {p4}, Lcom/miui/home/launcher/common/Utilities;->checkFloat(F)Z

    .line 316
    iget-object v0, p0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;->mSpringAnimationY:Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance v1, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {v1, p1}, Landroidx/dynamicanimation/animation/SpringForce;-><init>(F)V

    .line 317
    invoke-virtual {v1, p2}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p1

    .line 318
    invoke-static {p3}, Lcom/miui/home/launcher/animate/SpringAnimator;->stiffnessConvert(F)F

    move-result p2

    invoke-virtual {p1, p2}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p1

    .line 316
    invoke-virtual {v0, p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 319
    iget-object p1, p0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;->mSpringAnimationY:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p1, p4}, Landroidx/dynamicanimation/animation/SpringAnimation;->setStartVelocity(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 320
    iget-object p1, p0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;->mSpringAnimationY:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p0}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;->getTranslationY()F

    move-result p2

    invoke-virtual {p1, p2}, Landroidx/dynamicanimation/animation/SpringAnimation;->setStartValue(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 321
    iget-object p1, p0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;->mSpringAnimationY:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    return-void
.end method

.method cancelAnimating()V
    .locals 1

    .line 259
    iget-object v0, p0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;->mSpringAnimationX:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->cancel()V

    .line 260
    iget-object v0, p0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;->mSpringAnimationY:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->cancel()V

    const/4 v0, 0x0

    .line 261
    iput v0, p0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;->mTranslationY:F

    iput v0, p0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;->mTranslationX:F

    return-void
.end method

.method final draw(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V
    .locals 3

    .line 237
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 238
    iget v0, p0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;->mTranslationX:F

    iget v1, p0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;->mScaleX:F

    div-float/2addr v0, v1

    iget v1, p0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;->mTranslationY:F

    iget v2, p0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;->mScaleY:F

    div-float/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 239
    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;->onDraw(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V

    .line 240
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public getAnimationIndex()I
    .locals 1

    .line 277
    iget v0, p0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;->mAnimationIndex:I

    return v0
.end method

.method public getCurrentShowDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 329
    iget-object v0, p0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;->mDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 325
    iget-object v0, p0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;->mDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method getDrawableBounds()Landroid/graphics/Rect;
    .locals 1

    .line 273
    iget-object v0, p0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method getIconMask()Landroid/graphics/Path;
    .locals 1

    .line 333
    iget-object v0, p0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;->mContainer:Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;

    invoke-virtual {v0}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;->getIconMask()Landroid/graphics/Path;

    move-result-object v0

    return-object v0
.end method

.method getParentBounds()Landroid/graphics/Rect;
    .locals 1

    .line 269
    iget-object v0, p0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;->mContainer:Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;

    invoke-virtual {v0}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public getTranslationX()F
    .locals 1

    .line 281
    iget v0, p0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;->mTranslationX:F

    return v0
.end method

.method public getTranslationY()F
    .locals 1

    .line 285
    iget v0, p0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;->mTranslationY:F

    return v0
.end method

.method invalidate()V
    .locals 1

    .line 265
    iget-object v0, p0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;->mContainer:Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;

    invoke-virtual {v0}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;->invalidateSelf()V

    return-void
.end method

.method isAnimating()Z
    .locals 2

    .line 254
    iget v0, p0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;->mTranslationX:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    iget v0, p0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;->mTranslationY:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;->mSpringAnimationX:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 255
    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;->mSpringAnimationY:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method onBoundsChange(Landroid/graphics/Rect;FF)V
    .locals 0

    .line 232
    iput p2, p0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;->mScaleX:F

    .line 233
    iput p3, p0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;->mScaleY:F

    return-void
.end method

.method abstract onDraw(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V
.end method

.method public onPause()V
    .locals 1

    .line 350
    invoke-virtual {p0}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;->cancelAnimating()V

    .line 351
    invoke-virtual {p0}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;->getCurrentShowDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/launcher/utils/MamlUtils;->onPause(Ljava/lang/Object;)V

    return-void
.end method

.method public onPresent()V
    .locals 2

    .line 355
    invoke-virtual {p0}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;->getCurrentShowDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const-string v1, "present"

    invoke-static {v0, v1}, Lcom/miui/launcher/utils/MamlUtils;->onCommand(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 346
    invoke-virtual {p0}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;->getCurrentShowDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/launcher/utils/MamlUtils;->onResume(Ljava/lang/Object;)V

    return-void
.end method

.method public prepareBackAnim()V
    .locals 0

    return-void
.end method

.method public resetBackAnim()V
    .locals 0

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 359
    iget-object v0, p0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 360
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_0
    return-void
.end method

.method public setTranslationX(F)V
    .locals 0

    .line 289
    iput p1, p0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;->mTranslationX:F

    .line 290
    invoke-virtual {p0}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;->invalidate()V

    return-void
.end method

.method public setTranslationY(F)V
    .locals 0

    .line 294
    iput p1, p0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;->mTranslationY:F

    .line 295
    invoke-virtual {p0}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;->invalidate()V

    return-void
.end method

.method updateBackAnim(Ljava/lang/String;F)V
    .locals 0

    return-void
.end method
