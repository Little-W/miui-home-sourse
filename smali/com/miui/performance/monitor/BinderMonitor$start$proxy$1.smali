.class public final Lcom/miui/performance/monitor/BinderMonitor$start$proxy$1;
.super Ljava/lang/Object;
.source "BinderMonitor.kt"

# interfaces
.implements Landroid/os/Binder$ProxyTransactListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/performance/monitor/BinderMonitor;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBinderMonitor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BinderMonitor.kt\ncom/miui/performance/monitor/BinderMonitor$start$proxy$1\n*L\n1#1,138:1\n*E\n"
.end annotation


# instance fields
.field private final index:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method constructor <init>()V
    .locals 2

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const v1, 0x989680

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/miui/performance/monitor/BinderMonitor$start$proxy$1;->index:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method
