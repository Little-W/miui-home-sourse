.class public Lcom/miui/maml/AnimatingDrawable;
.super Lcom/miui/maml/MamlDrawable;
.source "AnimatingDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/maml/AnimatingDrawable$AnimatingDrawableState;
    }
.end annotation


# static fields
.field private static final QUIET_IMAGE_NAME:Ljava/lang/String; = "quietImage.png"

.field private static final TAG:Ljava/lang/String; = "Maml.AnimatingDrawable"

.field public static final TIME_FANCY_CACHE:I


# instance fields
.field private isLargeIcon:Z

.field private final mAnimIndex:I

.field private final mClassName:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private mFancyDrawable:Lcom/miui/maml/FancyDrawable;

.field private mLargeIcon:Lcom/miui/maml/util/LargeIconConfigFile$Icon;

.field private mLargeIconSize:Ljava/lang/String;

.field private final mLayerIndex:I

.field private final mLock:Ljava/lang/Object;

.field private final mPackageName:Ljava/lang/String;

.field private mQuietDrawable:Landroid/graphics/drawable/Drawable;

.field private final mResourceManager:Lcom/miui/maml/ResourceManager;

.field private mUseFancyWhenStatic:Z

.field private mUseQuietWhenAnim:Z

.field private final mUser:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/miui/maml/ResourceManager;Landroid/os/UserHandle;)V
    .locals 10

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 46
    invoke-direct/range {v0 .. v9}, Lcom/miui/maml/AnimatingDrawable;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/miui/maml/ResourceManager;Landroid/os/UserHandle;IIZZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/miui/maml/ResourceManager;Landroid/os/UserHandle;I)V
    .locals 10

    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move/from16 v6, p6

    .line 62
    invoke-direct/range {v0 .. v9}, Lcom/miui/maml/AnimatingDrawable;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/miui/maml/ResourceManager;Landroid/os/UserHandle;IIZZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/miui/maml/ResourceManager;Landroid/os/UserHandle;II)V
    .locals 10

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    .line 67
    invoke-direct/range {v0 .. v9}, Lcom/miui/maml/AnimatingDrawable;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/miui/maml/ResourceManager;Landroid/os/UserHandle;IIZZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/miui/maml/ResourceManager;Landroid/os/UserHandle;IIZZ)V
    .locals 2

    .line 71
    invoke-direct {p0}, Lcom/miui/maml/MamlDrawable;-><init>()V

    const/4 v0, 0x0

    .line 36
    iput-boolean v0, p0, Lcom/miui/maml/AnimatingDrawable;->mUseFancyWhenStatic:Z

    .line 37
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/miui/maml/AnimatingDrawable;->mLock:Ljava/lang/Object;

    .line 38
    iput-boolean v0, p0, Lcom/miui/maml/AnimatingDrawable;->mUseQuietWhenAnim:Z

    .line 72
    iput-object p1, p0, Lcom/miui/maml/AnimatingDrawable;->mContext:Landroid/content/Context;

    .line 73
    iput-object p4, p0, Lcom/miui/maml/AnimatingDrawable;->mResourceManager:Lcom/miui/maml/ResourceManager;

    .line 74
    iput-object p2, p0, Lcom/miui/maml/AnimatingDrawable;->mPackageName:Ljava/lang/String;

    .line 75
    iput-object p3, p0, Lcom/miui/maml/AnimatingDrawable;->mClassName:Ljava/lang/String;

    .line 76
    iput-object p5, p0, Lcom/miui/maml/AnimatingDrawable;->mUser:Landroid/os/UserHandle;

    .line 77
    iput p6, p0, Lcom/miui/maml/AnimatingDrawable;->mLayerIndex:I

    .line 78
    iput p7, p0, Lcom/miui/maml/AnimatingDrawable;->mAnimIndex:I

    .line 79
    iput-boolean p8, p0, Lcom/miui/maml/AnimatingDrawable;->mUseQuietWhenAnim:Z

    .line 80
    iput-boolean p9, p0, Lcom/miui/maml/AnimatingDrawable;->mUseFancyWhenStatic:Z

    .line 82
    invoke-direct {p0}, Lcom/miui/maml/AnimatingDrawable;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/miui/maml/ResourceManager;Landroid/os/UserHandle;IIZZZLcom/miui/maml/util/LargeIconConfigFile$Icon;Ljava/lang/String;)V
    .locals 11

    move-object v10, p0

    const/4 v7, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v8, p8

    move/from16 v9, p9

    .line 53
    invoke-direct/range {v0 .. v9}, Lcom/miui/maml/AnimatingDrawable;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/miui/maml/ResourceManager;Landroid/os/UserHandle;IIZZ)V

    move/from16 v0, p10

    .line 55
    iput-boolean v0, v10, Lcom/miui/maml/AnimatingDrawable;->isLargeIcon:Z

    move-object/from16 v0, p11

    .line 56
    iput-object v0, v10, Lcom/miui/maml/AnimatingDrawable;->mLargeIcon:Lcom/miui/maml/util/LargeIconConfigFile$Icon;

    move-object/from16 v0, p12

    .line 57
    iput-object v0, v10, Lcom/miui/maml/AnimatingDrawable;->mLargeIconSize:Ljava/lang/String;

    return-void
