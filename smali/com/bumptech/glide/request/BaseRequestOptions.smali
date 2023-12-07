.class public abstract Lcom/bumptech/glide/request/BaseRequestOptions;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/bumptech/glide/request/BaseRequestOptions<",
        "TT;>;>",
        "Ljava/lang/Object;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# instance fields
.field private diskCacheStrategy:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

.field private errorId:I

.field private errorPlaceholder:Landroid/graphics/drawable/Drawable;

.field private fallbackDrawable:Landroid/graphics/drawable/Drawable;

.field private fallbackId:I

.field private fields:I

.field private isAutoCloneEnabled:Z

.field private isCacheable:Z

.field private isLocked:Z

.field private isScaleOnlyOrNoTransform:Z

.field private isTransformationAllowed:Z

.field private isTransformationRequired:Z

.field private onlyRetrieveFromCache:Z

.field private options:Lcom/bumptech/glide/load/Options;

.field private overrideHeight:I

.field private overrideWidth:I

.field private placeholderDrawable:Landroid/graphics/drawable/Drawable;

.field private placeholderId:I

.field private priority:Lcom/bumptech/glide/Priority;

.field private resourceClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private signature:Lcom/bumptech/glide/load/Key;

.field private sizeMultiplier:F

.field private theme:Landroid/content/res/Resources$Theme;

.field private transformations:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/bumptech/glide/load/Transformation<",
            "*>;>;"
        }
    .end annotation
.end field

.field private useAnimationPool:Z

.field private useUnlimitedSourceGeneratorsPool:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/bumptech/glide/request/BaseRequestOptions;->sizeMultiplier:F

    sget-object v0, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->AUTOMATIC:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    iput-object v0, p0, Lcom/bumptech/glide/request/BaseRequestOptions;->diskCacheStrategy:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    sget-object v0, Lcom/bumptech/glide/Priority;->NORMAL:Lcom/bumptech/glide/Priority;

    iput-object v0, p0, Lcom/bumptech/glide/request/BaseRequestOptions;->priority:Lcom/bumptech/glide/Priority;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/request/BaseRequestOptions;->isCacheable:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/bumptech/glide/request/BaseRequestOptions;->overrideHeight:I

    iput v1, p0, Lcom/bumptech/glide/request/BaseRequestOptions;->overrideWidth:I

    invoke-static {}, Lcom/bumptech/glide/signature/EmptySignature;->obtain()Lcom/bumptech/glide/signature/EmptySignature;

    move-result-object v1

    iput-object v1, p0, Lcom/bumptech/glide/request/BaseRequestOptions;->signature:Lcom/bumptech/glide/load/Key;

    iput-boolean v0, p0, Lcom/bumptech/glide/request/BaseRequestOptions;->isTransformationAllowed:Z

    new-instance v1, Lcom/bumptech/glide/load/Options;

    invoke-direct {v1}, Lcom/bumptech/glide/load/Options;-><init>()V

    iput-object v1, p0, Lcom/bumptech/glide/request/BaseRequestOptions;->options:Lcom/bumptech/glide/load/Options;

    new-instance v1, Lcom/bumptech/glide/util/CachedHashCodeArrayMap;

    invoke-direct {v1}, Lcom/bumptech/glide/util/CachedHashCodeArrayMap;-><init>()V

    iput-object v1, p0, Lcom/bumptech/glide/request/BaseRequestOptions;->transformations:Ljava/util/Map;

    const-class v1, Ljava/lang/Object;

    iput-object v1, p0, Lcom/bumptech/glide/request/BaseRequestOptions;->resourceClass:Ljava/lang/Class;

    iput-boolean v0, p0, Lcom/bumptech/glide/request/BaseRequestOptions;->isScaleOnlyOrNoTransform:Z

    return-void
.end method

