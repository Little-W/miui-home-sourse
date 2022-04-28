.class public final Lcom/miui/performance/monitor/BitmapMonitor;
.super Ljava/lang/Object;
.source "BitmapMonitor.kt"

# interfaces
.implements Lcom/miui/performance/monitor/IMonitor;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBitmapMonitor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BitmapMonitor.kt\ncom/miui/performance/monitor/BitmapMonitor\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,140:1\n13506#2,2:141\n13506#2,2:143\n979#3,2:145\n1819#3,2:147\n*E\n*S KotlinDebug\n*F\n+ 1 BitmapMonitor.kt\ncom/miui/performance/monitor/BitmapMonitor\n*L\n59#1,2:141\n105#1,2:143\n118#1,2:145\n119#1,2:147\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/miui/performance/monitor/BitmapMonitor;

.field private static final bitmaps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private static threshold:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    new-instance v0, Lcom/miui/performance/monitor/BitmapMonitor;

    invoke-direct {v0}, Lcom/miui/performance/monitor/BitmapMonitor;-><init>()V

    sput-object v0, Lcom/miui/performance/monitor/BitmapMonitor;->INSTANCE:Lcom/miui/performance/monitor/BitmapMonitor;

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    sput-object v0, Lcom/miui/performance/monitor/BitmapMonitor;->bitmaps:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final dumpBitmapInfo(Ljava/io/PrintWriter;Ljava/io/File;)V
    .locals 9

    const/4 v0, 0x1

    .line 102
    new-array v1, v0, [Ljava/lang/Class;

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_0

    const-class v4, Landroid/graphics/Bitmap;

    aput-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v1, v0}, Lcom/miui/performance/reflect/VMDebug;->getInstancesOfClasses([Ljava/lang/Class;Z)[[Ljava/lang/Object;

    move-result-object v1

    const-string v3, "instances"

    .line 103
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
    xor-int/2addr v3, v0

    if-eqz v3, :cond_9

    .line 104
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    check-cast v3, Ljava/util/List;

    .line 105
    aget-object v1, v1, v2

    const-string v4, "instances[0]"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 143
    array-length v4, v1

    :goto_2
    if-ge v2, v4, :cond_4

    aget-object v5, v1, v2

    .line 106
    instance-of v6, v5, Landroid/graphics/Bitmap;

    if-eqz v6, :cond_3

    .line 107
    move-object v6, v5

    check-cast v6, Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getAllocationByteCount()I

    move-result v7

    sget v8, Lcom/miui/performance/monitor/BitmapMonitor;->threshold:I

    if-le v7, v8, :cond_2

    .line 108
    sget-object v7, Lcom/miui/performance/monitor/BitmapMonitor;->INSTANCE:Lcom/miui/performance/monitor/BitmapMonitor;

    invoke-direct {v7, v6, p2}, Lcom/miui/performance/monitor/BitmapMonitor;->saveBitmap2File(Landroid/graphics/Bitmap;Ljava/io/File;)V

    .line 110
    :cond_2
    sget-object v6, Lcom/miui/performance/monitor/BitmapMonitor;->bitmaps:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 111
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 115
    :cond_4
    move-object p2, v3

    check-cast p2, Ljava/util/Collection;

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    xor-int/2addr p2, v0

    if-eqz p2, :cond_9

    if-eqz p1, :cond_5

    .line 116
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unused bitmaps: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_5
    if-eqz p1, :cond_6

    const-string p2, ""

    .line 117
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 145
    :cond_6
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result p2

    if-le p2, v0, :cond_7

    new-instance p2, Lcom/miui/performance/monitor/BitmapMonitor$dumpBitmapInfo$$inlined$sortByDescending$1;

    invoke-direct {p2}, Lcom/miui/performance/monitor/BitmapMonitor$dumpBitmapInfo$$inlined$sortByDescending$1;-><init>()V

    check-cast p2, Ljava/util/Comparator;

    invoke-static {v3, p2}, Lkotlin/collections/CollectionsKt;->sortWith(Ljava/util/List;Ljava/util/Comparator;)V

    .line 119
    :cond_7
    check-cast v3, Ljava/lang/Iterable;

    .line 147
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_8
    :goto_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-eqz p1, :cond_8

    .line 120
    invoke-static {v0}, Lcom/miui/performance/util/ExtensionsKt;->identity(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3

    :cond_9
    return-void
.end method

.method static synthetic dumpBitmapInfo$default(Lcom/miui/performance/monitor/BitmapMonitor;Ljava/io/PrintWriter;Ljava/io/File;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 101
    invoke-direct {p0}, Lcom/miui/performance/monitor/BitmapMonitor;->getBitmapDir()Ljava/io/File;

    move-result-object p2

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/miui/performance/monitor/BitmapMonitor;->dumpBitmapInfo(Ljava/io/PrintWriter;Ljava/io/File;)V

    return-void
.end method

.method private final dumpViewBitmapDrawableInfo(Landroid/view/View;Ljava/io/PrintWriter;)V
    .locals 6

    const-string v0, ""

    const-string v1, ""

    .line 72
    instance-of v2, p1, Landroid/widget/ImageView;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 73
    move-object v2, p1

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    instance-of v4, v4, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v4, :cond_1

    .line 74
    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_0

    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 75
    invoke-static {v2}, Lcom/miui/performance/util/ExtensionsKt;->identity(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v0

    .line 76
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getAllocationByteCount()I

    move-result v4

    .line 77
    sget-object v5, Lcom/miui/performance/monitor/BitmapMonitor;->bitmaps:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 74
    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.graphics.drawable.BitmapDrawable"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    move v4, v3

    .line 81
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    instance-of v2, v2, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_3

    .line 82
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_2

    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 83
    invoke-static {v2}, Lcom/miui/performance/util/ExtensionsKt;->identity(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v1

    .line 84
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getAllocationByteCount()I

    move-result v3

    .line 85
    sget-object v5, Lcom/miui/performance/monitor/BitmapMonitor;->bitmaps:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 82
    :cond_2
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.graphics.drawable.BitmapDrawable"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_1
    if-gtz v4, :cond_4

    if-lez v3, :cond_7

    .line 90
    :cond_4
    invoke-static {p1}, Lcom/miui/performance/util/ExtensionsKt;->identity(Landroid/view/View;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 p1, 0x7d

    if-lez v4, :cond_5

    .line 92
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " fg{"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_5
    if-lez v3, :cond_6

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " bg{"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 97
    :cond_6
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    :cond_7
    return-void
.end method

.method private final dumpViewInfo(Ljava/io/PrintWriter;)V
    .locals 5

    const/4 v0, 0x1

    .line 57
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

    .line 58
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

    .line 59
    aget-object v0, v1, v2

    const-string v1, "instances[0]"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 141
    array-length v1, v0

    :goto_2
    if-ge v2, v1, :cond_3

    aget-object v3, v0, v2

    .line 60
    instance-of v4, v3, Landroid/view/View;

    if-eqz v4, :cond_2

    .line 61
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

    .line 23
    sget-object v0, Lcom/miui/performance/PerformanceTools;->INSTANCE:Lcom/miui/performance/PerformanceTools;

    invoke-virtual {v0}, Lcom/miui/performance/PerformanceTools;->getBitmapDir()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private final saveBitmap2File(Landroid/graphics/Bitmap;Ljava/io/File;)V
    .locals 3

    .line 127
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

    .line 128
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p2

    if-nez p2, :cond_0

    .line 129
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
    .locals 2

    const-string p1, "pw"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    sget-boolean p1, Lmiui/os/Build;->IS_DEBUGGABLE:Z

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string p1, "<<BitmapMonitor>>"

    .line 44
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "----------------"

    .line 45
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 46
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Bitmap Total: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class p3, Landroid/graphics/Bitmap;

    invoke-static {p3}, Lcom/miui/performance/reflect/VMDebug;->countInstancesOfClass(Ljava/lang/Class;)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, ""

    .line 47
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 48
    sget-object p1, Lcom/miui/performance/monitor/BitmapMonitor;->bitmaps:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 49
    invoke-direct {p0, p2}, Lcom/miui/performance/monitor/BitmapMonitor;->dumpViewInfo(Ljava/io/PrintWriter;)V

    const-string p1, ""

    .line 50
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p1, 0x2

    const/4 p3, 0x0

    .line 51
    invoke-static {p0, p2, p3, p1, p3}, Lcom/miui/performance/monitor/BitmapMonitor;->dumpBitmapInfo$default(Lcom/miui/performance/monitor/BitmapMonitor;Ljava/io/PrintWriter;Ljava/io/File;ILjava/lang/Object;)V

    .line 52
    sget-object p1, Lcom/miui/performance/monitor/BitmapMonitor;->bitmaps:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    const-string p1, ""

    .line 53
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public onCommand(Ljava/lang/String;)V
    .locals 4

    const-string v0, "cmd"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-static {p1}, Lcom/miui/performance/util/ExtensionsKt;->parseArgs(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    .line 31
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x4d6f4594

    const/4 v3, 0x1

    if-eq v1, v2, :cond_1

    const v2, 0x68a0e753

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "bitmap.dump"

    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 34
    new-instance v0, Ljava/io/File;

    invoke-direct {p0}, Lcom/miui/performance/monitor/BitmapMonitor;->getBitmapDir()Ljava/io/File;

    move-result-object v1

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 35
    invoke-static {v0}, Lcom/miui/performance/util/ExtensionsKt;->ensureDirExists(Ljava/io/File;)V

    const/4 p1, 0x0

    .line 36
    invoke-direct {p0, p1, v0}, Lcom/miui/performance/monitor/BitmapMonitor;->dumpBitmapInfo(Ljava/io/PrintWriter;Ljava/io/File;)V

    goto :goto_0

    :cond_1
    const-string v1, "bitmap.threshold"

    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    mul-int/lit16 p1, p1, 0x400

    sput p1, Lcom/miui/performance/monitor/BitmapMonitor;->threshold:I

    :cond_2
    :goto_0
    return-void
.end method
