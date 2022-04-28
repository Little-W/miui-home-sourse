.class public final Lcom/miui/performance/monitor/MessageMonitor;
.super Ljava/lang/Object;
.source "MessageMonitor.kt"

# interfaces
.implements Lcom/miui/performance/monitor/IMonitor;


# static fields
.field public static final INSTANCE:Lcom/miui/performance/monitor/MessageMonitor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12
    new-instance v0, Lcom/miui/performance/monitor/MessageMonitor;

    invoke-direct {v0}, Lcom/miui/performance/monitor/MessageMonitor;-><init>()V

    sput-object v0, Lcom/miui/performance/monitor/MessageMonitor;->INSTANCE:Lcom/miui/performance/monitor/MessageMonitor;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final printMessageMonitor(Ljava/io/PrintWriter;)V
    .locals 2

    .line 30
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getMessageMonitor()Landroid/os/MessageMonitor;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/os/MessageMonitor;->dumpAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method private final printPendingMessage(Ljava/io/PrintWriter;Landroid/os/Looper;)V
    .locals 8

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    const-string v2, "looper.thread"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " thread pending messages:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 35
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "mQueue"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const-string v1, "field"

    .line 36
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 37
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "accessFlags"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    const-string v3, "modifiersField"

    .line 38
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 39
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v3

    and-int/lit8 v3, v3, -0x11

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V

    .line 40
    invoke-virtual {v0, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_0

    check-cast p2, Landroid/os/MessageQueue;

    .line 41
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "dump"

    const/4 v3, 0x3

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Landroid/util/Printer;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v1

    const-class v5, Landroid/os/Handler;

    const/4 v7, 0x2

    aput-object v5, v4, v7

    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const-string v2, "method"

    .line 42
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 43
    new-array v2, v3, [Ljava/lang/Object;

    new-instance v3, Lcom/miui/performance/monitor/MessageMonitor$printPendingMessage$1;

    invoke-direct {v3, p1}, Lcom/miui/performance/monitor/MessageMonitor$printPendingMessage$1;-><init>(Ljava/io/PrintWriter;)V

    aput-object v3, v2, v6

    const-string p1, "  "

    aput-object p1, v2, v1

    const/4 p1, 0x0

    aput-object p1, v2, v7

    invoke-virtual {v0, p2, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 40
    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.os.MessageQueue"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic printPendingMessage$default(Lcom/miui/performance/monitor/MessageMonitor;Ljava/io/PrintWriter;Landroid/os/Looper;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 33
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    const-string p3, "Looper.getMainLooper()"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/miui/performance/monitor/MessageMonitor;->printPendingMessage(Ljava/io/PrintWriter;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    const-string p1, "pw"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    sget-boolean p1, Lmiui/os/Build;->IS_DEBUGGABLE:Z

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string p1, "<<MessageMonitor>>"

    .line 22
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "----------------"

    .line 23
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 24
    invoke-direct {p0, p2}, Lcom/miui/performance/monitor/MessageMonitor;->printMessageMonitor(Ljava/io/PrintWriter;)V

    const/4 p1, 0x2

    const/4 p3, 0x0

    .line 25
    invoke-static {p0, p2, p3, p1, p3}, Lcom/miui/performance/monitor/MessageMonitor;->printPendingMessage$default(Lcom/miui/performance/monitor/MessageMonitor;Ljava/io/PrintWriter;Landroid/os/Looper;ILjava/lang/Object;)V

    const-string p1, ""

    .line 26
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public onCommand(Ljava/lang/String;)V
    .locals 1

    const-string v0, "cmd"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
