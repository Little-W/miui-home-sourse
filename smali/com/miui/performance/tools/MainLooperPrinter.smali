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
    value = "SMAP\nMainLooperPrinter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MainLooperPrinter.kt\ncom/miui/performance/tools/MainLooperPrinter\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,79:1\n1819#2,2:80\n*E\n*S KotlinDebug\n*F\n+ 1 MainLooperPrinter.kt\ncom/miui/performance/tools/MainLooperPrinter\n*L\n37#1,2:80\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/miui/performance/tools/MainLooperPrinter;

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


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 6
    new-instance v0, Lcom/miui/performance/tools/MainLooperPrinter;

    invoke-direct {v0}, Lcom/miui/performance/tools/MainLooperPrinter;-><init>()V

    sput-object v0, Lcom/miui/performance/tools/MainLooperPrinter;->INSTANCE:Lcom/miui/performance/tools/MainLooperPrinter;

    .line 14
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/List;

    sput-object v1, Lcom/miui/performance/tools/MainLooperPrinter;->listeners:Ljava/util/List;

    .line 17
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    check-cast v0, Landroid/util/Printer;

    invoke-virtual {v1, v0}, Landroid/os/Looper;->setMessageLogging(Landroid/util/Printer;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final addListener(Lcom/miui/performance/tools/MainLooperPrinter$DispatchListener;)V
    .locals 2

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 22
    sget-object v0, Lcom/miui/performance/tools/MainLooperPrinter;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public println(Ljava/lang/String;)V
    .locals 5

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lkotlin/text/StringsKt;->first(Ljava/lang/CharSequence;)C

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v4, 0x3e

    if-ne v1, v4, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    .line 34
    :goto_0
    invoke-static {v0}, Lkotlin/text/StringsKt;->first(Ljava/lang/CharSequence;)C

    move-result v0

    const/16 v4, 0x3c

    if-ne v0, v4, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    if-nez v1, :cond_2

    .line 35
    sget-boolean v0, Lcom/miui/performance/tools/MainLooperPrinter;->dispatched:Z

    if-eqz v0, :cond_4

    if-eqz v2, :cond_4

    .line 36
    :cond_2
    sput-boolean v1, Lcom/miui/performance/tools/MainLooperPrinter;->dispatched:Z

    .line 37
    sget-object v0, Lcom/miui/performance/tools/MainLooperPrinter;->listeners:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 80
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/performance/tools/MainLooperPrinter$DispatchListener;

    if-eqz v1, :cond_3

    .line 38
    invoke-interface {v2, p1}, Lcom/miui/performance/tools/MainLooperPrinter$DispatchListener;->dispatchStart(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    invoke-interface {v2, p1}, Lcom/miui/performance/tools/MainLooperPrinter$DispatchListener;->dispatchEnd(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    return-void
.end method

.method public final removeListener(Lcom/miui/performance/tools/MainLooperPrinter$DispatchListener;)V
    .locals 2

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28
    sget-object v0, Lcom/miui/performance/tools/MainLooperPrinter;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
