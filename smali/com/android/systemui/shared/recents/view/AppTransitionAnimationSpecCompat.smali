.class public Lcom/android/systemui/shared/recents/view/AppTransitionAnimationSpecCompat;
.super Ljava/lang/Object;


# instance fields
.field private mBuffer:Landroid/graphics/Bitmap;

.field private mRect:Landroid/graphics/Rect;

.field private mTaskId:I


# direct methods
.method public constructor <init>(ILandroid/graphics/Bitmap;Landroid/graphics/Rect;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/systemui/shared/recents/view/AppTransitionAnimationSpecCompat;->mTaskId:I

    iput-object p2, p0, Lcom/android/systemui/shared/recents/view/AppTransitionAnimationSpecCompat;->mBuffer:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/android/systemui/shared/recents/view/AppTransitionAnimationSpecCompat;->mRect:Landroid/graphics/Rect;

    return-void
.end method

.method private toAppTransitionAnimationSpecForQ()Landroid/view/AppTransitionAnimationSpec;
    .locals 3

    new-instance v0, Landroid/view/AppTransitionAnimationSpec;

    iget v1, p0, Lcom/android/systemui/shared/recents/view/AppTransitionAnimationSpecCompat;->mTaskId:I

    iget-object v2, p0, Lcom/android/systemui/shared/recents/view/AppTransitionAnimationSpecCompat;->mBuffer:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->createGraphicBufferHandle()Landroid/graphics/GraphicBuffer;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iget-object p0, p0, Lcom/android/systemui/shared/recents/view/AppTransitionAnimationSpecCompat;->mRect:Landroid/graphics/Rect;

    invoke-direct {v0, v1, v2, p0}, Landroid/view/AppTransitionAnimationSpec;-><init>(ILandroid/graphics/GraphicBuffer;Landroid/graphics/Rect;)V

    return-object v0
.end method

.method private toAppTransitionAnimationSpecForS()Landroid/view/AppTransitionAnimationSpec;
    .locals 8

    const-class v0, Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/systemui/shared/recents/view/AppTransitionAnimationSpecCompat;->mBuffer:Landroid/graphics/Bitmap;

    const-class v3, Landroid/hardware/HardwareBuffer;

    const/4 v6, 0x0

    new-array v4, v6, [Ljava/lang/Class;

    new-array v5, v6, [Ljava/lang/Object;

    const-string v2, "getHardwareBuffer"

    invoke-static/range {v0 .. v5}, Lcom/android/systemui/shared/recents/utilities/ReflectUtils;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :try_start_0
    const-class v1, Landroid/view/AppTransitionAnimationSpec;

    const/4 v2, 0x3

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v6

    const-class v4, Landroid/hardware/HardwareBuffer;

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const-class v4, Landroid/graphics/Rect;

    const/4 v7, 0x2

    aput-object v4, v3, v7

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/android/systemui/shared/recents/view/AppTransitionAnimationSpecCompat;->mTaskId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    aput-object v0, v2, v5

    iget-object v0, p0, Lcom/android/systemui/shared/recents/view/AppTransitionAnimationSpecCompat;->mRect:Landroid/graphics/Rect;

    aput-object v0, v2, v7

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/AppTransitionAnimationSpec;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/ReflectiveOperationException;->printStackTrace()V

    new-instance v0, Landroid/view/AppTransitionAnimationSpec;

    iget v1, p0, Lcom/android/systemui/shared/recents/view/AppTransitionAnimationSpecCompat;->mTaskId:I

    const/4 v2, 0x0

    iget-object p0, p0, Lcom/android/systemui/shared/recents/view/AppTransitionAnimationSpecCompat;->mRect:Landroid/graphics/Rect;

    invoke-direct {v0, v1, v2, p0}, Landroid/view/AppTransitionAnimationSpec;-><init>(ILandroid/graphics/GraphicBuffer;Landroid/graphics/Rect;)V

    return-object v0
.end method


# virtual methods
.method public toAppTransitionAnimationSpec()Landroid/view/AppTransitionAnimationSpec;
    .locals 1

    invoke-static {}, Lcom/android/systemui/shared/recents/utilities/Utilities;->atLeastAndroidS()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/shared/recents/view/AppTransitionAnimationSpecCompat;->toAppTransitionAnimationSpecForS()Landroid/view/AppTransitionAnimationSpec;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/shared/recents/view/AppTransitionAnimationSpecCompat;->toAppTransitionAnimationSpecForQ()Landroid/view/AppTransitionAnimationSpec;

    move-result-object p0

    return-object p0
.end method