.end method

.method private init()V
    .locals 11

    .line 86
    new-instance v10, Lcom/miui/maml/AnimatingDrawable$AnimatingDrawableState;

    iget-object v1, p0, Lcom/miui/maml/AnimatingDrawable;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/miui/maml/AnimatingDrawable;->mPackageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/miui/maml/AnimatingDrawable;->mClassName:Ljava/lang/String;

    iget-object v4, p0, Lcom/miui/maml/AnimatingDrawable;->mResourceManager:Lcom/miui/maml/ResourceManager;

    iget-object v5, p0, Lcom/miui/maml/AnimatingDrawable;->mUser:Landroid/os/UserHandle;

    iget v6, p0, Lcom/miui/maml/AnimatingDrawable;->mLayerIndex:I

    iget v7, p0, Lcom/miui/maml/AnimatingDrawable;->mAnimIndex:I

    iget-boolean v8, p0, Lcom/miui/maml/AnimatingDrawable;->mUseQuietWhenAnim:Z

    iget-boolean v9, p0, Lcom/miui/maml/AnimatingDrawable;->mUseFancyWhenStatic:Z

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lcom/miui/maml/AnimatingDrawable$AnimatingDrawableState;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/miui/maml/ResourceManager;Landroid/os/UserHandle;IIZZ)V

    iput-object v10, p0, Lcom/miui/maml/AnimatingDrawable;->mState:Lcom/miui/maml/MamlDrawable$MamlDrawableState;

    .line 88
    iget-object v0, p0, Lcom/miui/maml/AnimatingDrawable;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 89
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 90
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 91
    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 92
    iget-object v0, p0, Lcom/miui/maml/AnimatingDrawable;->mResourceManager:Lcom/miui/maml/ResourceManager;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "den"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget v1, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v0, v2, v1}, Lcom/miui/maml/ResourceManager;->setExtraResource(Ljava/lang/String;I)V

    .line 93
    iget-object v0, p0, Lcom/miui/maml/AnimatingDrawable;->mResourceManager:Lcom/miui/maml/ResourceManager;

    iget-object v1, p0, Lcom/miui/maml/AnimatingDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "quietImage.png"

    invoke-virtual {v0, v1, v2}, Lcom/miui/maml/ResourceManager;->getDrawable(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/maml/AnimatingDrawable;->mQuietDrawable:Landroid/graphics/drawable/Drawable;

    .line 94
    iget-object v0, p0, Lcom/miui/maml/AnimatingDrawable;->mQuietDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 95
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iget-object v1, p0, Lcom/miui/maml/AnimatingDrawable;->mQuietDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/miui/maml/AnimatingDrawable;->setIntrinsicSize(II)V

    .line 96
    iget-object v0, p0, Lcom/miui/maml/AnimatingDrawable;->mQuietDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/maml/AnimatingDrawable;->mQuietDrawable:Landroid/graphics/drawable/Drawable;

    .line 97
    iget-object v0, p0, Lcom/miui/maml/AnimatingDrawable;->mQuietDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v2, p0, Lcom/miui/maml/AnimatingDrawable;->mQuietDrawable:Landroid/graphics/drawable/Drawable;

    .line 98
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    const/4 v3, 0x0

    .line 97
    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 99
    iget-object v0, p0, Lcom/miui/maml/AnimatingDrawable;->mColorFilter:Landroid/graphics/ColorFilter;

    if-eqz v0, :cond_1

    .line 100
    iget-object v0, p0, Lcom/miui/maml/AnimatingDrawable;->mQuietDrawable:Landroid/graphics/drawable/Drawable;

    iget-object p0, p0, Lcom/miui/maml/AnimatingDrawable;->mColorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_0

    .line 103
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mQuietDrwable is null! package/class="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/maml/AnimatingDrawable;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/miui/maml/AnimatingDrawable;->mClassName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Maml.AnimatingDrawable"

    invoke-static {v0, p0}, Lcom/miui/maml/util/MamlLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .line 194
    iget-object v0, p0, Lcom/miui/maml/AnimatingDrawable;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 195
    :try_start_0
    iget-object v1, p0, Lcom/miui/maml/AnimatingDrawable;->mFancyDrawable:Lcom/miui/maml/FancyDrawable;

    if-eqz v1, :cond_0

    .line 196
    iget-object v1, p0, Lcom/miui/maml/AnimatingDrawable;->mFancyDrawable:Lcom/miui/maml/FancyDrawable;

    invoke-virtual {v1}, Lcom/miui/maml/FancyDrawable;->cleanUp()V

    :cond_0
    const/4 v1, 0x0

    .line 198
    iput-object v1, p0, Lcom/miui/maml/AnimatingDrawable;->mFancyDrawable:Lcom/miui/maml/FancyDrawable;

    .line 199
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method protected drawIcon(Landroid/graphics/Canvas;)V
    .locals 5

    const-string v0, "Maml.AnimatingDrawable"

    .line 213
    iget-object v1, p0, Lcom/miui/maml/AnimatingDrawable;->mQuietDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_0

    return-void

    .line 218
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 219
    invoke-virtual {p0}, Lcom/miui/maml/AnimatingDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/miui/maml/AnimatingDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 220
    iget v2, p0, Lcom/miui/maml/AnimatingDrawable;->mWidth:I

    int-to-float v2, v2

    iget v3, p0, Lcom/miui/maml/AnimatingDrawable;->mIntrinsicWidth:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    iget v3, p0, Lcom/miui/maml/AnimatingDrawable;->mHeight:I

    int-to-float v3, v3

    iget v4, p0, Lcom/miui/maml/AnimatingDrawable;->mIntrinsicHeight:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    const/4 v4, 0x0

    invoke-virtual {p1, v2, v3, v4, v4}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 221
    iget-object p0, p0, Lcom/miui/maml/AnimatingDrawable;->mQuietDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 222
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 227
    invoke-virtual {p0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    .line 228
    invoke-virtual {p0}, Ljava/lang/OutOfMemoryError;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/miui/maml/util/MamlLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception p0

    .line 224
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 225
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/miui/maml/util/MamlLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public getAnimIndex()I
    .locals 2

    .line 122
    iget v0, p0, Lcom/miui/maml/AnimatingDrawable;->mAnimIndex:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    return v0

    .line 125
    :cond_0
    iget p0, p0, Lcom/miui/maml/AnimatingDrawable;->mLayerIndex:I

    return p0
.end method

.method public getFancyDrawable()Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 189
    invoke-virtual {p0}, Lcom/miui/maml/AnimatingDrawable;->prepareFancyDrawable()V

    .line 190
    iget-object p0, p0, Lcom/miui/maml/AnimatingDrawable;->mFancyDrawable:Lcom/miui/maml/FancyDrawable;

    return-object p0
.end method

.method public getOpacity()I
    .locals 0

    const/4 p0, -0x3

    return p0
.end method

.method public getQuietDrawable()Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 108
    iget-object p0, p0, Lcom/miui/maml/AnimatingDrawable;->mQuietDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public getStartDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 112
    iget-object v0, p0, Lcom/miui/maml/AnimatingDrawable;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 113
    :try_start_0
    invoke-virtual {p0}, Lcom/miui/maml/AnimatingDrawable;->prepareFancyDrawable()V

    .line 114
    iget-object v1, p0, Lcom/miui/maml/AnimatingDrawable;->mFancyDrawable:Lcom/miui/maml/FancyDrawable;

    if-eqz v1, :cond_0

    .line 115
    iget-object p0, p0, Lcom/miui/maml/AnimatingDrawable;->mFancyDrawable:Lcom/miui/maml/FancyDrawable;

    invoke-virtual {p0}, Lcom/miui/maml/FancyDrawable;->getStartDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    .line 117
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 118
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public isOnlyFancyWork()Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 133
    iget-boolean p0, p0, Lcom/miui/maml/AnimatingDrawable;->mUseFancyWhenStatic:Z

    return p0
.end method

.method public isOnlyQuietWork()Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 141
    iget-boolean p0, p0, Lcom/miui/maml/AnimatingDrawable;->mUseQuietWhenAnim:Z

    return p0
.end method

.method public prepareFancyDrawable()V
    .locals 12

    .line 154
    iget-boolean v0, p0, Lcom/miui/maml/AnimatingDrawable;->mUseQuietWhenAnim:Z

    if-eqz v0, :cond_0

    return-void

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/AnimatingDrawable;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 159
    :try_start_0
    iget-object v1, p0, Lcom/miui/maml/AnimatingDrawable;->mFancyDrawable:Lcom/miui/maml/FancyDrawable;

    if-eqz v1, :cond_1

    monitor-exit v0

    return-void

    .line 163
    :cond_1
    iget-boolean v1, p0, Lcom/miui/maml/AnimatingDrawable;->isLargeIcon:Z

    if-eqz v1, :cond_3

    .line 164
    iget v1, p0, Lcom/miui/maml/AnimatingDrawable;->mLayerIndex:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 165
    iget-object v3, p0, Lcom/miui/maml/AnimatingDrawable;->mLargeIcon:Lcom/miui/maml/util/LargeIconConfigFile$Icon;

    iget-object v4, p0, Lcom/miui/maml/AnimatingDrawable;->mLargeIconSize:Ljava/lang/String;

    iget-object v5, p0, Lcom/miui/maml/AnimatingDrawable;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/miui/maml/AnimatingDrawable;->mPackageName:Ljava/lang/String;

    iget-object v7, p0, Lcom/miui/maml/AnimatingDrawable;->mClassName:Ljava/lang/String;

    const-wide/16 v8, 0x0

    iget-object v10, p0, Lcom/miui/maml/AnimatingDrawable;->mUser:Landroid/os/UserHandle;

    iget v11, p0, Lcom/miui/maml/AnimatingDrawable;->mLayerIndex:I

    invoke-static/range {v3 .. v11}, Lcom/miui/maml/util/LargeIconsHelper;->getFancyDrawableFromLayerAnimating(Lcom/miui/maml/util/LargeIconConfigFile$Icon;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLandroid/os/UserHandle;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0

    .line 168
    :cond_2
    iget-object v1, p0, Lcom/miui/maml/AnimatingDrawable;->mLargeIcon:Lcom/miui/maml/util/LargeIconConfigFile$Icon;

    iget-object v2, p0, Lcom/miui/maml/AnimatingDrawable;->mLargeIconSize:Ljava/lang/String;

    iget-object v3, p0, Lcom/miui/maml/AnimatingDrawable;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/miui/maml/AnimatingDrawable;->mPackageName:Ljava/lang/String;

    iget-object v5, p0, Lcom/miui/maml/AnimatingDrawable;->mClassName:Ljava/lang/String;

    const-wide/16 v6, 0x0

    iget-object v8, p0, Lcom/miui/maml/AnimatingDrawable;->mUser:Landroid/os/UserHandle;

    invoke-static/range {v1 .. v8}, Lcom/miui/maml/util/LargeIconsHelper;->getFancyDrawableFromAnimating(Lcom/miui/maml/util/LargeIconConfigFile$Icon;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLandroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0

    .line 173
    :cond_3
    iget-object v1, p0, Lcom/miui/maml/AnimatingDrawable;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/miui/maml/AnimatingDrawable;->mPackageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/miui/maml/AnimatingDrawable;->mClassName:Ljava/lang/String;

    const-wide/16 v4, 0x0

    iget-object v6, p0, Lcom/miui/maml/AnimatingDrawable;->mUser:Landroid/os/UserHandle;

    iget v7, p0, Lcom/miui/maml/AnimatingDrawable;->mLayerIndex:I

    invoke-static/range {v1 .. v7}, Lcom/miui/maml/util/AppIconsHelper;->getFancyIconDrawable(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLandroid/os/UserHandle;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 177
    :goto_0
    instance-of v2, v1, Lcom/miui/maml/FancyDrawable;

    if-eqz v2, :cond_6

    .line 179
    iget-object v2, p0, Lcom/miui/maml/AnimatingDrawable;->mQuietDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_5

    iget v2, p0, Lcom/miui/maml/AnimatingDrawable;->mIntrinsicHeight:I

    if-lez v2, :cond_4

    iget v2, p0, Lcom/miui/maml/AnimatingDrawable;->mIntrinsicWidth:I

    if-gtz v2, :cond_5

    .line 180
    :cond_4
    iget-object v2, p0, Lcom/miui/maml/AnimatingDrawable;->mFancyDrawable:Lcom/miui/maml/FancyDrawable;

    iget v2, v2, Lcom/miui/maml/FancyDrawable;->mIntrinsicWidth:I

    iget-object v3, p0, Lcom/miui/maml/AnimatingDrawable;->mFancyDrawable:Lcom/miui/maml/FancyDrawable;

    iget v3, v3, Lcom/miui/maml/FancyDrawable;->mIntrinsicHeight:I

    invoke-virtual {p0, v2, v3}, Lcom/miui/maml/AnimatingDrawable;->setIntrinsicSize(II)V

    .line 182
    :cond_5
    check-cast v1, Lcom/miui/maml/FancyDrawable;

    iput-object v1, p0, Lcom/miui/maml/AnimatingDrawable;->mFancyDrawable:Lcom/miui/maml/FancyDrawable;

    .line 183
    iget-object v1, p0, Lcom/miui/maml/AnimatingDrawable;->mFancyDrawable:Lcom/miui/maml/FancyDrawable;

    iget-object p0, p0, Lcom/miui/maml/AnimatingDrawable;->mColorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {v1, p0}, Lcom/miui/maml/FancyDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 185
    :cond_6
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public sendCommand(Ljava/lang/String;)V
    .locals 0

    .line 203
    iget-object p0, p0, Lcom/miui/maml/AnimatingDrawable;->mFancyDrawable:Lcom/miui/maml/FancyDrawable;

    if-eqz p0, :cond_0

    .line 204
    invoke-virtual {p0}, Lcom/miui/maml/FancyDrawable;->getRoot()Lcom/miui/maml/ScreenElementRoot;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/miui/maml/ScreenElementRoot;->onCommand(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setAlpha(I)V
    .locals 0

    .line 239
    iget-object p0, p0, Lcom/miui/maml/AnimatingDrawable;->mQuietDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_0

    .line 240
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_0
    return-void
.end method

.method public setBounds(IIII)V
    .locals 0

    .line 209
    invoke-super {p0, p1, p2, p3, p4}, Lcom/miui/maml/MamlDrawable;->setBounds(IIII)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 2

    .line 246
    invoke-super {p0, p1}, Lcom/miui/maml/MamlDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    const-string v0, "Maml.AnimatingDrawable"

    const-string v1, "setColorFilter"

    .line 247
    invoke-static {v0, v1}, Lcom/miui/maml/util/MamlLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    iget-object v0, p0, Lcom/miui/maml/AnimatingDrawable;->mQuietDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 249
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 251
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/AnimatingDrawable;->mBadgeDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 252
    iget-object v0, p0, Lcom/miui/maml/AnimatingDrawable;->mBadgeDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 254
    :cond_1
    iget-object p0, p0, Lcom/miui/maml/AnimatingDrawable;->mFancyDrawable:Lcom/miui/maml/FancyDrawable;

    if-eqz p0, :cond_2

    .line 255
    invoke-virtual {p0, p1}, Lcom/miui/maml/FancyDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_2
    return-void
.end method

.method public useFancyWhenStatic()Z
    .locals 0

    .line 145
    iget-boolean p0, p0, Lcom/miui/maml/AnimatingDrawable;->mUseFancyWhenStatic:Z

    return p0
.end method

.method public useQuietWhenAnim()Z
    .locals 0

    .line 149
    iget-boolean p0, p0, Lcom/miui/maml/AnimatingDrawable;->mUseQuietWhenAnim:Z

    return p0
.end method
