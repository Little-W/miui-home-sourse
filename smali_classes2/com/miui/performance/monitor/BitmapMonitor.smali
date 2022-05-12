.class public final Lcom/miui/performance/monitor/BitmapMonitor;
.super Ljava/lang/Object;
.source "BitmapMonitor.kt"

# interfaces
.implements Lcom/miui/performance/monitor/IMonitor;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBitmapMonitor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BitmapMonitor.kt\ncom/miui/performance/monitor/BitmapMonitor\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,203:1\n13506#2,2:204\n13506#2,2:206\n13506#2,2:208\n13506#2,2:210\n979#3,2:212\n1819#3,2:214\n1819#3,2:216\n*E\n*S KotlinDebug\n*F\n+ 1 BitmapMonitor.kt\ncom/miui/performance/monitor/BitmapMonitor\n*L\n55#1,2:204\n90#1,2:206\n148#1,2:208\n161#1,2:210\n172#1,2:212\n173#1,2:214\n200#1,2:216\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/miui/performance/monitor/BitmapMonitor;

.field private static final bitmaps:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private static final logs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static ratio:F

.field private static threshold:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    new-instance v0, Lcom/miui/performance/monitor/BitmapMonitor;

    invoke-direct {v0}, Lcom/miui/performance/monitor/BitmapMonitor;-><init>()V

    sput-object v0, Lcom/miui/performance/monitor/BitmapMonitor;->INSTANCE:Lcom/miui/performance/monitor/BitmapMonitor;

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    sput-object v0, Lcom/miui/performance/monitor/BitmapMonitor;->logs:Ljava/util/List;

    .line 28
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    check-cast v0, Ljava/util/Set;

    sput-object v0, Lcom/miui/performance/monitor/BitmapMonitor;->bitmaps:Ljava/util/Set;

    const v0, 0x3f99999a    # 1.2f

    .line 30
    sput v0, Lcom/miui/performance/monitor/BitmapMonitor;->ratio:F

    const/16 v0, 0x400

    .line 31
    sput v0, Lcom/miui/performance/monitor/BitmapMonitor;->threshold:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$checkImageView(Lcom/miui/performance/monitor/BitmapMonitor;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/miui/performance/monitor/BitmapMonitor;->checkImageView()V

    return-void
.end method

.method private final checkImageView()V
    .locals 11

    const/4 v0, 0x1

    .line 53
    new-array v1, v0, [Ljava/lang/Class;

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_0

    const-class v4, Landroid/widget/ImageView;

    aput-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v1, v0}, Lcom/miui/performance/reflect/VMDebug;->getInstancesOfClasses([Ljava/lang/Class;Z)[[Ljava/lang/Object;

    move-result-object v1

    const-string v3, "instances"

    .line 54
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, v1

    check-cast v3, [Ljava/lang/Object;

    array-length v3, v3

    if-nez v3, :cond_1

    move v3, v0

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    xor-int/2addr v0, v3

    if-eqz v0, :cond_6

    .line 55
    aget-object v0, v1, v2

    const-string v1, "instances[0]"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 204
    array-length v1, v0

    move v3, v2

    :goto_2
    if-ge v3, v1, :cond_6

    aget-object v4, v0, v3

    .line 56
    instance-of v5, v4, Landroid/widget/ImageView;

    if-eqz v5, :cond_5

    move-object v5, v4

    check-cast v5, Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->isAttachedToWindow()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {v5}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    instance-of v6, v6, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v6, :cond_5

    .line 57
    invoke-virtual {v5}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    if-eqz v6, :cond_4

    check-cast v6, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    const-string v7, "bitmap"

    .line 58
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v5}, Landroid/widget/ImageView;->getWidth()I

    move-result v8

    int-to-float v8, v8

    sget v9, Lcom/miui/performance/monitor/BitmapMonitor;->ratio:F

    mul-float/2addr v8, v9

    cmpl-float v7, v7, v8

    if-gtz v7, :cond_2

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v5}, Landroid/widget/ImageView;->getHeight()I

    move-result v8

    int-to-float v8, v8

    sget v9, Lcom/miui/performance/monitor/BitmapMonitor;->ratio:F

    mul-float/2addr v8, v9

    cmpl-float v7, v7, v8

    if-lez v7, :cond_5

    .line 59
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v6}, Lcom/miui/performance/util/ExtensionsKt;->identity(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v8, 0x28

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v9, 0x2c

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ") > "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast v4, Landroid/view/View;

    invoke-static {v4, v2}, Lcom/miui/performance/util/ExtensionsKt;->identity(Landroid/view/View;Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getWidth()I

    move-result v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getHeight()I

    move-result v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v4, 0x29

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 60
    sget-object v5, Lcom/miui/performance/monitor/BitmapMonitor;->logs:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 61
    sget-object v5, Lcom/miui/performance/monitor/BitmapMonitor;->logs:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v5, "BitmapMonitor"

    .line 62
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Warning {"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x7d

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    :cond_3
    sget-object v4, Lcom/miui/performance/monitor/BitmapMonitor;->INSTANCE:Lcom/miui/performance/monitor/BitmapMonitor;

    invoke-direct {v4}, Lcom/miui/performance/monitor/BitmapMonitor;->getBitmapDir()Ljava/io/File;

    move-result-object v5

    invoke-direct {v4, v6, v5}, Lcom/miui/performance/monitor/BitmapMonitor;->saveBitmap2File(Landroid/graphics/Bitmap;Ljava/io/File;)V

    goto :goto_3

    .line 57
    :cond_4
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type android.graphics.drawable.BitmapDrawable"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2

    :cond_6
    return-void
.end method

.method private final dumpBitmapInfo(Ljava/io/PrintWriter;Ljava/io/File;)V
    .locals 11

    .line 158
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    const/4 v1, 0x1

    .line 159
    new-array v2, v1, [Ljava/lang/Class;

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v1, :cond_0

    const-class v5, Landroid/graphics/Bitmap;

    aput-object v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v2, v1}, Lcom/miui/performance/reflect/VMDebug;->getInstancesOfClasses([Ljava/lang/Class;Z)[[Ljava/lang/Object;

    move-result-object v2

    const-string v4, "instances"

    .line 160
    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v4, v2

    check-cast v4, [Ljava/lang/Object;

    array-length v4, v4

    if-nez v4, :cond_1

    move v4, v1

    goto :goto_1

    :cond_1
    move v4, v3

    :goto_1
    xor-int/2addr v4, v1

    if-eqz v4, :cond_7

    .line 161
    aget-object v2, v2, v3

    const-string v4, "instances[0]"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 210
    array-length v4, v2

    :goto_2
    if-ge v3, v4, :cond_4

    aget-object v5, v2, v3

    .line 162
    instance-of v6, v5, Landroid/graphics/Bitmap;

    if-eqz v6, :cond_3

    move-object v6, v5

    check-cast v6, Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getNativeInstance()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-lez v7, :cond_3

    .line 163
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getAllocationByteCount()I

    move-result v7

    sget v8, Lcom/miui/performance/monitor/BitmapMonitor;->threshold:I

    if-le v7, v8, :cond_2

    .line 164
    sget-object v7, Lcom/miui/performance/monitor/BitmapMonitor;->INSTANCE:Lcom/miui/performance/monitor/BitmapMonitor;

    invoke-direct {v7, v6, p2}, Lcom/miui/performance/monitor/BitmapMonitor;->saveBitmap2File(Landroid/graphics/Bitmap;Ljava/io/File;)V

    .line 166
    :cond_2
    sget-object v6, Lcom/miui/performance/monitor/BitmapMonitor;->bitmaps:Ljava/util/Set;

    invoke-interface {v6, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 167
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 171
    :cond_4
    move-object p2, v0

    check-cast p2, Ljava/util/Collection;

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    xor-int/2addr p2, v1

    if-eqz p2, :cond_7

    .line 212
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    if-le p2, v1, :cond_5

    new-instance p2, Lcom/miui/performance/monitor/BitmapMonitor$dumpBitmapInfo$$inlined$sortByDescending$1;

    invoke-direct {p2}, Lcom/miui/performance/monitor/BitmapMonitor$dumpBitmapInfo$$inlined$sortByDescending$1;-><init>()V

    check-cast p2, Ljava/util/Comparator;

    invoke-static {v0, p2}, Lkotlin/collections/CollectionsKt;->sortWith(Ljava/util/List;Ljava/util/Comparator;)V

    .line 173
    :cond_5
    move-object p2, v0

    check-cast p2, Ljava/lang/Iterable;

    .line 214
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_6
    :goto_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    if-eqz p1, :cond_6

    .line 174
    invoke-static {v1}, Lcom/miui/performance/util/ExtensionsKt;->identity(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3

    :cond_7
    if-eqz p1, :cond_8

    const-string p2, ""

    .line 178
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_8
    if-eqz p1, :cond_9

    .line 179
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bitmaps Total: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/miui/performance/monitor/BitmapMonitor;->bitmaps:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/miui/performance/monitor/BitmapMonitor;->bitmaps:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "+,"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "-)"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_9
    return-void
.end method

.method static synthetic dumpBitmapInfo$default(Lcom/miui/performance/monitor/BitmapMonitor;Ljava/io/PrintWriter;Ljava/io/File;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 157
    invoke-direct {p0}, Lcom/miui/performance/monitor/BitmapMonitor;->getBitmapDir()Ljava/io/File;

    move-result-object p2

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/miui/performance/monitor/BitmapMonitor;->dumpBitmapInfo(Ljava/io/PrintWriter;Ljava/io/File;)V

    return-void
.end method

.method private final dumpBitmapShaderInfo(Ljava/io/PrintWriter;)V
    .locals 7

    const/4 v0, 0x1

    .line 146
    new-array v1, v0, [Ljava/lang/Class;

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_0

    const-class v4, Landroid/graphics/BitmapShader;

    aput-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v1, v0}, Lcom/miui/performance/reflect/VMDebug;->getInstancesOfClasses([Ljava/lang/Class;Z)[[Ljava/lang/Object;

    move-result-object v1

    const-string v3, "instances"

    .line 147
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, v1

    check-cast v3, [Ljava/lang/Object;

    array-length v3, v3

    if-nez v3, :cond_1

    move v3, v0

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    xor-int/2addr v0, v3

    if-eqz v0, :cond_3

    .line 148
    aget-object v0, v1, v2

    const-string v1, "instances[0]"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 208
    array-length v1, v0

    :goto_2
    if-ge v2, v1, :cond_3

    aget-object v3, v0, v2

    .line 149
    instance-of v4, v3, Landroid/graphics/BitmapShader;

    if-eqz v4, :cond_2

    .line 150
    sget-object v4, Lcom/miui/performance/monitor/BitmapMonitor;->bitmaps:Ljava/util/Set;

    check-cast v3, Landroid/graphics/BitmapShader;

    iget-object v5, v3, Landroid/graphics/BitmapShader;->mBitmap:Landroid/graphics/Bitmap;

    const-string v6, "it.mBitmap"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 151
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Landroid/graphics/BitmapShader;->getNativeInstance()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v3, Landroid/graphics/BitmapShader;->mBitmap:Landroid/graphics/Bitmap;

    const-string v5, "it.mBitmap"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Lcom/miui/performance/util/ExtensionsKt;->identity(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method private final dumpLogs(Ljava/io/PrintWriter;)V
    .locals 2

    .line 198
    sget-object v0, Lcom/miui/performance/monitor/BitmapMonitor;->logs:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const-string v0, "Warning big bitmap:"

    .line 199
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 200
    sget-object v0, Lcom/miui/performance/monitor/BitmapMonitor;->logs:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 216
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 200
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final dumpViewBitmapDrawableInfo(Landroid/view/View;Ljava/io/PrintWriter;)V
    .locals 8

    const-string v0, ""

    const-string v1, ""

    .line 103
    instance-of v2, p1, Landroid/widget/ImageView;

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v2, :cond_8

    .line 104
    move-object v2, p1

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    instance-of v5, v5, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v5, :cond_1

    .line 105
    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_0

    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 106
    invoke-static {v2}, Lcom/miui/performance/util/ExtensionsKt;->identity(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v0

    .line 107
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getAllocationByteCount()I

    move-result v5

    .line 108
    sget-object v6, Lcom/miui/performance/monitor/BitmapMonitor;->bitmaps:Ljava/util/Set;

    invoke-interface {v6, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 105
    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.graphics.drawable.BitmapDrawable"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 110
    :cond_1
    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    instance-of v5, v5, Landroid/graphics/drawable/AdaptiveIconDrawable;

    if-eqz v5, :cond_8

    .line 111
    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_7

    check-cast v5, Landroid/graphics/drawable/AdaptiveIconDrawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 112
    instance-of v6, v5, Landroid/graphics/drawable/BitmapDrawable;

    if-nez v6, :cond_2

    move-object v5, v3

    :cond_2
    check-cast v5, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 113
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Lcom/miui/performance/util/ExtensionsKt;->identity(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 114
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getAllocationByteCount()I

    move-result v6

    add-int/2addr v6, v4

    .line 115
    sget-object v7, Lcom/miui/performance/monitor/BitmapMonitor;->bitmaps:Ljava/util/Set;

    invoke-interface {v7, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    move v6, v4

    .line 117
    :goto_0
    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_6

    check-cast v2, Landroid/graphics/drawable/AdaptiveIconDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 118
    instance-of v5, v2, Landroid/graphics/drawable/BitmapDrawable;

    if-nez v5, :cond_4

    move-object v2, v3

    :cond_4
    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 119
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/miui/performance/util/ExtensionsKt;->identity(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 120
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getAllocationByteCount()I

    move-result v5

    add-int/2addr v5, v6

    .line 121
    sget-object v6, Lcom/miui/performance/monitor/BitmapMonitor;->bitmaps:Ljava/util/Set;

    invoke-interface {v6, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    move v5, v6

    goto :goto_1

    .line 117
    :cond_6
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.graphics.drawable.AdaptiveIconDrawable"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 111
    :cond_7
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.graphics.drawable.AdaptiveIconDrawable"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    move v5, v4

    .line 125
    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    instance-of v2, v2, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_a

    .line 126
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_9

    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 127
    invoke-static {v2}, Lcom/miui/performance/util/ExtensionsKt;->identity(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v1

    .line 128
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getAllocationByteCount()I

    move-result v6

    .line 129
    sget-object v7, Lcom/miui/performance/monitor/BitmapMonitor;->bitmaps:Ljava/util/Set;

    invoke-interface {v7, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 126
    :cond_9
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.graphics.drawable.BitmapDrawable"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    move v6, v4

    :goto_2
    if-gtz v5, :cond_b

    if-lez v6, :cond_e

    :cond_b
    const/4 v2, 0x1

    .line 134
    invoke-static {p1, v4, v2, v3}, Lcom/miui/performance/util/ExtensionsKt;->identity$default(Landroid/view/View;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 p1, 0x7d

    if-lez v5, :cond_c

    .line 136
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " fg{"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_c
    if-lez v6, :cond_d

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " bg{"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_d
    const-string p1, ""

    .line 141
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_e
    return-void
.end method

.method private final dumpViewInfo(Ljava/io/PrintWriter;)V
    .locals 5

    const/4 v0, 0x1

    .line 88
    new-array v1, v0, [Ljava/lang/Class;

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_0

    const-class v4, Landroid/view/View;

    aput-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v1, v0}, Lcom/miui/performance/reflect/VMDebug;->getInstancesOfClasses([Ljava/lang/Class;Z)[[Ljava/lang/Object;

    move-result-object v1

    const-string v3, "instances"

    .line 89
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, v1

    check-cast v3, [Ljava/lang/Object;

    array-length v3, v3

    if-nez v3, :cond_1

    move v3, v0

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    xor-int/2addr v0, v3

    if-eqz v0, :cond_3

    .line 90
    aget-object v0, v1, v2

    const-string v1, "instances[0]"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 206
    array-length v1, v0

    :goto_2
    if-ge v2, v1, :cond_3

    aget-object v3, v0, v2

    .line 91
    instance-of v4, v3, Landroid/view/View;

    if-eqz v4, :cond_2

    .line 92
    sget-object v4, Lcom/miui/performance/monitor/BitmapMonitor;->INSTANCE:Lcom/miui/performance/monitor/BitmapMonitor;

    check-cast v3, Landroid/view/View;

    invoke-direct {v4, v3, p1}, Lcom/miui/performance/monitor/BitmapMonitor;->dumpViewBitmapDrawableInfo(Landroid/view/View;Ljava/io/PrintWriter;)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method private final getBitmapDir()Ljava/io/File;
    .locals 1

    .line 25
    sget-object v0, Lcom/miui/performance/PerformanceTools;->INSTANCE:Lcom/miui/performance/PerformanceTools;

    invoke-virtual {v0}, Lcom/miui/performance/PerformanceTools;->getBitmapDir()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private final saveBitmap2File(Landroid/graphics/Bitmap;Ljava/io/File;)V
    .locals 3

    .line 183
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/miui/performance/util/ExtensionsKt;->identity(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".png"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 184
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p2

    if-nez p2, :cond_0

    .line 185
    sget-object p2, Lcom/miui/performance/PerformanceTools;->INSTANCE:Lcom/miui/performance/PerformanceTools;

    new-instance v1, Lcom/miui/performance/monitor/BitmapMonitor$saveBitmap2File$1;

    invoke-direct {v1, v0, p1}, Lcom/miui/performance/monitor/BitmapMonitor$saveBitmap2File$1;-><init>(Ljava/io/File;Landroid/graphics/Bitmap;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-virtual {p2, v1}, Lcom/miui/performance/PerformanceTools;->doInBackground(Lkotlin/jvm/functions/Function0;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    const-string p1, "pw"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    sget-boolean p1, Lmiui/os/Build;->IS_DEBUGGABLE:Z

    if-eqz p1, :cond_1

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x1e

    if-le p1, p3, :cond_0

    goto :goto_0

    .line 73
    :cond_0
    sget-object p1, Lcom/miui/performance/monitor/BitmapMonitor;->bitmaps:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    const-string p1, "<<BitmapMonitor>>"

    .line 74
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "----------------"

    .line 75
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 76
    invoke-direct {p0, p2}, Lcom/miui/performance/monitor/BitmapMonitor;->dumpViewInfo(Ljava/io/PrintWriter;)V

    const-string p1, ""

    .line 77
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 78
    invoke-direct {p0, p2}, Lcom/miui/performance/monitor/BitmapMonitor;->dumpBitmapShaderInfo(Ljava/io/PrintWriter;)V

    const-string p1, ""

    .line 79
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p1, 0x2

    const/4 p3, 0x0

    .line 80
    invoke-static {p0, p2, p3, p1, p3}, Lcom/miui/performance/monitor/BitmapMonitor;->dumpBitmapInfo$default(Lcom/miui/performance/monitor/BitmapMonitor;Ljava/io/PrintWriter;Ljava/io/File;ILjava/lang/Object;)V

    const-string p1, ""

    .line 81
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 82
    invoke-direct {p0, p2}, Lcom/miui/performance/monitor/BitmapMonitor;->dumpLogs(Ljava/io/PrintWriter;)V

    const-string p1, ""

    .line 83
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 84
    sget-object p1, Lcom/miui/performance/monitor/BitmapMonitor;->bitmaps:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public onCommand(Ljava/lang/String;)V
    .locals 4

    const-string v0, "cmd"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    sget-boolean v0, Lmiui/os/Build;->IS_DEBUGGABLE:Z

    if-nez v0, :cond_0

    return-void

    .line 35
    :cond_0
    invoke-static {p1}, Lcom/miui/performance/util/ExtensionsKt;->parseArgs(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    .line 36
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x53c7b174

    const/4 v3, 0x1

    if-eq v1, v2, :cond_5

    const v2, -0x52c70ed1

    if-eq v1, v2, :cond_3

    const v2, -0x4d6f4594

    if-eq v1, v2, :cond_2

    const v2, 0x68a0e753

    if-eq v1, v2, :cond_1

    goto/16 :goto_0

    :cond_1
    const-string v1, "bitmap.dump"

    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 45
    new-instance v0, Ljava/io/File;

    invoke-direct {p0}, Lcom/miui/performance/monitor/BitmapMonitor;->getBitmapDir()Ljava/io/File;

    move-result-object v1

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 46
    invoke-static {v0}, Lcom/miui/performance/util/ExtensionsKt;->ensureDirExists(Ljava/io/File;)V

    const/4 p1, 0x0

    .line 47
    invoke-direct {p0, p1, v0}, Lcom/miui/performance/monitor/BitmapMonitor;->dumpBitmapInfo(Ljava/io/PrintWriter;Ljava/io/File;)V

    goto :goto_0

    :cond_2
    const-string v1, "bitmap.threshold"

    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    mul-int/lit16 p1, p1, 0x400

    sput p1, Lcom/miui/performance/monitor/BitmapMonitor;->threshold:I

    goto :goto_0

    :cond_3
    const-string v1, "bitmap"

    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 38
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0x5a3e508

    if-eq v0, v1, :cond_4

    goto :goto_0

    :cond_4
    const-string v0, "check"

    .line 39
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    sget-object p1, Lcom/miui/performance/PerformanceTools;->INSTANCE:Lcom/miui/performance/PerformanceTools;

    sget-object v0, Lcom/miui/performance/monitor/BitmapMonitor$onCommand$1;->INSTANCE:Lcom/miui/performance/monitor/BitmapMonitor$onCommand$1;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-virtual {p1, v0}, Lcom/miui/performance/PerformanceTools;->doInBackground(Lkotlin/jvm/functions/Function0;)V

    goto :goto_0

    :cond_5
    const-string v1, "bitmap.ratio"

    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    sput p1, Lcom/miui/performance/monitor/BitmapMonitor;->ratio:F

    :cond_6
    :goto_0
    return-void
.end method
