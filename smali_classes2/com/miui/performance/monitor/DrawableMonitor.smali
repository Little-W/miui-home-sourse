.class public final Lcom/miui/performance/monitor/DrawableMonitor;
.super Ljava/lang/Object;
.source "DrawableMonitor.kt"

# interfaces
.implements Lcom/miui/performance/monitor/IMonitor;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDrawableMonitor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DrawableMonitor.kt\ncom/miui/performance/monitor/DrawableMonitor\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,56:1\n13506#2,2:57\n*E\n*S KotlinDebug\n*F\n+ 1 DrawableMonitor.kt\ncom/miui/performance/monitor/DrawableMonitor\n*L\n47#1,2:57\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/miui/performance/monitor/DrawableMonitor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    new-instance v0, Lcom/miui/performance/monitor/DrawableMonitor;

    invoke-direct {v0}, Lcom/miui/performance/monitor/DrawableMonitor;-><init>()V

    sput-object v0, Lcom/miui/performance/monitor/DrawableMonitor;->INSTANCE:Lcom/miui/performance/monitor/DrawableMonitor;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6

    const-string p1, "pw"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "<<DrawableMonitor>>"

    .line 19
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "----------------"

    .line 20
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/16 p1, 0x18

    .line 21
    new-array p1, p1, [Ljava/lang/Class;

    .line 22
    const-class p3, Landroid/graphics/drawable/AdaptiveIconDrawable;

    const/4 v0, 0x0

    aput-object p3, p1, v0

    .line 23
    const-class p3, Landroid/graphics/drawable/AnimatedImageDrawable;

    const/4 v1, 0x1

    aput-object p3, p1, v1

    .line 24
    const-class p3, Landroid/graphics/drawable/AnimatedRotateDrawable;

    const/4 v1, 0x2

    aput-object p3, p1, v1

    .line 25
    const-class p3, Landroid/graphics/drawable/AnimatedStateListDrawable;

    const/4 v1, 0x3

    aput-object p3, p1, v1

    .line 26
    const-class p3, Landroid/graphics/drawable/AnimatedVectorDrawable;

    const/4 v1, 0x4

    aput-object p3, p1, v1

    .line 27
    const-class p3, Landroid/graphics/drawable/AnimationDrawable;

    const/4 v1, 0x5

    aput-object p3, p1, v1

    .line 28
    const-class p3, Landroid/graphics/drawable/BitmapDrawable;

    const/4 v1, 0x6

    aput-object p3, p1, v1

    .line 29
    const-class p3, Landroid/graphics/drawable/ClipDrawable;

    const/4 v1, 0x7

    aput-object p3, p1, v1

    .line 30
    const-class p3, Landroid/graphics/drawable/ColorDrawable;

    const/16 v1, 0x8

    aput-object p3, p1, v1

    .line 31
    const-class p3, Landroid/graphics/drawable/ColorStateListDrawable;

    const/16 v1, 0x9

    aput-object p3, p1, v1

    .line 32
    const-class p3, Landroid/graphics/drawable/GradientDrawable;

    const/16 v1, 0xa

    aput-object p3, p1, v1

    .line 33
    const-class p3, Landroid/graphics/drawable/InsetDrawable;

    const/16 v1, 0xb

    aput-object p3, p1, v1

    .line 34
    const-class p3, Landroid/graphics/drawable/LayerDrawable;

    const/16 v1, 0xc

    aput-object p3, p1, v1

    .line 35
    const-class p3, Landroid/graphics/drawable/LevelListDrawable;

    const/16 v1, 0xd

    aput-object p3, p1, v1

    .line 36
    const-class p3, Landroid/graphics/drawable/NinePatchDrawable;

    const/16 v1, 0xe

    aput-object p3, p1, v1

    .line 37
    const-class p3, Landroid/graphics/drawable/PaintDrawable;

    const/16 v1, 0xf

    aput-object p3, p1, v1

    .line 38
    const-class p3, Landroid/graphics/drawable/PictureDrawable;

    const/16 v1, 0x10

    aput-object p3, p1, v1

    .line 39
    const-class p3, Landroid/graphics/drawable/RippleDrawable;

    const/16 v1, 0x11

    aput-object p3, p1, v1

    .line 40
    const-class p3, Landroid/graphics/drawable/RotateDrawable;

    const/16 v1, 0x12

    aput-object p3, p1, v1

    .line 41
    const-class p3, Landroid/graphics/drawable/ScaleDrawable;

    const/16 v1, 0x13

    aput-object p3, p1, v1

    .line 42
    const-class p3, Landroid/graphics/drawable/ShapeDrawable;

    const/16 v1, 0x14

    aput-object p3, p1, v1

    .line 43
    const-class p3, Landroid/graphics/drawable/StateListDrawable;

    const/16 v1, 0x15

    aput-object p3, p1, v1

    .line 44
    const-class p3, Landroid/graphics/drawable/TransitionDrawable;

    const/16 v1, 0x16

    aput-object p3, p1, v1

    .line 45
    const-class p3, Landroid/graphics/drawable/VectorDrawable;

    const/16 v1, 0x17

    aput-object p3, p1, v1

    .line 57
    array-length p3, p1

    :goto_0
    if-ge v0, p3, :cond_1

    aget-object v1, p1, v0

    .line 48
    invoke-static {v1}, Lcom/miui/performance/reflect/VMDebug;->countInstancesOfClass(Ljava/lang/Class;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_0

    .line 50
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const-string p1, ""

    .line 53
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public onCommand(Ljava/lang/String;)V
    .locals 1

    const-string v0, "cmd"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