.method private isSet(I)Z
    .locals 0

    iget p0, p0, Lcom/bumptech/glide/request/BaseRequestOptions;->fields:I

    invoke-static {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->isSet(II)Z

    move-result p0

    return p0
.end method

.method private static isSet(II)Z
    .locals 0

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private optionalScaleOnlyTransform(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;",
            "Lcom/bumptech/glide/load/Transformation<",
            "Landroid/graphics/Bitmap;",
            ">;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/bumptech/glide/request/BaseRequestOptions;->scaleOnlyTransform(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;Lcom/bumptech/glide/load/Transformation;Z)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    return-object p0
.end method

.method private scaleOnlyTransform(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;Lcom/bumptech/glide/load/Transformation;Z)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;",
            "Lcom/bumptech/glide/load/Transformation<",
            "Landroid/graphics/Bitmap;",
            ">;Z)TT;"
        }
    .end annotation

    if-eqz p3, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/bumptech/glide/request/BaseRequestOptions;->transform(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/bumptech/glide/request/BaseRequestOptions;->optionalTransform(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    :goto_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/bumptech/glide/request/BaseRequestOptions;->isScaleOnlyOrNoTransform:Z

    return-object p0
.end method

.method private self()Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    return-object p0
.end method

.method private selfOrThrowIfLocked()Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/bumptech/glide/request/BaseRequestOptions;->isLocked:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/bumptech/glide/request/BaseRequestOptions;->self()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "You cannot modify locked T, consider clone()"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/BaseRequestOptions<",
            "*>;)TT;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/bumptech/glide/request/BaseRequestOptions;->isAutoCloneEnabled:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/bumptech/glide/request/BaseRequestOptions;->clone()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    return-object p0

    :cond_0
    iget v0, p1, Lcom/bumptech/glide/request/BaseRequestOptions;->fields:I

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/bumptech/glide/request/BaseRequestOptions;->isSet(II)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p1, Lcom/bumptech/glide/request/BaseRequestOptions;->sizeMultiplier:F

    iput v0, p0, Lcom/bumptech/glide/request/BaseRequestOptions;->sizeMultiplier:F

    :cond_1
    iget v0, p1, Lcom/bumptech/glide/request/BaseRequestOptions;->fields:I

    const/high16 v1, 0x40000

    invoke-static {v0, v1}, Lcom/bumptech/glide/request/BaseRequestOptions;->isSet(II)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p1, Lcom/bumptech/glide/request/BaseRequestOptions;->useUnlimitedSourceGeneratorsPool:Z

    iput-boolean v0, p0, Lcom/bumptech/glide/request/BaseRequestOptions;->useUnlimitedSourceGeneratorsPool:Z

    :cond_2
    iget v0, p1, Lcom/bumptech/glide/request/BaseRequestOptions;->fields:I

    const/high16 v1, 0x100000

    invoke-static {v0, v1}, Lcom/bumptech/glide/request/BaseRequestOptions;->isSet(II)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p1, Lcom/bumptech/glide/request/BaseRequestOptions;->useAnimationPool:Z

    iput-boolean v0, p0, Lcom/bumptech/glide/request/BaseRequestOptions;->useAnimationPool:Z

    :cond_3
    iget v0, p1, Lcom/bumptech/glide/request/BaseRequestOptions;->fields:I

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/bumptech/glide/request/BaseRequestOptions;->isSet(II)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p1, Lcom/bumptech/glide/request/BaseRequestOptions;->diskCacheStrategy:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    iput-object v0, p0, Lcom/bumptech/glide/request/BaseRequestOptions;->diskCacheStrategy:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    :cond_4
    iget v0, p1, Lcom/bumptech/glide/request/BaseRequestOptions;->fields:I

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/bumptech/glide/request/BaseRequestOptions;->isSet(II)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p1, Lcom/bumptech/glide/request/BaseRequestOptions;->priority:Lcom/bumptech/glide/Priority;

    iput-object v0, p0, Lcom/bumptech/glide/request/BaseRequestOptions;->priority:Lcom/bumptech/glide/Priority;

    :cond_5
    iget v0, p1, Lcom/bumptech/glide/request/BaseRequestOptions;->fields:I

    const/16 v1, 0x10

    invoke-static {v0, v1}, Lcom/bumptech/glide/request/BaseRequestOptions;->isSet(II)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    iget-object v0, p1, Lcom/bumptech/glide/request/BaseRequestOptions;->errorPlaceholder:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/bumptech/glide/request/BaseRequestOptions;->errorPlaceholder:Landroid/graphics/drawable/Drawable;

    iput v1, p0, Lcom/bumptech/glide/request/BaseRequestOptions;->errorId:I

    iget v0, p0, Lcom/bumptech/glide/request/BaseRequestOptions;->fields:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/bumptech/glide/request/BaseRequestOptions;->fields:I

    :cond_6
    iget v0, p1, Lcom/bumptech/glide/request/BaseRequestOptions;->fields:I

    const/16 v2, 0x20

    invoke-static {v0, v2}, Lcom/bumptech/glide/request/BaseRequestOptions;->isSet(II)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_7

    iget v0, p1, Lcom/bumptech/glide/request/BaseRequestOptions;->errorId:I

    iput v0, p0, Lcom/bumptech/glide/request/BaseRequestOptions;->errorId:I

    iput-object v2, p0, Lcom/bumptech/glide/request/BaseRequestOptions;->errorPlaceholder:Landroid/graphics/drawable/Drawable;

    iget v0, p0, Lcom/bumptech/glide/request/BaseRequestOptions;->fields:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/bumptech/glide/request/BaseRequestOptions;->fields:I

    :cond_7
    iget v0, p1, Lcom/bumptech/glide/request/BaseRequestOptions;->fields:I

    const/16 v3, 0x40

    invoke-static {v0, v3}, Lcom/bumptech/glide/request/BaseRequestOptions;->isSet(II)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p1, Lcom/bumptech/glide/request/BaseRequestOptions;->placeholderDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/bumptech/glide/request/BaseRequestOptions;->placeholderDrawable:Landroid/graphics/drawable/Drawable;

    iput v1, p0, Lcom/bumptech/glide/request/BaseRequestOptions;->placeholderId:I

    iget v0, p0, Lcom/bumptech/glide/request/BaseRequestOptions;->fields:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/bumptech/glide/request/BaseRequestOptions;->fields:I

    :cond_8
    iget v0, p1, Lcom/bumptech/glide/request/BaseRequestOptions;->fields:I

    const/16 v3, 0x80

    invoke-static {v0, v3}, Lcom/bumptech/glide/request/BaseRequestOptions;->isSet(II)Z

    move-result v0

    if-eqz v0, :cond_9

    iget v0, p1, Lcom/bumptech/glide/request/BaseRequestOptions;->placeholderId:I

    iput v0, p0, Lcom/bumptech/glide/request/BaseRequestOptions;->placeholderId:I

    iput-object v2, p0, Lcom/bumptech/glide/request/BaseRequestOptions;->placeholderDrawable:Landroid/graphics/drawable/Drawable;

    iget v0, p0, Lcom/bumptech/glide/request/BaseRequestOptions;->fields:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/bumptech/glide/request/BaseRequestOptions;->fields:I

    :cond_9
    iget v0, p1, Lcom/bumptech/glide/request/BaseRequestOptions;->fields:I

    const/16 v3, 0x100

    invoke-static {v0, v3}, Lcom/bumptech/glide/request/BaseRequestOptions;->isSet(II)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-boolean v0, p1, Lcom/bumptech/glide/request/BaseRequestOptions;->isCacheable:Z

    iput-boolean v0, p0, Lcom/bumptech/glide/request/BaseRequestOptions;->isCacheable:Z

    :cond_a
    iget v0, p1, Lcom/bumptech/glide/request/BaseRequestOptions;->fields:I

    const/16 v3, 0x200

    invoke-static {v0, v3}, Lcom/bumptech/glide/request/BaseRequestOptions;->isSet(II)Z

    move-result v0

    if-eqz v0, :cond_b

    iget v0, p1, Lcom/bumptech/glide/request/BaseRequestOptions;->overrideWidth:I

    iput v0, p0, Lcom/bumptech/glide/request/BaseRequestOptions;->overrideWidth:I

    iget v0, p1, Lcom/bumptech/glide/request/BaseRequestOptions;->overrideHeight:I

    iput v0, p0, Lcom/bumptech/glide/request/BaseRequestOptions;->overrideHeight:I

    :cond_b
    iget v0, p1, Lcom/bumptech/glide/request/BaseRequestOptions;->fields:I

    const/16 v3, 0x400

    invoke-static {v0, v3}, Lcom/bumptech/glide/request/BaseRequestOptions;->isSet(II)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p1, Lcom/bumptech/glide/request/BaseRequestOptions;->signature:Lcom/bumptech/glide/load/Key;

    iput-object v0, p0, Lcom/bumptech/glide/request/BaseRequestOptions;->signature:Lcom/bumptech/glide/load/Key;

    :cond_c
    iget v0, p1, Lcom/bumptech/glide/request/BaseRequestOptions;->fields:I

    const/16 v3, 0x1000

    invoke-static {v0, v3}, Lcom/bumptech/glide/request/BaseRequestOptions;->isSet(II)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p1, Lcom/bumptech/glide/request/BaseRequestOptions;->resourceClass:Ljava/lang/Class;

    iput-object v0, p0, Lcom/bumptech/glide/request/BaseRequestOptions;->resourceClass:Ljava/lang/Class;

    :cond_d
    iget v0, p1, Lcom/bumptech/glide/request/BaseRequestOptions;->fields:I

    const/16 v3, 0x2000

    invoke-static {v0, v3}, Lcom/bumptech/glide/request/BaseRequestOptions;->isSet(II)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p1, Lcom/bumptech/glide/request/BaseRequestOptions;->fallbackDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/bumptech/glide/request/BaseRequestOptions;->fallbackDrawable:Landroid/graphics/drawable/Drawable;

    iput v1, p0, Lcom/bumptech/glide/request/BaseRequestOptions;->fallbackId:I

    iget v0, p0, Lcom/bumptech/glide/request/BaseRequestOptions;->fields:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Lcom/bumptech/glide/request/BaseRequestOptions;->fields:I

    :cond_e
    iget v0, p1, Lcom/bumptech/glide/request/BaseRequestOptions;->fields:I

    const/16 v3, 0x4000

    invoke-static {v0, v3}, Lcom/bumptech/glide/request/BaseRequestOptions;->isSet(II)Z

    move-result v0

    if-eqz v0, :cond_f

    iget v0, p1, Lcom/bumptech/glide/request/BaseRequestOptions;->fallbackId:I

    iput v0, p0, Lcom/bumptech/glide/request/BaseRequestOptions;->fallbackId:I

    iput-object v2, p0, Lcom/bumptech/glide/request/BaseRequestOptions;->fallbackDrawable:Landroid/graphics/drawable/Drawable;

    iget v0, p0, Lcom/bumptech/glide/request/BaseRequestOptions;->fields:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lcom/bumptech/glide/request/BaseRequestOptions;->fields:I

    :cond_f
    iget v0, p1, Lcom/bumptech/glide/request/BaseRequestOptions;->fields:I

    const v2, 0x8000

    invoke-static {v0, v2}, Lcom/bumptech/glide/request/BaseRequestOptions;->isSet(II)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p1, Lcom/bumptech/glide/request/BaseRequestOptions;->theme:Landroid/content/res/Resources$Theme;

    iput-object v0, p0, Lcom/bumptech/glide/request/BaseRequestOptions;->theme:Landroid/content/res/Resources$Theme;

    :cond_10
    iget v0, p1, Lcom/bumptech/glide/request/BaseRequestOptions;->fields:I

    const/high16 v2, 0x10000

    invoke-static {v0, v2}, Lcom/bumptech/glide/request/BaseRequestOptions;->isSet(II)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-boolean v0, p1, Lcom/bumptech/glide/request/BaseRequestOptions;->isTransformationAllowed:Z

    iput-boolean v0, p0, Lcom/bumptech/glide/request/BaseRequestOptions;->isTransformationAllowed:Z

    :cond_11
    iget v0, p1, Lcom/bumptech/glide/request/BaseRequestOptions;->fields:I

    const/high16 v2, 0x20000

    invoke-static {v0, v2}, Lcom/bumptech/glide/request/BaseRequestOptions;->isSet(II)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-boolean v0, p1, Lcom/bumptech/glide/request/BaseRequestOptions;->isTransformationRequired:Z

    iput-boolean v0, p0, Lcom/bumptech/glide/request/BaseRequestOptions;->isTransformationRequired:Z

    :cond_12
    iget v0, p1, Lcom/bumptech/glide/request/BaseRequestOptions;->fields:I

    const/16 v2, 0x800

    invoke-static {v0, v2}, Lcom/bumptech/glide/request/BaseRequestOptions;->isSet(II)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/bumptech/glide/request/BaseRequestOptions;->transformations:Ljava/util/Map;

    iget-object v2, p1, Lcom/bumptech/glide/request/BaseRequestOptions;->transformations:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    iget-boolean v0, p1, Lcom/bumptech/glide/request/BaseRequestOptions;->isScaleOnlyOrNoTransform:Z

    iput-boolean v0, p0, Lcom/bumptech/glide/request/BaseRequestOptions;->isScaleOnlyOrNoTransform:Z

    :cond_13
    iget v0, p1, Lcom/bumptech/glide/request/BaseRequestOptions;->fields:I

    const/high16 v2, 0x80000

    invoke-static {v0, v2}, Lcom/bumptech/glide/request/BaseRequestOptions;->isSet(II)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-boolean v0, p1, Lcom/bumptech/glide/request/BaseRequestOptions;->onlyRetrieveFromCache:Z

    iput-boolean v0, p0, Lcom/bumptech/glide/request/BaseRequestOptions;->onlyRetrieveFromCache:Z

    :cond_14
    iget-boolean v0, p0, Lcom/bumptech/glide/request/BaseRequestOptions;->isTransformationAllowed:Z

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/bumptech/glide/request/BaseRequestOptions;->transformations:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget v0, p0, Lcom/bumptech/glide/request/BaseRequestOptions;->fields:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/bumptech/glide/request/BaseRequestOptions;->fields:I

    iput-boolean v1, p0, Lcom/bumptech/glide/request/BaseRequestOptions;->isTransformationRequired:Z

    iget v0, p0, Lcom/bumptech/glide/request/BaseRequestOptions;->fields:I

    const v1, -0x20001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/bumptech/glide/request/BaseRequestOptions;->fields:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/request/BaseRequestOptions;->isScaleOnlyOrNoTransform:Z

    :cond_15
    iget v0, p0, Lcom/bumptech/glide/request/BaseRequestOptions;->fields:I

    iget v1, p1, Lcom/bumptech/glide/request/BaseRequestOptions;->fields:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/bumptech/glide/request/BaseRequestOptions;->fields:I

    iget-object v0, p0, Lcom/bumptech/glide/request/BaseRequestOptions;->options:Lcom/bumptech/glide/load/Options;

    iget-object p1, p1, Lcom/bumptech/glide/request/BaseRequestOptions;->options:Lcom/bumptech/glide/load/Options;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/load/Options;->putAll(Lcom/bumptech/glide/load/Options;)V

    invoke-direct {p0}, Lcom/bumptech/glide/request/BaseRequestOptions;->selfOrThrowIfLocked()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    return-object p0
.end method

.method public autoClone()Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/bumptech/glide/request/BaseRequestOptions;->isLocked:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/bumptech/glide/request/BaseRequestOptions;->isAutoCloneEnabled:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "You cannot auto lock an already locked options object, try clone() first"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/request/BaseRequestOptions;->isAutoCloneEnabled:Z

    invoke-virtual {p0}, Lcom/bumptech/glide/request/BaseRequestOptions;->lock()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    return-object p0
.end method

.method public clone()Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/request/BaseRequestOptions;

    new-instance v1, Lcom/bumptech/glide/load/Options;

    invoke-direct {v1}, Lcom/bumptech/glide/load/Options;-><init>()V

    iput-object v1, v0, Lcom/bumptech/glide/request/BaseRequestOptions;->options:Lcom/bumptech/glide/load/Options;

    iget-object v1, v0, Lcom/bumptech/glide/request/BaseRequestOptions;->options:Lcom/bumptech/glide/load/Options;

    iget-object v2, p0, Lcom/bumptech/glide/request/BaseRequestOptions;->options:Lcom/bumptech/glide/load/Options;

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/load/Options;->putAll(Lcom/bumptech/glide/load/Options;)V

    new-instance v1, Lcom/bumptech/glide/util/CachedHashCodeArrayMap;

    invoke-direct {v1}, Lcom/bumptech/glide/util/CachedHashCodeArrayMap;-><init>()V

    iput-object v1, v0, Lcom/bumptech/glide/request/BaseRequestOptions;->transformations:Ljava/util/Map;

    iget-object v1, v0, Lcom/bumptech/glide/request/BaseRequestOptions;->transformations:Ljava/util/Map;

    iget-object p0, p0, Lcom/bumptech/glide/request/BaseRequestOptions;->transformations:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const/4 p0, 0x0

    iput-boolean p0, v0, Lcom/bumptech/glide/request/BaseRequestOptions;->isLocked:Z

    iput-boolean p0, v0, Lcom/bumptech/glide/request/BaseRequestOptions;->isAutoCloneEnabled:Z
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/bumptech/glide/request/BaseRequestOptions;->clone()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    return-object p0
.end method

.method public decode(Ljava/lang/Class;)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)TT;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/bumptech/glide/request/BaseRequestOptions;->isAutoCloneEnabled:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/bumptech/glide/request/BaseRequestOptions;->clone()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->decode(Ljava/lang/Class;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p1}, Lcom/bumptech/glide/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Class;

    iput-object p1, p0, Lcom/bumptech/glide/request/BaseRequestOptions;->resourceClass:Ljava/lang/Class;

    iget p1, p0, Lcom/bumptech/glide/request/BaseRequestOptions;->fields:I

    or-int/lit16 p1, p1, 0x1000

    iput p1, p0, Lcom/bumptech/glide/request/BaseRequestOptions;->fields:I

    invoke-direct {p0}, Lcom/bumptech/glide/request/BaseRequestOptions;->selfOrThrowIfLocked()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    return-object p0
.end method

.method public diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/DiskCacheStrategy;",
            ")TT;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/bumptech/glide/request/BaseRequestOptions;->isAutoCloneEnabled:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/bumptech/glide/request/BaseRequestOptions;->clone()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p1}, Lcom/bumptech/glide/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    iput-object p1, p0, Lcom/bumptech/glide/request/BaseRequestOptions;->diskCacheStrategy:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    iget p1, p0, Lcom/bumptech/glide/request/BaseRequestOptions;->fields:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/bumptech/glide/request/BaseRequestOptions;->fields:I

    invoke-direct {p0}, Lcom/bumptech/glide/request/BaseRequestOptions;->selfOrThrowIfLocked()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    return-object p0
.end method

.method public downsample(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;",
            ")TT;"
        }
    .end annotation

    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;->OPTION:Lcom/bumptech/glide/load/Option;

    invoke-static {p1}, Lcom/bumptech/glide/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->set(Lcom/bumptech/glide/load/Option;Ljava/lang/Object;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lcom/bumptech/glide/request/BaseRequestOptions;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lcom/bumptech/glide/request/BaseRequestOptions;

    iget v0, p1, Lcom/bumptech/glide/request/BaseRequestOptions;->sizeMultiplier:F

    iget v2, p0, Lcom/bumptech/glide/request/BaseRequestOptions;->sizeMultiplier:F

    invoke-static {v0, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/bumptech/glide/request/BaseRequestOptions;->errorId:I

    iget v2, p1, Lcom/bumptech/glide/request/BaseRequestOptions;->errorId:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/request/BaseRequestOptions;->errorPlaceholder:Landroid/graphics/drawable/Drawable;

    iget-object v2, p1, Lcom/bumptech/glide/request/BaseRequestOptions;->errorPlaceholder:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v2}, Lcom/bumptech/glide/util/Util;->bothNullOrEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/bumptech/glide/request/BaseRequestOptions;->placeholderId:I

    iget v2, p1, Lcom/bumptech/glide/request/BaseRequestOptions;->placeholderId:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/request/BaseRequestOptions;->placeholderDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v2, p1, Lcom/bumptech/glide/request/BaseRequestOptions;->placeholderDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v2}, Lcom/bumptech/glide/util/Util;->bothNullOrEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/bumptech/glide/request/BaseRequestOptions;->fallbackId:I

    iget v2, p1, Lcom/bumptech/glide/request/BaseRequestOptions;->fallbackId:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/request/BaseRequestOptions;->fallbackDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v2, p1, Lcom/bumptech/glide/request/BaseRequestOptions;->fallbackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v2}, Lcom/bumptech/glide/util/Util;->bothNullOrEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/bumptech/glide/request/BaseRequestOptions;->isCacheable:Z

    iget-boolean v2, p1, Lcom/bumptech/glide/request/BaseRequestOptions;->isCacheable:Z

    if-ne v0, v2, :cond_0

    iget v0, p0, Lcom/bumptech/glide/request/BaseRequestOptions;->overrideHeight:I

    iget v2, p1, Lcom/bumptech/glide/request/BaseRequestOptions;->overrideHeight:I

    if-ne v0, v2, :cond_0

    iget v0, p0, Lcom/bumptech/glide/request/BaseRequestOptions;->overrideWidth:I

    iget v2, p1, Lcom/bumptech/glide/request/BaseRequestOptions;->overrideWidth:I

    if-ne v0, v2, :cond_0

    iget-boolean v0, p0, Lcom/bumptech/glide/request/BaseRequestOptions;->isTransformationRequired:Z

    iget-boolean v2, p1, Lcom/bumptech/glide/request/BaseRequestOptions;->isTransformationRequired:Z

    if-ne v0, v2, :cond_0

    iget-boolean v0, p0, Lcom/bumptech/glide/request/BaseRequestOptions;->isTransformationAllowed:Z

    iget-boolean v2, p1, Lcom/bumptech/glide/request/BaseRequestOptions;->isTransformationAllowed:Z

    if-ne v0, v2, :cond_0

    iget-boolean v0, p0, Lcom/bumptech/glide/request/BaseRequestOptions;->useUnlimitedSourceGeneratorsPool:Z

    iget-boolean v2, p1, Lcom/bumptech/glide/request/BaseRequestOptions;->useUnlimitedSourceGeneratorsPool:Z

    if-ne v0, v2, :cond_0

    iget-boolean v0, p0, Lcom/bumptech/glide/request/BaseRequestOptions;->onlyRetrieveFromCache:Z

    iget-boolean v2, p1, Lcom/bumptech/glide/request/BaseRequestOptions;->onlyRetrieveFromCache:Z

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/request/BaseRequestOptions;->diskCacheStrategy:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    iget-object v2, p1, Lcom/bumptech/glide/request/BaseRequestOptions;->diskCacheStrategy:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/request/BaseRequestOptions;->priority:Lcom/bumptech/glide/Priority;

    iget-object v2, p1, Lcom/bumptech/glide/request/BaseRequestOptions;->priority:Lcom/bumptech/glide/Priority;

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/request/BaseRequestOptions;->options:Lcom/bumptech/glide/load/Options;

    iget-object v2, p1, Lcom/bumptech/glide/request/BaseRequestOptions;->options:Lcom/bumptech/glide/load/Options;

    invoke-virtual {v0, v2}, Lcom/bumptech/glide/load/Options;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/request/BaseRequestOptions;->transformations:Ljava/util/Map;

    iget-object v2, p1, Lcom/bumptech/glide/request/BaseRequestOptions;->transformations:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/request/BaseRequestOptions;->resourceClass:Ljava/lang/Class;

    iget-object v2, p1, Lcom/bumptech/glide/request/BaseRequestOptions;->resourceClass:Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/request/BaseRequestOptions;->signature:Lcom/bumptech/glide/load/Key;

    iget-object v2, p1, Lcom/bumptech/glide/request/BaseRequestOptions;->signature:Lcom/bumptech/glide/load/Key;

    invoke-static {v0, v2}, Lcom/bumptech/glide/util/Util;->bothNullOrEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/bumptech/glide/request/BaseRequestOptions;->theme:Landroid/content/res/Resources$Theme;

    iget-object p1, p1, Lcom/bumptech/glide/request/BaseRequestOptions;->theme:Landroid/content/res/Resources$Theme;

    invoke-static {p0, p1}, Lcom/bumptech/glide/util/Util;->bothNullOrEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public error(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            ")TT;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/bumptech/glide/request/BaseRequestOptions;->isAutoCloneEnabled:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/bumptech/glide/request/BaseRequestOptions;->clone()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->error(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    return-object p0

    :cond_0
    iput-object p1, p0, Lcom/bumptech/glide/request/BaseRequestOptions;->errorPlaceholder:Landroid/graphics/drawable/Drawable;

    iget p1, p0, Lcom/bumptech/glide/request/BaseRequestOptions;->fields:I

    or-int/lit8 p1, p1, 0x10

    iput p1, p0, Lcom/bumptech/glide/request/BaseRequestOptions;->fields:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/bumptech/glide/request/BaseRequestOptions;->errorId:I

    iget p1, p0, Lcom/bumptech/glide/request/BaseRequestOptions;->fields:I

    and-int/lit8 p1, p1, -0x21

    iput p1, p0, Lcom/bumptech/glide/request/BaseRequestOptions;->fields:I

    invoke-direct {p0}, Lcom/bumptech/glide/request/BaseRequestOptions;->selfOrThrowIfLocked()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    return-object p0
.end method

.method public final getDiskCacheStrategy()Lcom/bumptech/glide/load/engine/DiskCacheStrategy;
    .locals 0

    iget-object p0, p0, Lcom/bumptech/glide/request/BaseRequestOptions;->diskCacheStrategy:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    return-object p0
.end method

.method public final getErrorId()I
    .locals 0

    iget p0, p0, Lcom/bumptech/glide/request/BaseRequestOptions;->errorId:I

    return p0
.end method

.method public final getErrorPlaceholder()Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lcom/bumptech/glide/request/BaseRequestOptions;->errorPlaceholder:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public final getFallbackDrawable()Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lcom/bumptech/glide/request/BaseRequestOptions;->fallbackDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public final getFallbackId()I
    .locals 0

    iget p0, p0, Lcom/bumptech/glide/request/BaseRequestOptions;->fallbackId:I

    return p0
.end method

.method public final getOnlyRetrieveFromCache()Z
    .locals 0

    iget-boolean p0, p0, Lcom/bumptech/glide/request/BaseRequestOptions;->onlyRetrieveFromCache:Z

    return p0
.end method

.method public final getOptions()Lcom/bumptech/glide/load/Options;
    .locals 0

    iget-object p0, p0, Lcom/bumptech/glide/request/BaseRequestOptions;->options:Lcom/bumptech/glide/load/Options;

    return-object p0
.end method

.method public final getOverrideHeight()I
    .locals 0

    iget p0, p0, Lcom/bumptech/glide/request/BaseRequestOptions;->overrideHeight:I

    return p0
.end method

.method public final getOverrideWidth()I
    .locals 0

    iget p0, p0, Lcom/bumptech/glide/request/BaseRequestOptions;->overrideWidth:I

    return p0
.end method

.method public final getPlaceholderDrawable()Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lcom/bumptech/glide/request/BaseRequestOptions;->placeholderDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public final getPlaceholderId()I
    .locals 0

    iget p0, p0, Lcom/bumptech/glide/request/BaseRequestOptions;->placeholderId:I

    return p0
.end method

.method public final getPriority()Lcom/bumptech/glide/Priority;
    .locals 0

    iget-object p0, p0, Lcom/bumptech/glide/request/BaseRequestOptions;->priority:Lcom/bumptech/glide/Priority;

    return-object p0
.end method

.method public final getResourceClass()Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/bumptech/glide/request/BaseRequestOptions;->resourceClass:Ljava/lang/Class;

    return-object p0
.end method

.method public final getSignature()Lcom/bumptech/glide/load/Key;
    .locals 0

    iget-object p0, p0, Lcom/bumptech/glide/request/BaseRequestOptions;->signature:Lcom/bumptech/glide/load/Key;

    return-object p0
.end method

.method public final getSizeMultiplier()F
    .locals 0

    iget p0, p0, Lcom/bumptech/glide/request/BaseRequestOptions;->sizeMultiplier:F

    return p0
.end method

.method public final getTheme()Landroid/content/res/Resources$Theme;
    .locals 0

    iget-object p0, p0, Lcom/bumptech/glide/request/BaseRequestOptions;->theme:Landroid/content/res/Resources$Theme;

    return-object p0
.end method

.method public final getTransformations()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/bumptech/glide/load/Transformation<",
            "*>;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/bumptech/glide/request/BaseRequestOptions;->transformations:Ljava/util/Map;

    return-object p0
.end method

.method public final getUseAnimationPool()Z
    .locals 0

    iget-boolean p0, p0, Lcom/bumptech/glide/request/BaseRequestOptions;->useAnimationPool:Z

    return p0
.end method

.method public final getUseUnlimitedSourceGeneratorsPool()Z
    .locals 0

    iget-boolean p0, p0, Lcom/bumptech/glide/request/BaseRequestOptions;->useUnlimitedSourceGeneratorsPool:Z

    return p0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/bumptech/glide/request/BaseRequestOptions;->sizeMultiplier:F

    invoke-static {v0}, Lcom/bumptech/glide/util/Util;->hashCode(F)I

    move-result v0

    iget v1, p0, Lcom/bumptech/glide/request/BaseRequestOptions;->errorId:I

    invoke-static {v1, v0}, Lcom/bumptech/glide/util/Util;->hashCode(II)I

    move-result v0

    iget-object v1, p0, Lcom/bumptech/glide/request/BaseRequestOptions;->errorPlaceholder:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v0}, Lcom/bumptech/glide/util/Util;->hashCode(Ljava/lang/Object;I)I

    move-result v0

    iget v1, p0, Lcom/bumptech/glide/request/BaseRequestOptions;->placeholderId:I

    invoke-static {v1, v0}, Lcom/bumptech/glide/util/Util;->hashCode(II)I

    move-result v0

    iget-object v1, p0, Lcom/bumptech/glide/request/BaseRequestOptions;->placeholderDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v0}, Lcom/bumptech/glide/util/Util;->hashCode(Ljava/lang/Object;I)I

    move-result v0

    iget v1, p0, Lcom/bumptech/glide/request/BaseRequestOptions;->fallbackId:I

    invoke-static {v1, v0}, Lcom/bumptech/glide/util/Util;->hashCode(II)I

    move-result v0

    iget-object v1, p0, Lcom/bumptech/glide/request/BaseRequestOptions;->fallbackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v0}, Lcom/bumptech/glide/util/Util;->hashCode(Ljava/lang/Object;I)I

    move-result v0

    iget-boolean v1, p0, Lcom/bumptech/glide/request/BaseRequestOptions;->isCacheable:Z

    invoke-static {v1, v0}, Lcom/bumptech/glide/util/Util;->hashCode(ZI)I

    move-result v0

    iget v1, p0, Lcom/bumptech/glide/request/BaseRequestOptions;->overrideHeight:I

    invoke-static {v1, v0}, Lcom/bumptech/glide/util/Util;->hashCode(II)I

    move-result v0

    iget v1, p0, Lcom/bumptech/glide/request/BaseRequestOptions;->overrideWidth:I

    invoke-static {v1, v0}, Lcom/bumptech/glide/util/Util;->hashCode(II)I

    move-result v0

    iget-boolean v1, p0, Lcom/bumptech/glide/request/BaseRequestOptions;->isTransformationRequired:Z

    invoke-static {v1, v0}, Lcom/bumptech/glide/util/Util;->hashCode(ZI)I

    move-result v0

    iget-boolean v1, p0, Lcom/bumptech/glide/request/BaseRequestOptions;->isTransformationAllowed:Z

    invoke-static {v1, v0}, Lcom/bumptech/glide/util/Util;->hashCode(ZI)I

    move-result v0

    iget-boolean v1, p0, Lcom/bumptech/glide/request/BaseRequestOptions;->useUnlimitedSourceGeneratorsPool:Z

    invoke-static {v1, v0}, Lcom/bumptech/glide/util/Util;->hashCode(ZI)I

    move-result v0

    iget-boolean v1, p0, Lcom/bumptech/glide/request/BaseRequestOptions;->onlyRetrieveFromCache:Z

    invoke-static {v1, v0}, Lcom/bumptech/glide/util/Util;->hashCode(ZI)I

    move-result v0

    iget-object v1, p0, Lcom/bumptech/glide/request/BaseRequestOptions;->diskCacheStrategy:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-static {v1, v0}, Lcom/bumptech/glide/util/Util;->hashCode(Ljava/lang/Object;I)I

    move-result v0

    iget-object v1, p0, Lcom/bumptech/glide/request/BaseRequestOptions;->priority:Lcom/bumptech/glide/Priority;

    invoke-static {v1, v0}, Lcom/bumptech/glide/util/Util;->hashCode(Ljava/lang/Object;I)I

    move-result v0

    iget-object v1, p0, Lcom/bumptech/glide/request/BaseRequestOptions;->options:Lcom/bumptech/glide/load/Options;

    invoke-static {v1, v0}, Lcom/bumptech/glide/util/Util;->hashCode(Ljava/lang/Object;I)I

    move-result v0

    iget-object v1, p0, Lcom/bumptech/glide/request/BaseRequestOptions;->transformations:Ljava/util/Map;

    invoke-static {v1, v0}, Lcom/bumptech/glide/util/Util;->hashCode(Ljava/lang/Object;I)I

    move-result v0

    iget-object v1, p0, Lcom/bumptech/glide/request/BaseRequestOptions;->resourceClass:Ljava/lang/Class;

    invoke-static {v1, v0}, Lcom/bumptech/glide/util/Util;->hashCode(Ljava/lang/Object;I)I

    move-result v0

    iget-object v1, p0, Lcom/bumptech/glide/request/BaseRequestOptions;->signature:Lcom/bumptech/glide/load/Key;

    invoke-static {v1, v0}, Lcom/bumptech/glide/util/Util;->hashCode(Ljava/lang/Object;I)I

    move-result v0

    iget-object p0, p0, Lcom/bumptech/glide/request/BaseRequestOptions;->theme:Landroid/content/res/Resources$Theme;

    invoke-static {p0, v0}, Lcom/bumptech/glide/util/Util;->hashCode(Ljava/lang/Object;I)I

    move-result p0

    return p0
