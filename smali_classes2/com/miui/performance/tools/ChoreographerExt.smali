.class public final Lcom/miui/performance/tools/ChoreographerExt;
.super Ljava/lang/Object;
.source "ChoreographerExt.kt"

# interfaces
.implements Lcom/miui/performance/tools/MainLooperPrinter$DispatchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/performance/tools/ChoreographerExt$FrameListener;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nChoreographerExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ChoreographerExt.kt\ncom/miui/performance/tools/ChoreographerExt\n*L\n1#1,105:1\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/miui/performance/tools/ChoreographerExt;

.field private static endTimeNanos:J

.field private static frameListener:Lcom/miui/performance/tools/ChoreographerExt$FrameListener;

.field private static frameTimeNanos:J

.field private static final queueCost:[J

.field private static startTimeNanos:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 8
    new-instance v0, Lcom/miui/performance/tools/ChoreographerExt;

    invoke-direct {v0}, Lcom/miui/performance/tools/ChoreographerExt;-><init>()V

    sput-object v0, Lcom/miui/performance/tools/ChoreographerExt;->INSTANCE:Lcom/miui/performance/tools/ChoreographerExt;

    const/4 v0, 0x5

    .line 16
    new-array v0, v0, [J

    sput-object v0, Lcom/miui/performance/tools/ChoreographerExt;->queueCost:[J

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$doQueueBegin(Lcom/miui/performance/tools/ChoreographerExt;I)V
    .locals 0

    .line 8
    invoke-direct {p0, p1}, Lcom/miui/performance/tools/ChoreographerExt;->doQueueBegin(I)V

    return-void
.end method

.method public static final synthetic access$doQueueEnd(Lcom/miui/performance/tools/ChoreographerExt;I)V
    .locals 0

    .line 8
    invoke-direct {p0, p1}, Lcom/miui/performance/tools/ChoreographerExt;->doQueueEnd(I)V

    return-void
.end method

.method public static final synthetic access$setFrameTimeNanos$p(Lcom/miui/performance/tools/ChoreographerExt;J)V
    .locals 0

    .line 8
    sput-wide p1, Lcom/miui/performance/tools/ChoreographerExt;->frameTimeNanos:J

    return-void
.end method

.method private final doFrameBegin()V
    .locals 2

    .line 77
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sput-wide v0, Lcom/miui/performance/tools/ChoreographerExt;->startTimeNanos:J

    const/4 v0, 0x0

    .line 78
    invoke-direct {p0, v0}, Lcom/miui/performance/tools/ChoreographerExt;->doQueueBegin(I)V

    .line 79
    invoke-direct {p0}, Lcom/miui/performance/tools/ChoreographerExt;->postCallback()V

    return-void
.end method

.method private final doFrameEnd()V
    .locals 9

    .line 83
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sput-wide v0, Lcom/miui/performance/tools/ChoreographerExt;->endTimeNanos:J

    const/4 v0, 0x4

    .line 84
    invoke-direct {p0, v0}, Lcom/miui/performance/tools/ChoreographerExt;->doQueueEnd(I)V

    .line 85
    sget-object v1, Lcom/miui/performance/tools/ChoreographerExt;->frameListener:Lcom/miui/performance/tools/ChoreographerExt$FrameListener;

    if-eqz v1, :cond_0

    sget-wide v2, Lcom/miui/performance/tools/ChoreographerExt;->frameTimeNanos:J

    sget-wide v4, Lcom/miui/performance/tools/ChoreographerExt;->startTimeNanos:J

    sget-wide v6, Lcom/miui/performance/tools/ChoreographerExt;->endTimeNanos:J

    sget-object v0, Lcom/miui/performance/tools/ChoreographerExt;->queueCost:[J

    invoke-static {v0}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v8

    const-string v0, "java.util.Arrays.toString(this)"

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface/range {v1 .. v8}, Lcom/miui/performance/tools/ChoreographerExt$FrameListener;->doFrame(JJJLjava/lang/String;)V

    :cond_0
    return-void
.end method

.method private final doQueueBegin(I)V
    .locals 3

    .line 89
    sget-object v0, Lcom/miui/performance/tools/ChoreographerExt;->queueCost:[J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    aput-wide v1, v0, p1

    return-void
.end method

.method private final doQueueEnd(I)V
    .locals 6

    .line 93
    sget-object v0, Lcom/miui/performance/tools/ChoreographerExt;->queueCost:[J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    sget-object v3, Lcom/miui/performance/tools/ChoreographerExt;->queueCost:[J

    aget-wide v4, v3, p1

    sub-long/2addr v1, v4

    const-wide/32 v3, 0xf4240

    div-long/2addr v1, v3

    aput-wide v1, v0, p1

    return-void
.end method

.method private final isDoFrameMsg(Ljava/lang/String;)Z
    .locals 2

    .line 72
    sget-object v0, Lcom/miui/performance/tools/MessageTools;->Companion:Lcom/miui/performance/tools/MessageTools$Companion;

    invoke-virtual {v0, p1}, Lcom/miui/performance/tools/MessageTools$Companion;->getHandler(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.view.Choreographer$FrameHandler"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    sget-object v0, Lcom/miui/performance/tools/MessageTools;->Companion:Lcom/miui/performance/tools/MessageTools$Companion;

    invoke-virtual {v0, p1}, Lcom/miui/performance/tools/MessageTools$Companion;->getCallback(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.view.Choreographer$FrameDisplayEventReceiver"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private final postCallback()V
    .locals 4

    .line 39
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    .line 40
    sget-object v1, Lcom/miui/performance/tools/ChoreographerExt$postCallback$1;->INSTANCE:Lcom/miui/performance/tools/ChoreographerExt$postCallback$1;

    check-cast v1, Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 41
    sget-object v1, Lcom/miui/performance/tools/ChoreographerExt$postCallback$2;->INSTANCE:Lcom/miui/performance/tools/ChoreographerExt$postCallback$2;

    check-cast v1, Ljava/lang/Runnable;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v1, v2}, Landroid/view/Choreographer;->postCallback(ILjava/lang/Runnable;Ljava/lang/Object;)V

    .line 45
    sget-object v1, Lcom/miui/performance/tools/ChoreographerExt$postCallback$3;->INSTANCE:Lcom/miui/performance/tools/ChoreographerExt$postCallback$3;

    check-cast v1, Ljava/lang/Runnable;

    const/4 v3, 0x2

    invoke-virtual {v0, v3, v1, v2}, Landroid/view/Choreographer;->postCallback(ILjava/lang/Runnable;Ljava/lang/Object;)V

    .line 49
    sget-object v1, Lcom/miui/performance/tools/ChoreographerExt$postCallback$4;->INSTANCE:Lcom/miui/performance/tools/ChoreographerExt$postCallback$4;

    check-cast v1, Ljava/lang/Runnable;

    const/4 v3, 0x3

    invoke-virtual {v0, v3, v1, v2}, Landroid/view/Choreographer;->postCallback(ILjava/lang/Runnable;Ljava/lang/Object;)V

    .line 53
    sget-object v1, Lcom/miui/performance/tools/ChoreographerExt$postCallback$5;->INSTANCE:Lcom/miui/performance/tools/ChoreographerExt$postCallback$5;

    check-cast v1, Ljava/lang/Runnable;

    const/4 v3, 0x4

    invoke-virtual {v0, v3, v1, v2}, Landroid/view/Choreographer;->postCallback(ILjava/lang/Runnable;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final addListener(Lcom/miui/performance/tools/ChoreographerExt$FrameListener;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    sget-object v0, Lcom/miui/performance/tools/ChoreographerExt;->frameListener:Lcom/miui/performance/tools/ChoreographerExt$FrameListener;

    if-nez v0, :cond_0

    .line 26
    sput-object p1, Lcom/miui/performance/tools/ChoreographerExt;->frameListener:Lcom/miui/performance/tools/ChoreographerExt$FrameListener;

    .line 27
    sget-object p1, Lcom/miui/performance/tools/MainLooperPrinter;->INSTANCE:Lcom/miui/performance/tools/MainLooperPrinter;

    move-object v0, p0

    check-cast v0, Lcom/miui/performance/tools/MainLooperPrinter$DispatchListener;

    invoke-virtual {p1, v0}, Lcom/miui/performance/tools/MainLooperPrinter;->addListener(Lcom/miui/performance/tools/MainLooperPrinter$DispatchListener;)V

    :cond_0
    return-void
.end method

.method public dispatchEnd(Ljava/lang/String;)V
    .locals 1

    const-string v0, "log"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    invoke-direct {p0, p1}, Lcom/miui/performance/tools/ChoreographerExt;->isDoFrameMsg(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 67
    invoke-direct {p0}, Lcom/miui/performance/tools/ChoreographerExt;->doFrameEnd()V

    :cond_0
    return-void
.end method

.method public dispatchStart(Ljava/lang/String;)V
    .locals 1

    const-string v0, "log"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    invoke-direct {p0, p1}, Lcom/miui/performance/tools/ChoreographerExt;->isDoFrameMsg(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 61
    invoke-direct {p0}, Lcom/miui/performance/tools/ChoreographerExt;->doFrameBegin()V

    :cond_0
    return-void
.end method

.method public final getFrameIntervalNanos()J
    .locals 2

    const v0, 0x3b9aca00

    int-to-float v0, v0

    .line 102
    invoke-virtual {p0}, Lcom/miui/performance/tools/ChoreographerExt;->getRefreshRate()F

    move-result v1

    div-float/2addr v0, v1

    float-to-long v0, v0

    return-wide v0
.end method

.method public final getRefreshRate()F
    .locals 2

    .line 97
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManagerGlobal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v0

    const-string v1, "di"

    .line 98
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/DisplayInfo;->getMode()Landroid/view/Display$Mode;

    move-result-object v0

    const-string v1, "di.mode"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v0

    return v0
.end method

.method public final removeListener()V
    .locals 2

    .line 32
    sget-object v0, Lcom/miui/performance/tools/ChoreographerExt;->frameListener:Lcom/miui/performance/tools/ChoreographerExt$FrameListener;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 33
    check-cast v0, Lcom/miui/performance/tools/ChoreographerExt$FrameListener;

    sput-object v0, Lcom/miui/performance/tools/ChoreographerExt;->frameListener:Lcom/miui/performance/tools/ChoreographerExt$FrameListener;

    .line 34
    sget-object v0, Lcom/miui/performance/tools/MainLooperPrinter;->INSTANCE:Lcom/miui/performance/tools/MainLooperPrinter;

    move-object v1, p0

    check-cast v1, Lcom/miui/performance/tools/MainLooperPrinter$DispatchListener;

    invoke-virtual {v0, v1}, Lcom/miui/performance/tools/MainLooperPrinter;->removeListener(Lcom/miui/performance/tools/MainLooperPrinter$DispatchListener;)V

    :cond_0
    return-void
.end method
