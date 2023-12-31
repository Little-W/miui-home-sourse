.class public final Lcom/squareup/picasso/Request$Builder;
.super Ljava/lang/Object;
.source "Request.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/picasso/Request;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private centerCrop:Z

.field private centerCropGravity:I

.field private centerInside:Z

.field private config:Landroid/graphics/Bitmap$Config;

.field private hasRotationPivot:Z

.field private onlyScaleDown:Z

.field private priority:Lcom/squareup/picasso/Picasso$Priority;

.field private purgeable:Z

.field private resourceId:I

.field private rotationDegrees:F

.field private rotationPivotX:F

.field private rotationPivotY:F

.field private stableKey:Ljava/lang/String;

.field private targetHeight:I

.field private targetWidth:I

.field private transformations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/squareup/picasso/Transformation;",
            ">;"
        }
    .end annotation
.end field

.field private uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Landroid/net/Uri;ILandroid/graphics/Bitmap$Config;)V
    .locals 0

    .line 235
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 236
    iput-object p1, p0, Lcom/squareup/picasso/Request$Builder;->uri:Landroid/net/Uri;

    .line 237
    iput p2, p0, Lcom/squareup/picasso/Request$Builder;->resourceId:I

    .line 238
    iput-object p3, p0, Lcom/squareup/picasso/Request$Builder;->config:Landroid/graphics/Bitmap$Config;

    return-void
.end method


# virtual methods
.method public build()Lcom/squareup/picasso/Request;
    .locals 22

    move-object/from16 v0, p0

    .line 492
    iget-boolean v1, v0, Lcom/squareup/picasso/Request$Builder;->centerInside:Z

    if-eqz v1, :cond_1

    iget-boolean v1, v0, Lcom/squareup/picasso/Request$Builder;->centerCrop:Z

    if-nez v1, :cond_0

    goto :goto_0

    .line 493
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Center crop and center inside can not be used together."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 495
    :cond_1
    :goto_0
    iget-boolean v1, v0, Lcom/squareup/picasso/Request$Builder;->centerCrop:Z

    if-eqz v1, :cond_3

    iget v1, v0, Lcom/squareup/picasso/Request$Builder;->targetWidth:I

    if-nez v1, :cond_3

    iget v1, v0, Lcom/squareup/picasso/Request$Builder;->targetHeight:I

    if-eqz v1, :cond_2

    goto :goto_1

    .line 496
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Center crop requires calling resize with positive width and height."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 499
    :cond_3
    :goto_1
    iget-boolean v1, v0, Lcom/squareup/picasso/Request$Builder;->centerInside:Z

    if-eqz v1, :cond_5

    iget v1, v0, Lcom/squareup/picasso/Request$Builder;->targetWidth:I

    if-nez v1, :cond_5

    iget v1, v0, Lcom/squareup/picasso/Request$Builder;->targetHeight:I

    if-eqz v1, :cond_4

    goto :goto_2

    .line 500
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Center inside requires calling resize with positive width and height."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 503
    :cond_5
    :goto_2
    iget-object v1, v0, Lcom/squareup/picasso/Request$Builder;->priority:Lcom/squareup/picasso/Picasso$Priority;

    if-nez v1, :cond_6

    .line 504
    sget-object v1, Lcom/squareup/picasso/Picasso$Priority;->NORMAL:Lcom/squareup/picasso/Picasso$Priority;

    iput-object v1, v0, Lcom/squareup/picasso/Request$Builder;->priority:Lcom/squareup/picasso/Picasso$Priority;

    .line 506
    :cond_6
    new-instance v1, Lcom/squareup/picasso/Request;

    move-object v2, v1

    iget-object v3, v0, Lcom/squareup/picasso/Request$Builder;->uri:Landroid/net/Uri;

    iget v4, v0, Lcom/squareup/picasso/Request$Builder;->resourceId:I

    iget-object v5, v0, Lcom/squareup/picasso/Request$Builder;->stableKey:Ljava/lang/String;

    iget-object v6, v0, Lcom/squareup/picasso/Request$Builder;->transformations:Ljava/util/List;

    iget v7, v0, Lcom/squareup/picasso/Request$Builder;->targetWidth:I

    iget v8, v0, Lcom/squareup/picasso/Request$Builder;->targetHeight:I

    iget-boolean v9, v0, Lcom/squareup/picasso/Request$Builder;->centerCrop:Z

    iget-boolean v10, v0, Lcom/squareup/picasso/Request$Builder;->centerInside:Z

    iget v11, v0, Lcom/squareup/picasso/Request$Builder;->centerCropGravity:I

    iget-boolean v12, v0, Lcom/squareup/picasso/Request$Builder;->onlyScaleDown:Z

    iget v13, v0, Lcom/squareup/picasso/Request$Builder;->rotationDegrees:F

    iget v14, v0, Lcom/squareup/picasso/Request$Builder;->rotationPivotX:F

    iget v15, v0, Lcom/squareup/picasso/Request$Builder;->rotationPivotY:F

    move-object/from16 v21, v1

    iget-boolean v1, v0, Lcom/squareup/picasso/Request$Builder;->hasRotationPivot:Z

    move/from16 v16, v1

    iget-boolean v1, v0, Lcom/squareup/picasso/Request$Builder;->purgeable:Z

    move/from16 v17, v1

    iget-object v1, v0, Lcom/squareup/picasso/Request$Builder;->config:Landroid/graphics/Bitmap$Config;

    move-object/from16 v18, v1

    iget-object v0, v0, Lcom/squareup/picasso/Request$Builder;->priority:Lcom/squareup/picasso/Picasso$Priority;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-direct/range {v2 .. v20}, Lcom/squareup/picasso/Request;-><init>(Landroid/net/Uri;ILjava/lang/String;Ljava/util/List;IIZZIZFFFZZLandroid/graphics/Bitmap$Config;Lcom/squareup/picasso/Picasso$Priority;Lcom/squareup/picasso/Request$1;)V

    return-object v21