.end method

.method public final isMemoryCacheable()Z
    .locals 0

    iget-boolean p0, p0, Lcom/bumptech/glide/request/BaseRequestOptions;->isCacheable:Z

    return p0
.end method

.method public final isPrioritySet()Z
    .locals 1

    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/bumptech/glide/request/BaseRequestOptions;->isSet(I)Z

    move-result p0

    return p0
.end method

.method isScaleOnlyOrNoTransform()Z
    .locals 0

    iget-boolean p0, p0, Lcom/bumptech/glide/request/BaseRequestOptions;->isScaleOnlyOrNoTransform:Z

    return p0
.end method

.method public final isTransformationAllowed()Z
    .locals 0

    iget-boolean p0, p0, Lcom/bumptech/glide/request/BaseRequestOptions;->isTransformationAllowed:Z

    return p0
.end method

.method public final isTransformationRequired()Z
    .locals 0

    iget-boolean p0, p0, Lcom/bumptech/glide/request/BaseRequestOptions;->isTransformationRequired:Z

    return p0
.end method

.method public final isTransformationSet()Z
    .locals 1

    const/16 v0, 0x800

    invoke-direct {p0, v0}, Lcom/bumptech/glide/request/BaseRequestOptions;->isSet(I)Z

    move-result p0

    return p0
