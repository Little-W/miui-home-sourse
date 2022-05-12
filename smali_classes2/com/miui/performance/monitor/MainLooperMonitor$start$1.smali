.class public final Lcom/miui/performance/monitor/MainLooperMonitor$start$1;
.super Ljava/lang/Object;
.source "MainLooperMonitor.kt"

# interfaces
.implements Landroid/os/Looper$Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/performance/monitor/MainLooperMonitor;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $mainLooper:Landroid/os/Looper;


# direct methods
.method constructor <init>(Landroid/os/Looper;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/miui/performance/monitor/MainLooperMonitor$start$1;->$mainLooper:Landroid/os/Looper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
