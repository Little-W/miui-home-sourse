.class public Lmiuix/graphics/BitmapFactory;
.super Landroid/graphics/BitmapFactory;
.source "BitmapFactory.java"


# static fields
.field private static final APPELLATION_SUFFIX:[Ljava/lang/String;

.field private static final ASIALANGPATTERN:Ljava/util/regex/Pattern;

.field private static PNG_HEAD_FORMAT:[B

.field private static final sCanvasCache:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Landroid/graphics/Canvas;",
            ">;"
        }
    .end annotation
.end field

.field static sLockForRsContext:Ljava/lang/Object;

.field static sRsContext:Landroid/renderscript/RenderScript;

.field private static final sSrcInPaint:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 41

    .line 42
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lmiuix/graphics/BitmapFactory;->sLockForRsContext:Ljava/lang/Object;

    const/16 v0, 0x8

    .line 482
    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lmiuix/graphics/BitmapFactory;->PNG_HEAD_FORMAT:[B

    .line 741
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lmiuix/graphics/BitmapFactory;->sCanvasCache:Ljava/lang/ThreadLocal;

    .line 742
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Lmiuix/graphics/BitmapFactory;->sSrcInPaint:Landroid/graphics/Paint;

    .line 744
    sget-object v0, Lmiuix/graphics/BitmapFactory;->sSrcInPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 745
    sget-object v0, Lmiuix/graphics/BitmapFactory;->sSrcInPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    const-string v0, "[㄀-ㄭㆠ-ㆺ一-鿌㐀-䶵\uf900-\ufad9\u2f00-\u2fd5\u2e80-\u2ef3㇀-㇣\u1100-\u11ffꥠ-ꥼힰ-ퟻㄱ-ㆎ가-힣぀-ゟ゠-ヿㇰ-ㇿ㆐-㆟ꀀ-ꒌ꒐-꓆]"

    .line 1051
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lmiuix/graphics/BitmapFactory;->ASIALANGPATTERN:Ljava/util/regex/Pattern;

    const-string v1, "老师"

    const-string v2, "先生"

    const-string v3, "老板"

    const-string v4, "仔"

    const-string v5, "手机"

    const-string v6, "叔"

    const-string v7, "阿姨"

    const-string v8, "宅"

    const-string v9, "伯"

    const-string v10, "伯母"

    const-string v11, "伯父"

    const-string v12, "哥"

    const-string v13, "姐"

    const-string v14, "弟"

    const-string v15, "妹"

    const-string v16, "舅"

    const-string v17, "姑"

    const-string v18, "父"

    const-string v19, "主任"

    const-string v20, "经理"

    const-string v21, "工作"

    const-string v22, "同事"

    const-string v23, "律师"

    const-string v24, "司机"

    const-string v25, "师傅"

    const-string v26, "师父"

    const-string v27, "爷"

    const-string v28, "奶"

    const-string v29, "中介"

    const-string v30, "董"

    const-string v31, "总"

    const-string v32, "太太"

    const-string v33, "保姆"

    const-string v34, "某"

    const-string v35, "秘书"

    const-string v36, "处长"

    const-string v37, "局长"

    const-string v38, "班长"

    const-string v39, "兄"

    const-string v40, "助理"

    .line 1073
    filled-new-array/range {v1 .. v40}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiuix/graphics/BitmapFactory;->APPELLATION_SUFFIX:[Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 1
        -0x77t
        0x50t
        0x4et
        0x47t
        0xdt
        0xat
        0x1at
        0xat
    .end array-data
.end method

.method private static copyToEmpty(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 2

    .line 547
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 548
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 549
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    .line 551
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p0

    invoke-static {v1, p0, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static fastBlur(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 2

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    if-eqz p2, :cond_1

    .line 580
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-eq v0, v1, :cond_2

    .line 581
    :cond_1
    invoke-static {p1}, Lmiuix/graphics/BitmapFactory;->copyToEmpty(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 583
    :cond_2
    invoke-static {p0, p1, p2, p3}, Lmiuix/graphics/BitmapFactory;->fastblur_v17(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    return-object p2
.end method

.method private static fastblur_v17(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 9

    const/4 v0, 0x1

    move v1, v0

    :goto_0
    const/16 v2, 0x19

    if-le p3, v2, :cond_0

    mul-int/lit8 v1, v1, 0x2

    .line 593
    div-int/lit8 p3, p3, 0x2

    goto :goto_0

    .line 596
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 597
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-ne v1, v0, :cond_1

    move-object v2, p1

    goto :goto_1

    .line 601
    :cond_1
    div-int/2addr v2, v1

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    div-int/2addr v3, v1

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {p1, v2, v3}, Lmiuix/graphics/BitmapFactory;->scaleBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 605
    :goto_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    if-nez v3, :cond_2

    .line 606
    new-instance v3, Lmiuix/graphics/BitmapFactory$1;

    invoke-direct {v3, p0}, Lmiuix/graphics/BitmapFactory$1;-><init>(Landroid/content/Context;)V

    move-object p0, v3

    .line 615
    :cond_2
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    const-string v4, "android.graphics.Bitmap$Config"

    invoke-virtual {v3, v4}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 616
    invoke-virtual {v3}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v3

    .line 617
    array-length v4, v3

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v4, :cond_4

    aget-object v6, v3, v5

    .line 618
    check-cast v6, Ljava/lang/Enum;

    .line 619
    invoke-virtual {v6}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v7

    const-string v8, "RGBA_F16"

    .line 620
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v7

    if-ne v7, v6, :cond_3

    .line 621
    invoke-static {v2}, Lmiuix/graphics/BitmapFactory;->transferF16ToARGB(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 628
    :catch_0
    :cond_4
    :goto_3
    sget-object v3, Lmiuix/graphics/BitmapFactory;->sLockForRsContext:Ljava/lang/Object;

    monitor-enter v3

    .line 629
    :try_start_1
    sget-object v4, Lmiuix/graphics/BitmapFactory;->sRsContext:Landroid/renderscript/RenderScript;

    if-nez v4, :cond_5

    .line 630
    invoke-static {p0}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/renderscript/RenderScript;

    move-result-object p0

    sput-object p0, Lmiuix/graphics/BitmapFactory;->sRsContext:Landroid/renderscript/RenderScript;

    :cond_5
    if-ne v1, v0, :cond_6

    move-object p0, p2

    goto :goto_4

    :cond_6
    move-object p0, v2

    .line 641
    :goto_4
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v4

    if-eq v1, v4, :cond_7

    .line 642
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v2, v1, v0}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 645
    :cond_7
    sget-object v0, Lmiuix/graphics/BitmapFactory;->sRsContext:Landroid/renderscript/RenderScript;

    invoke-static {v0, v2}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;

    move-result-object v0

    .line 646
    sget-object v1, Lmiuix/graphics/BitmapFactory;->sRsContext:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;)Landroid/renderscript/Allocation;

    move-result-object v1

    .line 647
    sget-object v4, Lmiuix/graphics/BitmapFactory;->sRsContext:Landroid/renderscript/RenderScript;

    sget-object v5, Lmiuix/graphics/BitmapFactory;->sRsContext:Landroid/renderscript/RenderScript;

    invoke-static {v5}, Landroid/renderscript/Element;->U8_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/renderscript/ScriptIntrinsicBlur;->create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicBlur;

    move-result-object v4

    int-to-float p3, p3

    .line 648
    invoke-virtual {v4, p3}, Landroid/renderscript/ScriptIntrinsicBlur;->setRadius(F)V

    .line 649
    invoke-virtual {v4, v0}, Landroid/renderscript/ScriptIntrinsicBlur;->setInput(Landroid/renderscript/Allocation;)V

    .line 650
    invoke-virtual {v4, v1}, Landroid/renderscript/ScriptIntrinsicBlur;->forEach(Landroid/renderscript/Allocation;)V

    .line 652
    invoke-virtual {v1, p0}, Landroid/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    if-eq p0, p2, :cond_8

    .line 655
    invoke-static {p0, p2}, Lmiuix/graphics/BitmapFactory;->scaleBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    :cond_8
    if-eq v2, p1, :cond_9

    .line 658
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    :cond_9
    if-eq p0, p2, :cond_a

    .line 661
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 664
    :cond_a
    invoke-virtual {v0}, Landroid/renderscript/Allocation;->destroy()V

    .line 665
    invoke-virtual {v1}, Landroid/renderscript/Allocation;->destroy()V

    .line 666
    invoke-virtual {v4}, Landroid/renderscript/ScriptIntrinsicBlur;->destroy()V

    .line 667
    monitor-exit v3

    return-object p2

    :catchall_0
    move-exception p0

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static scaleBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 320
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-ne v0, p1, :cond_1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-ne v0, p2, :cond_1

    goto :goto_0

    .line 323
    :cond_1
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 324
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 325
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    .line 327
    :cond_2
    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 329
    invoke-static {p0, p1}, Lmiuix/graphics/BitmapFactory;->scaleBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-object p0, p1

    :goto_0
    return-object p0
.end method

.method public static scaleBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 7

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_1

    .line 347
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 350
    :cond_1
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v1, 0x0

    .line 351
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 353
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    const/4 v3, 0x1

    .line 354
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 355
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 356
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setDither(Z)V

    .line 358
    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-direct {v3, v1, v1, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v4, Landroid/graphics/Rect;

    .line 359
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-direct {v4, v1, v1, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 358
    invoke-virtual {v0, p0, v3, v4, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    move-object p0, p1

    :goto_0
    return-object p0

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static transferF16ToARGB(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 4

    .line 679
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 680
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-eqz v0, :cond_2

    if-nez v1, :cond_0

    goto :goto_0

    .line 684
    :cond_0
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 685
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 686
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    const/4 v3, 0x3

    .line 687
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setFlags(I)V

    const/4 v3, 0x0

    .line 688
    invoke-virtual {v1, p0, v3, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 689
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 690
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    return-object v0

    :cond_2
    :goto_0
    return-object p0
.end method
