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
.field private mClassName:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mFancyDrawable:Lcom/miui/maml/FancyDrawable;

.field private final mLock:Ljava/lang/Object;

.field private mPackageName:Ljava/lang/String;

.field private mQuietDrawable:Landroid/graphics/drawable/Drawable;

.field private mResourceManager:Lcom/miui/maml/ResourceManager;

.field private mUser:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/miui/maml/ResourceManager;Landroid/os/UserHandle;)V
    .locals 1

    .line 40
    invoke-direct {p0}, Lcom/miui/maml/MamlDrawable;-><init>()V

    .line 37
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/miui/maml/AnimatingDrawable;->mLock:Ljava/lang/Object;

    .line 41
    iput-object p1, p0, Lcom/miui/maml/AnimatingDrawable;->mContext:Landroid/content/Context;

    .line 42
    iput-object p4, p0, Lcom/miui/maml/AnimatingDrawable;->mResourceManager:Lcom/miui/maml/ResourceManager;

    .line 43
    iput-object p2, p0, Lcom/miui/maml/AnimatingDrawable;->mPackageName:Ljava/lang/String;

    .line 44
    iput-object p3, p0, Lcom/miui/maml/AnimatingDrawable;->mClassName:Ljava/lang/String;

    .line 45
    iput-object p5, p0, Lcom/miui/maml/AnimatingDrawable;->mUser:Landroid/os/UserHandle;

    .line 46
    invoke-direct {p0}, Lcom/miui/maml/AnimatingDrawable;->init()V

    return-void
.end method

