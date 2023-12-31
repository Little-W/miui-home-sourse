.class public final Lcom/miui/home/launcher/operationicon/OperationIconVisibleMonitor;
.super Ljava/lang/Object;
.source "OperationIconVisibleMonitor.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/operationicon/OperationIconVisibleMonitor$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nOperationIconVisibleMonitor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OperationIconVisibleMonitor.kt\ncom/miui/home/launcher/operationicon/OperationIconVisibleMonitor\n*L\n1#1,52:1\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/miui/home/launcher/operationicon/OperationIconVisibleMonitor$Companion;

.field private static final instance$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/miui/home/launcher/operationicon/OperationIconVisibleMonitor$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/home/launcher/operationicon/OperationIconVisibleMonitor$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/miui/home/launcher/operationicon/OperationIconVisibleMonitor;->Companion:Lcom/miui/home/launcher/operationicon/OperationIconVisibleMonitor$Companion;

    .line 10
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    sget-object v1, Lcom/miui/home/launcher/operationicon/OperationIconVisibleMonitor$Companion$instance$2;->INSTANCE:Lcom/miui/home/launcher/operationicon/OperationIconVisibleMonitor$Companion$instance$2;

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/miui/home/launcher/operationicon/OperationIconVisibleMonitor;->instance$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 7
    invoke-direct {p0}, Lcom/miui/home/launcher/operationicon/OperationIconVisibleMonitor;-><init>()V

    return-void
.end method

.method public static final synthetic access$getInstance$cp()Lkotlin/Lazy;
    .locals 1

    .line 7
    sget-object v0, Lcom/miui/home/launcher/operationicon/OperationIconVisibleMonitor;->instance$delegate:Lkotlin/Lazy;

    return-object v0
.end method

.method private final isAppExposeState(Lcom/miui/home/launcher/Launcher;)Z
    .locals 0

    .line 49
    sget-object p0, Lcom/miui/home/launcher/LauncherState;->NORMAL:Lcom/miui/home/launcher/LauncherState;

    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result p0

    if-nez p0, :cond_1

    sget-object p0, Lcom/miui/home/launcher/LauncherState;->ALL_APPS:Lcom/miui/home/launcher/LauncherState;

    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method


# virtual methods
.method public final onLauncherResume(Lcom/miui/home/launcher/Launcher;)V
    .locals 1

    const-string v0, "launcher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/operationicon/OperationIconVisibleMonitor;->isAppExposeState(Lcom/miui/home/launcher/Launcher;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 17
    sget-object p0, Lcom/miui/home/launcher/operationicon/OperationIconEventTracker;->Companion:Lcom/miui/home/launcher/operationicon/OperationIconEventTracker$Companion;

    invoke-virtual {p0}, Lcom/miui/home/launcher/operationicon/OperationIconEventTracker$Companion;->getInstance()Lcom/miui/home/launcher/operationicon/OperationIconEventTracker;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/operationicon/OperationIconEventTracker;->onLauncherExpose(Lcom/miui/home/launcher/Launcher;)V

    :cond_0
    return-void
.end method

.method public final onLauncherStop(Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    const-string p0, "launcher"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->isInEditing()Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    .line 25
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p0

    const-string p1, "Application.getInstance()"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/home/launcher/Application;->getModel()Lcom/miui/home/launcher/LauncherModel;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 26
    sget-object p1, Lcom/miui/home/launcher/operationicon/OperationIconRefresher;->Companion:Lcom/miui/home/launcher/operationicon/OperationIconRefresher$Companion;

    invoke-virtual {p1}, Lcom/miui/home/launcher/operationicon/OperationIconRefresher$Companion;->getInstance()Lcom/miui/home/launcher/operationicon/OperationIconRefresher;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/operationicon/OperationIconRefresher;->refreshIcon(Lcom/miui/home/launcher/LauncherModel;)V

    :cond_1
    return-void
.end method

.method public final onOverlayChanged(Lcom/miui/home/launcher/Launcher;)V
    .locals 1

    const-string v0, "launcher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/operationicon/OperationIconVisibleMonitor;->isAppExposeState(Lcom/miui/home/launcher/Launcher;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 44
    sget-object p0, Lcom/miui/home/launcher/operationicon/OperationIconEventTracker;->Companion:Lcom/miui/home/launcher/operationicon/OperationIconEventTracker$Companion;

    invoke-virtual {p0}, Lcom/miui/home/launcher/operationicon/OperationIconEventTracker$Companion;->getInstance()Lcom/miui/home/launcher/operationicon/OperationIconEventTracker;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/operationicon/OperationIconEventTracker;->onLauncherExpose(Lcom/miui/home/launcher/Launcher;)V

    :cond_0
    return-void
.end method

.method public final onWorkspaceScreenChanged(Lcom/miui/home/launcher/Launcher;)V
    .locals 1

    const-string v0, "launcher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/operationicon/OperationIconVisibleMonitor;->isAppExposeState(Lcom/miui/home/launcher/Launcher;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 35
    sget-object p0, Lcom/miui/home/launcher/operationicon/OperationIconEventTracker;->Companion:Lcom/miui/home/launcher/operationicon/OperationIconEventTracker$Companion;

    invoke-virtual {p0}, Lcom/miui/home/launcher/operationicon/OperationIconEventTracker$Companion;->getInstance()Lcom/miui/home/launcher/operationicon/OperationIconEventTracker;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/operationicon/OperationIconEventTracker;->onLauncherExpose(Lcom/miui/home/launcher/Launcher;)V

    :cond_0
    return-void
.end method
