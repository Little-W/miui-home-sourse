.class public final Lcom/miui/performance/PerformanceTools$init$2;
.super Landroid/database/ContentObserver;
.source "PerformanceTools.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/performance/PerformanceTools;->init(Landroid/app/Application;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPerformanceTools.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PerformanceTools.kt\ncom/miui/performance/PerformanceTools$init$2\n*L\n1#1,151:1\n*E\n"
.end annotation


# instance fields
.field final synthetic $cr:Landroid/content/ContentResolver;

.field final synthetic $uriName:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/os/Handler;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/miui/performance/PerformanceTools$init$2;->$cr:Landroid/content/ContentResolver;

    iput-object p2, p0, Lcom/miui/performance/PerformanceTools$init$2;->$uriName:Ljava/lang/String;

    invoke-direct {p0, p3}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    .line 80
    iget-object p1, p0, Lcom/miui/performance/PerformanceTools$init$2;->$cr:Landroid/content/ContentResolver;

    iget-object v0, p0, Lcom/miui/performance/PerformanceTools$init$2;->$uriName:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "it"

    .line 81
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 83
    :try_start_0
    sget-object v0, Lcom/miui/performance/PerformanceTools;->INSTANCE:Lcom/miui/performance/PerformanceTools;

    invoke-virtual {v0, p1}, Lcom/miui/performance/PerformanceTools;->execCommand(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string v0, "PerformanceTools"

    const-string v1, "dump error!"

    .line 85
    check-cast p1, Ljava/lang/Throwable;

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_1
    return-void
.end method