.method private init()V
    .locals 7

    .line 50
    new-instance v6, Lcom/miui/maml/AnimatingDrawable$AnimatingDrawableState;

    iget-object v1, p0, Lcom/miui/maml/AnimatingDrawable;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/miui/maml/AnimatingDrawable;->mPackageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/miui/maml/AnimatingDrawable;->mClassName:Ljava/lang/String;

    iget-object v4, p0, Lcom/miui/maml/AnimatingDrawable;->mResourceManager:Lcom/miui/maml/ResourceManager;

    iget-object v5, p0, Lcom/miui/maml/AnimatingDrawable;->mUser:Landroid/os/UserHandle;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/miui/maml/AnimatingDrawable$AnimatingDrawableState;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/miui/maml/ResourceManager;Landroid/os/UserHandle;)V

    iput-object v6, p0, Lcom/miui/maml/AnimatingDrawable;->mState:Lcom/miui/maml/MamlDrawable$MamlDrawableState;

    .line 51
    iget-object v0, p0, Lcom/miui/maml/AnimatingDrawable;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 52
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 53
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 54
    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 55
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

    .line 56
    iget-object v0, p0, Lcom/miui/maml/AnimatingDrawable;->mResourceManager:Lcom/miui/maml/ResourceManager;

    iget-object v1, p0, Lcom/miui/maml/AnimatingDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "quietImage.png"

    invoke-virtual {v0, v1, v2}, Lcom/miui/maml/ResourceManager;->getDrawable(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/maml/AnimatingDrawable;->mQuietDrawable:Landroid/graphics/drawable/Drawable;

    .line 57
    iget-object v0, p0, Lcom/miui/maml/AnimatingDrawable;->mQuietDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 58
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iget-object v1, p0, Lcom/miui/maml/AnimatingDrawable;->mQuietDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/miui/maml/AnimatingDrawable;->setIntrinsicSize(II)V

    .line 59
    iget-object v0, p0, Lcom/miui/maml/AnimatingDrawable;->mQuietDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/maml/AnimatingDrawable;->mQuietDrawable:Landroid/graphics/drawable/Drawable;

    .line 60
    iget-object v0, p0, Lcom/miui/maml/AnimatingDrawable;->mQuietDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v2, p0, Lcom/miui/maml/AnimatingDrawable;->mQuietDrawable:Landroid/graphics/drawable/Drawable;

    .line 61
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    const/4 v3, 0x0

    .line 60
    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 62
    iget-object v0, p0, Lcom/miui/maml/AnimatingDrawable;->mColorFilter:Landroid/graphics/ColorFilter;

    if-eqz v0, :cond_1

    .line 63
    iget-object v0, p0, Lcom/miui/maml/AnimatingDrawable;->mQuietDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/miui/maml/AnimatingDrawable;->mColorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_0

    :cond_0
    const-string v0, "Maml.AnimatingDrawable"

    .line 66
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mQuietDrwable is null! package/class="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/maml/AnimatingDrawable;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/maml/AnimatingDrawable;->mClassName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .line 96
    iget-object v0, p0, Lcom/miui/maml/AnimatingDrawable;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 97
    :try_start_0
    iget-object v1, p0, Lcom/miui/maml/AnimatingDrawable;->mFancyDrawable:Lcom/miui/maml/FancyDrawable;

    if-eqz v1, :cond_0

    .line 98
    iget-object v1, p0, Lcom/miui/maml/AnimatingDrawable;->mFancyDrawable:Lcom/miui/maml/FancyDrawable;

    invoke-virtual {v1}, Lcom/miui/maml/FancyDrawable;->cleanUp()V

    :cond_0
    const/4 v1, 0x0

    .line 100
    iput-object v1, p0, Lcom/miui/maml/AnimatingDrawable;->mFancyDrawable:Lcom/miui/maml/FancyDrawable;

    .line 101
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected drawIcon(Landroid/graphics/Canvas;)V
    .locals 4

    .line 116
    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 117
    invoke-virtual {p0}, Lcom/miui/maml/AnimatingDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/miui/maml/AnimatingDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 118
    iget v1, p0, Lcom/miui/maml/AnimatingDrawable;->mWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/miui/maml/AnimatingDrawable;->mIntrinsicWidth:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget v2, p0, Lcom/miui/maml/AnimatingDrawable;->mHeight:I

    int-to-float v2, v2

    iget v3, p0, Lcom/miui/maml/AnimatingDrawable;->mIntrinsicHeight:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v2, v3, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 119
    iget-object v1, p0, Lcom/miui/maml/AnimatingDrawable;->mQuietDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 120
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 125
    invoke-virtual {p1}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    const-string v0, "Maml.AnimatingDrawable"

    .line 126
    invoke-virtual {p1}, Ljava/lang/OutOfMemoryError;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception p1

    .line 122
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, "Maml.AnimatingDrawable"

    .line 123
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public getFancyDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/miui/maml/AnimatingDrawable;->mFancyDrawable:Lcom/miui/maml/FancyDrawable;

    return-object v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public getStartDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 71
    iget-object v0, p0, Lcom/miui/maml/AnimatingDrawable;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 72
    :try_start_0
    invoke-virtual {p0}, Lcom/miui/maml/AnimatingDrawable;->prepareFancyDrawable()V

    .line 73
    iget-object v1, p0, Lcom/miui/maml/AnimatingDrawable;->mFancyDrawable:Lcom/miui/maml/FancyDrawable;

    if-eqz v1, :cond_0

    .line 74
    iget-object v1, p0, Lcom/miui/maml/AnimatingDrawable;->mFancyDrawable:Lcom/miui/maml/FancyDrawable;

    invoke-virtual {v1}, Lcom/miui/maml/FancyDrawable;->getStartDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :cond_0
    const/4 v1, 0x0

    .line 76
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 77
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public prepareFancyDrawable()V
    .locals 8

    .line 81
    iget-object v0, p0, Lcom/miui/maml/AnimatingDrawable;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 82
    :try_start_0
    iget-object v1, p0, Lcom/miui/maml/AnimatingDrawable;->mFancyDrawable:Lcom/miui/maml/FancyDrawable;

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    .line 83
    :cond_0
    iget-object v2, p0, Lcom/miui/maml/AnimatingDrawable;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/miui/maml/AnimatingDrawable;->mPackageName:Ljava/lang/String;

    iget-object v4, p0, Lcom/miui/maml/AnimatingDrawable;->mClassName:Ljava/lang/String;

    const-wide/16 v5, 0x0

    iget-object v7, p0, Lcom/miui/maml/AnimatingDrawable;->mUser:Landroid/os/UserHandle;

    invoke-static/range {v2 .. v7}, Lcom/miui/maml/util/AppIconsHelper;->getFancyIconDrawable(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLandroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 84
    instance-of v2, v1, Lcom/miui/maml/FancyDrawable;

    if-eqz v2, :cond_1

    .line 85
    check-cast v1, Lcom/miui/maml/FancyDrawable;

    iput-object v1, p0, Lcom/miui/maml/AnimatingDrawable;->mFancyDrawable:Lcom/miui/maml/FancyDrawable;

    .line 86
    iget-object v1, p0, Lcom/miui/maml/AnimatingDrawable;->mFancyDrawable:Lcom/miui/maml/FancyDrawable;

    iget-object v2, p0, Lcom/miui/maml/AnimatingDrawable;->mColorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {v1, v2}, Lcom/miui/maml/FancyDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 88
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public sendCommand(Ljava/lang/String;)V
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/miui/maml/AnimatingDrawable;->mFancyDrawable:Lcom/miui/maml/FancyDrawable;

    if-eqz v0, :cond_0

    .line 106
    invoke-virtual {v0}, Lcom/miui/maml/FancyDrawable;->getRoot()Lcom/miui/maml/ScreenElementRoot;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/maml/ScreenElementRoot;->onCommand(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/miui/maml/AnimatingDrawable;->mQuietDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 138
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_0
    return-void
.end method

.method public setBounds(IIII)V
    .locals 0

    .line 111
    invoke-super {p0, p1, p2, p3, p4}, Lcom/miui/maml/MamlDrawable;->setBounds(IIII)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 2

    .line 144
    invoke-super {p0, p1}, Lcom/miui/maml/MamlDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    const-string v0, "Maml.AnimatingDrawable"

    const-string v1, "setColorFilter"

    .line 145
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    iget-object v0, p0, Lcom/miui/maml/AnimatingDrawable;->mQuietDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 147
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/AnimatingDrawable;->mBadgeDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 150
    iget-object v0, p0, Lcom/miui/maml/AnimatingDrawable;->mBadgeDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 152
    :cond_1
    iget-object v0, p0, Lcom/miui/maml/AnimatingDrawable;->mFancyDrawable:Lcom/miui/maml/FancyDrawable;

    if-eqz v0, :cond_2

    .line 153
    invoke-virtual {v0, p1}, Lcom/miui/maml/FancyDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_2
    return-void
.end method