.end method

.method public final isValidOverride()Z
    .locals 1

    iget v0, p0, Lcom/bumptech/glide/request/BaseRequestOptions;->overrideWidth:I

    iget p0, p0, Lcom/bumptech/glide/request/BaseRequestOptions;->overrideHeight:I

    invoke-static {v0, p0}, Lcom/bumptech/glide/util/Util;->isValidDimensions(II)Z

    move-result p0

    return p0
.end method

.method public lock()Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/request/BaseRequestOptions;->isLocked:Z

    invoke-direct {p0}, Lcom/bumptech/glide/request/BaseRequestOptions;->self()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    return-object p0
.end method

.method public onlyRetrieveFromCache(Z)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/bumptech/glide/request/BaseRequestOptions;->isAutoCloneEnabled:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/bumptech/glide/request/BaseRequestOptions;->clone()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->onlyRetrieveFromCache(Z)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    return-object p0

    :cond_0
    iput-boolean p1, p0, Lcom/bumptech/glide/request/BaseRequestOptions;->onlyRetrieveFromCache:Z

    iget p1, p0, Lcom/bumptech/glide/request/BaseRequestOptions;->fields:I

    const/high16 v0, 0x80000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/bumptech/glide/request/BaseRequestOptions;->fields:I

    invoke-direct {p0}, Lcom/bumptech/glide/request/BaseRequestOptions;->selfOrThrowIfLocked()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    return-object p0
