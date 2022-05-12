.class final Lcom/miui/performance/PerformanceTools$init$4;
.super Lkotlin/jvm/internal/Lambda;
.source "PerformanceTools.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/performance/PerformanceTools;->init(Landroid/app/Application;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/miui/performance/PerformanceTools$init$4;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/performance/PerformanceTools$init$4;

    invoke-direct {v0}, Lcom/miui/performance/PerformanceTools$init$4;-><init>()V

    sput-object v0, Lcom/miui/performance/PerformanceTools$init$4;->INSTANCE:Lcom/miui/performance/PerformanceTools$init$4;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 27
    invoke-virtual {p0}, Lcom/miui/performance/PerformanceTools$init$4;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 1

    .line 86
    sget-object v0, Lcom/miui/performance/PerformanceTools;->INSTANCE:Lcom/miui/performance/PerformanceTools;

    invoke-static {v0}, Lcom/miui/performance/PerformanceTools;->access$getMiuiPerfDir$p(Lcom/miui/performance/PerformanceTools;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/performance/util/ExtensionsKt;->ensureDirExists(Ljava/io/File;)V

    return-void
.end method
