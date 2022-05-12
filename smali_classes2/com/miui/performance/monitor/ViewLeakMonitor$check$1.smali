.class final Lcom/miui/performance/monitor/ViewLeakMonitor$check$1;
.super Ljava/lang/Object;
.source "ViewLeakMonitor.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/performance/monitor/ViewLeakMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# static fields
.field public static final INSTANCE:Lcom/miui/performance/monitor/ViewLeakMonitor$check$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/performance/monitor/ViewLeakMonitor$check$1;

    invoke-direct {v0}, Lcom/miui/performance/monitor/ViewLeakMonitor$check$1;-><init>()V

    sput-object v0, Lcom/miui/performance/monitor/ViewLeakMonitor$check$1;->INSTANCE:Lcom/miui/performance/monitor/ViewLeakMonitor$check$1;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 29
    sget-object v0, Lcom/miui/performance/monitor/ViewLeakMonitor;->INSTANCE:Lcom/miui/performance/monitor/ViewLeakMonitor;

    invoke-static {v0}, Lcom/miui/performance/monitor/ViewLeakMonitor;->access$checkLeak(Lcom/miui/performance/monitor/ViewLeakMonitor;)V

    return-void
.end method
