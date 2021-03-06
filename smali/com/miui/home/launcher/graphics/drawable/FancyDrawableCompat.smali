.class public Lcom/miui/home/launcher/graphics/drawable/FancyDrawableCompat;
.super Ljava/lang/Object;
.source "FancyDrawableCompat.java"


# static fields
.field private static final CLEAR:Landroid/graphics/PorterDuffXfermode;

.field private static final CLS:Ljava/lang/Class;

.field private static final CLS_CONTEXT:Ljava/lang/Class;

.field private static final CLS_ELEMENT:Ljava/lang/Class;

.field private static final DST_IN:Landroid/graphics/PorterDuffXfermode;

.field private static final SIGNATURE_GET_CONTEXT:Ljava/lang/String;

.field private static final SIGNATURE_GET_ROOT:Ljava/lang/String;

.field private static final sPaint:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "miui.maml.FancyDrawable"

    .line 31
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    const-string v2, "miui.maml.ScreenElementRoot"

    .line 32
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    const-string v3, "miui.maml.ScreenContext"

    .line 33
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    goto :goto_0

    :catch_1
    move-exception v3

    move-object v2, v0

    goto :goto_0

    :catch_2
    move-exception v3

    move-object v1, v0

    move-object v2, v1

    .line 35
    :goto_0
    invoke-virtual {v3}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .line 37
    :goto_1
    sput-object v1, Lcom/miui/home/launcher/graphics/drawable/FancyDrawableCompat;->CLS:Ljava/lang/Class;

    .line 38
    sput-object v2, Lcom/miui/home/launcher/graphics/drawable/FancyDrawableCompat;->CLS_ELEMENT:Ljava/lang/Class;

    .line 39
    sput-object v0, Lcom/miui/home/launcher/graphics/drawable/FancyDrawableCompat;->CLS_CONTEXT:Ljava/lang/Class;

    .line 40
    sget-object v0, Lcom/miui/home/launcher/graphics/drawable/FancyDrawableCompat;->CLS_ELEMENT:Ljava/lang/Class;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    invoke-static {v0, v2}, Lcom/market/sdk/utils/ReflectUtils;->getMethodSignature(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/home/launcher/graphics/drawable/FancyDrawableCompat;->SIGNATURE_GET_ROOT:Ljava/lang/String;

    .line 41
    sget-object v0, Lcom/miui/home/launcher/graphics/drawable/FancyDrawableCompat;->CLS_CONTEXT:Ljava/lang/Class;

    new-array v1, v1, [Ljava/lang/Class;

    invoke-static {v0, v1}, Lcom/market/sdk/utils/ReflectUtils;->getMethodSignature(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/home/launcher/graphics/drawable/FancyDrawableCompat;->SIGNATURE_GET_CONTEXT:Ljava/lang/String;

    .line 60
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Lcom/miui/home/launcher/graphics/drawable/FancyDrawableCompat;->sPaint:Landroid/graphics/Paint;

    .line 61
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    sput-object v0, Lcom/miui/home/launcher/graphics/drawable/FancyDrawableCompat;->CLEAR:Landroid/graphics/PorterDuffXfermode;

    .line 62
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    sput-object v0, Lcom/miui/home/launcher/graphics/drawable/FancyDrawableCompat;->DST_IN:Landroid/graphics/PorterDuffXfermode;

    return-void
.end method

.method static draw(Landroid/graphics/drawable/Drawable;Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Bitmap;Landroid/graphics/Path;)V
    .locals 7

    .line 66
    iget v0, p2, Landroid/graphics/Rect;->left:I

    add-int/lit8 v0, v0, 0x1

    int-to-float v2, v0

    iget v0, p2, Landroid/graphics/Rect;->top:I

    add-int/lit8 v0, v0, 0x1

    int-to-float v3, v0

    iget v0, p2, Landroid/graphics/Rect;->right:I

    add-int/lit8 v0, v0, -0x1

    int-to-float v4, v0

    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, -0x1

    int-to-float v5, v0

    sget-object v6, Lcom/miui/home/launcher/graphics/drawable/FancyDrawableCompat;->sPaint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;)I

    move-result v0

    .line 67
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    if-eqz p4, :cond_0

    .line 69
    sget-object p0, Lcom/miui/home/launcher/graphics/drawable/FancyDrawableCompat;->sPaint:Landroid/graphics/Paint;

    sget-object v1, Lcom/miui/home/launcher/graphics/drawable/FancyDrawableCompat;->CLEAR:Landroid/graphics/PorterDuffXfermode;

    invoke-virtual {p0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 70
    sget-object p0, Lcom/miui/home/launcher/graphics/drawable/FancyDrawableCompat;->sPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p4, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 72
    :cond_0
    sget-object p0, Lcom/miui/home/launcher/graphics/drawable/FancyDrawableCompat;->sPaint:Landroid/graphics/Paint;

    sget-object p4, Lcom/miui/home/launcher/graphics/drawable/FancyDrawableCompat;->DST_IN:Landroid/graphics/PorterDuffXfermode;

    invoke-virtual {p0, p4}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 73
    iget p0, p2, Landroid/graphics/Rect;->left:I

    int-to-float p0, p0

    iget p2, p2, Landroid/graphics/Rect;->top:I

    int-to-float p2, p2

    sget-object p4, Lcom/miui/home/launcher/graphics/drawable/FancyDrawableCompat;->sPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p3, p0, p2, p4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 74
    sget-object p0, Lcom/miui/home/launcher/graphics/drawable/FancyDrawableCompat;->sPaint:Landroid/graphics/Paint;

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 75
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method public static isInstance(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .line 45
    sget-object v0, Lcom/miui/home/launcher/graphics/drawable/FancyDrawableCompat;->CLS:Ljava/lang/Class;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 48
    :cond_0
    invoke-virtual {v0, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static updateRatio(Ljava/lang/Object;F)V
    .locals 5

    .line 52
    sget-object v0, Lcom/miui/home/launcher/graphics/drawable/FancyDrawableCompat;->CLS:Ljava/lang/Class;

    if-eqz v0, :cond_1

    sget-object v1, Lcom/miui/home/launcher/graphics/drawable/FancyDrawableCompat;->CLS_ELEMENT:Ljava/lang/Class;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "getRoot"

    .line 55
    sget-object v2, Lcom/miui/home/launcher/graphics/drawable/FancyDrawableCompat;->SIGNATURE_GET_ROOT:Ljava/lang/String;

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v0, p0, v1, v2, v4}, Lcom/market/sdk/utils/ReflectUtils;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 56
    sget-object v0, Lcom/miui/home/launcher/graphics/drawable/FancyDrawableCompat;->CLS_ELEMENT:Ljava/lang/Class;

    const-string v1, "getContext"

    sget-object v2, Lcom/miui/home/launcher/graphics/drawable/FancyDrawableCompat;->SIGNATURE_GET_CONTEXT:Ljava/lang/String;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, p0, v1, v2, v3}, Lcom/market/sdk/utils/ReflectUtils;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "ratio"

    float-to-double v2, p1

    .line 57
    invoke-static {p0, v0, v1, v2, v3}, Lcom/miui/launcher/utils/MamlUtils;->updateVariable(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;D)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method
