.class public final Lcom/miui/performance/tools/MainLooperPrinter;
.super Ljava/lang/Object;
.source "MainLooperPrinter.kt"

# interfaces
.implements Landroid/util/Printer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/performance/tools/MainLooperPrinter$DispatchListener;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMainLooperPrinter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MainLooperPrinter.kt\ncom/miui/performance/tools/MainLooperPrinter\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,79:1\n1819#2,2:80\n*E\n*S KotlinDebug\n*F\n+ 1 MainLooperPrinter.kt\ncom/miui/performance/tools/MainLooperPrinter\n*L\n55#1,2:80\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/miui/performance/tools/MainLooperPrinter;

.field private static debug:Z

.field private static dispatched:Z

.field private static final listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/performance/tools/MainLooperPrinter$DispatchListener;",
            ">;"
        }
    .end annotation
.end field

.field private static origin:Landroid/util/Printer;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 7
    new-instance v0, Lcom/miui/performance/tools/MainLooperPrinter;

    invoke-direct {v0}, Lcom/miui/performance/tools/MainLooperPrinter;-><init>()V

    sput-object v0, Lcom/miui/performance/tools/MainLooperPrinter;->INSTANCE:Lcom/miui/performance/tools/MainLooperPrinter;

    .line 19
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/List;

    sput-object v1, Lcom/miui/performance/tools/MainLooperPrinter;->listeners:Ljava/util/List;

    .line 22
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    .line 23
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "mLogging"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    const-string v3, "filed"

    .line 24
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 25
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Landroid/util/Printer;

    if-nez v3, :cond_0

    const/4 v2, 0x0

    :cond_0
    check-cast v2, Landroid/util/Printer;

    sput-object v2, Lcom/miui/performance/tools/MainLooperPrinter;->origin:Landroid/util/Printer;

    .line 26
    check-cast v0, Landroid/util/Printer;

    invoke-virtual {v1, v0}, Landroid/os/Looper;->setMessageLogging(Landroid/util/Printer;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final addListener(Lcom/miui/performance/tools/MainLooperPrinter$DispatchListener;)V
    .locals 2

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35
    sget-object v0, Lcom/miui/performance/tools/MainLooperPrinter;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final printMessage(Z)V
    .locals 0

    .line 30
    sput-boolean p1, Lcom/miui/performance/tools/MainLooperPrinter;->debug:Z

    return-void
.end method

.method public println(Ljava/lang/String;)V
    .locals 5

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    sget-object v0, Lcom/miui/performance/tools/MainLooperPrinter;->origin:Landroid/util/Printer;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 47
    :cond_0
    sget-boolean v0, Lcom/miui/performance/tools/MainLooperPrinter;->debug:Z

    if-eqz v0, :cond_1

    const-string v0, "MainLooperPrinter"

    .line 48
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    :cond_1
    sget-object v0, Lcom/miui/performance/tools/MainLooperPrinter;->listeners:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_6

    .line 51
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lkotlin/text/StringsKt;->first(Ljava/lang/CharSequence;)C

    move-result v2

    const/16 v3, 0x3e

    const/4 v4, 0x0

    if-ne v2, v3, :cond_2

    move v2, v1

    goto :goto_0

    :cond_2
    move v2, v4

    .line 52
    :goto_0
    invoke-static {v0}, Lkotlin/text/StringsKt;->first(Ljava/lang/CharSequence;)C

    move-result v0

    const/16 v3, 0x3c

    if-ne v0, v3, :cond_3

    goto :goto_1

    :cond_3
    move v1, v4

    :goto_1
    if-nez v2, :cond_4

    .line 53
    sget-boolean v0, Lcom/miui/performance/tools/MainLooperPrinter;->dispatched:Z

    if-eqz v0, :cond_6

    if-eqz v1, :cond_6

    .line 54
    :cond_4
    sput-boolean v2, Lcom/miui/performance/tools/MainLooperPrinter;->dispatched:Z

    .line 55
    sget-object v0, Lcom/miui/performance/tools/MainLooperPrinter;->listeners:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 80
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/performance/tools/MainLooperPrinter$DispatchListener;

    if-eqz v2, :cond_5

    .line 56
    invoke-interface {v1, p1}, Lcom/miui/performance/tools/MainLooperPrinter$DispatchListener;->dispatchStart(Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    invoke-interface {v1, p1}, Lcom/miui/performance/tools/MainLooperPrinter$DispatchListener;->dispatchEnd(Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    return-void
.end method

.method public final removeListener(Lcom/miui/performance/tools/MainLooperPrinter$DispatchListener;)V
    .locals 2

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    sget-object v0, Lcom/miui/performance/tools/MainLooperPrinter;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