.end method

.method public optionalCenterCrop()Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;->CENTER_OUTSIDE:Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;

    new-instance v1, Lcom/bumptech/glide/load/resource/bitmap/CenterCrop;

    invoke-direct {v1}, Lcom/bumptech/glide/load/resource/bitmap/CenterCrop;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/bumptech/glide/request/BaseRequestOptions;->optionalTransform(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    return-object p0
.end method

.method public optionalCenterInside()Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;->CENTER_INSIDE:Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;

    new-instance v1, Lcom/bumptech/glide/load/resource/bitmap/CenterInside;

    invoke-direct {v1}, Lcom/bumptech/glide/load/resource/bitmap/CenterInside;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/bumptech/glide/request/BaseRequestOptions;->optionalScaleOnlyTransform(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    return-object p0
.end method

.method public optionalFitCenter()Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;->FIT_CENTER:Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;

    new-instance v1, Lcom/bumptech/glide/load/resource/bitmap/FitCenter;

    invoke-direct {v1}, Lcom/bumptech/glide/load/resource/bitmap/FitCenter;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/bumptech/glide/request/BaseRequestOptions;->optionalScaleOnlyTransform(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    return-object p0
.end method

.method final optionalTransform(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;",
            "Lcom/bumptech/glide/load/Transformation<",
            "Landroid/graphics/Bitmap;",
            ">;)TT;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/bumptech/glide/request/BaseRequestOptions;->isAutoCloneEnabled:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/bumptech/glide/request/BaseRequestOptions;->clone()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/bumptech/glide/request/BaseRequestOptions;->optionalTransform(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->downsample(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;)Lcom/bumptech/glide/request/BaseRequestOptions;

    const/4 p1, 0x0

    invoke-virtual {p0, p2, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->transform(Lcom/bumptech/glide/load/Transformation;Z)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    return-object p0
.end method

.method public override(II)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)TT;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/bumptech/glide/request/BaseRequestOptions;->isAutoCloneEnabled:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/bumptech/glide/request/BaseRequestOptions;->clone()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/bumptech/glide/request/BaseRequestOptions;->override(II)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    return-object p0

    :cond_0
    iput p1, p0, Lcom/bumptech/glide/request/BaseRequestOptions;->overrideWidth:I

    iput p2, p0, Lcom/bumptech/glide/request/BaseRequestOptions;->overrideHeight:I

    iget p1, p0, Lcom/bumptech/glide/request/BaseRequestOptions;->fields:I

    or-int/lit16 p1, p1, 0x200

    iput p1, p0, Lcom/bumptech/glide/request/BaseRequestOptions;->fields:I

    invoke-direct {p0}, Lcom/bumptech/glide/request/BaseRequestOptions;->selfOrThrowIfLocked()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    return-object p0
.end method

.method public placeholder(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            ")TT;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/bumptech/glide/request/BaseRequestOptions;->isAutoCloneEnabled:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/bumptech/glide/request/BaseRequestOptions;->clone()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->placeholder(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    return-object p0

    :cond_0
    iput-object p1, p0, Lcom/bumptech/glide/request/BaseRequestOptions;->placeholderDrawable:Landroid/graphics/drawable/Drawable;

    iget p1, p0, Lcom/bumptech/glide/request/BaseRequestOptions;->fields:I

    or-int/lit8 p1, p1, 0x40

    iput p1, p0, Lcom/bumptech/glide/request/BaseRequestOptions;->fields:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/bumptech/glide/request/BaseRequestOptions;->placeholderId:I

    iget p1, p0, Lcom/bumptech/glide/request/BaseRequestOptions;->fields:I

    and-int/lit16 p1, p1, -0x81

    iput p1, p0, Lcom/bumptech/glide/request/BaseRequestOptions;->fields:I

    invoke-direct {p0}, Lcom/bumptech/glide/request/BaseRequestOptions;->selfOrThrowIfLocked()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    return-object p0
.end method

.method public priority(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/Priority;",
            ")TT;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/bumptech/glide/request/BaseRequestOptions;->isAutoCloneEnabled:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/bumptech/glide/request/BaseRequestOptions;->clone()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->priority(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p1}, Lcom/bumptech/glide/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/Priority;

    iput-object p1, p0, Lcom/bumptech/glide/request/BaseRequestOptions;->priority:Lcom/bumptech/glide/Priority;

    iget p1, p0, Lcom/bumptech/glide/request/BaseRequestOptions;->fields:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lcom/bumptech/glide/request/BaseRequestOptions;->fields:I

    invoke-direct {p0}, Lcom/bumptech/glide/request/BaseRequestOptions;->selfOrThrowIfLocked()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    return-object p0
.end method

.method public set(Lcom/bumptech/glide/load/Option;Ljava/lang/Object;)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Y:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/load/Option<",
            "TY;>;TY;)TT;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/bumptech/glide/request/BaseRequestOptions;->isAutoCloneEnabled:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/bumptech/glide/request/BaseRequestOptions;->clone()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/bumptech/glide/request/BaseRequestOptions;->set(Lcom/bumptech/glide/load/Option;Ljava/lang/Object;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p1}, Lcom/bumptech/glide/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/bumptech/glide/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/bumptech/glide/request/BaseRequestOptions;->options:Lcom/bumptech/glide/load/Options;

    invoke-virtual {v0, p1, p2}, Lcom/bumptech/glide/load/Options;->set(Lcom/bumptech/glide/load/Option;Ljava/lang/Object;)Lcom/bumptech/glide/load/Options;

    invoke-direct {p0}, Lcom/bumptech/glide/request/BaseRequestOptions;->selfOrThrowIfLocked()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    return-object p0
.end method

.method public signature(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/Key;",
            ")TT;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/bumptech/glide/request/BaseRequestOptions;->isAutoCloneEnabled:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/bumptech/glide/request/BaseRequestOptions;->clone()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->signature(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p1}, Lcom/bumptech/glide/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/load/Key;

    iput-object p1, p0, Lcom/bumptech/glide/request/BaseRequestOptions;->signature:Lcom/bumptech/glide/load/Key;

    iget p1, p0, Lcom/bumptech/glide/request/BaseRequestOptions;->fields:I

    or-int/lit16 p1, p1, 0x400

    iput p1, p0, Lcom/bumptech/glide/request/BaseRequestOptions;->fields:I

    invoke-direct {p0}, Lcom/bumptech/glide/request/BaseRequestOptions;->selfOrThrowIfLocked()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    return-object p0
.end method

.method public sizeMultiplier(F)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)TT;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/bumptech/glide/request/BaseRequestOptions;->isAutoCloneEnabled:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/bumptech/glide/request/BaseRequestOptions;->clone()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->sizeMultiplier(F)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_1

    iput p1, p0, Lcom/bumptech/glide/request/BaseRequestOptions;->sizeMultiplier:F

    iget p1, p0, Lcom/bumptech/glide/request/BaseRequestOptions;->fields:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/bumptech/glide/request/BaseRequestOptions;->fields:I

    invoke-direct {p0}, Lcom/bumptech/glide/request/BaseRequestOptions;->selfOrThrowIfLocked()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "sizeMultiplier must be between 0 and 1"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public skipMemoryCache(Z)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/bumptech/glide/request/BaseRequestOptions;->isAutoCloneEnabled:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/bumptech/glide/request/BaseRequestOptions;->clone()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/bumptech/glide/request/BaseRequestOptions;->skipMemoryCache(Z)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    return-object p0

    :cond_0
    xor-int/2addr p1, v1

    iput-boolean p1, p0, Lcom/bumptech/glide/request/BaseRequestOptions;->isCacheable:Z

    iget p1, p0, Lcom/bumptech/glide/request/BaseRequestOptions;->fields:I

    or-int/lit16 p1, p1, 0x100

    iput p1, p0, Lcom/bumptech/glide/request/BaseRequestOptions;->fields:I

    invoke-direct {p0}, Lcom/bumptech/glide/request/BaseRequestOptions;->selfOrThrowIfLocked()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    return-object p0
.end method

.method public transform(Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/Transformation<",
            "Landroid/graphics/Bitmap;",
            ">;)TT;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/bumptech/glide/request/BaseRequestOptions;->transform(Lcom/bumptech/glide/load/Transformation;Z)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    return-object p0
.end method

.method transform(Lcom/bumptech/glide/load/Transformation;Z)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/Transformation<",
            "Landroid/graphics/Bitmap;",
            ">;Z)TT;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/bumptech/glide/request/BaseRequestOptions;->isAutoCloneEnabled:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/bumptech/glide/request/BaseRequestOptions;->clone()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/bumptech/glide/request/BaseRequestOptions;->transform(Lcom/bumptech/glide/load/Transformation;Z)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/DrawableTransformation;

    invoke-direct {v0, p1, p2}, Lcom/bumptech/glide/load/resource/bitmap/DrawableTransformation;-><init>(Lcom/bumptech/glide/load/Transformation;Z)V

    const-class v1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, v1, p1, p2}, Lcom/bumptech/glide/request/BaseRequestOptions;->transform(Ljava/lang/Class;Lcom/bumptech/glide/load/Transformation;Z)Lcom/bumptech/glide/request/BaseRequestOptions;

    const-class v1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1, v0, p2}, Lcom/bumptech/glide/request/BaseRequestOptions;->transform(Ljava/lang/Class;Lcom/bumptech/glide/load/Transformation;Z)Lcom/bumptech/glide/request/BaseRequestOptions;

    const-class v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/bitmap/DrawableTransformation;->asBitmapDrawable()Lcom/bumptech/glide/load/Transformation;

    move-result-object v0

    invoke-virtual {p0, v1, v0, p2}, Lcom/bumptech/glide/request/BaseRequestOptions;->transform(Ljava/lang/Class;Lcom/bumptech/glide/load/Transformation;Z)Lcom/bumptech/glide/request/BaseRequestOptions;

    const-class v0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;

    new-instance v1, Lcom/bumptech/glide/load/resource/gif/GifDrawableTransformation;

    invoke-direct {v1, p1}, Lcom/bumptech/glide/load/resource/gif/GifDrawableTransformation;-><init>(Lcom/bumptech/glide/load/Transformation;)V

    invoke-virtual {p0, v0, v1, p2}, Lcom/bumptech/glide/request/BaseRequestOptions;->transform(Ljava/lang/Class;Lcom/bumptech/glide/load/Transformation;Z)Lcom/bumptech/glide/request/BaseRequestOptions;

    invoke-direct {p0}, Lcom/bumptech/glide/request/BaseRequestOptions;->selfOrThrowIfLocked()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    return-object p0
.end method

.method final transform(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;",
            "Lcom/bumptech/glide/load/Transformation<",
            "Landroid/graphics/Bitmap;",
            ">;)TT;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/bumptech/glide/request/BaseRequestOptions;->isAutoCloneEnabled:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/bumptech/glide/request/BaseRequestOptions;->clone()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/bumptech/glide/request/BaseRequestOptions;->transform(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->downsample(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;)Lcom/bumptech/glide/request/BaseRequestOptions;

    invoke-virtual {p0, p2}, Lcom/bumptech/glide/request/BaseRequestOptions;->transform(Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    return-object p0
.end method

.method transform(Ljava/lang/Class;Lcom/bumptech/glide/load/Transformation;Z)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Y:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TY;>;",
            "Lcom/bumptech/glide/load/Transformation<",
            "TY;>;Z)TT;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/bumptech/glide/request/BaseRequestOptions;->isAutoCloneEnabled:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/bumptech/glide/request/BaseRequestOptions;->clone()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/bumptech/glide/request/BaseRequestOptions;->transform(Ljava/lang/Class;Lcom/bumptech/glide/load/Transformation;Z)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p1}, Lcom/bumptech/glide/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/bumptech/glide/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/bumptech/glide/request/BaseRequestOptions;->transformations:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget p1, p0, Lcom/bumptech/glide/request/BaseRequestOptions;->fields:I

    or-int/lit16 p1, p1, 0x800

    iput p1, p0, Lcom/bumptech/glide/request/BaseRequestOptions;->fields:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/bumptech/glide/request/BaseRequestOptions;->isTransformationAllowed:Z

    iget p2, p0, Lcom/bumptech/glide/request/BaseRequestOptions;->fields:I

    const/high16 v0, 0x10000

    or-int/2addr p2, v0

    iput p2, p0, Lcom/bumptech/glide/request/BaseRequestOptions;->fields:I

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/bumptech/glide/request/BaseRequestOptions;->isScaleOnlyOrNoTransform:Z

    if-eqz p3, :cond_1

    iget p2, p0, Lcom/bumptech/glide/request/BaseRequestOptions;->fields:I

    const/high16 p3, 0x20000

    or-int/2addr p2, p3

    iput p2, p0, Lcom/bumptech/glide/request/BaseRequestOptions;->fields:I

    iput-boolean p1, p0, Lcom/bumptech/glide/request/BaseRequestOptions;->isTransformationRequired:Z

    :cond_1
    invoke-direct {p0}, Lcom/bumptech/glide/request/BaseRequestOptions;->selfOrThrowIfLocked()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    return-object p0
.end method

.method public useAnimationPool(Z)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/bumptech/glide/request/BaseRequestOptions;->isAutoCloneEnabled:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/bumptech/glide/request/BaseRequestOptions;->clone()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->useAnimationPool(Z)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    return-object p0

    :cond_0
    iput-boolean p1, p0, Lcom/bumptech/glide/request/BaseRequestOptions;->useAnimationPool:Z

    iget p1, p0, Lcom/bumptech/glide/request/BaseRequestOptions;->fields:I

    const/high16 v0, 0x100000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/bumptech/glide/request/BaseRequestOptions;->fields:I

    invoke-direct {p0}, Lcom/bumptech/glide/request/BaseRequestOptions;->selfOrThrowIfLocked()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    return-object p0
.end method
