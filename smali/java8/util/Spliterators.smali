.class public final Ljava8/util/Spliterators;
.super Ljava/lang/Object;
.source "Spliterators.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava8/util/Spliterators$DoubleIteratorSpliterator;,
        Ljava8/util/Spliterators$LongIteratorSpliterator;,
        Ljava8/util/Spliterators$IntIteratorSpliterator;,
        Ljava8/util/Spliterators$IteratorSpliterator;,
        Ljava8/util/Spliterators$AbstractDoubleSpliterator;,
        Ljava8/util/Spliterators$AbstractLongSpliterator;,
        Ljava8/util/Spliterators$AbstractIntSpliterator;,
        Ljava8/util/Spliterators$AbstractSpliterator;,
        Ljava8/util/Spliterators$DoubleArraySpliterator;,
        Ljava8/util/Spliterators$LongArraySpliterator;,
        Ljava8/util/Spliterators$IntArraySpliterator;,
        Ljava8/util/Spliterators$ArraySpliterator;,
        Ljava8/util/Spliterators$EmptySpliterator;,
        Ljava8/util/Spliterators$OfDouble;,
        Ljava8/util/Spliterators$OfLong;,
        Ljava8/util/Spliterators$OfInt;,
        Ljava8/util/Spliterators$OfPrimitive;
    }
.end annotation


# static fields
.field private static final ALLOW_RNDACC_SPLITER_OPT:Z

.field static final DELEGATION_ENABLED:Z

.field private static final DELEGATION_ENABLED_P:Ljava/lang/String;

.field private static final EMPTY_DOUBLE_SPLITERATOR:Ljava8/util/Spliterator$OfDouble;

.field private static final EMPTY_INT_SPLITERATOR:Ljava8/util/Spliterator$OfInt;

.field private static final EMPTY_LONG_SPLITERATOR:Ljava8/util/Spliterator$OfLong;

.field private static final EMPTY_SPLITERATOR:Ljava8/util/Spliterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava8/util/Spliterator<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field static final HAS_STREAMS:Z

.field static final IS_ANDROID:Z

.field static final IS_ANDROID_O:Z

.field static final IS_HARMONY_ANDROID:Z

.field static final IS_JAVA6:Z

.field static final IS_JAVA9:Z

.field private static final IS_ROBOVM:Z

.field private static final NATIVE_OPT_ENABLED_P:Ljava/lang/String;

.field static final NATIVE_SPECIALIZATION:Z