.end method

.method public centerCrop(I)Lcom/squareup/picasso/Request$Builder;
    .locals 1

    .line 355
    iget-boolean v0, p0, Lcom/squareup/picasso/Request$Builder;->centerInside:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 358
    iput-boolean v0, p0, Lcom/squareup/picasso/Request$Builder;->centerCrop:Z

    .line 359
    iput p1, p0, Lcom/squareup/picasso/Request$Builder;->centerCropGravity:I

    return-object p0

    .line 356
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Center crop can not be used after calling centerInside"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method hasImage()Z
    .locals 1

    .line 264
    iget-object v0, p0, Lcom/squareup/picasso/Request$Builder;->uri:Landroid/net/Uri;

    if-nez v0, :cond_1

    iget p0, p0, Lcom/squareup/picasso/Request$Builder;->resourceId:I

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method hasSize()Z
    .locals 1

    .line 268
    iget v0, p0, Lcom/squareup/picasso/Request$Builder;->targetWidth:I

    if-nez v0, :cond_1

    iget p0, p0, Lcom/squareup/picasso/Request$Builder;->targetHeight:I

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public resize(II)Lcom/squareup/picasso/Request$Builder;
    .locals 0

    if-ltz p1, :cond_3

    if-ltz p2, :cond_2

    if-nez p2, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 324
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "At least one dimension has to be positive number."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 326
    :cond_1
    :goto_0
    iput p1, p0, Lcom/squareup/picasso/Request$Builder;->targetWidth:I

    .line 327
    iput p2, p0, Lcom/squareup/picasso/Request$Builder;->targetHeight:I

    return-object p0

    .line 321
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Height must be positive number or 0."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 318
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Width must be positive number or 0."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public transform(Lcom/squareup/picasso/Transformation;)Lcom/squareup/picasso/Request$Builder;
    .locals 2

    if-eqz p1, :cond_2

    .line 465
    invoke-interface {p1}, Lcom/squareup/picasso/Transformation;->key()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 468
    iget-object v0, p0, Lcom/squareup/picasso/Request$Builder;->transformations:Ljava/util/List;

    if-nez v0, :cond_0

    .line 469
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/squareup/picasso/Request$Builder;->transformations:Ljava/util/List;

    .line 471
    :cond_0
    iget-object v0, p0, Lcom/squareup/picasso/Request$Builder;->transformations:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0

    .line 466
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Transformation key must not be null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 463
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Transformation must not be null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