.field private static final RNDACC_SPLITER_ENABLED_P:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Ljava8/util/Spliterators;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".assume.oracle.collections.impl"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ljava8/util/Spliterators;->NATIVE_OPT_ENABLED_P:Ljava/lang/String;

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Ljava8/util/Spliterators;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".jre.delegation.enabled"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ljava8/util/Spliterators;->DELEGATION_ENABLED_P:Ljava/lang/String;

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Ljava8/util/Spliterators;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".randomaccess.spliterator.enabled"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ljava8/util/Spliterators;->RNDACC_SPLITER_ENABLED_P:Ljava/lang/String;

    .line 83
    sget-object v0, Ljava8/util/Spliterators;->NATIVE_OPT_ENABLED_P:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljava8/util/Spliterators;->getBooleanPropVal(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Ljava8/util/Spliterators;->NATIVE_SPECIALIZATION:Z

    .line 85
    sget-object v0, Ljava8/util/Spliterators;->DELEGATION_ENABLED_P:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava8/util/Spliterators;->getBooleanPropVal(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Ljava8/util/Spliterators;->DELEGATION_ENABLED:Z

    .line 88
    sget-object v0, Ljava8/util/Spliterators;->RNDACC_SPLITER_ENABLED_P:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava8/util/Spliterators;->getBooleanPropVal(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Ljava8/util/Spliterators;->ALLOW_RNDACC_SPLITER_OPT:Z

    .line 90
    invoke-static {}, Ljava8/util/Spliterators;->isRoboVm()Z

    move-result v0

    sput-boolean v0, Ljava8/util/Spliterators;->IS_ROBOVM:Z

    .line 93
    invoke-static {}, Ljava8/util/Spliterators;->isAndroid()Z

    move-result v0

    sput-boolean v0, Ljava8/util/Spliterators;->IS_ANDROID:Z

    .line 95
    sget-boolean v0, Ljava8/util/Spliterators;->IS_ANDROID:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const-string v0, "android.opengl.GLES32$DebugProc"

    invoke-static {v0}, Ljava8/util/Spliterators;->isClassPresent(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    sput-boolean v0, Ljava8/util/Spliterators;->IS_HARMONY_ANDROID:Z

    .line 97
    sget-boolean v0, Ljava8/util/Spliterators;->IS_ANDROID:Z

    if-eqz v0, :cond_1

    const-string v0, "java.time.DateTimeException"

    invoke-static {v0}, Ljava8/util/Spliterators;->isClassPresent(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    sput-boolean v0, Ljava8/util/Spliterators;->IS_ANDROID_O:Z

    .line 99
    sget-boolean v0, Ljava8/util/Spliterators;->IS_ANDROID:Z

    if-nez v0, :cond_2

    invoke-static {}, Ljava8/util/Spliterators;->isJava6()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    sput-boolean v1, Ljava8/util/Spliterators;->IS_JAVA6:Z

    .line 101
    invoke-static {}, Ljava8/util/Spliterators;->isStreamEnabled()Z

    move-result v0

    sput-boolean v0, Ljava8/util/Spliterators;->HAS_STREAMS:Z

    const-string v0, "java.lang.StackWalker$Option"

    .line 103
    invoke-static {v0}, Ljava8/util/Spliterators;->isClassPresent(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Ljava8/util/Spliterators;->IS_JAVA9:Z

    .line 517
    new-instance v0, Ljava8/util/Spliterators$EmptySpliterator$OfRef;

    invoke-direct {v0}, Ljava8/util/Spliterators$EmptySpliterator$OfRef;-><init>()V

    sput-object v0, Ljava8/util/Spliterators;->EMPTY_SPLITERATOR:Ljava8/util/Spliterator;

    .line 533
    new-instance v0, Ljava8/util/Spliterators$EmptySpliterator$OfInt;

    invoke-direct {v0}, Ljava8/util/Spliterators$EmptySpliterator$OfInt;-><init>()V

    sput-object v0, Ljava8/util/Spliterators;->EMPTY_INT_SPLITERATOR:Ljava8/util/Spliterator$OfInt;

    .line 549
    new-instance v0, Ljava8/util/Spliterators$EmptySpliterator$OfLong;

    invoke-direct {v0}, Ljava8/util/Spliterators$EmptySpliterator$OfLong;-><init>()V

    sput-object v0, Ljava8/util/Spliterators;->EMPTY_LONG_SPLITERATOR:Ljava8/util/Spliterator$OfLong;

    .line 565
    new-instance v0, Ljava8/util/Spliterators$EmptySpliterator$OfDouble;

    invoke-direct {v0}, Ljava8/util/Spliterators$EmptySpliterator$OfDouble;-><init>()V

    sput-object v0, Ljava8/util/Spliterators;->EMPTY_DOUBLE_SPLITERATOR:Ljava8/util/Spliterator$OfDouble;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkFromToBounds(III)V
    .locals 2

    if-gt p1, p2, :cond_2

    if-ltz p1, :cond_1

    if-gt p2, p0, :cond_0

    return-void

    .line 848
    :cond_0
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p0, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw p0

    .line 845
    :cond_1
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw p0

    .line 841
    :cond_2
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "origin("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") > fence("

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static delegatingSpliterator(Ljava/util/Collection;)Ljava8/util/Spliterator;
    .locals 1
    .annotation build Lbuild/IgnoreJava8API;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+TT;>;)",
            "Ljava8/util/Spliterator<",
            "TT;>;"
        }
    .end annotation

    .line 1090
    new-instance v0, Ljava8/util/DelegatingSpliterator;

    invoke-interface {p0}, Ljava/util/Collection;->spliterator()Ljava/util/Spliterator;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava8/util/DelegatingSpliterator;-><init>(Ljava/util/Spliterator;)V

    return-object v0
.end method

.method public static emptyDoubleSpliterator()Ljava8/util/Spliterator$OfDouble;
    .locals 1

    .line 562
    sget-object v0, Ljava8/util/Spliterators;->EMPTY_DOUBLE_SPLITERATOR:Ljava8/util/Spliterator$OfDouble;

    return-object v0
.end method

.method public static emptyIntSpliterator()Ljava8/util/Spliterator$OfInt;
    .locals 1

    .line 530
    sget-object v0, Ljava8/util/Spliterators;->EMPTY_INT_SPLITERATOR:Ljava8/util/Spliterator$OfInt;

    return-object v0
.end method

.method public static emptyLongSpliterator()Ljava8/util/Spliterator$OfLong;
    .locals 1

    .line 546
    sget-object v0, Ljava8/util/Spliterators;->EMPTY_LONG_SPLITERATOR:Ljava8/util/Spliterator$OfLong;

    return-object v0
.end method

.method public static emptySpliterator()Ljava8/util/Spliterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava8/util/Spliterator<",
            "TT;>;"
        }
    .end annotation

    .line 514
    sget-object v0, Ljava8/util/Spliterators;->EMPTY_SPLITERATOR:Ljava8/util/Spliterator;

    return-object v0
.end method

.method public static forEachRemaining(Ljava8/util/Spliterator;Ljava8/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava8/util/Spliterator<",
            "TT;>;",
            "Ljava8/util/function/Consumer<",
            "-TT;>;)V"
        }
    .end annotation

    .line 125
    :cond_0
    invoke-interface {p0, p1}, Ljava8/util/Spliterator;->tryAdvance(Ljava8/util/function/Consumer;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void
.end method

.method private static getBooleanPropVal(Ljava/lang/String;Z)Z
    .locals 1

    .line 3276
    new-instance v0, Ljava8/util/Spliterators$2;

    invoke-direct {v0, p1, p0}, Ljava8/util/Spliterators$2;-><init>(ZLjava/lang/String;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static getComparator(Ljava8/util/Spliterator;)Ljava/util/Comparator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava8/util/Spliterator<",
            "TT;>;)",
            "Ljava/util/Comparator<",
            "-TT;>;"
        }
    .end annotation

    .line 180
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public static getExactSizeIfKnown(Ljava8/util/Spliterator;)J
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava8/util/Spliterator<",
            "TT;>;)J"
        }
    .end annotation

    .line 141
    invoke-interface {p0}, Ljava8/util/Spliterator;->characteristics()I

    move-result v0

    and-int/lit8 v0, v0, 0x40

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava8/util/Spliterator;->estimateSize()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method private static hasAndroid7LHMBug(Ljava/util/Collection;)Z
    .locals 2
    .annotation build Lbuild/IgnoreJava8API;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 3453
    sget-boolean v0, Ljava8/util/Spliterators;->IS_ANDROID:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Ljava8/util/Spliterators;->IS_HARMONY_ANDROID:Z

    if-nez v0, :cond_0

    sget-boolean v0, Ljava8/util/Spliterators;->IS_ANDROID_O:Z

    if-nez v0, :cond_0

    .line 3454
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "java.util.HashMap$"

    .line 3455
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3459
    invoke-interface {p0}, Ljava/util/Collection;->spliterator()Ljava/util/Spliterator;

    move-result-object p0

    const/16 v0, 0x10

    invoke-interface {p0, v0}, Ljava/util/Spliterator;->hasCharacteristics(I)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static hasCharacteristics(Ljava8/util/Spliterator;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava8/util/Spliterator<",
            "TT;>;I)Z"
        }
    .end annotation

    .line 160
    invoke-interface {p0}, Ljava8/util/Spliterator;->characteristics()I

    move-result p0

    and-int/2addr p0, p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isAndroid()Z
    .locals 1

    const-string v0, "android.util.DisplayMetrics"

    .line 3329
    invoke-static {v0}, Ljava8/util/Spliterators;->isClassPresent(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-boolean v0, Ljava8/util/Spliterators;->IS_ROBOVM:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private static isClassPresent(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    .line 3306
    :try_start_0
    const-class v1, Ljava8/util/Spliterators;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-static {p0, v0, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private static isFromJdk(Ljava/lang/String;)Z
    .locals 2

    const-string v0, "java.util.Collections$"

    const/4 v1, 0x0

    .line 3414
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "RandomAccessList"

    .line 3415
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v1
.end method

.method private static isJava6()Z
    .locals 3

    const-string v0, "java.class.version"

    const-wide v1, 0x4049800000000000L    # 51.0

    .line 3321
    invoke-static {v0, v1, v2}, Ljava8/util/Spliterators;->isVersionBelow(Ljava/lang/String;D)Z

    move-result v0

    return v0
.end method

.method private static isRoboVm()Z
    .locals 1

    const-string v0, "org.robovm.rt.bro.Bro"

    .line 3325
    invoke-static {v0}, Ljava8/util/Spliterators;->isClassPresent(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static isStreamEnabled()Z
    .locals 6

    .line 3340
    invoke-static {}, Ljava8/util/Spliterators;->isAndroid()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "java.class.version"

    const-wide/high16 v2, 0x404a000000000000L    # 52.0

    invoke-static {v0, v2, v3}, Ljava8/util/Spliterators;->isVersionBelow(Ljava/lang/String;D)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, "java.util.function.Consumer"

    const-string v2, "java.util.Spliterator"

    .line 3345
    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x0

    move v4, v1

    move-object v5, v3

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v0, v4

    .line 3348
    :try_start_0
    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catch_0
    return v1

    :cond_1
    if-eqz v5, :cond_2

    .line 3357
    :try_start_1
    const-class v0, Ljava/util/Collection;

    const-string v2, "spliterator"

    new-array v3, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    return v1

    :cond_2
    :goto_1
    if-eqz v3, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method private static isVersionBelow(Ljava/lang/String;D)Z
    .locals 2

    .line 3380
    :try_start_0
    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 3382
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    cmpg-double p0, v0, p1

    if-gez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :catch_0
    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static iterator(Ljava8/util/Spliterator;)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava8/util/Spliterator<",
            "+TT;>;)",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    .line 1362
    invoke-static {p0}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1396
    new-instance v0, Ljava8/util/Spliterators$1Adapter;

    invoke-direct {v0, p0}, Ljava8/util/Spliterators$1Adapter;-><init>(Ljava8/util/Spliterator;)V

    return-object v0
.end method

.method public static iterator(Ljava8/util/Spliterator$OfDouble;)Ljava8/util/PrimitiveIterator$OfDouble;
    .locals 1

    .line 1532
    invoke-static {p0}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1576
    new-instance v0, Ljava8/util/Spliterators$4Adapter;

    invoke-direct {v0, p0}, Ljava8/util/Spliterators$4Adapter;-><init>(Ljava8/util/Spliterator$OfDouble;)V

    return-object v0
.end method

.method public static iterator(Ljava8/util/Spliterator$OfInt;)Ljava8/util/PrimitiveIterator$OfInt;
    .locals 1

    .line 1412
    invoke-static {p0}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1456
    new-instance v0, Ljava8/util/Spliterators$2Adapter;

    invoke-direct {v0, p0}, Ljava8/util/Spliterators$2Adapter;-><init>(Ljava8/util/Spliterator$OfInt;)V

    return-object v0
.end method

.method public static iterator(Ljava8/util/Spliterator$OfLong;)Ljava8/util/PrimitiveIterator$OfLong;
    .locals 1

    .line 1472
    invoke-static {p0}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1516
    new-instance v0, Ljava8/util/Spliterators$3Adapter;

    invoke-direct {v0, p0}, Ljava8/util/Spliterators$3Adapter;-><init>(Ljava8/util/Spliterator$OfLong;)V

    return-object v0
.end method

.method private static listSpliterator(Ljava/util/List;Ljava/lang/String;)Ljava8/util/Spliterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "+TT;>;",
            "Ljava/lang/String;",
            ")",
            "Ljava8/util/Spliterator<",
            "TT;>;"
        }
    .end annotation

    .line 961
    sget-boolean v0, Ljava8/util/Spliterators;->NATIVE_SPECIALIZATION:Z

    if-nez v0, :cond_0

    sget-boolean v0, Ljava8/util/Spliterators;->IS_ANDROID:Z

    if-eqz v0, :cond_5

    .line 962
    :cond_0
    instance-of v0, p0, Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 963
    check-cast p0, Ljava/util/ArrayList;

    invoke-static {p0}, Ljava8/util/ArrayListSpliterator;->spliterator(Ljava/util/ArrayList;)Ljava8/util/Spliterator;

    move-result-object p0

    return-object p0

    :cond_1
    const-string v0, "java.util.Arrays$ArrayList"

    .line 966
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 967
    invoke-static {p0}, Ljava8/util/ArraysArrayListSpliterator;->spliterator(Ljava/util/List;)Ljava8/util/Spliterator;

    move-result-object p0

    return-object p0

    .line 970
    :cond_2
    instance-of v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_3

    .line 971
    check-cast p0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 972
    invoke-static {p0}, Ljava8/util/COWArrayListSpliterator;->spliterator(Ljava/util/concurrent/CopyOnWriteArrayList;)Ljava8/util/Spliterator;

    move-result-object p0

    return-object p0

    .line 974
    :cond_3
    instance-of v0, p0, Ljava/util/LinkedList;

    if-eqz v0, :cond_4

    .line 975
    check-cast p0, Ljava/util/LinkedList;

    invoke-static {p0}, Ljava8/util/LinkedListSpliterator;->spliterator(Ljava/util/LinkedList;)Ljava8/util/Spliterator;

    move-result-object p0

    return-object p0

    .line 977
    :cond_4
    instance-of v0, p0, Ljava/util/Vector;

    if-eqz v0, :cond_5

    .line 978
    check-cast p0, Ljava/util/Vector;

    invoke-static {p0}, Ljava8/util/VectorSpliterator;->spliterator(Ljava/util/Vector;)Ljava8/util/Spliterator;

    move-result-object p0

    return-object p0

    .line 982
    :cond_5
    sget-boolean v0, Ljava8/util/Spliterators;->ALLOW_RNDACC_SPLITER_OPT:Z

    const/16 v1, 0x10

    if-eqz v0, :cond_7

    instance-of v0, p0, Ljava/util/RandomAccess;

    if-eqz v0, :cond_7

    .line 984
    instance-of v0, p0, Ljava/util/AbstractList;

    if-nez v0, :cond_6

    invoke-static {p1}, Ljava8/util/Spliterators;->isFromJdk(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 987
    invoke-static {p0, v1}, Ljava8/util/Spliterators;->spliterator(Ljava/util/Collection;I)Ljava8/util/Spliterator;

    move-result-object p0

    return-object p0

    .line 993
    :cond_6
    instance-of p1, p0, Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez p1, :cond_7

    .line 997
    invoke-static {p0}, Ljava8/util/RASpliterator;->spliterator(Ljava/util/List;)Ljava8/util/Spliterator;

    move-result-object p0

    return-object p0

    .line 1002
    :cond_7
    invoke-static {p0, v1}, Ljava8/util/Spliterators;->spliterator(Ljava/util/Collection;I)Ljava8/util/Spliterator;

    move-result-object p0

    return-object p0
.end method

.method private static queueSpliterator(Ljava/util/Queue;)Ljava8/util/Spliterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Queue<",
            "+TT;>;)",
            "Ljava8/util/Spliterator<",
            "TT;>;"
        }
    .end annotation

    .line 1047
    instance-of v0, p0, Ljava/util/concurrent/ArrayBlockingQueue;

    if-eqz v0, :cond_0

    const/16 v0, 0x1110

    .line 1048
    invoke-static {p0, v0}, Ljava8/util/Spliterators;->spliterator(Ljava/util/Collection;I)Ljava8/util/Spliterator;

    move-result-object p0

    return-object p0

    .line 1052
    :cond_0
    sget-boolean v0, Ljava8/util/Spliterators;->NATIVE_SPECIALIZATION:Z

    if-nez v0, :cond_1

    sget-boolean v0, Ljava8/util/Spliterators;->IS_ANDROID:Z

    if-eqz v0, :cond_6

    .line 1053
    :cond_1
    instance-of v0, p0, Ljava/util/concurrent/LinkedBlockingQueue;

    if-eqz v0, :cond_2

    .line 1054
    check-cast p0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-static {p0}, Ljava8/util/LBQSpliterator;->spliterator(Ljava/util/concurrent/LinkedBlockingQueue;)Ljava8/util/Spliterator;

    move-result-object p0

    return-object p0

    .line 1056
    :cond_2
    instance-of v0, p0, Ljava/util/ArrayDeque;

    if-eqz v0, :cond_3

    .line 1057
    check-cast p0, Ljava/util/ArrayDeque;

    invoke-static {p0}, Ljava8/util/ArrayDequeSpliterator;->spliterator(Ljava/util/ArrayDeque;)Ljava8/util/Spliterator;

    move-result-object p0

    return-object p0

    .line 1059
    :cond_3
    instance-of v0, p0, Ljava/util/concurrent/LinkedBlockingDeque;

    if-eqz v0, :cond_4

    .line 1060
    check-cast p0, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-static {p0}, Ljava8/util/LBDSpliterator;->spliterator(Ljava/util/concurrent/LinkedBlockingDeque;)Ljava8/util/Spliterator;

    move-result-object p0

    return-object p0

    .line 1062
    :cond_4
    instance-of v0, p0, Ljava/util/concurrent/PriorityBlockingQueue;

    if-eqz v0, :cond_5

    .line 1063
    check-cast p0, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-static {p0}, Ljava8/util/PBQueueSpliterator;->spliterator(Ljava/util/concurrent/PriorityBlockingQueue;)Ljava8/util/Spliterator;

    move-result-object p0

    return-object p0

    .line 1065
    :cond_5
    instance-of v0, p0, Ljava/util/PriorityQueue;

    if-eqz v0, :cond_6

    .line 1066
    check-cast p0, Ljava/util/PriorityQueue;

    invoke-static {p0}, Ljava8/util/PQueueSpliterator;->spliterator(Ljava/util/PriorityQueue;)Ljava8/util/Spliterator;

    move-result-object p0

    return-object p0

    .line 1072
    :cond_6
    instance-of v0, p0, Ljava/util/Deque;

    if-nez v0, :cond_8

    .line 1073
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "java.util"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    instance-of v0, p0, Ljava/util/concurrent/PriorityBlockingQueue;

    if-nez v0, :cond_7

    instance-of v0, p0, Ljava/util/PriorityQueue;

    if-nez v0, :cond_7

    instance-of v0, p0, Ljava/util/concurrent/DelayQueue;

    if-nez v0, :cond_7

    instance-of v0, p0, Ljava/util/concurrent/SynchronousQueue;

    if-nez v0, :cond_7

    goto :goto_0

    :cond_7
    const/4 v0, 0x0

    .line 1085
    invoke-static {p0, v0}, Ljava8/util/Spliterators;->spliterator(Ljava/util/Collection;I)Ljava8/util/Spliterator;

    move-result-object p0

    return-object p0

    .line 1080
    :cond_8
    :goto_0
    instance-of v0, p0, Ljava/util/ArrayDeque;

    if-eqz v0, :cond_9

    const/16 v0, 0x110

    goto :goto_1

    :cond_9
    const/16 v0, 0x10

    :goto_1
    invoke-static {p0, v0}, Ljava8/util/Spliterators;->spliterator(Ljava/util/Collection;I)Ljava8/util/Spliterator;

    move-result-object p0

    return-object p0
.end method

.method private static setSpliterator(Ljava/util/Set;Ljava/lang/String;)Ljava8/util/Spliterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set<",
            "+TT;>;",
            "Ljava/lang/String;",
            ")",
            "Ljava8/util/Spliterator<",
            "TT;>;"
        }
    .end annotation

    .line 1006
    sget-boolean v0, Ljava8/util/Spliterators;->IS_HARMONY_ANDROID:Z

    if-nez v0, :cond_1

    sget-boolean v0, Ljava8/util/Spliterators;->NATIVE_SPECIALIZATION:Z

    if-eqz v0, :cond_1

    const-string v0, "java.util.HashMap$EntrySet"

    .line 1007
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1009
    invoke-static {p0}, Ljava8/util/HMSpliterators;->getEntrySetSpliterator(Ljava/util/Set;)Ljava8/util/Spliterator;

    move-result-object p0

    return-object p0

    :cond_0
    const-string v0, "java.util.HashMap$KeySet"

    .line 1011
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1012
    invoke-static {p0}, Ljava8/util/HMSpliterators;->getKeySetSpliterator(Ljava/util/Set;)Ljava8/util/Spliterator;

    move-result-object p0

    return-object p0

    .line 1016
    :cond_1
    instance-of p1, p0, Ljava/util/LinkedHashSet;

    if-eqz p1, :cond_2

    const/16 p1, 0x11

    .line 1017
    invoke-static {p0, p1}, Ljava8/util/Spliterators;->spliterator(Ljava/util/Collection;I)Ljava8/util/Spliterator;

    move-result-object p0

    return-object p0

    .line 1020
    :cond_2
    sget-boolean p1, Ljava8/util/Spliterators;->IS_HARMONY_ANDROID:Z

    if-nez p1, :cond_3

    sget-boolean p1, Ljava8/util/Spliterators;->NATIVE_SPECIALIZATION:Z

    if-eqz p1, :cond_3

    .line 1021
    instance-of p1, p0, Ljava/util/HashSet;

    if-eqz p1, :cond_3

    .line 1022
    check-cast p0, Ljava/util/HashSet;

    invoke-static {p0}, Ljava8/util/HMSpliterators;->getHashSetSpliterator(Ljava/util/HashSet;)Ljava8/util/Spliterator;

    move-result-object p0

    return-object p0

    .line 1027
    :cond_3
    instance-of p1, p0, Ljava/util/SortedSet;

    if-eqz p1, :cond_4

    .line 1028
    new-instance p1, Ljava8/util/Spliterators$1;

    const/16 v0, 0x15

    invoke-direct {p1, p0, v0, p0}, Ljava8/util/Spliterators$1;-><init>(Ljava/util/Collection;ILjava/util/Set;)V

    return-object p1

    .line 1037
    :cond_4
    sget-boolean p1, Ljava8/util/Spliterators;->NATIVE_SPECIALIZATION:Z

    if-nez p1, :cond_5

    sget-boolean p1, Ljava8/util/Spliterators;->IS_ANDROID:Z

    if-eqz p1, :cond_6

    :cond_5
    instance-of p1, p0, Ljava/util/concurrent/CopyOnWriteArraySet;

    if-eqz p1, :cond_6

    .line 1038
    check-cast p0, Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 1039
    invoke-static {p0}, Ljava8/util/COWArraySetSpliterator;->spliterator(Ljava/util/concurrent/CopyOnWriteArraySet;)Ljava8/util/Spliterator;

    move-result-object p0

    return-object p0

    :cond_6
    const/4 p1, 0x1

    .line 1043
    invoke-static {p0, p1}, Ljava8/util/Spliterators;->spliterator(Ljava/util/Collection;I)Ljava8/util/Spliterator;

    move-result-object p0

    return-object p0
.end method

.method public static spliterator(Ljava8/util/PrimitiveIterator$OfDouble;JI)Ljava8/util/Spliterator$OfDouble;
    .locals 1

    .line 1317
    new-instance v0, Ljava8/util/Spliterators$DoubleIteratorSpliterator;

    invoke-static {p0}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava8/util/PrimitiveIterator$OfDouble;

    invoke-direct {v0, p0, p1, p2, p3}, Ljava8/util/Spliterators$DoubleIteratorSpliterator;-><init>(Ljava8/util/PrimitiveIterator$OfDouble;JI)V

    return-object v0
.end method

.method public static spliterator([DI)Ljava8/util/Spliterator$OfDouble;
    .locals 1

    .line 788
    new-instance v0, Ljava8/util/Spliterators$DoubleArraySpliterator;

    invoke-static {p0}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [D

    invoke-direct {v0, p0, p1}, Ljava8/util/Spliterators$DoubleArraySpliterator;-><init>([DI)V

    return-object v0
.end method

.method public static spliterator([DIII)Ljava8/util/Spliterator$OfDouble;
    .locals 1

    .line 825
    invoke-static {p0}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    array-length v0, v0

    invoke-static {v0, p1, p2}, Ljava8/util/Spliterators;->checkFromToBounds(III)V

    .line 826
    new-instance v0, Ljava8/util/Spliterators$DoubleArraySpliterator;

    invoke-direct {v0, p0, p1, p2, p3}, Ljava8/util/Spliterators$DoubleArraySpliterator;-><init>([DIII)V

    return-object v0
.end method

.method public static spliterator(Ljava8/util/PrimitiveIterator$OfInt;JI)Ljava8/util/Spliterator$OfInt;
    .locals 1

    .line 1203
    new-instance v0, Ljava8/util/Spliterators$IntIteratorSpliterator;

    invoke-static {p0}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava8/util/PrimitiveIterator$OfInt;

    invoke-direct {v0, p0, p1, p2, p3}, Ljava8/util/Spliterators$IntIteratorSpliterator;-><init>(Ljava8/util/PrimitiveIterator$OfInt;JI)V

    return-object v0
.end method

.method public static spliterator([II)Ljava8/util/Spliterator$OfInt;
    .locals 1

    .line 660
    new-instance v0, Ljava8/util/Spliterators$IntArraySpliterator;

    invoke-static {p0}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    invoke-direct {v0, p0, p1}, Ljava8/util/Spliterators$IntArraySpliterator;-><init>([II)V

    return-object v0
.end method

.method public static spliterator([IIII)Ljava8/util/Spliterator$OfInt;
    .locals 1

    .line 693
    invoke-static {p0}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    array-length v0, v0

    invoke-static {v0, p1, p2}, Ljava8/util/Spliterators;->checkFromToBounds(III)V

    .line 694
    new-instance v0, Ljava8/util/Spliterators$IntArraySpliterator;

    invoke-direct {v0, p0, p1, p2, p3}, Ljava8/util/Spliterators$IntArraySpliterator;-><init>([IIII)V

    return-object v0
.end method

.method public static spliterator(Ljava8/util/PrimitiveIterator$OfLong;JI)Ljava8/util/Spliterator$OfLong;
    .locals 1

    .line 1260
    new-instance v0, Ljava8/util/Spliterators$LongIteratorSpliterator;

    invoke-static {p0}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava8/util/PrimitiveIterator$OfLong;

    invoke-direct {v0, p0, p1, p2, p3}, Ljava8/util/Spliterators$LongIteratorSpliterator;-><init>(Ljava8/util/PrimitiveIterator$OfLong;JI)V

    return-object v0
.end method

.method public static spliterator([JI)Ljava8/util/Spliterator$OfLong;
    .locals 1

    .line 722
    new-instance v0, Ljava8/util/Spliterators$LongArraySpliterator;

    invoke-static {p0}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [J

    invoke-direct {v0, p0, p1}, Ljava8/util/Spliterators$LongArraySpliterator;-><init>([JI)V

    return-object v0
.end method

.method public static spliterator([JIII)Ljava8/util/Spliterator$OfLong;
    .locals 1

    .line 759
    invoke-static {p0}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    array-length v0, v0

    invoke-static {v0, p1, p2}, Ljava8/util/Spliterators;->checkFromToBounds(III)V

    .line 760
    new-instance v0, Ljava8/util/Spliterators$LongArraySpliterator;

    invoke-direct {v0, p0, p1, p2, p3}, Ljava8/util/Spliterators$LongArraySpliterator;-><init>([JIII)V

    return-object v0
.end method

.method public static spliterator(Ljava/util/Collection;)Ljava8/util/Spliterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+TT;>;)",
            "Ljava8/util/Spliterator<",
            "TT;>;"
        }
    .end annotation

    .line 932
    invoke-static {p0}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 934
    sget-boolean v0, Ljava8/util/Spliterators;->HAS_STREAMS:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Ljava8/util/Spliterators;->DELEGATION_ENABLED:Z

    if-nez v0, :cond_0

    sget-boolean v0, Ljava8/util/Spliterators;->IS_JAVA9:Z

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {p0}, Ljava8/util/Spliterators;->hasAndroid7LHMBug(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 937
    invoke-static {p0}, Ljava8/util/Spliterators;->delegatingSpliterator(Ljava/util/Collection;)Ljava8/util/Spliterator;

    move-result-object p0

    return-object p0

    .line 940
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 942
    instance-of v1, p0, Ljava/util/List;

    if-eqz v1, :cond_2

    .line 943
    check-cast p0, Ljava/util/List;

    invoke-static {p0, v0}, Ljava8/util/Spliterators;->listSpliterator(Ljava/util/List;Ljava/lang/String;)Ljava8/util/Spliterator;

    move-result-object p0

    return-object p0

    .line 945
    :cond_2
    instance-of v1, p0, Ljava/util/Set;

    if-eqz v1, :cond_3

    .line 946
    check-cast p0, Ljava/util/Set;

    invoke-static {p0, v0}, Ljava8/util/Spliterators;->setSpliterator(Ljava/util/Set;Ljava/lang/String;)Ljava8/util/Spliterator;

    move-result-object p0

    return-object p0

    .line 948
    :cond_3
    instance-of v1, p0, Ljava/util/Queue;

    if-eqz v1, :cond_4

    .line 949
    check-cast p0, Ljava/util/Queue;

    invoke-static {p0}, Ljava8/util/Spliterators;->queueSpliterator(Ljava/util/Queue;)Ljava8/util/Spliterator;

    move-result-object p0

    return-object p0

    .line 952
    :cond_4
    sget-boolean v1, Ljava8/util/Spliterators;->IS_HARMONY_ANDROID:Z

    if-nez v1, :cond_5

    sget-boolean v1, Ljava8/util/Spliterators;->NATIVE_SPECIALIZATION:Z

    if-eqz v1, :cond_5

    const-string v1, "java.util.HashMap$Values"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 953
    invoke-static {p0}, Ljava8/util/HMSpliterators;->getValuesSpliterator(Ljava/util/Collection;)Ljava8/util/Spliterator;

    move-result-object p0

    return-object p0

    :cond_5
    const/4 v0, 0x0

    .line 957
    invoke-static {p0, v0}, Ljava8/util/Spliterators;->spliterator(Ljava/util/Collection;I)Ljava8/util/Spliterator;

    move-result-object p0

    return-object p0
.end method

.method public static spliterator(Ljava/util/Collection;I)Ljava8/util/Spliterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+TT;>;I)",
            "Ljava8/util/Spliterator<",
            "TT;>;"
        }
    .end annotation

    .line 1115
    new-instance v0, Ljava8/util/Spliterators$IteratorSpliterator;

    invoke-static {p0}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    invoke-direct {v0, p0, p1}, Ljava8/util/Spliterators$IteratorSpliterator;-><init>(Ljava/util/Collection;I)V

    return-object v0
.end method

.method public static spliterator(Ljava/util/Iterator;JI)Ljava8/util/Spliterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator<",
            "+TT;>;JI)",
            "Ljava8/util/Spliterator<",
            "TT;>;"
        }
    .end annotation

    .line 1146
    new-instance v0, Ljava8/util/Spliterators$IteratorSpliterator;

    invoke-static {p0}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Iterator;

    invoke-direct {v0, p0, p1, p2, p3}, Ljava8/util/Spliterators$IteratorSpliterator;-><init>(Ljava/util/Iterator;JI)V

    return-object v0
.end method

.method public static spliterator([Ljava/lang/Object;I)Ljava8/util/Spliterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/lang/Object;",
            "I)",
            "Ljava8/util/Spliterator<",
            "TT;>;"
        }
    .end annotation

    .line 596
    new-instance v0, Ljava8/util/Spliterators$ArraySpliterator;

    invoke-static {p0}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Object;

    invoke-direct {v0, p0, p1}, Ljava8/util/Spliterators$ArraySpliterator;-><init>([Ljava/lang/Object;I)V

    return-object v0
.end method

.method public static spliterator([Ljava/lang/Object;III)Ljava8/util/Spliterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/lang/Object;",
            "III)",
            "Ljava8/util/Spliterator<",
            "TT;>;"
        }
    .end annotation

    .line 631
    invoke-static {p0}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    array-length v0, v0

    invoke-static {v0, p1, p2}, Ljava8/util/Spliterators;->checkFromToBounds(III)V

    .line 632
    new-instance v0, Ljava8/util/Spliterators$ArraySpliterator;

    invoke-direct {v0, p0, p1, p2, p3}, Ljava8/util/Spliterators$ArraySpliterator;-><init>([Ljava/lang/Object;III)V

    return-object v0
.end method

.method public static spliteratorUnknownSize(Ljava8/util/PrimitiveIterator$OfDouble;I)Ljava8/util/Spliterator$OfDouble;
    .locals 1

    .line 1344
    new-instance v0, Ljava8/util/Spliterators$DoubleIteratorSpliterator;

    invoke-static {p0}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava8/util/PrimitiveIterator$OfDouble;

    invoke-direct {v0, p0, p1}, Ljava8/util/Spliterators$DoubleIteratorSpliterator;-><init>(Ljava8/util/PrimitiveIterator$OfDouble;I)V

    return-object v0
.end method

.method public static spliteratorUnknownSize(Ljava8/util/PrimitiveIterator$OfInt;I)Ljava8/util/Spliterator$OfInt;
    .locals 1

    .line 1230
    new-instance v0, Ljava8/util/Spliterators$IntIteratorSpliterator;

    invoke-static {p0}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava8/util/PrimitiveIterator$OfInt;

    invoke-direct {v0, p0, p1}, Ljava8/util/Spliterators$IntIteratorSpliterator;-><init>(Ljava8/util/PrimitiveIterator$OfInt;I)V

    return-object v0
.end method

.method public static spliteratorUnknownSize(Ljava8/util/PrimitiveIterator$OfLong;I)Ljava8/util/Spliterator$OfLong;
    .locals 1

    .line 1287
    new-instance v0, Ljava8/util/Spliterators$LongIteratorSpliterator;

    invoke-static {p0}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava8/util/PrimitiveIterator$OfLong;

    invoke-direct {v0, p0, p1}, Ljava8/util/Spliterators$LongIteratorSpliterator;-><init>(Ljava8/util/PrimitiveIterator$OfLong;I)V

    return-object v0
.end method

.method public static spliteratorUnknownSize(Ljava/util/Iterator;I)Ljava8/util/Spliterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator<",
            "+TT;>;I)",
            "Ljava8/util/Spliterator<",
            "TT;>;"
        }
    .end annotation

    .line 1173
    new-instance v0, Ljava8/util/Spliterators$IteratorSpliterator;

    invoke-static {p0}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Iterator;

    invoke-direct {v0, p0, p1}, Ljava8/util/Spliterators$IteratorSpliterator;-><init>(Ljava/util/Iterator;I)V

    return-object v0
.end method
